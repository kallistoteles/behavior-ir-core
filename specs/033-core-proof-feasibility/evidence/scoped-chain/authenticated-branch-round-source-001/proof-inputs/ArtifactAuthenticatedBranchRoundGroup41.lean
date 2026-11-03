import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup41
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2624 : List WordIR.Op := [.shr 2258 24]
def bytes2624 : Bytes := ("    let r00000ab6: u32 = r000008d2 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2624 : bytes2624=statementBytes 2742 (op2624.map lower) ∧ bytes2624.length=54 := by core033_kernel_decide
def op2625 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2625 : Bytes := ("    let r00000ab7: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2625 : bytes2625=statementBytes 2743 (op2625.map lower) ∧ bytes2625.length=41 := by core033_kernel_decide
def op2626 : List WordIR.Op := [.band 2742 2743]
def bytes2626 : Bytes := ("    let r00000ab8: u32 = r00000ab6 & r00000ab7;\n" : String).toByteArray.data.toList
theorem checked2626 : bytes2626=statementBytes 2744 (op2626.map lower) ∧ bytes2626.length=48 := by core033_kernel_decide
def op2627 : List WordIR.Op := [.shr 2268 0]
def bytes2627 : Bytes := ("    let r00000ab9: u32 = r000008dc >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2627 : bytes2627=statementBytes 2745 (op2627.map lower) ∧ bytes2627.length=54 := by core033_kernel_decide
def op2628 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2628 : Bytes := ("    let r00000aba: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2628 : bytes2628=statementBytes 2746 (op2628.map lower) ∧ bytes2628.length=41 := by core033_kernel_decide
def op2629 : List WordIR.Op := [.band 2745 2746]
def bytes2629 : Bytes := ("    let r00000abb: u32 = r00000ab9 & r00000aba;\n" : String).toByteArray.data.toList
theorem checked2629 : bytes2629=statementBytes 2747 (op2629.map lower) ∧ bytes2629.length=48 := by core033_kernel_decide
def op2630 : List WordIR.Op := [.shr 2268 8]
def bytes2630 : Bytes := ("    let r00000abc: u32 = r000008dc >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2630 : bytes2630=statementBytes 2748 (op2630.map lower) ∧ bytes2630.length=54 := by core033_kernel_decide
def op2631 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2631 : Bytes := ("    let r00000abd: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2631 : bytes2631=statementBytes 2749 (op2631.map lower) ∧ bytes2631.length=41 := by core033_kernel_decide
def op2632 : List WordIR.Op := [.band 2748 2749]
def bytes2632 : Bytes := ("    let r00000abe: u32 = r00000abc & r00000abd;\n" : String).toByteArray.data.toList
theorem checked2632 : bytes2632=statementBytes 2750 (op2632.map lower) ∧ bytes2632.length=48 := by core033_kernel_decide
def op2633 : List WordIR.Op := [.shr 2268 16]
def bytes2633 : Bytes := ("    let r00000abf: u32 = r000008dc >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2633 : bytes2633=statementBytes 2751 (op2633.map lower) ∧ bytes2633.length=54 := by core033_kernel_decide
def op2634 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2634 : Bytes := ("    let r00000ac0: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2634 : bytes2634=statementBytes 2752 (op2634.map lower) ∧ bytes2634.length=41 := by core033_kernel_decide
def op2635 : List WordIR.Op := [.band 2751 2752]
def bytes2635 : Bytes := ("    let r00000ac1: u32 = r00000abf & r00000ac0;\n" : String).toByteArray.data.toList
theorem checked2635 : bytes2635=statementBytes 2753 (op2635.map lower) ∧ bytes2635.length=48 := by core033_kernel_decide
def op2636 : List WordIR.Op := [.shr 2268 24]
def bytes2636 : Bytes := ("    let r00000ac2: u32 = r000008dc >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2636 : bytes2636=statementBytes 2754 (op2636.map lower) ∧ bytes2636.length=54 := by core033_kernel_decide
def op2637 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2637 : Bytes := ("    let r00000ac3: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2637 : bytes2637=statementBytes 2755 (op2637.map lower) ∧ bytes2637.length=41 := by core033_kernel_decide
def op2638 : List WordIR.Op := [.band 2754 2755]
def bytes2638 : Bytes := ("    let r00000ac4: u32 = r00000ac2 & r00000ac3;\n" : String).toByteArray.data.toList
theorem checked2638 : bytes2638=statementBytes 2756 (op2638.map lower) ∧ bytes2638.length=48 := by core033_kernel_decide
def op2639 : List WordIR.Op := [.shr 2278 0]
def bytes2639 : Bytes := ("    let r00000ac5: u32 = r000008e6 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2639 : bytes2639=statementBytes 2757 (op2639.map lower) ∧ bytes2639.length=54 := by core033_kernel_decide
def op2640 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2640 : Bytes := ("    let r00000ac6: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2640 : bytes2640=statementBytes 2758 (op2640.map lower) ∧ bytes2640.length=41 := by core033_kernel_decide
def op2641 : List WordIR.Op := [.band 2757 2758]
def bytes2641 : Bytes := ("    let r00000ac7: u32 = r00000ac5 & r00000ac6;\n" : String).toByteArray.data.toList
theorem checked2641 : bytes2641=statementBytes 2759 (op2641.map lower) ∧ bytes2641.length=48 := by core033_kernel_decide
def op2642 : List WordIR.Op := [.shr 2278 8]
def bytes2642 : Bytes := ("    let r00000ac8: u32 = r000008e6 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2642 : bytes2642=statementBytes 2760 (op2642.map lower) ∧ bytes2642.length=54 := by core033_kernel_decide
def op2643 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2643 : Bytes := ("    let r00000ac9: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2643 : bytes2643=statementBytes 2761 (op2643.map lower) ∧ bytes2643.length=41 := by core033_kernel_decide
def op2644 : List WordIR.Op := [.band 2760 2761]
def bytes2644 : Bytes := ("    let r00000aca: u32 = r00000ac8 & r00000ac9;\n" : String).toByteArray.data.toList
theorem checked2644 : bytes2644=statementBytes 2762 (op2644.map lower) ∧ bytes2644.length=48 := by core033_kernel_decide
def op2645 : List WordIR.Op := [.shr 2278 16]
def bytes2645 : Bytes := ("    let r00000acb: u32 = r000008e6 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2645 : bytes2645=statementBytes 2763 (op2645.map lower) ∧ bytes2645.length=54 := by core033_kernel_decide
def op2646 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2646 : Bytes := ("    let r00000acc: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2646 : bytes2646=statementBytes 2764 (op2646.map lower) ∧ bytes2646.length=41 := by core033_kernel_decide
def op2647 : List WordIR.Op := [.band 2763 2764]
def bytes2647 : Bytes := ("    let r00000acd: u32 = r00000acb & r00000acc;\n" : String).toByteArray.data.toList
theorem checked2647 : bytes2647=statementBytes 2765 (op2647.map lower) ∧ bytes2647.length=48 := by core033_kernel_decide
def op2648 : List WordIR.Op := [.shr 2278 24]
def bytes2648 : Bytes := ("    let r00000ace: u32 = r000008e6 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2648 : bytes2648=statementBytes 2766 (op2648.map lower) ∧ bytes2648.length=54 := by core033_kernel_decide
def op2649 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2649 : Bytes := ("    let r00000acf: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2649 : bytes2649=statementBytes 2767 (op2649.map lower) ∧ bytes2649.length=41 := by core033_kernel_decide
def op2650 : List WordIR.Op := [.band 2766 2767]
def bytes2650 : Bytes := ("    let r00000ad0: u32 = r00000ace & r00000acf;\n" : String).toByteArray.data.toList
theorem checked2650 : bytes2650=statementBytes 2768 (op2650.map lower) ∧ bytes2650.length=48 := by core033_kernel_decide
def op2651 : List WordIR.Op := [.shr 2168 0]
def bytes2651 : Bytes := ("    let r00000ad1: u32 = r00000878 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2651 : bytes2651=statementBytes 2769 (op2651.map lower) ∧ bytes2651.length=54 := by core033_kernel_decide
def op2652 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2652 : Bytes := ("    let r00000ad2: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2652 : bytes2652=statementBytes 2770 (op2652.map lower) ∧ bytes2652.length=41 := by core033_kernel_decide
def op2653 : List WordIR.Op := [.band 2769 2770]
def bytes2653 : Bytes := ("    let r00000ad3: u32 = r00000ad1 & r00000ad2;\n" : String).toByteArray.data.toList
theorem checked2653 : bytes2653=statementBytes 2771 (op2653.map lower) ∧ bytes2653.length=48 := by core033_kernel_decide
def op2654 : List WordIR.Op := [.shr 2168 8]
def bytes2654 : Bytes := ("    let r00000ad4: u32 = r00000878 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2654 : bytes2654=statementBytes 2772 (op2654.map lower) ∧ bytes2654.length=54 := by core033_kernel_decide
def op2655 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2655 : Bytes := ("    let r00000ad5: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2655 : bytes2655=statementBytes 2773 (op2655.map lower) ∧ bytes2655.length=41 := by core033_kernel_decide
def op2656 : List WordIR.Op := [.band 2772 2773]
def bytes2656 : Bytes := ("    let r00000ad6: u32 = r00000ad4 & r00000ad5;\n" : String).toByteArray.data.toList
theorem checked2656 : bytes2656=statementBytes 2774 (op2656.map lower) ∧ bytes2656.length=48 := by core033_kernel_decide
def op2657 : List WordIR.Op := [.shr 2168 16]
def bytes2657 : Bytes := ("    let r00000ad7: u32 = r00000878 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2657 : bytes2657=statementBytes 2775 (op2657.map lower) ∧ bytes2657.length=54 := by core033_kernel_decide
def op2658 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2658 : Bytes := ("    let r00000ad8: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2658 : bytes2658=statementBytes 2776 (op2658.map lower) ∧ bytes2658.length=41 := by core033_kernel_decide
def op2659 : List WordIR.Op := [.band 2775 2776]
def bytes2659 : Bytes := ("    let r00000ad9: u32 = r00000ad7 & r00000ad8;\n" : String).toByteArray.data.toList
theorem checked2659 : bytes2659=statementBytes 2777 (op2659.map lower) ∧ bytes2659.length=48 := by core033_kernel_decide
def op2660 : List WordIR.Op := [.shr 2168 24]
def bytes2660 : Bytes := ("    let r00000ada: u32 = r00000878 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2660 : bytes2660=statementBytes 2778 (op2660.map lower) ∧ bytes2660.length=54 := by core033_kernel_decide
def op2661 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2661 : Bytes := ("    let r00000adb: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2661 : bytes2661=statementBytes 2779 (op2661.map lower) ∧ bytes2661.length=41 := by core033_kernel_decide
def op2662 : List WordIR.Op := [.band 2778 2779]
def bytes2662 : Bytes := ("    let r00000adc: u32 = r00000ada & r00000adb;\n" : String).toByteArray.data.toList
theorem checked2662 : bytes2662=statementBytes 2780 (op2662.map lower) ∧ bytes2662.length=48 := by core033_kernel_decide
def op2663 : List WordIR.Op := [.shr 2178 0]
def bytes2663 : Bytes := ("    let r00000add: u32 = r00000882 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2663 : bytes2663=statementBytes 2781 (op2663.map lower) ∧ bytes2663.length=54 := by core033_kernel_decide
def op2664 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2664 : Bytes := ("    let r00000ade: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2664 : bytes2664=statementBytes 2782 (op2664.map lower) ∧ bytes2664.length=41 := by core033_kernel_decide
def op2665 : List WordIR.Op := [.band 2781 2782]
def bytes2665 : Bytes := ("    let r00000adf: u32 = r00000add & r00000ade;\n" : String).toByteArray.data.toList
theorem checked2665 : bytes2665=statementBytes 2783 (op2665.map lower) ∧ bytes2665.length=48 := by core033_kernel_decide
def op2666 : List WordIR.Op := [.shr 2178 8]
def bytes2666 : Bytes := ("    let r00000ae0: u32 = r00000882 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2666 : bytes2666=statementBytes 2784 (op2666.map lower) ∧ bytes2666.length=54 := by core033_kernel_decide
def op2667 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2667 : Bytes := ("    let r00000ae1: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2667 : bytes2667=statementBytes 2785 (op2667.map lower) ∧ bytes2667.length=41 := by core033_kernel_decide
def op2668 : List WordIR.Op := [.band 2784 2785]
def bytes2668 : Bytes := ("    let r00000ae2: u32 = r00000ae0 & r00000ae1;\n" : String).toByteArray.data.toList
theorem checked2668 : bytes2668=statementBytes 2786 (op2668.map lower) ∧ bytes2668.length=48 := by core033_kernel_decide
def op2669 : List WordIR.Op := [.shr 2178 16]
def bytes2669 : Bytes := ("    let r00000ae3: u32 = r00000882 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2669 : bytes2669=statementBytes 2787 (op2669.map lower) ∧ bytes2669.length=54 := by core033_kernel_decide
def op2670 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2670 : Bytes := ("    let r00000ae4: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2670 : bytes2670=statementBytes 2788 (op2670.map lower) ∧ bytes2670.length=41 := by core033_kernel_decide
def op2671 : List WordIR.Op := [.band 2787 2788]
def bytes2671 : Bytes := ("    let r00000ae5: u32 = r00000ae3 & r00000ae4;\n" : String).toByteArray.data.toList
theorem checked2671 : bytes2671=statementBytes 2789 (op2671.map lower) ∧ bytes2671.length=48 := by core033_kernel_decide
def op2672 : List WordIR.Op := [.shr 2178 24]
def bytes2672 : Bytes := ("    let r00000ae6: u32 = r00000882 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2672 : bytes2672=statementBytes 2790 (op2672.map lower) ∧ bytes2672.length=54 := by core033_kernel_decide
def op2673 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2673 : Bytes := ("    let r00000ae7: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2673 : bytes2673=statementBytes 2791 (op2673.map lower) ∧ bytes2673.length=41 := by core033_kernel_decide
def op2674 : List WordIR.Op := [.band 2790 2791]
def bytes2674 : Bytes := ("    let r00000ae8: u32 = r00000ae6 & r00000ae7;\n" : String).toByteArray.data.toList
theorem checked2674 : bytes2674=statementBytes 2792 (op2674.map lower) ∧ bytes2674.length=48 := by core033_kernel_decide
def op2675 : List WordIR.Op := [.shr 2288 0]
def bytes2675 : Bytes := ("    let r00000ae9: u32 = r000008f0 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2675 : bytes2675=statementBytes 2793 (op2675.map lower) ∧ bytes2675.length=54 := by core033_kernel_decide
def op2676 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2676 : Bytes := ("    let r00000aea: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2676 : bytes2676=statementBytes 2794 (op2676.map lower) ∧ bytes2676.length=41 := by core033_kernel_decide
def op2677 : List WordIR.Op := [.band 2793 2794]
def bytes2677 : Bytes := ("    let r00000aeb: u32 = r00000ae9 & r00000aea;\n" : String).toByteArray.data.toList
theorem checked2677 : bytes2677=statementBytes 2795 (op2677.map lower) ∧ bytes2677.length=48 := by core033_kernel_decide
def op2678 : List WordIR.Op := [.shr 2288 8]
def bytes2678 : Bytes := ("    let r00000aec: u32 = r000008f0 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2678 : bytes2678=statementBytes 2796 (op2678.map lower) ∧ bytes2678.length=54 := by core033_kernel_decide
def op2679 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2679 : Bytes := ("    let r00000aed: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2679 : bytes2679=statementBytes 2797 (op2679.map lower) ∧ bytes2679.length=41 := by core033_kernel_decide
def op2680 : List WordIR.Op := [.band 2796 2797]
def bytes2680 : Bytes := ("    let r00000aee: u32 = r00000aec & r00000aed;\n" : String).toByteArray.data.toList
theorem checked2680 : bytes2680=statementBytes 2798 (op2680.map lower) ∧ bytes2680.length=48 := by core033_kernel_decide
def op2681 : List WordIR.Op := [.shr 2288 16]
def bytes2681 : Bytes := ("    let r00000aef: u32 = r000008f0 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2681 : bytes2681=statementBytes 2799 (op2681.map lower) ∧ bytes2681.length=54 := by core033_kernel_decide
def op2682 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2682 : Bytes := ("    let r00000af0: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2682 : bytes2682=statementBytes 2800 (op2682.map lower) ∧ bytes2682.length=41 := by core033_kernel_decide
def op2683 : List WordIR.Op := [.band 2799 2800]
def bytes2683 : Bytes := ("    let r00000af1: u32 = r00000aef & r00000af0;\n" : String).toByteArray.data.toList
theorem checked2683 : bytes2683=statementBytes 2801 (op2683.map lower) ∧ bytes2683.length=48 := by core033_kernel_decide
def op2684 : List WordIR.Op := [.shr 2288 24]
def bytes2684 : Bytes := ("    let r00000af2: u32 = r000008f0 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2684 : bytes2684=statementBytes 2802 (op2684.map lower) ∧ bytes2684.length=54 := by core033_kernel_decide
def op2685 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2685 : Bytes := ("    let r00000af3: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2685 : bytes2685=statementBytes 2803 (op2685.map lower) ∧ bytes2685.length=41 := by core033_kernel_decide
def op2686 : List WordIR.Op := [.band 2802 2803]
def bytes2686 : Bytes := ("    let r00000af4: u32 = r00000af2 & r00000af3;\n" : String).toByteArray.data.toList
theorem checked2686 : bytes2686=statementBytes 2804 (op2686.map lower) ∧ bytes2686.length=48 := by core033_kernel_decide
def op2687 : List WordIR.Op := [.shr 2298 0]
def bytes2687 : Bytes := ("    let r00000af5: u32 = r000008fa >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2687 : bytes2687=statementBytes 2805 (op2687.map lower) ∧ bytes2687.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2624,op2625,op2626,op2627,op2628,op2629,op2630,op2631,op2632,op2633,op2634,op2635,op2636,op2637,op2638,op2639,op2640,op2641,op2642,op2643,op2644,op2645,op2646,op2647,op2648,op2649,op2650,op2651,op2652,op2653,op2654,op2655,op2656,op2657,op2658,op2659,op2660,op2661,op2662,op2663,op2664,op2665,op2666,op2667,op2668,op2669,op2670,op2671,op2672,op2673,op2674,op2675,op2676,op2677,op2678,op2679,op2680,op2681,op2682,op2683,op2684,op2685,op2686,op2687]
def chunks : List Bytes := [bytes2624,bytes2625,bytes2626,bytes2627,bytes2628,bytes2629,bytes2630,bytes2631,bytes2632,bytes2633,bytes2634,bytes2635,bytes2636,bytes2637,bytes2638,bytes2639,bytes2640,bytes2641,bytes2642,bytes2643,bytes2644,bytes2645,bytes2646,bytes2647,bytes2648,bytes2649,bytes2650,bytes2651,bytes2652,bytes2653,bytes2654,bytes2655,bytes2656,bytes2657,bytes2658,bytes2659,bytes2660,bytes2661,bytes2662,bytes2663,bytes2664,bytes2665,bytes2666,bytes2667,bytes2668,bytes2669,bytes2670,bytes2671,bytes2672,bytes2673,bytes2674,bytes2675,bytes2676,bytes2677,bytes2678,bytes2679,bytes2680,bytes2681,bytes2682,bytes2683,bytes2684,bytes2685,bytes2686,bytes2687]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2742 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2624.1 (.cons _ _ _ _ _ checked2625.1 (.cons _ _ _ _ _ checked2626.1 (.cons _ _ _ _ _ checked2627.1 (.cons _ _ _ _ _ checked2628.1 (.cons _ _ _ _ _ checked2629.1 (.cons _ _ _ _ _ checked2630.1 (.cons _ _ _ _ _ checked2631.1 (.cons _ _ _ _ _ checked2632.1 (.cons _ _ _ _ _ checked2633.1 (.cons _ _ _ _ _ checked2634.1 (.cons _ _ _ _ _ checked2635.1 (.cons _ _ _ _ _ checked2636.1 (.cons _ _ _ _ _ checked2637.1 (.cons _ _ _ _ _ checked2638.1 (.cons _ _ _ _ _ checked2639.1 (.cons _ _ _ _ _ checked2640.1 (.cons _ _ _ _ _ checked2641.1 (.cons _ _ _ _ _ checked2642.1 (.cons _ _ _ _ _ checked2643.1 (.cons _ _ _ _ _ checked2644.1 (.cons _ _ _ _ _ checked2645.1 (.cons _ _ _ _ _ checked2646.1 (.cons _ _ _ _ _ checked2647.1 (.cons _ _ _ _ _ checked2648.1 (.cons _ _ _ _ _ checked2649.1 (.cons _ _ _ _ _ checked2650.1 (.cons _ _ _ _ _ checked2651.1 (.cons _ _ _ _ _ checked2652.1 (.cons _ _ _ _ _ checked2653.1 (.cons _ _ _ _ _ checked2654.1 (.cons _ _ _ _ _ checked2655.1 (.cons _ _ _ _ _ checked2656.1 (.cons _ _ _ _ _ checked2657.1 (.cons _ _ _ _ _ checked2658.1 (.cons _ _ _ _ _ checked2659.1 (.cons _ _ _ _ _ checked2660.1 (.cons _ _ _ _ _ checked2661.1 (.cons _ _ _ _ _ checked2662.1 (.cons _ _ _ _ _ checked2663.1 (.cons _ _ _ _ _ checked2664.1 (.cons _ _ _ _ _ checked2665.1 (.cons _ _ _ _ _ checked2666.1 (.cons _ _ _ _ _ checked2667.1 (.cons _ _ _ _ _ checked2668.1 (.cons _ _ _ _ _ checked2669.1 (.cons _ _ _ _ _ checked2670.1 (.cons _ _ _ _ _ checked2671.1 (.cons _ _ _ _ _ checked2672.1 (.cons _ _ _ _ _ checked2673.1 (.cons _ _ _ _ _ checked2674.1 (.cons _ _ _ _ _ checked2675.1 (.cons _ _ _ _ _ checked2676.1 (.cons _ _ _ _ _ checked2677.1 (.cons _ _ _ _ _ checked2678.1 (.cons _ _ _ _ _ checked2679.1 (.cons _ _ _ _ _ checked2680.1 (.cons _ _ _ _ _ checked2681.1 (.cons _ _ _ _ _ checked2682.1 (.cons _ _ _ _ _ checked2683.1 (.cons _ _ _ _ _ checked2684.1 (.cons _ _ _ _ _ checked2685.1 (.cons _ _ _ _ _ checked2686.1 (.cons _ _ _ _ _ checked2687.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2742 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3057 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2624.2,checked2625.2,checked2626.2,checked2627.2,checked2628.2,checked2629.2,checked2630.2,checked2631.2,checked2632.2,checked2633.2,checked2634.2,checked2635.2,checked2636.2,checked2637.2,checked2638.2,checked2639.2,checked2640.2,checked2641.2,checked2642.2,checked2643.2,checked2644.2,checked2645.2,checked2646.2,checked2647.2,checked2648.2,checked2649.2,checked2650.2,checked2651.2,checked2652.2,checked2653.2,checked2654.2,checked2655.2,checked2656.2,checked2657.2,checked2658.2,checked2659.2,checked2660.2,checked2661.2,checked2662.2,checked2663.2,checked2664.2,checked2665.2,checked2666.2,checked2667.2,checked2668.2,checked2669.2,checked2670.2,checked2671.2,checked2672.2,checked2673.2,checked2674.2,checked2675.2,checked2676.2,checked2677.2,checked2678.2,checked2679.2,checked2680.2,checked2681.2,checked2682.2,checked2683.2,checked2684.2,checked2685.2,checked2686.2,checked2687.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup41
