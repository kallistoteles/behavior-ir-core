import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup37
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2368 : List WordIR.Op := [.bnot 2485]
def bytes2368 : Bytes := ("    let r000009b6: u32 = !r000009b5;\n" : String).toByteArray.data.toList
theorem checked2368 : bytes2368=statementBytes 2486 (op2368.map lower) ∧ bytes2368.length=37 := by core033_kernel_decide
def op2369 : List WordIR.Op := [.band 2481 2486]
def bytes2369 : Bytes := ("    let r000009b7: u32 = r000009b1 & r000009b6;\n" : String).toByteArray.data.toList
theorem checked2369 : bytes2369=statementBytes 2487 (op2369.map lower) ∧ bytes2369.length=48 := by core033_kernel_decide
def op2370 : List WordIR.Op := [.bxor 2477 2487]
def bytes2370 : Bytes := ("    let r000009b8: u32 = r000009ad ^ r000009b7;\n" : String).toByteArray.data.toList
theorem checked2370 : bytes2370=statementBytes 2488 (op2370.map lower) ∧ bytes2370.length=48 := by core033_kernel_decide
def op2371 : List WordIR.Op := [.shr 2488 31]
def bytes2371 : Bytes := ("    let r000009b9: u32 = r000009b8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2371 : bytes2371=statementBytes 2489 (op2371.map lower) ∧ bytes2371.length=54 := by core033_kernel_decide
def op2372 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2372 : Bytes := ("    let r000009ba: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2372 : bytes2372=statementBytes 2490 (op2372.map lower) ∧ bytes2372.length=41 := by core033_kernel_decide
def op2373 : List WordIR.Op := [.bxor 2489 2490]
def bytes2373 : Bytes := ("    let r000009bb: u32 = r000009b9 ^ r000009ba;\n" : String).toByteArray.data.toList
theorem checked2373 : bytes2373=statementBytes 2491 (op2373.map lower) ∧ bytes2373.length=48 := by core033_kernel_decide
def op2374 : List WordIR.Op := [.shr 2308 1]
def bytes2374 : Bytes := ("    let r000009bc: u32 = r00000904 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2374 : bytes2374=statementBytes 2492 (op2374.map lower) ∧ bytes2374.length=54 := by core033_kernel_decide
def op2375 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2375 : Bytes := ("    let r000009bd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2375 : bytes2375=statementBytes 2493 (op2375.map lower) ∧ bytes2375.length=41 := by core033_kernel_decide
def op2376 : List WordIR.Op := [.bnot 2493]
def bytes2376 : Bytes := ("    let r000009be: u32 = !r000009bd;\n" : String).toByteArray.data.toList
theorem checked2376 : bytes2376=statementBytes 2494 (op2376.map lower) ∧ bytes2376.length=37 := by core033_kernel_decide
def op2377 : List WordIR.Op := [.band 2492 2494]
def bytes2377 : Bytes := ("    let r000009bf: u32 = r000009bc & r000009be;\n" : String).toByteArray.data.toList
theorem checked2377 : bytes2377=statementBytes 2495 (op2377.map lower) ∧ bytes2377.length=48 := by core033_kernel_decide
def op2378 : List WordIR.Op := [.shr 2308 1]
def bytes2378 : Bytes := ("    let r000009c0: u32 = r00000904 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2378 : bytes2378=statementBytes 2496 (op2378.map lower) ∧ bytes2378.length=54 := by core033_kernel_decide
def op2379 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2379 : Bytes := ("    let r000009c1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2379 : bytes2379=statementBytes 2497 (op2379.map lower) ∧ bytes2379.length=41 := by core033_kernel_decide
def op2380 : List WordIR.Op := [.bnot 2497]
def bytes2380 : Bytes := ("    let r000009c2: u32 = !r000009c1;\n" : String).toByteArray.data.toList
theorem checked2380 : bytes2380=statementBytes 2498 (op2380.map lower) ∧ bytes2380.length=37 := by core033_kernel_decide
def op2381 : List WordIR.Op := [.bxor 2496 2498]
def bytes2381 : Bytes := ("    let r000009c3: u32 = r000009c0 ^ r000009c2;\n" : String).toByteArray.data.toList
theorem checked2381 : bytes2381=statementBytes 2499 (op2381.map lower) ∧ bytes2381.length=48 := by core033_kernel_decide
def op2382 : List WordIR.Op := [.shr 2308 1]
def bytes2382 : Bytes := ("    let r000009c4: u32 = r00000904 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2382 : bytes2382=statementBytes 2500 (op2382.map lower) ∧ bytes2382.length=54 := by core033_kernel_decide
def op2383 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2383 : Bytes := ("    let r000009c5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2383 : bytes2383=statementBytes 2501 (op2383.map lower) ∧ bytes2383.length=41 := by core033_kernel_decide
def op2384 : List WordIR.Op := [.bnot 2501]
def bytes2384 : Bytes := ("    let r000009c6: u32 = !r000009c5;\n" : String).toByteArray.data.toList
theorem checked2384 : bytes2384=statementBytes 2502 (op2384.map lower) ∧ bytes2384.length=37 := by core033_kernel_decide
def op2385 : List WordIR.Op := [.badd 2500 2502]
def bytes2385 : Bytes := ("    let r000009c7: u32 = r000009c4.wrapping_add(r000009c6);\n" : String).toByteArray.data.toList
theorem checked2385 : bytes2385=statementBytes 2503 (op2385.map lower) ∧ bytes2385.length=60 := by core033_kernel_decide
def op2386 : List WordIR.Op := [.bnot 2503]
def bytes2386 : Bytes := ("    let r000009c8: u32 = !r000009c7;\n" : String).toByteArray.data.toList
theorem checked2386 : bytes2386=statementBytes 2504 (op2386.map lower) ∧ bytes2386.length=37 := by core033_kernel_decide
def op2387 : List WordIR.Op := [.band 2499 2504]
def bytes2387 : Bytes := ("    let r000009c9: u32 = r000009c3 & r000009c8;\n" : String).toByteArray.data.toList
theorem checked2387 : bytes2387=statementBytes 2505 (op2387.map lower) ∧ bytes2387.length=48 := by core033_kernel_decide
def op2388 : List WordIR.Op := [.bxor 2495 2505]
def bytes2388 : Bytes := ("    let r000009ca: u32 = r000009bf ^ r000009c9;\n" : String).toByteArray.data.toList
theorem checked2388 : bytes2388=statementBytes 2506 (op2388.map lower) ∧ bytes2388.length=48 := by core033_kernel_decide
def op2389 : List WordIR.Op := [.shr 2506 31]
def bytes2389 : Bytes := ("    let r000009cb: u32 = r000009ca >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2389 : bytes2389=statementBytes 2507 (op2389.map lower) ∧ bytes2389.length=54 := by core033_kernel_decide
def op2390 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2390 : Bytes := ("    let r000009cc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2390 : bytes2390=statementBytes 2508 (op2390.map lower) ∧ bytes2390.length=41 := by core033_kernel_decide
def op2391 : List WordIR.Op := [.bxor 2507 2508]
def bytes2391 : Bytes := ("    let r000009cd: u32 = r000009cb ^ r000009cc;\n" : String).toByteArray.data.toList
theorem checked2391 : bytes2391=statementBytes 2509 (op2391.map lower) ∧ bytes2391.length=48 := by core033_kernel_decide
def op2392 : List WordIR.Op := [.shr 2198 1]
def bytes2392 : Bytes := ("    let r000009ce: u32 = r00000896 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2392 : bytes2392=statementBytes 2510 (op2392.map lower) ∧ bytes2392.length=54 := by core033_kernel_decide
def op2393 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2393 : Bytes := ("    let r000009cf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2393 : bytes2393=statementBytes 2511 (op2393.map lower) ∧ bytes2393.length=41 := by core033_kernel_decide
def op2394 : List WordIR.Op := [.bnot 2511]
def bytes2394 : Bytes := ("    let r000009d0: u32 = !r000009cf;\n" : String).toByteArray.data.toList
theorem checked2394 : bytes2394=statementBytes 2512 (op2394.map lower) ∧ bytes2394.length=37 := by core033_kernel_decide
def op2395 : List WordIR.Op := [.band 2510 2512]
def bytes2395 : Bytes := ("    let r000009d1: u32 = r000009ce & r000009d0;\n" : String).toByteArray.data.toList
theorem checked2395 : bytes2395=statementBytes 2513 (op2395.map lower) ∧ bytes2395.length=48 := by core033_kernel_decide
def op2396 : List WordIR.Op := [.shr 2198 1]
def bytes2396 : Bytes := ("    let r000009d2: u32 = r00000896 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2396 : bytes2396=statementBytes 2514 (op2396.map lower) ∧ bytes2396.length=54 := by core033_kernel_decide
def op2397 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2397 : Bytes := ("    let r000009d3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2397 : bytes2397=statementBytes 2515 (op2397.map lower) ∧ bytes2397.length=41 := by core033_kernel_decide
def op2398 : List WordIR.Op := [.bnot 2515]
def bytes2398 : Bytes := ("    let r000009d4: u32 = !r000009d3;\n" : String).toByteArray.data.toList
theorem checked2398 : bytes2398=statementBytes 2516 (op2398.map lower) ∧ bytes2398.length=37 := by core033_kernel_decide
def op2399 : List WordIR.Op := [.bxor 2514 2516]
def bytes2399 : Bytes := ("    let r000009d5: u32 = r000009d2 ^ r000009d4;\n" : String).toByteArray.data.toList
theorem checked2399 : bytes2399=statementBytes 2517 (op2399.map lower) ∧ bytes2399.length=48 := by core033_kernel_decide
def op2400 : List WordIR.Op := [.shr 2198 1]
def bytes2400 : Bytes := ("    let r000009d6: u32 = r00000896 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2400 : bytes2400=statementBytes 2518 (op2400.map lower) ∧ bytes2400.length=54 := by core033_kernel_decide
def op2401 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2401 : Bytes := ("    let r000009d7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2401 : bytes2401=statementBytes 2519 (op2401.map lower) ∧ bytes2401.length=41 := by core033_kernel_decide
def op2402 : List WordIR.Op := [.bnot 2519]
def bytes2402 : Bytes := ("    let r000009d8: u32 = !r000009d7;\n" : String).toByteArray.data.toList
theorem checked2402 : bytes2402=statementBytes 2520 (op2402.map lower) ∧ bytes2402.length=37 := by core033_kernel_decide
def op2403 : List WordIR.Op := [.badd 2518 2520]
def bytes2403 : Bytes := ("    let r000009d9: u32 = r000009d6.wrapping_add(r000009d8);\n" : String).toByteArray.data.toList
theorem checked2403 : bytes2403=statementBytes 2521 (op2403.map lower) ∧ bytes2403.length=60 := by core033_kernel_decide
def op2404 : List WordIR.Op := [.bnot 2521]
def bytes2404 : Bytes := ("    let r000009da: u32 = !r000009d9;\n" : String).toByteArray.data.toList
theorem checked2404 : bytes2404=statementBytes 2522 (op2404.map lower) ∧ bytes2404.length=37 := by core033_kernel_decide
def op2405 : List WordIR.Op := [.band 2517 2522]
def bytes2405 : Bytes := ("    let r000009db: u32 = r000009d5 & r000009da;\n" : String).toByteArray.data.toList
theorem checked2405 : bytes2405=statementBytes 2523 (op2405.map lower) ∧ bytes2405.length=48 := by core033_kernel_decide
def op2406 : List WordIR.Op := [.bxor 2513 2523]
def bytes2406 : Bytes := ("    let r000009dc: u32 = r000009d1 ^ r000009db;\n" : String).toByteArray.data.toList
theorem checked2406 : bytes2406=statementBytes 2524 (op2406.map lower) ∧ bytes2406.length=48 := by core033_kernel_decide
def op2407 : List WordIR.Op := [.shr 2524 31]
def bytes2407 : Bytes := ("    let r000009dd: u32 = r000009dc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2407 : bytes2407=statementBytes 2525 (op2407.map lower) ∧ bytes2407.length=54 := by core033_kernel_decide
def op2408 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2408 : Bytes := ("    let r000009de: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2408 : bytes2408=statementBytes 2526 (op2408.map lower) ∧ bytes2408.length=41 := by core033_kernel_decide
def op2409 : List WordIR.Op := [.bxor 2525 2526]
def bytes2409 : Bytes := ("    let r000009df: u32 = r000009dd ^ r000009de;\n" : String).toByteArray.data.toList
theorem checked2409 : bytes2409=statementBytes 2527 (op2409.map lower) ∧ bytes2409.length=48 := by core033_kernel_decide
def op2410 : List WordIR.Op := [.shr 2318 1]
def bytes2410 : Bytes := ("    let r000009e0: u32 = r0000090e >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2410 : bytes2410=statementBytes 2528 (op2410.map lower) ∧ bytes2410.length=54 := by core033_kernel_decide
def op2411 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2411 : Bytes := ("    let r000009e1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2411 : bytes2411=statementBytes 2529 (op2411.map lower) ∧ bytes2411.length=41 := by core033_kernel_decide
def op2412 : List WordIR.Op := [.bnot 2529]
def bytes2412 : Bytes := ("    let r000009e2: u32 = !r000009e1;\n" : String).toByteArray.data.toList
theorem checked2412 : bytes2412=statementBytes 2530 (op2412.map lower) ∧ bytes2412.length=37 := by core033_kernel_decide
def op2413 : List WordIR.Op := [.band 2528 2530]
def bytes2413 : Bytes := ("    let r000009e3: u32 = r000009e0 & r000009e2;\n" : String).toByteArray.data.toList
theorem checked2413 : bytes2413=statementBytes 2531 (op2413.map lower) ∧ bytes2413.length=48 := by core033_kernel_decide
def op2414 : List WordIR.Op := [.shr 2318 1]
def bytes2414 : Bytes := ("    let r000009e4: u32 = r0000090e >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2414 : bytes2414=statementBytes 2532 (op2414.map lower) ∧ bytes2414.length=54 := by core033_kernel_decide
def op2415 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2415 : Bytes := ("    let r000009e5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2415 : bytes2415=statementBytes 2533 (op2415.map lower) ∧ bytes2415.length=41 := by core033_kernel_decide
def op2416 : List WordIR.Op := [.bnot 2533]
def bytes2416 : Bytes := ("    let r000009e6: u32 = !r000009e5;\n" : String).toByteArray.data.toList
theorem checked2416 : bytes2416=statementBytes 2534 (op2416.map lower) ∧ bytes2416.length=37 := by core033_kernel_decide
def op2417 : List WordIR.Op := [.bxor 2532 2534]
def bytes2417 : Bytes := ("    let r000009e7: u32 = r000009e4 ^ r000009e6;\n" : String).toByteArray.data.toList
theorem checked2417 : bytes2417=statementBytes 2535 (op2417.map lower) ∧ bytes2417.length=48 := by core033_kernel_decide
def op2418 : List WordIR.Op := [.shr 2318 1]
def bytes2418 : Bytes := ("    let r000009e8: u32 = r0000090e >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2418 : bytes2418=statementBytes 2536 (op2418.map lower) ∧ bytes2418.length=54 := by core033_kernel_decide
def op2419 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2419 : Bytes := ("    let r000009e9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2419 : bytes2419=statementBytes 2537 (op2419.map lower) ∧ bytes2419.length=41 := by core033_kernel_decide
def op2420 : List WordIR.Op := [.bnot 2537]
def bytes2420 : Bytes := ("    let r000009ea: u32 = !r000009e9;\n" : String).toByteArray.data.toList
theorem checked2420 : bytes2420=statementBytes 2538 (op2420.map lower) ∧ bytes2420.length=37 := by core033_kernel_decide
def op2421 : List WordIR.Op := [.badd 2536 2538]
def bytes2421 : Bytes := ("    let r000009eb: u32 = r000009e8.wrapping_add(r000009ea);\n" : String).toByteArray.data.toList
theorem checked2421 : bytes2421=statementBytes 2539 (op2421.map lower) ∧ bytes2421.length=60 := by core033_kernel_decide
def op2422 : List WordIR.Op := [.bnot 2539]
def bytes2422 : Bytes := ("    let r000009ec: u32 = !r000009eb;\n" : String).toByteArray.data.toList
theorem checked2422 : bytes2422=statementBytes 2540 (op2422.map lower) ∧ bytes2422.length=37 := by core033_kernel_decide
def op2423 : List WordIR.Op := [.band 2535 2540]
def bytes2423 : Bytes := ("    let r000009ed: u32 = r000009e7 & r000009ec;\n" : String).toByteArray.data.toList
theorem checked2423 : bytes2423=statementBytes 2541 (op2423.map lower) ∧ bytes2423.length=48 := by core033_kernel_decide
def op2424 : List WordIR.Op := [.bxor 2531 2541]
def bytes2424 : Bytes := ("    let r000009ee: u32 = r000009e3 ^ r000009ed;\n" : String).toByteArray.data.toList
theorem checked2424 : bytes2424=statementBytes 2542 (op2424.map lower) ∧ bytes2424.length=48 := by core033_kernel_decide
def op2425 : List WordIR.Op := [.shr 2542 31]
def bytes2425 : Bytes := ("    let r000009ef: u32 = r000009ee >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2425 : bytes2425=statementBytes 2543 (op2425.map lower) ∧ bytes2425.length=54 := by core033_kernel_decide
def op2426 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2426 : Bytes := ("    let r000009f0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2426 : bytes2426=statementBytes 2544 (op2426.map lower) ∧ bytes2426.length=41 := by core033_kernel_decide
def op2427 : List WordIR.Op := [.bxor 2543 2544]
def bytes2427 : Bytes := ("    let r000009f1: u32 = r000009ef ^ r000009f0;\n" : String).toByteArray.data.toList
theorem checked2427 : bytes2427=statementBytes 2545 (op2427.map lower) ∧ bytes2427.length=48 := by core033_kernel_decide
def op2428 : List WordIR.Op := [.literal (BitVec.ofNat 32 99)]
def bytes2428 : Bytes := ("    let r000009f2: u32 = 0x00000063_u32;\n" : String).toByteArray.data.toList
theorem checked2428 : bytes2428=statementBytes 2546 (op2428.map lower) ∧ bytes2428.length=41 := by core033_kernel_decide
def op2429 : List WordIR.Op := [.literal (BitVec.ofNat 32 111)]
def bytes2429 : Bytes := ("    let r000009f3: u32 = 0x0000006f_u32;\n" : String).toByteArray.data.toList
theorem checked2429 : bytes2429=statementBytes 2547 (op2429.map lower) ∧ bytes2429.length=41 := by core033_kernel_decide
def op2430 : List WordIR.Op := [.literal (BitVec.ofNat 32 114)]
def bytes2430 : Bytes := ("    let r000009f4: u32 = 0x00000072_u32;\n" : String).toByteArray.data.toList
theorem checked2430 : bytes2430=statementBytes 2548 (op2430.map lower) ∧ bytes2430.length=41 := by core033_kernel_decide
def op2431 : List WordIR.Op := [.literal (BitVec.ofNat 32 101)]
def bytes2431 : Bytes := ("    let r000009f5: u32 = 0x00000065_u32;\n" : String).toByteArray.data.toList
theorem checked2431 : bytes2431=statementBytes 2549 (op2431.map lower) ∧ bytes2431.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2368,op2369,op2370,op2371,op2372,op2373,op2374,op2375,op2376,op2377,op2378,op2379,op2380,op2381,op2382,op2383,op2384,op2385,op2386,op2387,op2388,op2389,op2390,op2391,op2392,op2393,op2394,op2395,op2396,op2397,op2398,op2399,op2400,op2401,op2402,op2403,op2404,op2405,op2406,op2407,op2408,op2409,op2410,op2411,op2412,op2413,op2414,op2415,op2416,op2417,op2418,op2419,op2420,op2421,op2422,op2423,op2424,op2425,op2426,op2427,op2428,op2429,op2430,op2431]
def chunks : List Bytes := [bytes2368,bytes2369,bytes2370,bytes2371,bytes2372,bytes2373,bytes2374,bytes2375,bytes2376,bytes2377,bytes2378,bytes2379,bytes2380,bytes2381,bytes2382,bytes2383,bytes2384,bytes2385,bytes2386,bytes2387,bytes2388,bytes2389,bytes2390,bytes2391,bytes2392,bytes2393,bytes2394,bytes2395,bytes2396,bytes2397,bytes2398,bytes2399,bytes2400,bytes2401,bytes2402,bytes2403,bytes2404,bytes2405,bytes2406,bytes2407,bytes2408,bytes2409,bytes2410,bytes2411,bytes2412,bytes2413,bytes2414,bytes2415,bytes2416,bytes2417,bytes2418,bytes2419,bytes2420,bytes2421,bytes2422,bytes2423,bytes2424,bytes2425,bytes2426,bytes2427,bytes2428,bytes2429,bytes2430,bytes2431]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2486 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2368.1 (.cons _ _ _ _ _ checked2369.1 (.cons _ _ _ _ _ checked2370.1 (.cons _ _ _ _ _ checked2371.1 (.cons _ _ _ _ _ checked2372.1 (.cons _ _ _ _ _ checked2373.1 (.cons _ _ _ _ _ checked2374.1 (.cons _ _ _ _ _ checked2375.1 (.cons _ _ _ _ _ checked2376.1 (.cons _ _ _ _ _ checked2377.1 (.cons _ _ _ _ _ checked2378.1 (.cons _ _ _ _ _ checked2379.1 (.cons _ _ _ _ _ checked2380.1 (.cons _ _ _ _ _ checked2381.1 (.cons _ _ _ _ _ checked2382.1 (.cons _ _ _ _ _ checked2383.1 (.cons _ _ _ _ _ checked2384.1 (.cons _ _ _ _ _ checked2385.1 (.cons _ _ _ _ _ checked2386.1 (.cons _ _ _ _ _ checked2387.1 (.cons _ _ _ _ _ checked2388.1 (.cons _ _ _ _ _ checked2389.1 (.cons _ _ _ _ _ checked2390.1 (.cons _ _ _ _ _ checked2391.1 (.cons _ _ _ _ _ checked2392.1 (.cons _ _ _ _ _ checked2393.1 (.cons _ _ _ _ _ checked2394.1 (.cons _ _ _ _ _ checked2395.1 (.cons _ _ _ _ _ checked2396.1 (.cons _ _ _ _ _ checked2397.1 (.cons _ _ _ _ _ checked2398.1 (.cons _ _ _ _ _ checked2399.1 (.cons _ _ _ _ _ checked2400.1 (.cons _ _ _ _ _ checked2401.1 (.cons _ _ _ _ _ checked2402.1 (.cons _ _ _ _ _ checked2403.1 (.cons _ _ _ _ _ checked2404.1 (.cons _ _ _ _ _ checked2405.1 (.cons _ _ _ _ _ checked2406.1 (.cons _ _ _ _ _ checked2407.1 (.cons _ _ _ _ _ checked2408.1 (.cons _ _ _ _ _ checked2409.1 (.cons _ _ _ _ _ checked2410.1 (.cons _ _ _ _ _ checked2411.1 (.cons _ _ _ _ _ checked2412.1 (.cons _ _ _ _ _ checked2413.1 (.cons _ _ _ _ _ checked2414.1 (.cons _ _ _ _ _ checked2415.1 (.cons _ _ _ _ _ checked2416.1 (.cons _ _ _ _ _ checked2417.1 (.cons _ _ _ _ _ checked2418.1 (.cons _ _ _ _ _ checked2419.1 (.cons _ _ _ _ _ checked2420.1 (.cons _ _ _ _ _ checked2421.1 (.cons _ _ _ _ _ checked2422.1 (.cons _ _ _ _ _ checked2423.1 (.cons _ _ _ _ _ checked2424.1 (.cons _ _ _ _ _ checked2425.1 (.cons _ _ _ _ _ checked2426.1 (.cons _ _ _ _ _ checked2427.1 (.cons _ _ _ _ _ checked2428.1 (.cons _ _ _ _ _ checked2429.1 (.cons _ _ _ _ _ checked2430.1 (.cons _ _ _ _ _ checked2431.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2486 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2924 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2368.2,checked2369.2,checked2370.2,checked2371.2,checked2372.2,checked2373.2,checked2374.2,checked2375.2,checked2376.2,checked2377.2,checked2378.2,checked2379.2,checked2380.2,checked2381.2,checked2382.2,checked2383.2,checked2384.2,checked2385.2,checked2386.2,checked2387.2,checked2388.2,checked2389.2,checked2390.2,checked2391.2,checked2392.2,checked2393.2,checked2394.2,checked2395.2,checked2396.2,checked2397.2,checked2398.2,checked2399.2,checked2400.2,checked2401.2,checked2402.2,checked2403.2,checked2404.2,checked2405.2,checked2406.2,checked2407.2,checked2408.2,checked2409.2,checked2410.2,checked2411.2,checked2412.2,checked2413.2,checked2414.2,checked2415.2,checked2416.2,checked2417.2,checked2418.2,checked2419.2,checked2420.2,checked2421.2,checked2422.2,checked2423.2,checked2424.2,checked2425.2,checked2426.2,checked2427.2,checked2428.2,checked2429.2,checked2430.2,checked2431.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup37
