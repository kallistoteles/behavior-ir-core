import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup40
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2560 : List WordIR.Op := [.bnot 2655]
def bytes2560 : Bytes := ("    let r00000a60: u32 = !r00000a5f;\n" : String).toByteArray.data.toList
theorem checked2560 : bytes2560=statementBytes 2656 (op2560.map lower) ∧ bytes2560.length=37 := by core033_kernel_decide
def op2561 : List WordIR.Op := [.bxor 2654 2656]
def bytes2561 : Bytes := ("    let r00000a61: u32 = r00000a5e ^ r00000a60;\n" : String).toByteArray.data.toList
theorem checked2561 : bytes2561=statementBytes 2657 (op2561.map lower) ∧ bytes2561.length=48 := by core033_kernel_decide
def op2562 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2562 : Bytes := ("    let r00000a62: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2562 : bytes2562=statementBytes 2658 (op2562.map lower) ∧ bytes2562.length=41 := by core033_kernel_decide
def op2563 : List WordIR.Op := [.bxor 616 2658]
def bytes2563 : Bytes := ("    let r00000a63: u32 = r00000268 ^ r00000a62;\n" : String).toByteArray.data.toList
theorem checked2563 : bytes2563=statementBytes 2659 (op2563.map lower) ∧ bytes2563.length=48 := by core033_kernel_decide
def op2564 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2564 : Bytes := ("    let r00000a64: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2564 : bytes2564=statementBytes 2660 (op2564.map lower) ∧ bytes2564.length=41 := by core033_kernel_decide
def op2565 : List WordIR.Op := [.bnot 2660]
def bytes2565 : Bytes := ("    let r00000a65: u32 = !r00000a64;\n" : String).toByteArray.data.toList
theorem checked2565 : bytes2565=statementBytes 2661 (op2565.map lower) ∧ bytes2565.length=37 := by core033_kernel_decide
def op2566 : List WordIR.Op := [.badd 2659 2661]
def bytes2566 : Bytes := ("    let r00000a66: u32 = r00000a63.wrapping_add(r00000a65);\n" : String).toByteArray.data.toList
theorem checked2566 : bytes2566=statementBytes 2662 (op2566.map lower) ∧ bytes2566.length=60 := by core033_kernel_decide
def op2567 : List WordIR.Op := [.bnot 2662]
def bytes2567 : Bytes := ("    let r00000a67: u32 = !r00000a66;\n" : String).toByteArray.data.toList
theorem checked2567 : bytes2567=statementBytes 2663 (op2567.map lower) ∧ bytes2567.length=37 := by core033_kernel_decide
def op2568 : List WordIR.Op := [.band 2657 2663]
def bytes2568 : Bytes := ("    let r00000a68: u32 = r00000a61 & r00000a67;\n" : String).toByteArray.data.toList
theorem checked2568 : bytes2568=statementBytes 2664 (op2568.map lower) ∧ bytes2568.length=48 := by core033_kernel_decide
def op2569 : List WordIR.Op := [.bxor 2652 2664]
def bytes2569 : Bytes := ("    let r00000a69: u32 = r00000a5c ^ r00000a68;\n" : String).toByteArray.data.toList
theorem checked2569 : bytes2569=statementBytes 2665 (op2569.map lower) ∧ bytes2569.length=48 := by core033_kernel_decide
def op2570 : List WordIR.Op := [.shr 2665 31]
def bytes2570 : Bytes := ("    let r00000a6a: u32 = r00000a69 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2570 : bytes2570=statementBytes 2666 (op2570.map lower) ∧ bytes2570.length=54 := by core033_kernel_decide
def op2571 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2571 : Bytes := ("    let r00000a6b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2571 : bytes2571=statementBytes 2667 (op2571.map lower) ∧ bytes2571.length=41 := by core033_kernel_decide
def op2572 : List WordIR.Op := [.bxor 2666 2667]
def bytes2572 : Bytes := ("    let r00000a6c: u32 = r00000a6a ^ r00000a6b;\n" : String).toByteArray.data.toList
theorem checked2572 : bytes2572=statementBytes 2668 (op2572.map lower) ∧ bytes2572.length=48 := by core033_kernel_decide
def op2573 : List WordIR.Op := [.bnot 2668]
def bytes2573 : Bytes := ("    let r00000a6d: u32 = !r00000a6c;\n" : String).toByteArray.data.toList
theorem checked2573 : bytes2573=statementBytes 2669 (op2573.map lower) ∧ bytes2573.length=37 := by core033_kernel_decide
def op2574 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2574 : Bytes := ("    let r00000a6e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2574 : bytes2574=statementBytes 2670 (op2574.map lower) ∧ bytes2574.length=41 := by core033_kernel_decide
def op2575 : List WordIR.Op := [.badd 2669 2670]
def bytes2575 : Bytes := ("    let r00000a6f: u32 = r00000a6d.wrapping_add(r00000a6e);\n" : String).toByteArray.data.toList
theorem checked2575 : bytes2575=statementBytes 2671 (op2575.map lower) ∧ bytes2575.length=60 := by core033_kernel_decide
def op2576 : List WordIR.Op := [.band 2671 1045]
def bytes2576 : Bytes := ("    let r00000a70: u32 = r00000a6f & r00000415;\n" : String).toByteArray.data.toList
theorem checked2576 : bytes2576=statementBytes 2672 (op2576.map lower) ∧ bytes2576.length=48 := by core033_kernel_decide
def op2577 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2577 : Bytes := ("    let r00000a71: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2577 : bytes2577=statementBytes 2673 (op2577.map lower) ∧ bytes2577.length=41 := by core033_kernel_decide
def op2578 : List WordIR.Op := [.bxor 616 2673]
def bytes2578 : Bytes := ("    let r00000a72: u32 = r00000268 ^ r00000a71;\n" : String).toByteArray.data.toList
theorem checked2578 : bytes2578=statementBytes 2674 (op2578.map lower) ∧ bytes2578.length=48 := by core033_kernel_decide
def op2579 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2579 : Bytes := ("    let r00000a73: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2579 : bytes2579=statementBytes 2675 (op2579.map lower) ∧ bytes2579.length=41 := by core033_kernel_decide
def op2580 : List WordIR.Op := [.bnot 2675]
def bytes2580 : Bytes := ("    let r00000a74: u32 = !r00000a73;\n" : String).toByteArray.data.toList
theorem checked2580 : bytes2580=statementBytes 2676 (op2580.map lower) ∧ bytes2580.length=37 := by core033_kernel_decide
def op2581 : List WordIR.Op := [.band 2674 2676]
def bytes2581 : Bytes := ("    let r00000a75: u32 = r00000a72 & r00000a74;\n" : String).toByteArray.data.toList
theorem checked2581 : bytes2581=statementBytes 2677 (op2581.map lower) ∧ bytes2581.length=48 := by core033_kernel_decide
def op2582 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2582 : Bytes := ("    let r00000a76: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2582 : bytes2582=statementBytes 2678 (op2582.map lower) ∧ bytes2582.length=41 := by core033_kernel_decide
def op2583 : List WordIR.Op := [.bxor 616 2678]
def bytes2583 : Bytes := ("    let r00000a77: u32 = r00000268 ^ r00000a76;\n" : String).toByteArray.data.toList
theorem checked2583 : bytes2583=statementBytes 2679 (op2583.map lower) ∧ bytes2583.length=48 := by core033_kernel_decide
def op2584 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2584 : Bytes := ("    let r00000a78: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2584 : bytes2584=statementBytes 2680 (op2584.map lower) ∧ bytes2584.length=41 := by core033_kernel_decide
def op2585 : List WordIR.Op := [.bnot 2680]
def bytes2585 : Bytes := ("    let r00000a79: u32 = !r00000a78;\n" : String).toByteArray.data.toList
theorem checked2585 : bytes2585=statementBytes 2681 (op2585.map lower) ∧ bytes2585.length=37 := by core033_kernel_decide
def op2586 : List WordIR.Op := [.bxor 2679 2681]
def bytes2586 : Bytes := ("    let r00000a7a: u32 = r00000a77 ^ r00000a79;\n" : String).toByteArray.data.toList
theorem checked2586 : bytes2586=statementBytes 2682 (op2586.map lower) ∧ bytes2586.length=48 := by core033_kernel_decide
def op2587 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2587 : Bytes := ("    let r00000a7b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2587 : bytes2587=statementBytes 2683 (op2587.map lower) ∧ bytes2587.length=41 := by core033_kernel_decide
def op2588 : List WordIR.Op := [.bxor 616 2683]
def bytes2588 : Bytes := ("    let r00000a7c: u32 = r00000268 ^ r00000a7b;\n" : String).toByteArray.data.toList
theorem checked2588 : bytes2588=statementBytes 2684 (op2588.map lower) ∧ bytes2588.length=48 := by core033_kernel_decide
def op2589 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2589 : Bytes := ("    let r00000a7d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2589 : bytes2589=statementBytes 2685 (op2589.map lower) ∧ bytes2589.length=41 := by core033_kernel_decide
def op2590 : List WordIR.Op := [.bnot 2685]
def bytes2590 : Bytes := ("    let r00000a7e: u32 = !r00000a7d;\n" : String).toByteArray.data.toList
theorem checked2590 : bytes2590=statementBytes 2686 (op2590.map lower) ∧ bytes2590.length=37 := by core033_kernel_decide
def op2591 : List WordIR.Op := [.badd 2684 2686]
def bytes2591 : Bytes := ("    let r00000a7f: u32 = r00000a7c.wrapping_add(r00000a7e);\n" : String).toByteArray.data.toList
theorem checked2591 : bytes2591=statementBytes 2687 (op2591.map lower) ∧ bytes2591.length=60 := by core033_kernel_decide
def op2592 : List WordIR.Op := [.bnot 2687]
def bytes2592 : Bytes := ("    let r00000a80: u32 = !r00000a7f;\n" : String).toByteArray.data.toList
theorem checked2592 : bytes2592=statementBytes 2688 (op2592.map lower) ∧ bytes2592.length=37 := by core033_kernel_decide
def op2593 : List WordIR.Op := [.band 2682 2688]
def bytes2593 : Bytes := ("    let r00000a81: u32 = r00000a7a & r00000a80;\n" : String).toByteArray.data.toList
theorem checked2593 : bytes2593=statementBytes 2689 (op2593.map lower) ∧ bytes2593.length=48 := by core033_kernel_decide
def op2594 : List WordIR.Op := [.bxor 2677 2689]
def bytes2594 : Bytes := ("    let r00000a82: u32 = r00000a75 ^ r00000a81;\n" : String).toByteArray.data.toList
theorem checked2594 : bytes2594=statementBytes 2690 (op2594.map lower) ∧ bytes2594.length=48 := by core033_kernel_decide
def op2595 : List WordIR.Op := [.shr 2690 31]
def bytes2595 : Bytes := ("    let r00000a83: u32 = r00000a82 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2595 : bytes2595=statementBytes 2691 (op2595.map lower) ∧ bytes2595.length=54 := by core033_kernel_decide
def op2596 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2596 : Bytes := ("    let r00000a84: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2596 : bytes2596=statementBytes 2692 (op2596.map lower) ∧ bytes2596.length=41 := by core033_kernel_decide
def op2597 : List WordIR.Op := [.bxor 2691 2692]
def bytes2597 : Bytes := ("    let r00000a85: u32 = r00000a83 ^ r00000a84;\n" : String).toByteArray.data.toList
theorem checked2597 : bytes2597=statementBytes 2693 (op2597.map lower) ∧ bytes2597.length=48 := by core033_kernel_decide
def op2598 : List WordIR.Op := [.bnot 2693]
def bytes2598 : Bytes := ("    let r00000a86: u32 = !r00000a85;\n" : String).toByteArray.data.toList
theorem checked2598 : bytes2598=statementBytes 2694 (op2598.map lower) ∧ bytes2598.length=37 := by core033_kernel_decide
def op2599 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2599 : Bytes := ("    let r00000a87: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2599 : bytes2599=statementBytes 2695 (op2599.map lower) ∧ bytes2599.length=41 := by core033_kernel_decide
def op2600 : List WordIR.Op := [.badd 2694 2695]
def bytes2600 : Bytes := ("    let r00000a88: u32 = r00000a86.wrapping_add(r00000a87);\n" : String).toByteArray.data.toList
theorem checked2600 : bytes2600=statementBytes 2696 (op2600.map lower) ∧ bytes2600.length=60 := by core033_kernel_decide
def op2601 : List WordIR.Op := [.bnot 2696]
def bytes2601 : Bytes := ("    let r00000a89: u32 = !r00000a88;\n" : String).toByteArray.data.toList
theorem checked2601 : bytes2601=statementBytes 2697 (op2601.map lower) ∧ bytes2601.length=37 := by core033_kernel_decide
def op2602 : List WordIR.Op := [.literal (BitVec.ofNat 32 1359893119)]
def bytes2602 : Bytes := ("    let r00000a8a: u32 = 0x510e527f_u32;\n" : String).toByteArray.data.toList
theorem checked2602 : bytes2602=statementBytes 2698 (op2602.map lower) ∧ bytes2602.length=41 := by core033_kernel_decide
def op2603 : List WordIR.Op := [.band 2697 2698]
def bytes2603 : Bytes := ("    let r00000a8b: u32 = r00000a89 & r00000a8a;\n" : String).toByteArray.data.toList
theorem checked2603 : bytes2603=statementBytes 2699 (op2603.map lower) ∧ bytes2603.length=48 := by core033_kernel_decide
def op2604 : List WordIR.Op := [.bxor 2672 2699]
def bytes2604 : Bytes := ("    let r00000a8c: u32 = r00000a70 ^ r00000a8b;\n" : String).toByteArray.data.toList
theorem checked2604 : bytes2604=statementBytes 2700 (op2604.map lower) ∧ bytes2604.length=48 := by core033_kernel_decide
def op2605 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2605 : Bytes := ("    let r00000a8d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2605 : bytes2605=statementBytes 2701 (op2605.map lower) ∧ bytes2605.length=41 := by core033_kernel_decide
def op2606 : List WordIR.Op := [.bxor 616 2701]
def bytes2606 : Bytes := ("    let r00000a8e: u32 = r00000268 ^ r00000a8d;\n" : String).toByteArray.data.toList
theorem checked2606 : bytes2606=statementBytes 2702 (op2606.map lower) ∧ bytes2606.length=48 := by core033_kernel_decide
def op2607 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2607 : Bytes := ("    let r00000a8f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2607 : bytes2607=statementBytes 2703 (op2607.map lower) ∧ bytes2607.length=41 := by core033_kernel_decide
def op2608 : List WordIR.Op := [.bnot 2703]
def bytes2608 : Bytes := ("    let r00000a90: u32 = !r00000a8f;\n" : String).toByteArray.data.toList
theorem checked2608 : bytes2608=statementBytes 2704 (op2608.map lower) ∧ bytes2608.length=37 := by core033_kernel_decide
def op2609 : List WordIR.Op := [.band 2702 2704]
def bytes2609 : Bytes := ("    let r00000a91: u32 = r00000a8e & r00000a90;\n" : String).toByteArray.data.toList
theorem checked2609 : bytes2609=statementBytes 2705 (op2609.map lower) ∧ bytes2609.length=48 := by core033_kernel_decide
def op2610 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2610 : Bytes := ("    let r00000a92: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2610 : bytes2610=statementBytes 2706 (op2610.map lower) ∧ bytes2610.length=41 := by core033_kernel_decide
def op2611 : List WordIR.Op := [.bxor 616 2706]
def bytes2611 : Bytes := ("    let r00000a93: u32 = r00000268 ^ r00000a92;\n" : String).toByteArray.data.toList
theorem checked2611 : bytes2611=statementBytes 2707 (op2611.map lower) ∧ bytes2611.length=48 := by core033_kernel_decide
def op2612 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2612 : Bytes := ("    let r00000a94: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2612 : bytes2612=statementBytes 2708 (op2612.map lower) ∧ bytes2612.length=41 := by core033_kernel_decide
def op2613 : List WordIR.Op := [.bnot 2708]
def bytes2613 : Bytes := ("    let r00000a95: u32 = !r00000a94;\n" : String).toByteArray.data.toList
theorem checked2613 : bytes2613=statementBytes 2709 (op2613.map lower) ∧ bytes2613.length=37 := by core033_kernel_decide
def op2614 : List WordIR.Op := [.bxor 2707 2709]
def bytes2614 : Bytes := ("    let r00000a96: u32 = r00000a93 ^ r00000a95;\n" : String).toByteArray.data.toList
theorem checked2614 : bytes2614=statementBytes 2710 (op2614.map lower) ∧ bytes2614.length=48 := by core033_kernel_decide
def op2615 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2615 : Bytes := ("    let r00000a97: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2615 : bytes2615=statementBytes 2711 (op2615.map lower) ∧ bytes2615.length=41 := by core033_kernel_decide
def op2616 : List WordIR.Op := [.bxor 616 2711]
def bytes2616 : Bytes := ("    let r00000a98: u32 = r00000268 ^ r00000a97;\n" : String).toByteArray.data.toList
theorem checked2616 : bytes2616=statementBytes 2712 (op2616.map lower) ∧ bytes2616.length=48 := by core033_kernel_decide
def op2617 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2617 : Bytes := ("    let r00000a99: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2617 : bytes2617=statementBytes 2713 (op2617.map lower) ∧ bytes2617.length=41 := by core033_kernel_decide
def op2618 : List WordIR.Op := [.bnot 2713]
def bytes2618 : Bytes := ("    let r00000a9a: u32 = !r00000a99;\n" : String).toByteArray.data.toList
theorem checked2618 : bytes2618=statementBytes 2714 (op2618.map lower) ∧ bytes2618.length=37 := by core033_kernel_decide
def op2619 : List WordIR.Op := [.badd 2712 2714]
def bytes2619 : Bytes := ("    let r00000a9b: u32 = r00000a98.wrapping_add(r00000a9a);\n" : String).toByteArray.data.toList
theorem checked2619 : bytes2619=statementBytes 2715 (op2619.map lower) ∧ bytes2619.length=60 := by core033_kernel_decide
def op2620 : List WordIR.Op := [.bnot 2715]
def bytes2620 : Bytes := ("    let r00000a9c: u32 = !r00000a9b;\n" : String).toByteArray.data.toList
theorem checked2620 : bytes2620=statementBytes 2716 (op2620.map lower) ∧ bytes2620.length=37 := by core033_kernel_decide
def op2621 : List WordIR.Op := [.band 2710 2716]
def bytes2621 : Bytes := ("    let r00000a9d: u32 = r00000a96 & r00000a9c;\n" : String).toByteArray.data.toList
theorem checked2621 : bytes2621=statementBytes 2717 (op2621.map lower) ∧ bytes2621.length=48 := by core033_kernel_decide
def op2622 : List WordIR.Op := [.bxor 2705 2717]
def bytes2622 : Bytes := ("    let r00000a9e: u32 = r00000a91 ^ r00000a9d;\n" : String).toByteArray.data.toList
theorem checked2622 : bytes2622=statementBytes 2718 (op2622.map lower) ∧ bytes2622.length=48 := by core033_kernel_decide
def op2623 : List WordIR.Op := [.shr 2718 31]
def bytes2623 : Bytes := ("    let r00000a9f: u32 = r00000a9e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2623 : bytes2623=statementBytes 2719 (op2623.map lower) ∧ bytes2623.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2560,op2561,op2562,op2563,op2564,op2565,op2566,op2567,op2568,op2569,op2570,op2571,op2572,op2573,op2574,op2575,op2576,op2577,op2578,op2579,op2580,op2581,op2582,op2583,op2584,op2585,op2586,op2587,op2588,op2589,op2590,op2591,op2592,op2593,op2594,op2595,op2596,op2597,op2598,op2599,op2600,op2601,op2602,op2603,op2604,op2605,op2606,op2607,op2608,op2609,op2610,op2611,op2612,op2613,op2614,op2615,op2616,op2617,op2618,op2619,op2620,op2621,op2622,op2623]
def chunks : List Bytes := [bytes2560,bytes2561,bytes2562,bytes2563,bytes2564,bytes2565,bytes2566,bytes2567,bytes2568,bytes2569,bytes2570,bytes2571,bytes2572,bytes2573,bytes2574,bytes2575,bytes2576,bytes2577,bytes2578,bytes2579,bytes2580,bytes2581,bytes2582,bytes2583,bytes2584,bytes2585,bytes2586,bytes2587,bytes2588,bytes2589,bytes2590,bytes2591,bytes2592,bytes2593,bytes2594,bytes2595,bytes2596,bytes2597,bytes2598,bytes2599,bytes2600,bytes2601,bytes2602,bytes2603,bytes2604,bytes2605,bytes2606,bytes2607,bytes2608,bytes2609,bytes2610,bytes2611,bytes2612,bytes2613,bytes2614,bytes2615,bytes2616,bytes2617,bytes2618,bytes2619,bytes2620,bytes2621,bytes2622,bytes2623]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2656 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2560.1 (.cons _ _ _ _ _ checked2561.1 (.cons _ _ _ _ _ checked2562.1 (.cons _ _ _ _ _ checked2563.1 (.cons _ _ _ _ _ checked2564.1 (.cons _ _ _ _ _ checked2565.1 (.cons _ _ _ _ _ checked2566.1 (.cons _ _ _ _ _ checked2567.1 (.cons _ _ _ _ _ checked2568.1 (.cons _ _ _ _ _ checked2569.1 (.cons _ _ _ _ _ checked2570.1 (.cons _ _ _ _ _ checked2571.1 (.cons _ _ _ _ _ checked2572.1 (.cons _ _ _ _ _ checked2573.1 (.cons _ _ _ _ _ checked2574.1 (.cons _ _ _ _ _ checked2575.1 (.cons _ _ _ _ _ checked2576.1 (.cons _ _ _ _ _ checked2577.1 (.cons _ _ _ _ _ checked2578.1 (.cons _ _ _ _ _ checked2579.1 (.cons _ _ _ _ _ checked2580.1 (.cons _ _ _ _ _ checked2581.1 (.cons _ _ _ _ _ checked2582.1 (.cons _ _ _ _ _ checked2583.1 (.cons _ _ _ _ _ checked2584.1 (.cons _ _ _ _ _ checked2585.1 (.cons _ _ _ _ _ checked2586.1 (.cons _ _ _ _ _ checked2587.1 (.cons _ _ _ _ _ checked2588.1 (.cons _ _ _ _ _ checked2589.1 (.cons _ _ _ _ _ checked2590.1 (.cons _ _ _ _ _ checked2591.1 (.cons _ _ _ _ _ checked2592.1 (.cons _ _ _ _ _ checked2593.1 (.cons _ _ _ _ _ checked2594.1 (.cons _ _ _ _ _ checked2595.1 (.cons _ _ _ _ _ checked2596.1 (.cons _ _ _ _ _ checked2597.1 (.cons _ _ _ _ _ checked2598.1 (.cons _ _ _ _ _ checked2599.1 (.cons _ _ _ _ _ checked2600.1 (.cons _ _ _ _ _ checked2601.1 (.cons _ _ _ _ _ checked2602.1 (.cons _ _ _ _ _ checked2603.1 (.cons _ _ _ _ _ checked2604.1 (.cons _ _ _ _ _ checked2605.1 (.cons _ _ _ _ _ checked2606.1 (.cons _ _ _ _ _ checked2607.1 (.cons _ _ _ _ _ checked2608.1 (.cons _ _ _ _ _ checked2609.1 (.cons _ _ _ _ _ checked2610.1 (.cons _ _ _ _ _ checked2611.1 (.cons _ _ _ _ _ checked2612.1 (.cons _ _ _ _ _ checked2613.1 (.cons _ _ _ _ _ checked2614.1 (.cons _ _ _ _ _ checked2615.1 (.cons _ _ _ _ _ checked2616.1 (.cons _ _ _ _ _ checked2617.1 (.cons _ _ _ _ _ checked2618.1 (.cons _ _ _ _ _ checked2619.1 (.cons _ _ _ _ _ checked2620.1 (.cons _ _ _ _ _ checked2621.1 (.cons _ _ _ _ _ checked2622.1 (.cons _ _ _ _ _ checked2623.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2656 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2560.2,checked2561.2,checked2562.2,checked2563.2,checked2564.2,checked2565.2,checked2566.2,checked2567.2,checked2568.2,checked2569.2,checked2570.2,checked2571.2,checked2572.2,checked2573.2,checked2574.2,checked2575.2,checked2576.2,checked2577.2,checked2578.2,checked2579.2,checked2580.2,checked2581.2,checked2582.2,checked2583.2,checked2584.2,checked2585.2,checked2586.2,checked2587.2,checked2588.2,checked2589.2,checked2590.2,checked2591.2,checked2592.2,checked2593.2,checked2594.2,checked2595.2,checked2596.2,checked2597.2,checked2598.2,checked2599.2,checked2600.2,checked2601.2,checked2602.2,checked2603.2,checked2604.2,checked2605.2,checked2606.2,checked2607.2,checked2608.2,checked2609.2,checked2610.2,checked2611.2,checked2612.2,checked2613.2,checked2614.2,checked2615.2,checked2616.2,checked2617.2,checked2618.2,checked2619.2,checked2620.2,checked2621.2,checked2622.2,checked2623.2]
  decide
end ArtifactPairedPathRoundGroup40
