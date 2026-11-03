import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup39
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2496 : List WordIR.Op := [.badd 2536 2538]
def bytes2496 : Bytes := ("    let r000009eb: u32 = r000009e8.wrapping_add(r000009ea);\n" : String).toByteArray.data.toList
theorem checked2496 : bytes2496=statementBytes 2539 (op2496.map lower) ∧ bytes2496.length=60 := by core033_kernel_decide
def op2497 : List WordIR.Op := [.bnot 2539]
def bytes2497 : Bytes := ("    let r000009ec: u32 = !r000009eb;\n" : String).toByteArray.data.toList
theorem checked2497 : bytes2497=statementBytes 2540 (op2497.map lower) ∧ bytes2497.length=37 := by core033_kernel_decide
def op2498 : List WordIR.Op := [.band 2534 2540]
def bytes2498 : Bytes := ("    let r000009ed: u32 = r000009e6 & r000009ec;\n" : String).toByteArray.data.toList
theorem checked2498 : bytes2498=statementBytes 2541 (op2498.map lower) ∧ bytes2498.length=48 := by core033_kernel_decide
def op2499 : List WordIR.Op := [.bxor 2529 2541]
def bytes2499 : Bytes := ("    let r000009ee: u32 = r000009e1 ^ r000009ed;\n" : String).toByteArray.data.toList
theorem checked2499 : bytes2499=statementBytes 2542 (op2499.map lower) ∧ bytes2499.length=48 := by core033_kernel_decide
def op2500 : List WordIR.Op := [.shr 2542 31]
def bytes2500 : Bytes := ("    let r000009ef: u32 = r000009ee >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2500 : bytes2500=statementBytes 2543 (op2500.map lower) ∧ bytes2500.length=54 := by core033_kernel_decide
def op2501 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2501 : Bytes := ("    let r000009f0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2501 : bytes2501=statementBytes 2544 (op2501.map lower) ∧ bytes2501.length=41 := by core033_kernel_decide
def op2502 : List WordIR.Op := [.bxor 2543 2544]
def bytes2502 : Bytes := ("    let r000009f1: u32 = r000009ef ^ r000009f0;\n" : String).toByteArray.data.toList
theorem checked2502 : bytes2502=statementBytes 2545 (op2502.map lower) ∧ bytes2502.length=48 := by core033_kernel_decide
def op2503 : List WordIR.Op := [.bnot 2545]
def bytes2503 : Bytes := ("    let r000009f2: u32 = !r000009f1;\n" : String).toByteArray.data.toList
theorem checked2503 : bytes2503=statementBytes 2546 (op2503.map lower) ∧ bytes2503.length=37 := by core033_kernel_decide
def op2504 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2504 : Bytes := ("    let r000009f3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2504 : bytes2504=statementBytes 2547 (op2504.map lower) ∧ bytes2504.length=41 := by core033_kernel_decide
def op2505 : List WordIR.Op := [.badd 2546 2547]
def bytes2505 : Bytes := ("    let r000009f4: u32 = r000009f2.wrapping_add(r000009f3);\n" : String).toByteArray.data.toList
theorem checked2505 : bytes2505=statementBytes 2548 (op2505.map lower) ∧ bytes2505.length=60 := by core033_kernel_decide
def op2506 : List WordIR.Op := [.bnot 2548]
def bytes2506 : Bytes := ("    let r000009f5: u32 = !r000009f4;\n" : String).toByteArray.data.toList
theorem checked2506 : bytes2506=statementBytes 2549 (op2506.map lower) ∧ bytes2506.length=37 := by core033_kernel_decide
def op2507 : List WordIR.Op := [.band 2549 840]
def bytes2507 : Bytes := ("    let r000009f6: u32 = r000009f5 & r00000348;\n" : String).toByteArray.data.toList
theorem checked2507 : bytes2507=statementBytes 2550 (op2507.map lower) ∧ bytes2507.length=48 := by core033_kernel_decide
def op2508 : List WordIR.Op := [.bxor 2524 2550]
def bytes2508 : Bytes := ("    let r000009f7: u32 = r000009dc ^ r000009f6;\n" : String).toByteArray.data.toList
theorem checked2508 : bytes2508=statementBytes 2551 (op2508.map lower) ∧ bytes2508.length=48 := by core033_kernel_decide
def op2509 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2509 : Bytes := ("    let r000009f8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2509 : bytes2509=statementBytes 2552 (op2509.map lower) ∧ bytes2509.length=41 := by core033_kernel_decide
def op2510 : List WordIR.Op := [.bxor 0 2552]
def bytes2510 : Bytes := ("    let r000009f9: u32 = r00000000 ^ r000009f8;\n" : String).toByteArray.data.toList
theorem checked2510 : bytes2510=statementBytes 2553 (op2510.map lower) ∧ bytes2510.length=48 := by core033_kernel_decide
def op2511 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2511 : Bytes := ("    let r000009fa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2511 : bytes2511=statementBytes 2554 (op2511.map lower) ∧ bytes2511.length=41 := by core033_kernel_decide
def op2512 : List WordIR.Op := [.bnot 2554]
def bytes2512 : Bytes := ("    let r000009fb: u32 = !r000009fa;\n" : String).toByteArray.data.toList
theorem checked2512 : bytes2512=statementBytes 2555 (op2512.map lower) ∧ bytes2512.length=37 := by core033_kernel_decide
def op2513 : List WordIR.Op := [.band 2553 2555]
def bytes2513 : Bytes := ("    let r000009fc: u32 = r000009f9 & r000009fb;\n" : String).toByteArray.data.toList
theorem checked2513 : bytes2513=statementBytes 2556 (op2513.map lower) ∧ bytes2513.length=48 := by core033_kernel_decide
def op2514 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2514 : Bytes := ("    let r000009fd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2514 : bytes2514=statementBytes 2557 (op2514.map lower) ∧ bytes2514.length=41 := by core033_kernel_decide
def op2515 : List WordIR.Op := [.bxor 0 2557]
def bytes2515 : Bytes := ("    let r000009fe: u32 = r00000000 ^ r000009fd;\n" : String).toByteArray.data.toList
theorem checked2515 : bytes2515=statementBytes 2558 (op2515.map lower) ∧ bytes2515.length=48 := by core033_kernel_decide
def op2516 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2516 : Bytes := ("    let r000009ff: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2516 : bytes2516=statementBytes 2559 (op2516.map lower) ∧ bytes2516.length=41 := by core033_kernel_decide
def op2517 : List WordIR.Op := [.bnot 2559]
def bytes2517 : Bytes := ("    let r00000a00: u32 = !r000009ff;\n" : String).toByteArray.data.toList
theorem checked2517 : bytes2517=statementBytes 2560 (op2517.map lower) ∧ bytes2517.length=37 := by core033_kernel_decide
def op2518 : List WordIR.Op := [.bxor 2558 2560]
def bytes2518 : Bytes := ("    let r00000a01: u32 = r000009fe ^ r00000a00;\n" : String).toByteArray.data.toList
theorem checked2518 : bytes2518=statementBytes 2561 (op2518.map lower) ∧ bytes2518.length=48 := by core033_kernel_decide
def op2519 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2519 : Bytes := ("    let r00000a02: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2519 : bytes2519=statementBytes 2562 (op2519.map lower) ∧ bytes2519.length=41 := by core033_kernel_decide
def op2520 : List WordIR.Op := [.bxor 0 2562]
def bytes2520 : Bytes := ("    let r00000a03: u32 = r00000000 ^ r00000a02;\n" : String).toByteArray.data.toList
theorem checked2520 : bytes2520=statementBytes 2563 (op2520.map lower) ∧ bytes2520.length=48 := by core033_kernel_decide
def op2521 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2521 : Bytes := ("    let r00000a04: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2521 : bytes2521=statementBytes 2564 (op2521.map lower) ∧ bytes2521.length=41 := by core033_kernel_decide
def op2522 : List WordIR.Op := [.bnot 2564]
def bytes2522 : Bytes := ("    let r00000a05: u32 = !r00000a04;\n" : String).toByteArray.data.toList
theorem checked2522 : bytes2522=statementBytes 2565 (op2522.map lower) ∧ bytes2522.length=37 := by core033_kernel_decide
def op2523 : List WordIR.Op := [.badd 2563 2565]
def bytes2523 : Bytes := ("    let r00000a06: u32 = r00000a03.wrapping_add(r00000a05);\n" : String).toByteArray.data.toList
theorem checked2523 : bytes2523=statementBytes 2566 (op2523.map lower) ∧ bytes2523.length=60 := by core033_kernel_decide
def op2524 : List WordIR.Op := [.bnot 2566]
def bytes2524 : Bytes := ("    let r00000a07: u32 = !r00000a06;\n" : String).toByteArray.data.toList
theorem checked2524 : bytes2524=statementBytes 2567 (op2524.map lower) ∧ bytes2524.length=37 := by core033_kernel_decide
def op2525 : List WordIR.Op := [.band 2561 2567]
def bytes2525 : Bytes := ("    let r00000a08: u32 = r00000a01 & r00000a07;\n" : String).toByteArray.data.toList
theorem checked2525 : bytes2525=statementBytes 2568 (op2525.map lower) ∧ bytes2525.length=48 := by core033_kernel_decide
def op2526 : List WordIR.Op := [.bxor 2556 2568]
def bytes2526 : Bytes := ("    let r00000a09: u32 = r000009fc ^ r00000a08;\n" : String).toByteArray.data.toList
theorem checked2526 : bytes2526=statementBytes 2569 (op2526.map lower) ∧ bytes2526.length=48 := by core033_kernel_decide
def op2527 : List WordIR.Op := [.shr 2569 31]
def bytes2527 : Bytes := ("    let r00000a0a: u32 = r00000a09 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2527 : bytes2527=statementBytes 2570 (op2527.map lower) ∧ bytes2527.length=54 := by core033_kernel_decide
def op2528 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2528 : Bytes := ("    let r00000a0b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2528 : bytes2528=statementBytes 2571 (op2528.map lower) ∧ bytes2528.length=41 := by core033_kernel_decide
def op2529 : List WordIR.Op := [.bxor 2570 2571]
def bytes2529 : Bytes := ("    let r00000a0c: u32 = r00000a0a ^ r00000a0b;\n" : String).toByteArray.data.toList
theorem checked2529 : bytes2529=statementBytes 2572 (op2529.map lower) ∧ bytes2529.length=48 := by core033_kernel_decide
def op2530 : List WordIR.Op := [.bnot 2572]
def bytes2530 : Bytes := ("    let r00000a0d: u32 = !r00000a0c;\n" : String).toByteArray.data.toList
theorem checked2530 : bytes2530=statementBytes 2573 (op2530.map lower) ∧ bytes2530.length=37 := by core033_kernel_decide
def op2531 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2531 : Bytes := ("    let r00000a0e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2531 : bytes2531=statementBytes 2574 (op2531.map lower) ∧ bytes2531.length=41 := by core033_kernel_decide
def op2532 : List WordIR.Op := [.badd 2573 2574]
def bytes2532 : Bytes := ("    let r00000a0f: u32 = r00000a0d.wrapping_add(r00000a0e);\n" : String).toByteArray.data.toList
theorem checked2532 : bytes2532=statementBytes 2575 (op2532.map lower) ∧ bytes2532.length=60 := by core033_kernel_decide
def op2533 : List WordIR.Op := [.band 2575 1019]
def bytes2533 : Bytes := ("    let r00000a10: u32 = r00000a0f & r000003fb;\n" : String).toByteArray.data.toList
theorem checked2533 : bytes2533=statementBytes 2576 (op2533.map lower) ∧ bytes2533.length=48 := by core033_kernel_decide
def op2534 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2534 : Bytes := ("    let r00000a11: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2534 : bytes2534=statementBytes 2577 (op2534.map lower) ∧ bytes2534.length=41 := by core033_kernel_decide
def op2535 : List WordIR.Op := [.bxor 0 2577]
def bytes2535 : Bytes := ("    let r00000a12: u32 = r00000000 ^ r00000a11;\n" : String).toByteArray.data.toList
theorem checked2535 : bytes2535=statementBytes 2578 (op2535.map lower) ∧ bytes2535.length=48 := by core033_kernel_decide
def op2536 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2536 : Bytes := ("    let r00000a13: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2536 : bytes2536=statementBytes 2579 (op2536.map lower) ∧ bytes2536.length=41 := by core033_kernel_decide
def op2537 : List WordIR.Op := [.bnot 2579]
def bytes2537 : Bytes := ("    let r00000a14: u32 = !r00000a13;\n" : String).toByteArray.data.toList
theorem checked2537 : bytes2537=statementBytes 2580 (op2537.map lower) ∧ bytes2537.length=37 := by core033_kernel_decide
def op2538 : List WordIR.Op := [.band 2578 2580]
def bytes2538 : Bytes := ("    let r00000a15: u32 = r00000a12 & r00000a14;\n" : String).toByteArray.data.toList
theorem checked2538 : bytes2538=statementBytes 2581 (op2538.map lower) ∧ bytes2538.length=48 := by core033_kernel_decide
def op2539 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2539 : Bytes := ("    let r00000a16: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2539 : bytes2539=statementBytes 2582 (op2539.map lower) ∧ bytes2539.length=41 := by core033_kernel_decide
def op2540 : List WordIR.Op := [.bxor 0 2582]
def bytes2540 : Bytes := ("    let r00000a17: u32 = r00000000 ^ r00000a16;\n" : String).toByteArray.data.toList
theorem checked2540 : bytes2540=statementBytes 2583 (op2540.map lower) ∧ bytes2540.length=48 := by core033_kernel_decide
def op2541 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2541 : Bytes := ("    let r00000a18: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2541 : bytes2541=statementBytes 2584 (op2541.map lower) ∧ bytes2541.length=41 := by core033_kernel_decide
def op2542 : List WordIR.Op := [.bnot 2584]
def bytes2542 : Bytes := ("    let r00000a19: u32 = !r00000a18;\n" : String).toByteArray.data.toList
theorem checked2542 : bytes2542=statementBytes 2585 (op2542.map lower) ∧ bytes2542.length=37 := by core033_kernel_decide
def op2543 : List WordIR.Op := [.bxor 2583 2585]
def bytes2543 : Bytes := ("    let r00000a1a: u32 = r00000a17 ^ r00000a19;\n" : String).toByteArray.data.toList
theorem checked2543 : bytes2543=statementBytes 2586 (op2543.map lower) ∧ bytes2543.length=48 := by core033_kernel_decide
def op2544 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2544 : Bytes := ("    let r00000a1b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2544 : bytes2544=statementBytes 2587 (op2544.map lower) ∧ bytes2544.length=41 := by core033_kernel_decide
def op2545 : List WordIR.Op := [.bxor 0 2587]
def bytes2545 : Bytes := ("    let r00000a1c: u32 = r00000000 ^ r00000a1b;\n" : String).toByteArray.data.toList
theorem checked2545 : bytes2545=statementBytes 2588 (op2545.map lower) ∧ bytes2545.length=48 := by core033_kernel_decide
def op2546 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2546 : Bytes := ("    let r00000a1d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2546 : bytes2546=statementBytes 2589 (op2546.map lower) ∧ bytes2546.length=41 := by core033_kernel_decide
def op2547 : List WordIR.Op := [.bnot 2589]
def bytes2547 : Bytes := ("    let r00000a1e: u32 = !r00000a1d;\n" : String).toByteArray.data.toList
theorem checked2547 : bytes2547=statementBytes 2590 (op2547.map lower) ∧ bytes2547.length=37 := by core033_kernel_decide
def op2548 : List WordIR.Op := [.badd 2588 2590]
def bytes2548 : Bytes := ("    let r00000a1f: u32 = r00000a1c.wrapping_add(r00000a1e);\n" : String).toByteArray.data.toList
theorem checked2548 : bytes2548=statementBytes 2591 (op2548.map lower) ∧ bytes2548.length=60 := by core033_kernel_decide
def op2549 : List WordIR.Op := [.bnot 2591]
def bytes2549 : Bytes := ("    let r00000a20: u32 = !r00000a1f;\n" : String).toByteArray.data.toList
theorem checked2549 : bytes2549=statementBytes 2592 (op2549.map lower) ∧ bytes2549.length=37 := by core033_kernel_decide
def op2550 : List WordIR.Op := [.band 2586 2592]
def bytes2550 : Bytes := ("    let r00000a21: u32 = r00000a1a & r00000a20;\n" : String).toByteArray.data.toList
theorem checked2550 : bytes2550=statementBytes 2593 (op2550.map lower) ∧ bytes2550.length=48 := by core033_kernel_decide
def op2551 : List WordIR.Op := [.bxor 2581 2593]
def bytes2551 : Bytes := ("    let r00000a22: u32 = r00000a15 ^ r00000a21;\n" : String).toByteArray.data.toList
theorem checked2551 : bytes2551=statementBytes 2594 (op2551.map lower) ∧ bytes2551.length=48 := by core033_kernel_decide
def op2552 : List WordIR.Op := [.shr 2594 31]
def bytes2552 : Bytes := ("    let r00000a23: u32 = r00000a22 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2552 : bytes2552=statementBytes 2595 (op2552.map lower) ∧ bytes2552.length=54 := by core033_kernel_decide
def op2553 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2553 : Bytes := ("    let r00000a24: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2553 : bytes2553=statementBytes 2596 (op2553.map lower) ∧ bytes2553.length=41 := by core033_kernel_decide
def op2554 : List WordIR.Op := [.bxor 2595 2596]
def bytes2554 : Bytes := ("    let r00000a25: u32 = r00000a23 ^ r00000a24;\n" : String).toByteArray.data.toList
theorem checked2554 : bytes2554=statementBytes 2597 (op2554.map lower) ∧ bytes2554.length=48 := by core033_kernel_decide
def op2555 : List WordIR.Op := [.bnot 2597]
def bytes2555 : Bytes := ("    let r00000a26: u32 = !r00000a25;\n" : String).toByteArray.data.toList
theorem checked2555 : bytes2555=statementBytes 2598 (op2555.map lower) ∧ bytes2555.length=37 := by core033_kernel_decide
def op2556 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2556 : Bytes := ("    let r00000a27: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2556 : bytes2556=statementBytes 2599 (op2556.map lower) ∧ bytes2556.length=41 := by core033_kernel_decide
def op2557 : List WordIR.Op := [.badd 2598 2599]
def bytes2557 : Bytes := ("    let r00000a28: u32 = r00000a26.wrapping_add(r00000a27);\n" : String).toByteArray.data.toList
theorem checked2557 : bytes2557=statementBytes 2600 (op2557.map lower) ∧ bytes2557.length=60 := by core033_kernel_decide
def op2558 : List WordIR.Op := [.bnot 2600]
def bytes2558 : Bytes := ("    let r00000a29: u32 = !r00000a28;\n" : String).toByteArray.data.toList
theorem checked2558 : bytes2558=statementBytes 2601 (op2558.map lower) ∧ bytes2558.length=37 := by core033_kernel_decide
def op2559 : List WordIR.Op := [.band 2601 841]
def bytes2559 : Bytes := ("    let r00000a2a: u32 = r00000a29 & r00000349;\n" : String).toByteArray.data.toList
theorem checked2559 : bytes2559=statementBytes 2602 (op2559.map lower) ∧ bytes2559.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2496,op2497,op2498,op2499,op2500,op2501,op2502,op2503,op2504,op2505,op2506,op2507,op2508,op2509,op2510,op2511,op2512,op2513,op2514,op2515,op2516,op2517,op2518,op2519,op2520,op2521,op2522,op2523,op2524,op2525,op2526,op2527,op2528,op2529,op2530,op2531,op2532,op2533,op2534,op2535,op2536,op2537,op2538,op2539,op2540,op2541,op2542,op2543,op2544,op2545,op2546,op2547,op2548,op2549,op2550,op2551,op2552,op2553,op2554,op2555,op2556,op2557,op2558,op2559]
def chunks : List Bytes := [bytes2496,bytes2497,bytes2498,bytes2499,bytes2500,bytes2501,bytes2502,bytes2503,bytes2504,bytes2505,bytes2506,bytes2507,bytes2508,bytes2509,bytes2510,bytes2511,bytes2512,bytes2513,bytes2514,bytes2515,bytes2516,bytes2517,bytes2518,bytes2519,bytes2520,bytes2521,bytes2522,bytes2523,bytes2524,bytes2525,bytes2526,bytes2527,bytes2528,bytes2529,bytes2530,bytes2531,bytes2532,bytes2533,bytes2534,bytes2535,bytes2536,bytes2537,bytes2538,bytes2539,bytes2540,bytes2541,bytes2542,bytes2543,bytes2544,bytes2545,bytes2546,bytes2547,bytes2548,bytes2549,bytes2550,bytes2551,bytes2552,bytes2553,bytes2554,bytes2555,bytes2556,bytes2557,bytes2558,bytes2559]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2539 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2496.1 (.cons _ _ _ _ _ checked2497.1 (.cons _ _ _ _ _ checked2498.1 (.cons _ _ _ _ _ checked2499.1 (.cons _ _ _ _ _ checked2500.1 (.cons _ _ _ _ _ checked2501.1 (.cons _ _ _ _ _ checked2502.1 (.cons _ _ _ _ _ checked2503.1 (.cons _ _ _ _ _ checked2504.1 (.cons _ _ _ _ _ checked2505.1 (.cons _ _ _ _ _ checked2506.1 (.cons _ _ _ _ _ checked2507.1 (.cons _ _ _ _ _ checked2508.1 (.cons _ _ _ _ _ checked2509.1 (.cons _ _ _ _ _ checked2510.1 (.cons _ _ _ _ _ checked2511.1 (.cons _ _ _ _ _ checked2512.1 (.cons _ _ _ _ _ checked2513.1 (.cons _ _ _ _ _ checked2514.1 (.cons _ _ _ _ _ checked2515.1 (.cons _ _ _ _ _ checked2516.1 (.cons _ _ _ _ _ checked2517.1 (.cons _ _ _ _ _ checked2518.1 (.cons _ _ _ _ _ checked2519.1 (.cons _ _ _ _ _ checked2520.1 (.cons _ _ _ _ _ checked2521.1 (.cons _ _ _ _ _ checked2522.1 (.cons _ _ _ _ _ checked2523.1 (.cons _ _ _ _ _ checked2524.1 (.cons _ _ _ _ _ checked2525.1 (.cons _ _ _ _ _ checked2526.1 (.cons _ _ _ _ _ checked2527.1 (.cons _ _ _ _ _ checked2528.1 (.cons _ _ _ _ _ checked2529.1 (.cons _ _ _ _ _ checked2530.1 (.cons _ _ _ _ _ checked2531.1 (.cons _ _ _ _ _ checked2532.1 (.cons _ _ _ _ _ checked2533.1 (.cons _ _ _ _ _ checked2534.1 (.cons _ _ _ _ _ checked2535.1 (.cons _ _ _ _ _ checked2536.1 (.cons _ _ _ _ _ checked2537.1 (.cons _ _ _ _ _ checked2538.1 (.cons _ _ _ _ _ checked2539.1 (.cons _ _ _ _ _ checked2540.1 (.cons _ _ _ _ _ checked2541.1 (.cons _ _ _ _ _ checked2542.1 (.cons _ _ _ _ _ checked2543.1 (.cons _ _ _ _ _ checked2544.1 (.cons _ _ _ _ _ checked2545.1 (.cons _ _ _ _ _ checked2546.1 (.cons _ _ _ _ _ checked2547.1 (.cons _ _ _ _ _ checked2548.1 (.cons _ _ _ _ _ checked2549.1 (.cons _ _ _ _ _ checked2550.1 (.cons _ _ _ _ _ checked2551.1 (.cons _ _ _ _ _ checked2552.1 (.cons _ _ _ _ _ checked2553.1 (.cons _ _ _ _ _ checked2554.1 (.cons _ _ _ _ _ checked2555.1 (.cons _ _ _ _ _ checked2556.1 (.cons _ _ _ _ _ checked2557.1 (.cons _ _ _ _ _ checked2558.1 (.cons _ _ _ _ _ checked2559.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2539 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2882 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2496.2,checked2497.2,checked2498.2,checked2499.2,checked2500.2,checked2501.2,checked2502.2,checked2503.2,checked2504.2,checked2505.2,checked2506.2,checked2507.2,checked2508.2,checked2509.2,checked2510.2,checked2511.2,checked2512.2,checked2513.2,checked2514.2,checked2515.2,checked2516.2,checked2517.2,checked2518.2,checked2519.2,checked2520.2,checked2521.2,checked2522.2,checked2523.2,checked2524.2,checked2525.2,checked2526.2,checked2527.2,checked2528.2,checked2529.2,checked2530.2,checked2531.2,checked2532.2,checked2533.2,checked2534.2,checked2535.2,checked2536.2,checked2537.2,checked2538.2,checked2539.2,checked2540.2,checked2541.2,checked2542.2,checked2543.2,checked2544.2,checked2545.2,checked2546.2,checked2547.2,checked2548.2,checked2549.2,checked2550.2,checked2551.2,checked2552.2,checked2553.2,checked2554.2,checked2555.2,checked2556.2,checked2557.2,checked2558.2,checked2559.2]
  decide
end ArtifactFrameHashControllerGroup39
