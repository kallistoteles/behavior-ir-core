import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup39
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2496 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2496 : Bytes := ("    let r00000a36: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2496 : bytes2496=statementBytes 2614 (op2496.map lower) ∧ bytes2496.length=41 := by core033_kernel_decide
def op2497 : List WordIR.Op := [.band 2613 2614]
def bytes2497 : Bytes := ("    let r00000a37: u32 = r00000a35 & r00000a36;\n" : String).toByteArray.data.toList
theorem checked2497 : bytes2497=statementBytes 2615 (op2497.map lower) ∧ bytes2497.length=48 := by core033_kernel_decide
def op2498 : List WordIR.Op := [.shr 2118 8]
def bytes2498 : Bytes := ("    let r00000a38: u32 = r00000846 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2498 : bytes2498=statementBytes 2616 (op2498.map lower) ∧ bytes2498.length=54 := by core033_kernel_decide
def op2499 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2499 : Bytes := ("    let r00000a39: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2499 : bytes2499=statementBytes 2617 (op2499.map lower) ∧ bytes2499.length=41 := by core033_kernel_decide
def op2500 : List WordIR.Op := [.band 2616 2617]
def bytes2500 : Bytes := ("    let r00000a3a: u32 = r00000a38 & r00000a39;\n" : String).toByteArray.data.toList
theorem checked2500 : bytes2500=statementBytes 2618 (op2500.map lower) ∧ bytes2500.length=48 := by core033_kernel_decide
def op2501 : List WordIR.Op := [.shr 2118 16]
def bytes2501 : Bytes := ("    let r00000a3b: u32 = r00000846 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2501 : bytes2501=statementBytes 2619 (op2501.map lower) ∧ bytes2501.length=54 := by core033_kernel_decide
def op2502 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2502 : Bytes := ("    let r00000a3c: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2502 : bytes2502=statementBytes 2620 (op2502.map lower) ∧ bytes2502.length=41 := by core033_kernel_decide
def op2503 : List WordIR.Op := [.band 2619 2620]
def bytes2503 : Bytes := ("    let r00000a3d: u32 = r00000a3b & r00000a3c;\n" : String).toByteArray.data.toList
theorem checked2503 : bytes2503=statementBytes 2621 (op2503.map lower) ∧ bytes2503.length=48 := by core033_kernel_decide
def op2504 : List WordIR.Op := [.shr 2118 24]
def bytes2504 : Bytes := ("    let r00000a3e: u32 = r00000846 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2504 : bytes2504=statementBytes 2622 (op2504.map lower) ∧ bytes2504.length=54 := by core033_kernel_decide
def op2505 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2505 : Bytes := ("    let r00000a3f: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2505 : bytes2505=statementBytes 2623 (op2505.map lower) ∧ bytes2505.length=41 := by core033_kernel_decide
def op2506 : List WordIR.Op := [.band 2622 2623]
def bytes2506 : Bytes := ("    let r00000a40: u32 = r00000a3e & r00000a3f;\n" : String).toByteArray.data.toList
theorem checked2506 : bytes2506=statementBytes 2624 (op2506.map lower) ∧ bytes2506.length=48 := by core033_kernel_decide
def op2507 : List WordIR.Op := [.shr 2128 0]
def bytes2507 : Bytes := ("    let r00000a41: u32 = r00000850 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2507 : bytes2507=statementBytes 2625 (op2507.map lower) ∧ bytes2507.length=54 := by core033_kernel_decide
def op2508 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2508 : Bytes := ("    let r00000a42: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2508 : bytes2508=statementBytes 2626 (op2508.map lower) ∧ bytes2508.length=41 := by core033_kernel_decide
def op2509 : List WordIR.Op := [.band 2625 2626]
def bytes2509 : Bytes := ("    let r00000a43: u32 = r00000a41 & r00000a42;\n" : String).toByteArray.data.toList
theorem checked2509 : bytes2509=statementBytes 2627 (op2509.map lower) ∧ bytes2509.length=48 := by core033_kernel_decide
def op2510 : List WordIR.Op := [.shr 2128 8]
def bytes2510 : Bytes := ("    let r00000a44: u32 = r00000850 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2510 : bytes2510=statementBytes 2628 (op2510.map lower) ∧ bytes2510.length=54 := by core033_kernel_decide
def op2511 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2511 : Bytes := ("    let r00000a45: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2511 : bytes2511=statementBytes 2629 (op2511.map lower) ∧ bytes2511.length=41 := by core033_kernel_decide
def op2512 : List WordIR.Op := [.band 2628 2629]
def bytes2512 : Bytes := ("    let r00000a46: u32 = r00000a44 & r00000a45;\n" : String).toByteArray.data.toList
theorem checked2512 : bytes2512=statementBytes 2630 (op2512.map lower) ∧ bytes2512.length=48 := by core033_kernel_decide
def op2513 : List WordIR.Op := [.shr 2128 16]
def bytes2513 : Bytes := ("    let r00000a47: u32 = r00000850 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2513 : bytes2513=statementBytes 2631 (op2513.map lower) ∧ bytes2513.length=54 := by core033_kernel_decide
def op2514 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2514 : Bytes := ("    let r00000a48: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2514 : bytes2514=statementBytes 2632 (op2514.map lower) ∧ bytes2514.length=41 := by core033_kernel_decide
def op2515 : List WordIR.Op := [.band 2631 2632]
def bytes2515 : Bytes := ("    let r00000a49: u32 = r00000a47 & r00000a48;\n" : String).toByteArray.data.toList
theorem checked2515 : bytes2515=statementBytes 2633 (op2515.map lower) ∧ bytes2515.length=48 := by core033_kernel_decide
def op2516 : List WordIR.Op := [.shr 2128 24]
def bytes2516 : Bytes := ("    let r00000a4a: u32 = r00000850 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2516 : bytes2516=statementBytes 2634 (op2516.map lower) ∧ bytes2516.length=54 := by core033_kernel_decide
def op2517 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2517 : Bytes := ("    let r00000a4b: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2517 : bytes2517=statementBytes 2635 (op2517.map lower) ∧ bytes2517.length=41 := by core033_kernel_decide
def op2518 : List WordIR.Op := [.band 2634 2635]
def bytes2518 : Bytes := ("    let r00000a4c: u32 = r00000a4a & r00000a4b;\n" : String).toByteArray.data.toList
theorem checked2518 : bytes2518=statementBytes 2636 (op2518.map lower) ∧ bytes2518.length=48 := by core033_kernel_decide
def op2519 : List WordIR.Op := [.shr 2138 0]
def bytes2519 : Bytes := ("    let r00000a4d: u32 = r0000085a >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2519 : bytes2519=statementBytes 2637 (op2519.map lower) ∧ bytes2519.length=54 := by core033_kernel_decide
def op2520 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2520 : Bytes := ("    let r00000a4e: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2520 : bytes2520=statementBytes 2638 (op2520.map lower) ∧ bytes2520.length=41 := by core033_kernel_decide
def op2521 : List WordIR.Op := [.band 2637 2638]
def bytes2521 : Bytes := ("    let r00000a4f: u32 = r00000a4d & r00000a4e;\n" : String).toByteArray.data.toList
theorem checked2521 : bytes2521=statementBytes 2639 (op2521.map lower) ∧ bytes2521.length=48 := by core033_kernel_decide
def op2522 : List WordIR.Op := [.shr 2138 8]
def bytes2522 : Bytes := ("    let r00000a50: u32 = r0000085a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2522 : bytes2522=statementBytes 2640 (op2522.map lower) ∧ bytes2522.length=54 := by core033_kernel_decide
def op2523 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2523 : Bytes := ("    let r00000a51: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2523 : bytes2523=statementBytes 2641 (op2523.map lower) ∧ bytes2523.length=41 := by core033_kernel_decide
def op2524 : List WordIR.Op := [.band 2640 2641]
def bytes2524 : Bytes := ("    let r00000a52: u32 = r00000a50 & r00000a51;\n" : String).toByteArray.data.toList
theorem checked2524 : bytes2524=statementBytes 2642 (op2524.map lower) ∧ bytes2524.length=48 := by core033_kernel_decide
def op2525 : List WordIR.Op := [.shr 2138 16]
def bytes2525 : Bytes := ("    let r00000a53: u32 = r0000085a >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2525 : bytes2525=statementBytes 2643 (op2525.map lower) ∧ bytes2525.length=54 := by core033_kernel_decide
def op2526 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2526 : Bytes := ("    let r00000a54: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2526 : bytes2526=statementBytes 2644 (op2526.map lower) ∧ bytes2526.length=41 := by core033_kernel_decide
def op2527 : List WordIR.Op := [.band 2643 2644]
def bytes2527 : Bytes := ("    let r00000a55: u32 = r00000a53 & r00000a54;\n" : String).toByteArray.data.toList
theorem checked2527 : bytes2527=statementBytes 2645 (op2527.map lower) ∧ bytes2527.length=48 := by core033_kernel_decide
def op2528 : List WordIR.Op := [.shr 2138 24]
def bytes2528 : Bytes := ("    let r00000a56: u32 = r0000085a >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2528 : bytes2528=statementBytes 2646 (op2528.map lower) ∧ bytes2528.length=54 := by core033_kernel_decide
def op2529 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2529 : Bytes := ("    let r00000a57: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2529 : bytes2529=statementBytes 2647 (op2529.map lower) ∧ bytes2529.length=41 := by core033_kernel_decide
def op2530 : List WordIR.Op := [.band 2646 2647]
def bytes2530 : Bytes := ("    let r00000a58: u32 = r00000a56 & r00000a57;\n" : String).toByteArray.data.toList
theorem checked2530 : bytes2530=statementBytes 2648 (op2530.map lower) ∧ bytes2530.length=48 := by core033_kernel_decide
def op2531 : List WordIR.Op := [.shr 2148 0]
def bytes2531 : Bytes := ("    let r00000a59: u32 = r00000864 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2531 : bytes2531=statementBytes 2649 (op2531.map lower) ∧ bytes2531.length=54 := by core033_kernel_decide
def op2532 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2532 : Bytes := ("    let r00000a5a: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2532 : bytes2532=statementBytes 2650 (op2532.map lower) ∧ bytes2532.length=41 := by core033_kernel_decide
def op2533 : List WordIR.Op := [.band 2649 2650]
def bytes2533 : Bytes := ("    let r00000a5b: u32 = r00000a59 & r00000a5a;\n" : String).toByteArray.data.toList
theorem checked2533 : bytes2533=statementBytes 2651 (op2533.map lower) ∧ bytes2533.length=48 := by core033_kernel_decide
def op2534 : List WordIR.Op := [.shr 2148 8]
def bytes2534 : Bytes := ("    let r00000a5c: u32 = r00000864 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2534 : bytes2534=statementBytes 2652 (op2534.map lower) ∧ bytes2534.length=54 := by core033_kernel_decide
def op2535 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2535 : Bytes := ("    let r00000a5d: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2535 : bytes2535=statementBytes 2653 (op2535.map lower) ∧ bytes2535.length=41 := by core033_kernel_decide
def op2536 : List WordIR.Op := [.band 2652 2653]
def bytes2536 : Bytes := ("    let r00000a5e: u32 = r00000a5c & r00000a5d;\n" : String).toByteArray.data.toList
theorem checked2536 : bytes2536=statementBytes 2654 (op2536.map lower) ∧ bytes2536.length=48 := by core033_kernel_decide
def op2537 : List WordIR.Op := [.shr 2148 16]
def bytes2537 : Bytes := ("    let r00000a5f: u32 = r00000864 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2537 : bytes2537=statementBytes 2655 (op2537.map lower) ∧ bytes2537.length=54 := by core033_kernel_decide
def op2538 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2538 : Bytes := ("    let r00000a60: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2538 : bytes2538=statementBytes 2656 (op2538.map lower) ∧ bytes2538.length=41 := by core033_kernel_decide
def op2539 : List WordIR.Op := [.band 2655 2656]
def bytes2539 : Bytes := ("    let r00000a61: u32 = r00000a5f & r00000a60;\n" : String).toByteArray.data.toList
theorem checked2539 : bytes2539=statementBytes 2657 (op2539.map lower) ∧ bytes2539.length=48 := by core033_kernel_decide
def op2540 : List WordIR.Op := [.shr 2148 24]
def bytes2540 : Bytes := ("    let r00000a62: u32 = r00000864 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2540 : bytes2540=statementBytes 2658 (op2540.map lower) ∧ bytes2540.length=54 := by core033_kernel_decide
def op2541 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2541 : Bytes := ("    let r00000a63: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2541 : bytes2541=statementBytes 2659 (op2541.map lower) ∧ bytes2541.length=41 := by core033_kernel_decide
def op2542 : List WordIR.Op := [.band 2658 2659]
def bytes2542 : Bytes := ("    let r00000a64: u32 = r00000a62 & r00000a63;\n" : String).toByteArray.data.toList
theorem checked2542 : bytes2542=statementBytes 2660 (op2542.map lower) ∧ bytes2542.length=48 := by core033_kernel_decide
def op2543 : List WordIR.Op := [.shr 2158 0]
def bytes2543 : Bytes := ("    let r00000a65: u32 = r0000086e >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2543 : bytes2543=statementBytes 2661 (op2543.map lower) ∧ bytes2543.length=54 := by core033_kernel_decide
def op2544 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2544 : Bytes := ("    let r00000a66: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2544 : bytes2544=statementBytes 2662 (op2544.map lower) ∧ bytes2544.length=41 := by core033_kernel_decide
def op2545 : List WordIR.Op := [.band 2661 2662]
def bytes2545 : Bytes := ("    let r00000a67: u32 = r00000a65 & r00000a66;\n" : String).toByteArray.data.toList
theorem checked2545 : bytes2545=statementBytes 2663 (op2545.map lower) ∧ bytes2545.length=48 := by core033_kernel_decide
def op2546 : List WordIR.Op := [.shr 2158 8]
def bytes2546 : Bytes := ("    let r00000a68: u32 = r0000086e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2546 : bytes2546=statementBytes 2664 (op2546.map lower) ∧ bytes2546.length=54 := by core033_kernel_decide
def op2547 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2547 : Bytes := ("    let r00000a69: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2547 : bytes2547=statementBytes 2665 (op2547.map lower) ∧ bytes2547.length=41 := by core033_kernel_decide
def op2548 : List WordIR.Op := [.band 2664 2665]
def bytes2548 : Bytes := ("    let r00000a6a: u32 = r00000a68 & r00000a69;\n" : String).toByteArray.data.toList
theorem checked2548 : bytes2548=statementBytes 2666 (op2548.map lower) ∧ bytes2548.length=48 := by core033_kernel_decide
def op2549 : List WordIR.Op := [.shr 2158 16]
def bytes2549 : Bytes := ("    let r00000a6b: u32 = r0000086e >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2549 : bytes2549=statementBytes 2667 (op2549.map lower) ∧ bytes2549.length=54 := by core033_kernel_decide
def op2550 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2550 : Bytes := ("    let r00000a6c: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2550 : bytes2550=statementBytes 2668 (op2550.map lower) ∧ bytes2550.length=41 := by core033_kernel_decide
def op2551 : List WordIR.Op := [.band 2667 2668]
def bytes2551 : Bytes := ("    let r00000a6d: u32 = r00000a6b & r00000a6c;\n" : String).toByteArray.data.toList
theorem checked2551 : bytes2551=statementBytes 2669 (op2551.map lower) ∧ bytes2551.length=48 := by core033_kernel_decide
def op2552 : List WordIR.Op := [.shr 2158 24]
def bytes2552 : Bytes := ("    let r00000a6e: u32 = r0000086e >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2552 : bytes2552=statementBytes 2670 (op2552.map lower) ∧ bytes2552.length=54 := by core033_kernel_decide
def op2553 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2553 : Bytes := ("    let r00000a6f: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2553 : bytes2553=statementBytes 2671 (op2553.map lower) ∧ bytes2553.length=41 := by core033_kernel_decide
def op2554 : List WordIR.Op := [.band 2670 2671]
def bytes2554 : Bytes := ("    let r00000a70: u32 = r00000a6e & r00000a6f;\n" : String).toByteArray.data.toList
theorem checked2554 : bytes2554=statementBytes 2672 (op2554.map lower) ∧ bytes2554.length=48 := by core033_kernel_decide
def op2555 : List WordIR.Op := [.shr 2208 0]
def bytes2555 : Bytes := ("    let r00000a71: u32 = r000008a0 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2555 : bytes2555=statementBytes 2673 (op2555.map lower) ∧ bytes2555.length=54 := by core033_kernel_decide
def op2556 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2556 : Bytes := ("    let r00000a72: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2556 : bytes2556=statementBytes 2674 (op2556.map lower) ∧ bytes2556.length=41 := by core033_kernel_decide
def op2557 : List WordIR.Op := [.band 2673 2674]
def bytes2557 : Bytes := ("    let r00000a73: u32 = r00000a71 & r00000a72;\n" : String).toByteArray.data.toList
theorem checked2557 : bytes2557=statementBytes 2675 (op2557.map lower) ∧ bytes2557.length=48 := by core033_kernel_decide
def op2558 : List WordIR.Op := [.shr 2208 8]
def bytes2558 : Bytes := ("    let r00000a74: u32 = r000008a0 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2558 : bytes2558=statementBytes 2676 (op2558.map lower) ∧ bytes2558.length=54 := by core033_kernel_decide
def op2559 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2559 : Bytes := ("    let r00000a75: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2559 : bytes2559=statementBytes 2677 (op2559.map lower) ∧ bytes2559.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2496,op2497,op2498,op2499,op2500,op2501,op2502,op2503,op2504,op2505,op2506,op2507,op2508,op2509,op2510,op2511,op2512,op2513,op2514,op2515,op2516,op2517,op2518,op2519,op2520,op2521,op2522,op2523,op2524,op2525,op2526,op2527,op2528,op2529,op2530,op2531,op2532,op2533,op2534,op2535,op2536,op2537,op2538,op2539,op2540,op2541,op2542,op2543,op2544,op2545,op2546,op2547,op2548,op2549,op2550,op2551,op2552,op2553,op2554,op2555,op2556,op2557,op2558,op2559]
def chunks : List Bytes := [bytes2496,bytes2497,bytes2498,bytes2499,bytes2500,bytes2501,bytes2502,bytes2503,bytes2504,bytes2505,bytes2506,bytes2507,bytes2508,bytes2509,bytes2510,bytes2511,bytes2512,bytes2513,bytes2514,bytes2515,bytes2516,bytes2517,bytes2518,bytes2519,bytes2520,bytes2521,bytes2522,bytes2523,bytes2524,bytes2525,bytes2526,bytes2527,bytes2528,bytes2529,bytes2530,bytes2531,bytes2532,bytes2533,bytes2534,bytes2535,bytes2536,bytes2537,bytes2538,bytes2539,bytes2540,bytes2541,bytes2542,bytes2543,bytes2544,bytes2545,bytes2546,bytes2547,bytes2548,bytes2549,bytes2550,bytes2551,bytes2552,bytes2553,bytes2554,bytes2555,bytes2556,bytes2557,bytes2558,bytes2559]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2614 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2496.1 (.cons _ _ _ _ _ checked2497.1 (.cons _ _ _ _ _ checked2498.1 (.cons _ _ _ _ _ checked2499.1 (.cons _ _ _ _ _ checked2500.1 (.cons _ _ _ _ _ checked2501.1 (.cons _ _ _ _ _ checked2502.1 (.cons _ _ _ _ _ checked2503.1 (.cons _ _ _ _ _ checked2504.1 (.cons _ _ _ _ _ checked2505.1 (.cons _ _ _ _ _ checked2506.1 (.cons _ _ _ _ _ checked2507.1 (.cons _ _ _ _ _ checked2508.1 (.cons _ _ _ _ _ checked2509.1 (.cons _ _ _ _ _ checked2510.1 (.cons _ _ _ _ _ checked2511.1 (.cons _ _ _ _ _ checked2512.1 (.cons _ _ _ _ _ checked2513.1 (.cons _ _ _ _ _ checked2514.1 (.cons _ _ _ _ _ checked2515.1 (.cons _ _ _ _ _ checked2516.1 (.cons _ _ _ _ _ checked2517.1 (.cons _ _ _ _ _ checked2518.1 (.cons _ _ _ _ _ checked2519.1 (.cons _ _ _ _ _ checked2520.1 (.cons _ _ _ _ _ checked2521.1 (.cons _ _ _ _ _ checked2522.1 (.cons _ _ _ _ _ checked2523.1 (.cons _ _ _ _ _ checked2524.1 (.cons _ _ _ _ _ checked2525.1 (.cons _ _ _ _ _ checked2526.1 (.cons _ _ _ _ _ checked2527.1 (.cons _ _ _ _ _ checked2528.1 (.cons _ _ _ _ _ checked2529.1 (.cons _ _ _ _ _ checked2530.1 (.cons _ _ _ _ _ checked2531.1 (.cons _ _ _ _ _ checked2532.1 (.cons _ _ _ _ _ checked2533.1 (.cons _ _ _ _ _ checked2534.1 (.cons _ _ _ _ _ checked2535.1 (.cons _ _ _ _ _ checked2536.1 (.cons _ _ _ _ _ checked2537.1 (.cons _ _ _ _ _ checked2538.1 (.cons _ _ _ _ _ checked2539.1 (.cons _ _ _ _ _ checked2540.1 (.cons _ _ _ _ _ checked2541.1 (.cons _ _ _ _ _ checked2542.1 (.cons _ _ _ _ _ checked2543.1 (.cons _ _ _ _ _ checked2544.1 (.cons _ _ _ _ _ checked2545.1 (.cons _ _ _ _ _ checked2546.1 (.cons _ _ _ _ _ checked2547.1 (.cons _ _ _ _ _ checked2548.1 (.cons _ _ _ _ _ checked2549.1 (.cons _ _ _ _ _ checked2550.1 (.cons _ _ _ _ _ checked2551.1 (.cons _ _ _ _ _ checked2552.1 (.cons _ _ _ _ _ checked2553.1 (.cons _ _ _ _ _ checked2554.1 (.cons _ _ _ _ _ checked2555.1 (.cons _ _ _ _ _ checked2556.1 (.cons _ _ _ _ _ checked2557.1 (.cons _ _ _ _ _ checked2558.1 (.cons _ _ _ _ _ checked2559.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2614 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3044 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2496.2,checked2497.2,checked2498.2,checked2499.2,checked2500.2,checked2501.2,checked2502.2,checked2503.2,checked2504.2,checked2505.2,checked2506.2,checked2507.2,checked2508.2,checked2509.2,checked2510.2,checked2511.2,checked2512.2,checked2513.2,checked2514.2,checked2515.2,checked2516.2,checked2517.2,checked2518.2,checked2519.2,checked2520.2,checked2521.2,checked2522.2,checked2523.2,checked2524.2,checked2525.2,checked2526.2,checked2527.2,checked2528.2,checked2529.2,checked2530.2,checked2531.2,checked2532.2,checked2533.2,checked2534.2,checked2535.2,checked2536.2,checked2537.2,checked2538.2,checked2539.2,checked2540.2,checked2541.2,checked2542.2,checked2543.2,checked2544.2,checked2545.2,checked2546.2,checked2547.2,checked2548.2,checked2549.2,checked2550.2,checked2551.2,checked2552.2,checked2553.2,checked2554.2,checked2555.2,checked2556.2,checked2557.2,checked2558.2,checked2559.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup39
