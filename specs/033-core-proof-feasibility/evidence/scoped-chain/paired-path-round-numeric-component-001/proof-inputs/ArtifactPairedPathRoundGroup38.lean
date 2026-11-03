import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup38
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2432 : List WordIR.Op := [.badd 2525 2527]
def bytes2432 : Bytes := ("    let r000009e0: u32 = r000009dd.wrapping_add(r000009df);\n" : String).toByteArray.data.toList
theorem checked2432 : bytes2432=statementBytes 2528 (op2432.map lower) ∧ bytes2432.length=60 := by core033_kernel_decide
def op2433 : List WordIR.Op := [.bnot 2528]
def bytes2433 : Bytes := ("    let r000009e1: u32 = !r000009e0;\n" : String).toByteArray.data.toList
theorem checked2433 : bytes2433=statementBytes 2529 (op2433.map lower) ∧ bytes2433.length=37 := by core033_kernel_decide
def op2434 : List WordIR.Op := [.band 2523 2529]
def bytes2434 : Bytes := ("    let r000009e2: u32 = r000009db & r000009e1;\n" : String).toByteArray.data.toList
theorem checked2434 : bytes2434=statementBytes 2530 (op2434.map lower) ∧ bytes2434.length=48 := by core033_kernel_decide
def op2435 : List WordIR.Op := [.bxor 2518 2530]
def bytes2435 : Bytes := ("    let r000009e3: u32 = r000009d6 ^ r000009e2;\n" : String).toByteArray.data.toList
theorem checked2435 : bytes2435=statementBytes 2531 (op2435.map lower) ∧ bytes2435.length=48 := by core033_kernel_decide
def op2436 : List WordIR.Op := [.shr 2531 31]
def bytes2436 : Bytes := ("    let r000009e4: u32 = r000009e3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2436 : bytes2436=statementBytes 2532 (op2436.map lower) ∧ bytes2436.length=54 := by core033_kernel_decide
def op2437 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2437 : Bytes := ("    let r000009e5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2437 : bytes2437=statementBytes 2533 (op2437.map lower) ∧ bytes2437.length=41 := by core033_kernel_decide
def op2438 : List WordIR.Op := [.bxor 2532 2533]
def bytes2438 : Bytes := ("    let r000009e6: u32 = r000009e4 ^ r000009e5;\n" : String).toByteArray.data.toList
theorem checked2438 : bytes2438=statementBytes 2534 (op2438.map lower) ∧ bytes2438.length=48 := by core033_kernel_decide
def op2439 : List WordIR.Op := [.bnot 2534]
def bytes2439 : Bytes := ("    let r000009e7: u32 = !r000009e6;\n" : String).toByteArray.data.toList
theorem checked2439 : bytes2439=statementBytes 2535 (op2439.map lower) ∧ bytes2439.length=37 := by core033_kernel_decide
def op2440 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2440 : Bytes := ("    let r000009e8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2440 : bytes2440=statementBytes 2536 (op2440.map lower) ∧ bytes2440.length=41 := by core033_kernel_decide
def op2441 : List WordIR.Op := [.badd 2535 2536]
def bytes2441 : Bytes := ("    let r000009e9: u32 = r000009e7.wrapping_add(r000009e8);\n" : String).toByteArray.data.toList
theorem checked2441 : bytes2441=statementBytes 2537 (op2441.map lower) ∧ bytes2441.length=60 := by core033_kernel_decide
def op2442 : List WordIR.Op := [.bnot 2537]
def bytes2442 : Bytes := ("    let r000009ea: u32 = !r000009e9;\n" : String).toByteArray.data.toList
theorem checked2442 : bytes2442=statementBytes 2538 (op2442.map lower) ∧ bytes2442.length=37 := by core033_kernel_decide
def op2443 : List WordIR.Op := [.literal (BitVec.ofNat 32 3144134277)]
def bytes2443 : Bytes := ("    let r000009eb: u32 = 0xbb67ae85_u32;\n" : String).toByteArray.data.toList
theorem checked2443 : bytes2443=statementBytes 2539 (op2443.map lower) ∧ bytes2443.length=41 := by core033_kernel_decide
def op2444 : List WordIR.Op := [.band 2538 2539]
def bytes2444 : Bytes := ("    let r000009ec: u32 = r000009ea & r000009eb;\n" : String).toByteArray.data.toList
theorem checked2444 : bytes2444=statementBytes 2540 (op2444.map lower) ∧ bytes2444.length=48 := by core033_kernel_decide
def op2445 : List WordIR.Op := [.bxor 2513 2540]
def bytes2445 : Bytes := ("    let r000009ed: u32 = r000009d1 ^ r000009ec;\n" : String).toByteArray.data.toList
theorem checked2445 : bytes2445=statementBytes 2541 (op2445.map lower) ∧ bytes2445.length=48 := by core033_kernel_decide
def op2446 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2446 : Bytes := ("    let r000009ee: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2446 : bytes2446=statementBytes 2542 (op2446.map lower) ∧ bytes2446.length=41 := by core033_kernel_decide
def op2447 : List WordIR.Op := [.bxor 616 2542]
def bytes2447 : Bytes := ("    let r000009ef: u32 = r00000268 ^ r000009ee;\n" : String).toByteArray.data.toList
theorem checked2447 : bytes2447=statementBytes 2543 (op2447.map lower) ∧ bytes2447.length=48 := by core033_kernel_decide
def op2448 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2448 : Bytes := ("    let r000009f0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2448 : bytes2448=statementBytes 2544 (op2448.map lower) ∧ bytes2448.length=41 := by core033_kernel_decide
def op2449 : List WordIR.Op := [.bnot 2544]
def bytes2449 : Bytes := ("    let r000009f1: u32 = !r000009f0;\n" : String).toByteArray.data.toList
theorem checked2449 : bytes2449=statementBytes 2545 (op2449.map lower) ∧ bytes2449.length=37 := by core033_kernel_decide
def op2450 : List WordIR.Op := [.band 2543 2545]
def bytes2450 : Bytes := ("    let r000009f2: u32 = r000009ef & r000009f1;\n" : String).toByteArray.data.toList
theorem checked2450 : bytes2450=statementBytes 2546 (op2450.map lower) ∧ bytes2450.length=48 := by core033_kernel_decide
def op2451 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2451 : Bytes := ("    let r000009f3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2451 : bytes2451=statementBytes 2547 (op2451.map lower) ∧ bytes2451.length=41 := by core033_kernel_decide
def op2452 : List WordIR.Op := [.bxor 616 2547]
def bytes2452 : Bytes := ("    let r000009f4: u32 = r00000268 ^ r000009f3;\n" : String).toByteArray.data.toList
theorem checked2452 : bytes2452=statementBytes 2548 (op2452.map lower) ∧ bytes2452.length=48 := by core033_kernel_decide
def op2453 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2453 : Bytes := ("    let r000009f5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2453 : bytes2453=statementBytes 2549 (op2453.map lower) ∧ bytes2453.length=41 := by core033_kernel_decide
def op2454 : List WordIR.Op := [.bnot 2549]
def bytes2454 : Bytes := ("    let r000009f6: u32 = !r000009f5;\n" : String).toByteArray.data.toList
theorem checked2454 : bytes2454=statementBytes 2550 (op2454.map lower) ∧ bytes2454.length=37 := by core033_kernel_decide
def op2455 : List WordIR.Op := [.bxor 2548 2550]
def bytes2455 : Bytes := ("    let r000009f7: u32 = r000009f4 ^ r000009f6;\n" : String).toByteArray.data.toList
theorem checked2455 : bytes2455=statementBytes 2551 (op2455.map lower) ∧ bytes2455.length=48 := by core033_kernel_decide
def op2456 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2456 : Bytes := ("    let r000009f8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2456 : bytes2456=statementBytes 2552 (op2456.map lower) ∧ bytes2456.length=41 := by core033_kernel_decide
def op2457 : List WordIR.Op := [.bxor 616 2552]
def bytes2457 : Bytes := ("    let r000009f9: u32 = r00000268 ^ r000009f8;\n" : String).toByteArray.data.toList
theorem checked2457 : bytes2457=statementBytes 2553 (op2457.map lower) ∧ bytes2457.length=48 := by core033_kernel_decide
def op2458 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2458 : Bytes := ("    let r000009fa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2458 : bytes2458=statementBytes 2554 (op2458.map lower) ∧ bytes2458.length=41 := by core033_kernel_decide
def op2459 : List WordIR.Op := [.bnot 2554]
def bytes2459 : Bytes := ("    let r000009fb: u32 = !r000009fa;\n" : String).toByteArray.data.toList
theorem checked2459 : bytes2459=statementBytes 2555 (op2459.map lower) ∧ bytes2459.length=37 := by core033_kernel_decide
def op2460 : List WordIR.Op := [.badd 2553 2555]
def bytes2460 : Bytes := ("    let r000009fc: u32 = r000009f9.wrapping_add(r000009fb);\n" : String).toByteArray.data.toList
theorem checked2460 : bytes2460=statementBytes 2556 (op2460.map lower) ∧ bytes2460.length=60 := by core033_kernel_decide
def op2461 : List WordIR.Op := [.bnot 2556]
def bytes2461 : Bytes := ("    let r000009fd: u32 = !r000009fc;\n" : String).toByteArray.data.toList
theorem checked2461 : bytes2461=statementBytes 2557 (op2461.map lower) ∧ bytes2461.length=37 := by core033_kernel_decide
def op2462 : List WordIR.Op := [.band 2551 2557]
def bytes2462 : Bytes := ("    let r000009fe: u32 = r000009f7 & r000009fd;\n" : String).toByteArray.data.toList
theorem checked2462 : bytes2462=statementBytes 2558 (op2462.map lower) ∧ bytes2462.length=48 := by core033_kernel_decide
def op2463 : List WordIR.Op := [.bxor 2546 2558]
def bytes2463 : Bytes := ("    let r000009ff: u32 = r000009f2 ^ r000009fe;\n" : String).toByteArray.data.toList
theorem checked2463 : bytes2463=statementBytes 2559 (op2463.map lower) ∧ bytes2463.length=48 := by core033_kernel_decide
def op2464 : List WordIR.Op := [.shr 2559 31]
def bytes2464 : Bytes := ("    let r00000a00: u32 = r000009ff >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2464 : bytes2464=statementBytes 2560 (op2464.map lower) ∧ bytes2464.length=54 := by core033_kernel_decide
def op2465 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2465 : Bytes := ("    let r00000a01: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2465 : bytes2465=statementBytes 2561 (op2465.map lower) ∧ bytes2465.length=41 := by core033_kernel_decide
def op2466 : List WordIR.Op := [.bxor 2560 2561]
def bytes2466 : Bytes := ("    let r00000a02: u32 = r00000a00 ^ r00000a01;\n" : String).toByteArray.data.toList
theorem checked2466 : bytes2466=statementBytes 2562 (op2466.map lower) ∧ bytes2466.length=48 := by core033_kernel_decide
def op2467 : List WordIR.Op := [.bnot 2562]
def bytes2467 : Bytes := ("    let r00000a03: u32 = !r00000a02;\n" : String).toByteArray.data.toList
theorem checked2467 : bytes2467=statementBytes 2563 (op2467.map lower) ∧ bytes2467.length=37 := by core033_kernel_decide
def op2468 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2468 : Bytes := ("    let r00000a04: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2468 : bytes2468=statementBytes 2564 (op2468.map lower) ∧ bytes2468.length=41 := by core033_kernel_decide
def op2469 : List WordIR.Op := [.badd 2563 2564]
def bytes2469 : Bytes := ("    let r00000a05: u32 = r00000a03.wrapping_add(r00000a04);\n" : String).toByteArray.data.toList
theorem checked2469 : bytes2469=statementBytes 2565 (op2469.map lower) ∧ bytes2469.length=60 := by core033_kernel_decide
def op2470 : List WordIR.Op := [.band 2565 1023]
def bytes2470 : Bytes := ("    let r00000a06: u32 = r00000a05 & r000003ff;\n" : String).toByteArray.data.toList
theorem checked2470 : bytes2470=statementBytes 2566 (op2470.map lower) ∧ bytes2470.length=48 := by core033_kernel_decide
def op2471 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2471 : Bytes := ("    let r00000a07: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2471 : bytes2471=statementBytes 2567 (op2471.map lower) ∧ bytes2471.length=41 := by core033_kernel_decide
def op2472 : List WordIR.Op := [.bxor 616 2567]
def bytes2472 : Bytes := ("    let r00000a08: u32 = r00000268 ^ r00000a07;\n" : String).toByteArray.data.toList
theorem checked2472 : bytes2472=statementBytes 2568 (op2472.map lower) ∧ bytes2472.length=48 := by core033_kernel_decide
def op2473 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2473 : Bytes := ("    let r00000a09: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2473 : bytes2473=statementBytes 2569 (op2473.map lower) ∧ bytes2473.length=41 := by core033_kernel_decide
def op2474 : List WordIR.Op := [.bnot 2569]
def bytes2474 : Bytes := ("    let r00000a0a: u32 = !r00000a09;\n" : String).toByteArray.data.toList
theorem checked2474 : bytes2474=statementBytes 2570 (op2474.map lower) ∧ bytes2474.length=37 := by core033_kernel_decide
def op2475 : List WordIR.Op := [.band 2568 2570]
def bytes2475 : Bytes := ("    let r00000a0b: u32 = r00000a08 & r00000a0a;\n" : String).toByteArray.data.toList
theorem checked2475 : bytes2475=statementBytes 2571 (op2475.map lower) ∧ bytes2475.length=48 := by core033_kernel_decide
def op2476 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2476 : Bytes := ("    let r00000a0c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2476 : bytes2476=statementBytes 2572 (op2476.map lower) ∧ bytes2476.length=41 := by core033_kernel_decide
def op2477 : List WordIR.Op := [.bxor 616 2572]
def bytes2477 : Bytes := ("    let r00000a0d: u32 = r00000268 ^ r00000a0c;\n" : String).toByteArray.data.toList
theorem checked2477 : bytes2477=statementBytes 2573 (op2477.map lower) ∧ bytes2477.length=48 := by core033_kernel_decide
def op2478 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2478 : Bytes := ("    let r00000a0e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2478 : bytes2478=statementBytes 2574 (op2478.map lower) ∧ bytes2478.length=41 := by core033_kernel_decide
def op2479 : List WordIR.Op := [.bnot 2574]
def bytes2479 : Bytes := ("    let r00000a0f: u32 = !r00000a0e;\n" : String).toByteArray.data.toList
theorem checked2479 : bytes2479=statementBytes 2575 (op2479.map lower) ∧ bytes2479.length=37 := by core033_kernel_decide
def op2480 : List WordIR.Op := [.bxor 2573 2575]
def bytes2480 : Bytes := ("    let r00000a10: u32 = r00000a0d ^ r00000a0f;\n" : String).toByteArray.data.toList
theorem checked2480 : bytes2480=statementBytes 2576 (op2480.map lower) ∧ bytes2480.length=48 := by core033_kernel_decide
def op2481 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2481 : Bytes := ("    let r00000a11: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2481 : bytes2481=statementBytes 2577 (op2481.map lower) ∧ bytes2481.length=41 := by core033_kernel_decide
def op2482 : List WordIR.Op := [.bxor 616 2577]
def bytes2482 : Bytes := ("    let r00000a12: u32 = r00000268 ^ r00000a11;\n" : String).toByteArray.data.toList
theorem checked2482 : bytes2482=statementBytes 2578 (op2482.map lower) ∧ bytes2482.length=48 := by core033_kernel_decide
def op2483 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2483 : Bytes := ("    let r00000a13: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2483 : bytes2483=statementBytes 2579 (op2483.map lower) ∧ bytes2483.length=41 := by core033_kernel_decide
def op2484 : List WordIR.Op := [.bnot 2579]
def bytes2484 : Bytes := ("    let r00000a14: u32 = !r00000a13;\n" : String).toByteArray.data.toList
theorem checked2484 : bytes2484=statementBytes 2580 (op2484.map lower) ∧ bytes2484.length=37 := by core033_kernel_decide
def op2485 : List WordIR.Op := [.badd 2578 2580]
def bytes2485 : Bytes := ("    let r00000a15: u32 = r00000a12.wrapping_add(r00000a14);\n" : String).toByteArray.data.toList
theorem checked2485 : bytes2485=statementBytes 2581 (op2485.map lower) ∧ bytes2485.length=60 := by core033_kernel_decide
def op2486 : List WordIR.Op := [.bnot 2581]
def bytes2486 : Bytes := ("    let r00000a16: u32 = !r00000a15;\n" : String).toByteArray.data.toList
theorem checked2486 : bytes2486=statementBytes 2582 (op2486.map lower) ∧ bytes2486.length=37 := by core033_kernel_decide
def op2487 : List WordIR.Op := [.band 2576 2582]
def bytes2487 : Bytes := ("    let r00000a17: u32 = r00000a10 & r00000a16;\n" : String).toByteArray.data.toList
theorem checked2487 : bytes2487=statementBytes 2583 (op2487.map lower) ∧ bytes2487.length=48 := by core033_kernel_decide
def op2488 : List WordIR.Op := [.bxor 2571 2583]
def bytes2488 : Bytes := ("    let r00000a18: u32 = r00000a0b ^ r00000a17;\n" : String).toByteArray.data.toList
theorem checked2488 : bytes2488=statementBytes 2584 (op2488.map lower) ∧ bytes2488.length=48 := by core033_kernel_decide
def op2489 : List WordIR.Op := [.shr 2584 31]
def bytes2489 : Bytes := ("    let r00000a19: u32 = r00000a18 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2489 : bytes2489=statementBytes 2585 (op2489.map lower) ∧ bytes2489.length=54 := by core033_kernel_decide
def op2490 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2490 : Bytes := ("    let r00000a1a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2490 : bytes2490=statementBytes 2586 (op2490.map lower) ∧ bytes2490.length=41 := by core033_kernel_decide
def op2491 : List WordIR.Op := [.bxor 2585 2586]
def bytes2491 : Bytes := ("    let r00000a1b: u32 = r00000a19 ^ r00000a1a;\n" : String).toByteArray.data.toList
theorem checked2491 : bytes2491=statementBytes 2587 (op2491.map lower) ∧ bytes2491.length=48 := by core033_kernel_decide
def op2492 : List WordIR.Op := [.bnot 2587]
def bytes2492 : Bytes := ("    let r00000a1c: u32 = !r00000a1b;\n" : String).toByteArray.data.toList
theorem checked2492 : bytes2492=statementBytes 2588 (op2492.map lower) ∧ bytes2492.length=37 := by core033_kernel_decide
def op2493 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2493 : Bytes := ("    let r00000a1d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2493 : bytes2493=statementBytes 2589 (op2493.map lower) ∧ bytes2493.length=41 := by core033_kernel_decide
def op2494 : List WordIR.Op := [.badd 2588 2589]
def bytes2494 : Bytes := ("    let r00000a1e: u32 = r00000a1c.wrapping_add(r00000a1d);\n" : String).toByteArray.data.toList
theorem checked2494 : bytes2494=statementBytes 2590 (op2494.map lower) ∧ bytes2494.length=60 := by core033_kernel_decide
def op2495 : List WordIR.Op := [.bnot 2590]
def bytes2495 : Bytes := ("    let r00000a1f: u32 = !r00000a1e;\n" : String).toByteArray.data.toList
theorem checked2495 : bytes2495=statementBytes 2591 (op2495.map lower) ∧ bytes2495.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2432,op2433,op2434,op2435,op2436,op2437,op2438,op2439,op2440,op2441,op2442,op2443,op2444,op2445,op2446,op2447,op2448,op2449,op2450,op2451,op2452,op2453,op2454,op2455,op2456,op2457,op2458,op2459,op2460,op2461,op2462,op2463,op2464,op2465,op2466,op2467,op2468,op2469,op2470,op2471,op2472,op2473,op2474,op2475,op2476,op2477,op2478,op2479,op2480,op2481,op2482,op2483,op2484,op2485,op2486,op2487,op2488,op2489,op2490,op2491,op2492,op2493,op2494,op2495]
def chunks : List Bytes := [bytes2432,bytes2433,bytes2434,bytes2435,bytes2436,bytes2437,bytes2438,bytes2439,bytes2440,bytes2441,bytes2442,bytes2443,bytes2444,bytes2445,bytes2446,bytes2447,bytes2448,bytes2449,bytes2450,bytes2451,bytes2452,bytes2453,bytes2454,bytes2455,bytes2456,bytes2457,bytes2458,bytes2459,bytes2460,bytes2461,bytes2462,bytes2463,bytes2464,bytes2465,bytes2466,bytes2467,bytes2468,bytes2469,bytes2470,bytes2471,bytes2472,bytes2473,bytes2474,bytes2475,bytes2476,bytes2477,bytes2478,bytes2479,bytes2480,bytes2481,bytes2482,bytes2483,bytes2484,bytes2485,bytes2486,bytes2487,bytes2488,bytes2489,bytes2490,bytes2491,bytes2492,bytes2493,bytes2494,bytes2495]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2528 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2432.1 (.cons _ _ _ _ _ checked2433.1 (.cons _ _ _ _ _ checked2434.1 (.cons _ _ _ _ _ checked2435.1 (.cons _ _ _ _ _ checked2436.1 (.cons _ _ _ _ _ checked2437.1 (.cons _ _ _ _ _ checked2438.1 (.cons _ _ _ _ _ checked2439.1 (.cons _ _ _ _ _ checked2440.1 (.cons _ _ _ _ _ checked2441.1 (.cons _ _ _ _ _ checked2442.1 (.cons _ _ _ _ _ checked2443.1 (.cons _ _ _ _ _ checked2444.1 (.cons _ _ _ _ _ checked2445.1 (.cons _ _ _ _ _ checked2446.1 (.cons _ _ _ _ _ checked2447.1 (.cons _ _ _ _ _ checked2448.1 (.cons _ _ _ _ _ checked2449.1 (.cons _ _ _ _ _ checked2450.1 (.cons _ _ _ _ _ checked2451.1 (.cons _ _ _ _ _ checked2452.1 (.cons _ _ _ _ _ checked2453.1 (.cons _ _ _ _ _ checked2454.1 (.cons _ _ _ _ _ checked2455.1 (.cons _ _ _ _ _ checked2456.1 (.cons _ _ _ _ _ checked2457.1 (.cons _ _ _ _ _ checked2458.1 (.cons _ _ _ _ _ checked2459.1 (.cons _ _ _ _ _ checked2460.1 (.cons _ _ _ _ _ checked2461.1 (.cons _ _ _ _ _ checked2462.1 (.cons _ _ _ _ _ checked2463.1 (.cons _ _ _ _ _ checked2464.1 (.cons _ _ _ _ _ checked2465.1 (.cons _ _ _ _ _ checked2466.1 (.cons _ _ _ _ _ checked2467.1 (.cons _ _ _ _ _ checked2468.1 (.cons _ _ _ _ _ checked2469.1 (.cons _ _ _ _ _ checked2470.1 (.cons _ _ _ _ _ checked2471.1 (.cons _ _ _ _ _ checked2472.1 (.cons _ _ _ _ _ checked2473.1 (.cons _ _ _ _ _ checked2474.1 (.cons _ _ _ _ _ checked2475.1 (.cons _ _ _ _ _ checked2476.1 (.cons _ _ _ _ _ checked2477.1 (.cons _ _ _ _ _ checked2478.1 (.cons _ _ _ _ _ checked2479.1 (.cons _ _ _ _ _ checked2480.1 (.cons _ _ _ _ _ checked2481.1 (.cons _ _ _ _ _ checked2482.1 (.cons _ _ _ _ _ checked2483.1 (.cons _ _ _ _ _ checked2484.1 (.cons _ _ _ _ _ checked2485.1 (.cons _ _ _ _ _ checked2486.1 (.cons _ _ _ _ _ checked2487.1 (.cons _ _ _ _ _ checked2488.1 (.cons _ _ _ _ _ checked2489.1 (.cons _ _ _ _ _ checked2490.1 (.cons _ _ _ _ _ checked2491.1 (.cons _ _ _ _ _ checked2492.1 (.cons _ _ _ _ _ checked2493.1 (.cons _ _ _ _ _ checked2494.1 (.cons _ _ _ _ _ checked2495.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2528 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2875 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2432.2,checked2433.2,checked2434.2,checked2435.2,checked2436.2,checked2437.2,checked2438.2,checked2439.2,checked2440.2,checked2441.2,checked2442.2,checked2443.2,checked2444.2,checked2445.2,checked2446.2,checked2447.2,checked2448.2,checked2449.2,checked2450.2,checked2451.2,checked2452.2,checked2453.2,checked2454.2,checked2455.2,checked2456.2,checked2457.2,checked2458.2,checked2459.2,checked2460.2,checked2461.2,checked2462.2,checked2463.2,checked2464.2,checked2465.2,checked2466.2,checked2467.2,checked2468.2,checked2469.2,checked2470.2,checked2471.2,checked2472.2,checked2473.2,checked2474.2,checked2475.2,checked2476.2,checked2477.2,checked2478.2,checked2479.2,checked2480.2,checked2481.2,checked2482.2,checked2483.2,checked2484.2,checked2485.2,checked2486.2,checked2487.2,checked2488.2,checked2489.2,checked2490.2,checked2491.2,checked2492.2,checked2493.2,checked2494.2,checked2495.2]
  decide
end ArtifactPairedPathRoundGroup38
