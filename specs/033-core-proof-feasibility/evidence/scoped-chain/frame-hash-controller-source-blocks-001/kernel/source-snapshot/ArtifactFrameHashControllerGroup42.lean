import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup42
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2688 : List WordIR.Op := [.badd 2729 2730]
def bytes2688 : Bytes := ("    let r00000aab: u32 = r00000aa9.wrapping_add(r00000aaa);\n" : String).toByteArray.data.toList
theorem checked2688 : bytes2688=statementBytes 2731 (op2688.map lower) ∧ bytes2688.length=60 := by core033_kernel_decide
def op2689 : List WordIR.Op := [.band 2731 1028]
def bytes2689 : Bytes := ("    let r00000aac: u32 = r00000aab & r00000404;\n" : String).toByteArray.data.toList
theorem checked2689 : bytes2689=statementBytes 2732 (op2689.map lower) ∧ bytes2689.length=48 := by core033_kernel_decide
def op2690 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2690 : Bytes := ("    let r00000aad: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2690 : bytes2690=statementBytes 2733 (op2690.map lower) ∧ bytes2690.length=41 := by core033_kernel_decide
def op2691 : List WordIR.Op := [.bxor 0 2733]
def bytes2691 : Bytes := ("    let r00000aae: u32 = r00000000 ^ r00000aad;\n" : String).toByteArray.data.toList
theorem checked2691 : bytes2691=statementBytes 2734 (op2691.map lower) ∧ bytes2691.length=48 := by core033_kernel_decide
def op2692 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2692 : Bytes := ("    let r00000aaf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2692 : bytes2692=statementBytes 2735 (op2692.map lower) ∧ bytes2692.length=41 := by core033_kernel_decide
def op2693 : List WordIR.Op := [.bnot 2735]
def bytes2693 : Bytes := ("    let r00000ab0: u32 = !r00000aaf;\n" : String).toByteArray.data.toList
theorem checked2693 : bytes2693=statementBytes 2736 (op2693.map lower) ∧ bytes2693.length=37 := by core033_kernel_decide
def op2694 : List WordIR.Op := [.band 2734 2736]
def bytes2694 : Bytes := ("    let r00000ab1: u32 = r00000aae & r00000ab0;\n" : String).toByteArray.data.toList
theorem checked2694 : bytes2694=statementBytes 2737 (op2694.map lower) ∧ bytes2694.length=48 := by core033_kernel_decide
def op2695 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2695 : Bytes := ("    let r00000ab2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2695 : bytes2695=statementBytes 2738 (op2695.map lower) ∧ bytes2695.length=41 := by core033_kernel_decide
def op2696 : List WordIR.Op := [.bxor 0 2738]
def bytes2696 : Bytes := ("    let r00000ab3: u32 = r00000000 ^ r00000ab2;\n" : String).toByteArray.data.toList
theorem checked2696 : bytes2696=statementBytes 2739 (op2696.map lower) ∧ bytes2696.length=48 := by core033_kernel_decide
def op2697 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2697 : Bytes := ("    let r00000ab4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2697 : bytes2697=statementBytes 2740 (op2697.map lower) ∧ bytes2697.length=41 := by core033_kernel_decide
def op2698 : List WordIR.Op := [.bnot 2740]
def bytes2698 : Bytes := ("    let r00000ab5: u32 = !r00000ab4;\n" : String).toByteArray.data.toList
theorem checked2698 : bytes2698=statementBytes 2741 (op2698.map lower) ∧ bytes2698.length=37 := by core033_kernel_decide
def op2699 : List WordIR.Op := [.bxor 2739 2741]
def bytes2699 : Bytes := ("    let r00000ab6: u32 = r00000ab3 ^ r00000ab5;\n" : String).toByteArray.data.toList
theorem checked2699 : bytes2699=statementBytes 2742 (op2699.map lower) ∧ bytes2699.length=48 := by core033_kernel_decide
def op2700 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2700 : Bytes := ("    let r00000ab7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2700 : bytes2700=statementBytes 2743 (op2700.map lower) ∧ bytes2700.length=41 := by core033_kernel_decide
def op2701 : List WordIR.Op := [.bxor 0 2743]
def bytes2701 : Bytes := ("    let r00000ab8: u32 = r00000000 ^ r00000ab7;\n" : String).toByteArray.data.toList
theorem checked2701 : bytes2701=statementBytes 2744 (op2701.map lower) ∧ bytes2701.length=48 := by core033_kernel_decide
def op2702 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2702 : Bytes := ("    let r00000ab9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2702 : bytes2702=statementBytes 2745 (op2702.map lower) ∧ bytes2702.length=41 := by core033_kernel_decide
def op2703 : List WordIR.Op := [.bnot 2745]
def bytes2703 : Bytes := ("    let r00000aba: u32 = !r00000ab9;\n" : String).toByteArray.data.toList
theorem checked2703 : bytes2703=statementBytes 2746 (op2703.map lower) ∧ bytes2703.length=37 := by core033_kernel_decide
def op2704 : List WordIR.Op := [.badd 2744 2746]
def bytes2704 : Bytes := ("    let r00000abb: u32 = r00000ab8.wrapping_add(r00000aba);\n" : String).toByteArray.data.toList
theorem checked2704 : bytes2704=statementBytes 2747 (op2704.map lower) ∧ bytes2704.length=60 := by core033_kernel_decide
def op2705 : List WordIR.Op := [.bnot 2747]
def bytes2705 : Bytes := ("    let r00000abc: u32 = !r00000abb;\n" : String).toByteArray.data.toList
theorem checked2705 : bytes2705=statementBytes 2748 (op2705.map lower) ∧ bytes2705.length=37 := by core033_kernel_decide
def op2706 : List WordIR.Op := [.band 2742 2748]
def bytes2706 : Bytes := ("    let r00000abd: u32 = r00000ab6 & r00000abc;\n" : String).toByteArray.data.toList
theorem checked2706 : bytes2706=statementBytes 2749 (op2706.map lower) ∧ bytes2706.length=48 := by core033_kernel_decide
def op2707 : List WordIR.Op := [.bxor 2737 2749]
def bytes2707 : Bytes := ("    let r00000abe: u32 = r00000ab1 ^ r00000abd;\n" : String).toByteArray.data.toList
theorem checked2707 : bytes2707=statementBytes 2750 (op2707.map lower) ∧ bytes2707.length=48 := by core033_kernel_decide
def op2708 : List WordIR.Op := [.shr 2750 31]
def bytes2708 : Bytes := ("    let r00000abf: u32 = r00000abe >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2708 : bytes2708=statementBytes 2751 (op2708.map lower) ∧ bytes2708.length=54 := by core033_kernel_decide
def op2709 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2709 : Bytes := ("    let r00000ac0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2709 : bytes2709=statementBytes 2752 (op2709.map lower) ∧ bytes2709.length=41 := by core033_kernel_decide
def op2710 : List WordIR.Op := [.bxor 2751 2752]
def bytes2710 : Bytes := ("    let r00000ac1: u32 = r00000abf ^ r00000ac0;\n" : String).toByteArray.data.toList
theorem checked2710 : bytes2710=statementBytes 2753 (op2710.map lower) ∧ bytes2710.length=48 := by core033_kernel_decide
def op2711 : List WordIR.Op := [.bnot 2753]
def bytes2711 : Bytes := ("    let r00000ac2: u32 = !r00000ac1;\n" : String).toByteArray.data.toList
theorem checked2711 : bytes2711=statementBytes 2754 (op2711.map lower) ∧ bytes2711.length=37 := by core033_kernel_decide
def op2712 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2712 : Bytes := ("    let r00000ac3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2712 : bytes2712=statementBytes 2755 (op2712.map lower) ∧ bytes2712.length=41 := by core033_kernel_decide
def op2713 : List WordIR.Op := [.badd 2754 2755]
def bytes2713 : Bytes := ("    let r00000ac4: u32 = r00000ac2.wrapping_add(r00000ac3);\n" : String).toByteArray.data.toList
theorem checked2713 : bytes2713=statementBytes 2756 (op2713.map lower) ∧ bytes2713.length=60 := by core033_kernel_decide
def op2714 : List WordIR.Op := [.bnot 2756]
def bytes2714 : Bytes := ("    let r00000ac5: u32 = !r00000ac4;\n" : String).toByteArray.data.toList
theorem checked2714 : bytes2714=statementBytes 2757 (op2714.map lower) ∧ bytes2714.length=37 := by core033_kernel_decide
def op2715 : List WordIR.Op := [.band 2757 844]
def bytes2715 : Bytes := ("    let r00000ac6: u32 = r00000ac5 & r0000034c;\n" : String).toByteArray.data.toList
theorem checked2715 : bytes2715=statementBytes 2758 (op2715.map lower) ∧ bytes2715.length=48 := by core033_kernel_decide
def op2716 : List WordIR.Op := [.bxor 2732 2758]
def bytes2716 : Bytes := ("    let r00000ac7: u32 = r00000aac ^ r00000ac6;\n" : String).toByteArray.data.toList
theorem checked2716 : bytes2716=statementBytes 2759 (op2716.map lower) ∧ bytes2716.length=48 := by core033_kernel_decide
def op2717 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2717 : Bytes := ("    let r00000ac8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2717 : bytes2717=statementBytes 2760 (op2717.map lower) ∧ bytes2717.length=41 := by core033_kernel_decide
def op2718 : List WordIR.Op := [.bxor 0 2760]
def bytes2718 : Bytes := ("    let r00000ac9: u32 = r00000000 ^ r00000ac8;\n" : String).toByteArray.data.toList
theorem checked2718 : bytes2718=statementBytes 2761 (op2718.map lower) ∧ bytes2718.length=48 := by core033_kernel_decide
def op2719 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2719 : Bytes := ("    let r00000aca: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2719 : bytes2719=statementBytes 2762 (op2719.map lower) ∧ bytes2719.length=41 := by core033_kernel_decide
def op2720 : List WordIR.Op := [.bnot 2762]
def bytes2720 : Bytes := ("    let r00000acb: u32 = !r00000aca;\n" : String).toByteArray.data.toList
theorem checked2720 : bytes2720=statementBytes 2763 (op2720.map lower) ∧ bytes2720.length=37 := by core033_kernel_decide
def op2721 : List WordIR.Op := [.band 2761 2763]
def bytes2721 : Bytes := ("    let r00000acc: u32 = r00000ac9 & r00000acb;\n" : String).toByteArray.data.toList
theorem checked2721 : bytes2721=statementBytes 2764 (op2721.map lower) ∧ bytes2721.length=48 := by core033_kernel_decide
def op2722 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2722 : Bytes := ("    let r00000acd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2722 : bytes2722=statementBytes 2765 (op2722.map lower) ∧ bytes2722.length=41 := by core033_kernel_decide
def op2723 : List WordIR.Op := [.bxor 0 2765]
def bytes2723 : Bytes := ("    let r00000ace: u32 = r00000000 ^ r00000acd;\n" : String).toByteArray.data.toList
theorem checked2723 : bytes2723=statementBytes 2766 (op2723.map lower) ∧ bytes2723.length=48 := by core033_kernel_decide
def op2724 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2724 : Bytes := ("    let r00000acf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2724 : bytes2724=statementBytes 2767 (op2724.map lower) ∧ bytes2724.length=41 := by core033_kernel_decide
def op2725 : List WordIR.Op := [.bnot 2767]
def bytes2725 : Bytes := ("    let r00000ad0: u32 = !r00000acf;\n" : String).toByteArray.data.toList
theorem checked2725 : bytes2725=statementBytes 2768 (op2725.map lower) ∧ bytes2725.length=37 := by core033_kernel_decide
def op2726 : List WordIR.Op := [.bxor 2766 2768]
def bytes2726 : Bytes := ("    let r00000ad1: u32 = r00000ace ^ r00000ad0;\n" : String).toByteArray.data.toList
theorem checked2726 : bytes2726=statementBytes 2769 (op2726.map lower) ∧ bytes2726.length=48 := by core033_kernel_decide
def op2727 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2727 : Bytes := ("    let r00000ad2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2727 : bytes2727=statementBytes 2770 (op2727.map lower) ∧ bytes2727.length=41 := by core033_kernel_decide
def op2728 : List WordIR.Op := [.bxor 0 2770]
def bytes2728 : Bytes := ("    let r00000ad3: u32 = r00000000 ^ r00000ad2;\n" : String).toByteArray.data.toList
theorem checked2728 : bytes2728=statementBytes 2771 (op2728.map lower) ∧ bytes2728.length=48 := by core033_kernel_decide
def op2729 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2729 : Bytes := ("    let r00000ad4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2729 : bytes2729=statementBytes 2772 (op2729.map lower) ∧ bytes2729.length=41 := by core033_kernel_decide
def op2730 : List WordIR.Op := [.bnot 2772]
def bytes2730 : Bytes := ("    let r00000ad5: u32 = !r00000ad4;\n" : String).toByteArray.data.toList
theorem checked2730 : bytes2730=statementBytes 2773 (op2730.map lower) ∧ bytes2730.length=37 := by core033_kernel_decide
def op2731 : List WordIR.Op := [.badd 2771 2773]
def bytes2731 : Bytes := ("    let r00000ad6: u32 = r00000ad3.wrapping_add(r00000ad5);\n" : String).toByteArray.data.toList
theorem checked2731 : bytes2731=statementBytes 2774 (op2731.map lower) ∧ bytes2731.length=60 := by core033_kernel_decide
def op2732 : List WordIR.Op := [.bnot 2774]
def bytes2732 : Bytes := ("    let r00000ad7: u32 = !r00000ad6;\n" : String).toByteArray.data.toList
theorem checked2732 : bytes2732=statementBytes 2775 (op2732.map lower) ∧ bytes2732.length=37 := by core033_kernel_decide
def op2733 : List WordIR.Op := [.band 2769 2775]
def bytes2733 : Bytes := ("    let r00000ad8: u32 = r00000ad1 & r00000ad7;\n" : String).toByteArray.data.toList
theorem checked2733 : bytes2733=statementBytes 2776 (op2733.map lower) ∧ bytes2733.length=48 := by core033_kernel_decide
def op2734 : List WordIR.Op := [.bxor 2764 2776]
def bytes2734 : Bytes := ("    let r00000ad9: u32 = r00000acc ^ r00000ad8;\n" : String).toByteArray.data.toList
theorem checked2734 : bytes2734=statementBytes 2777 (op2734.map lower) ∧ bytes2734.length=48 := by core033_kernel_decide
def op2735 : List WordIR.Op := [.shr 2777 31]
def bytes2735 : Bytes := ("    let r00000ada: u32 = r00000ad9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2735 : bytes2735=statementBytes 2778 (op2735.map lower) ∧ bytes2735.length=54 := by core033_kernel_decide
def op2736 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2736 : Bytes := ("    let r00000adb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2736 : bytes2736=statementBytes 2779 (op2736.map lower) ∧ bytes2736.length=41 := by core033_kernel_decide
def op2737 : List WordIR.Op := [.bxor 2778 2779]
def bytes2737 : Bytes := ("    let r00000adc: u32 = r00000ada ^ r00000adb;\n" : String).toByteArray.data.toList
theorem checked2737 : bytes2737=statementBytes 2780 (op2737.map lower) ∧ bytes2737.length=48 := by core033_kernel_decide
def op2738 : List WordIR.Op := [.bnot 2780]
def bytes2738 : Bytes := ("    let r00000add: u32 = !r00000adc;\n" : String).toByteArray.data.toList
theorem checked2738 : bytes2738=statementBytes 2781 (op2738.map lower) ∧ bytes2738.length=37 := by core033_kernel_decide
def op2739 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2739 : Bytes := ("    let r00000ade: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2739 : bytes2739=statementBytes 2782 (op2739.map lower) ∧ bytes2739.length=41 := by core033_kernel_decide
def op2740 : List WordIR.Op := [.badd 2781 2782]
def bytes2740 : Bytes := ("    let r00000adf: u32 = r00000add.wrapping_add(r00000ade);\n" : String).toByteArray.data.toList
theorem checked2740 : bytes2740=statementBytes 2783 (op2740.map lower) ∧ bytes2740.length=60 := by core033_kernel_decide
def op2741 : List WordIR.Op := [.band 2783 1031]
def bytes2741 : Bytes := ("    let r00000ae0: u32 = r00000adf & r00000407;\n" : String).toByteArray.data.toList
theorem checked2741 : bytes2741=statementBytes 2784 (op2741.map lower) ∧ bytes2741.length=48 := by core033_kernel_decide
def op2742 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2742 : Bytes := ("    let r00000ae1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2742 : bytes2742=statementBytes 2785 (op2742.map lower) ∧ bytes2742.length=41 := by core033_kernel_decide
def op2743 : List WordIR.Op := [.bxor 0 2785]
def bytes2743 : Bytes := ("    let r00000ae2: u32 = r00000000 ^ r00000ae1;\n" : String).toByteArray.data.toList
theorem checked2743 : bytes2743=statementBytes 2786 (op2743.map lower) ∧ bytes2743.length=48 := by core033_kernel_decide
def op2744 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2744 : Bytes := ("    let r00000ae3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2744 : bytes2744=statementBytes 2787 (op2744.map lower) ∧ bytes2744.length=41 := by core033_kernel_decide
def op2745 : List WordIR.Op := [.bnot 2787]
def bytes2745 : Bytes := ("    let r00000ae4: u32 = !r00000ae3;\n" : String).toByteArray.data.toList
theorem checked2745 : bytes2745=statementBytes 2788 (op2745.map lower) ∧ bytes2745.length=37 := by core033_kernel_decide
def op2746 : List WordIR.Op := [.band 2786 2788]
def bytes2746 : Bytes := ("    let r00000ae5: u32 = r00000ae2 & r00000ae4;\n" : String).toByteArray.data.toList
theorem checked2746 : bytes2746=statementBytes 2789 (op2746.map lower) ∧ bytes2746.length=48 := by core033_kernel_decide
def op2747 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2747 : Bytes := ("    let r00000ae6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2747 : bytes2747=statementBytes 2790 (op2747.map lower) ∧ bytes2747.length=41 := by core033_kernel_decide
def op2748 : List WordIR.Op := [.bxor 0 2790]
def bytes2748 : Bytes := ("    let r00000ae7: u32 = r00000000 ^ r00000ae6;\n" : String).toByteArray.data.toList
theorem checked2748 : bytes2748=statementBytes 2791 (op2748.map lower) ∧ bytes2748.length=48 := by core033_kernel_decide
def op2749 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2749 : Bytes := ("    let r00000ae8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2749 : bytes2749=statementBytes 2792 (op2749.map lower) ∧ bytes2749.length=41 := by core033_kernel_decide
def op2750 : List WordIR.Op := [.bnot 2792]
def bytes2750 : Bytes := ("    let r00000ae9: u32 = !r00000ae8;\n" : String).toByteArray.data.toList
theorem checked2750 : bytes2750=statementBytes 2793 (op2750.map lower) ∧ bytes2750.length=37 := by core033_kernel_decide
def op2751 : List WordIR.Op := [.bxor 2791 2793]
def bytes2751 : Bytes := ("    let r00000aea: u32 = r00000ae7 ^ r00000ae9;\n" : String).toByteArray.data.toList
theorem checked2751 : bytes2751=statementBytes 2794 (op2751.map lower) ∧ bytes2751.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2688,op2689,op2690,op2691,op2692,op2693,op2694,op2695,op2696,op2697,op2698,op2699,op2700,op2701,op2702,op2703,op2704,op2705,op2706,op2707,op2708,op2709,op2710,op2711,op2712,op2713,op2714,op2715,op2716,op2717,op2718,op2719,op2720,op2721,op2722,op2723,op2724,op2725,op2726,op2727,op2728,op2729,op2730,op2731,op2732,op2733,op2734,op2735,op2736,op2737,op2738,op2739,op2740,op2741,op2742,op2743,op2744,op2745,op2746,op2747,op2748,op2749,op2750,op2751]
def chunks : List Bytes := [bytes2688,bytes2689,bytes2690,bytes2691,bytes2692,bytes2693,bytes2694,bytes2695,bytes2696,bytes2697,bytes2698,bytes2699,bytes2700,bytes2701,bytes2702,bytes2703,bytes2704,bytes2705,bytes2706,bytes2707,bytes2708,bytes2709,bytes2710,bytes2711,bytes2712,bytes2713,bytes2714,bytes2715,bytes2716,bytes2717,bytes2718,bytes2719,bytes2720,bytes2721,bytes2722,bytes2723,bytes2724,bytes2725,bytes2726,bytes2727,bytes2728,bytes2729,bytes2730,bytes2731,bytes2732,bytes2733,bytes2734,bytes2735,bytes2736,bytes2737,bytes2738,bytes2739,bytes2740,bytes2741,bytes2742,bytes2743,bytes2744,bytes2745,bytes2746,bytes2747,bytes2748,bytes2749,bytes2750,bytes2751]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2731 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2688.1 (.cons _ _ _ _ _ checked2689.1 (.cons _ _ _ _ _ checked2690.1 (.cons _ _ _ _ _ checked2691.1 (.cons _ _ _ _ _ checked2692.1 (.cons _ _ _ _ _ checked2693.1 (.cons _ _ _ _ _ checked2694.1 (.cons _ _ _ _ _ checked2695.1 (.cons _ _ _ _ _ checked2696.1 (.cons _ _ _ _ _ checked2697.1 (.cons _ _ _ _ _ checked2698.1 (.cons _ _ _ _ _ checked2699.1 (.cons _ _ _ _ _ checked2700.1 (.cons _ _ _ _ _ checked2701.1 (.cons _ _ _ _ _ checked2702.1 (.cons _ _ _ _ _ checked2703.1 (.cons _ _ _ _ _ checked2704.1 (.cons _ _ _ _ _ checked2705.1 (.cons _ _ _ _ _ checked2706.1 (.cons _ _ _ _ _ checked2707.1 (.cons _ _ _ _ _ checked2708.1 (.cons _ _ _ _ _ checked2709.1 (.cons _ _ _ _ _ checked2710.1 (.cons _ _ _ _ _ checked2711.1 (.cons _ _ _ _ _ checked2712.1 (.cons _ _ _ _ _ checked2713.1 (.cons _ _ _ _ _ checked2714.1 (.cons _ _ _ _ _ checked2715.1 (.cons _ _ _ _ _ checked2716.1 (.cons _ _ _ _ _ checked2717.1 (.cons _ _ _ _ _ checked2718.1 (.cons _ _ _ _ _ checked2719.1 (.cons _ _ _ _ _ checked2720.1 (.cons _ _ _ _ _ checked2721.1 (.cons _ _ _ _ _ checked2722.1 (.cons _ _ _ _ _ checked2723.1 (.cons _ _ _ _ _ checked2724.1 (.cons _ _ _ _ _ checked2725.1 (.cons _ _ _ _ _ checked2726.1 (.cons _ _ _ _ _ checked2727.1 (.cons _ _ _ _ _ checked2728.1 (.cons _ _ _ _ _ checked2729.1 (.cons _ _ _ _ _ checked2730.1 (.cons _ _ _ _ _ checked2731.1 (.cons _ _ _ _ _ checked2732.1 (.cons _ _ _ _ _ checked2733.1 (.cons _ _ _ _ _ checked2734.1 (.cons _ _ _ _ _ checked2735.1 (.cons _ _ _ _ _ checked2736.1 (.cons _ _ _ _ _ checked2737.1 (.cons _ _ _ _ _ checked2738.1 (.cons _ _ _ _ _ checked2739.1 (.cons _ _ _ _ _ checked2740.1 (.cons _ _ _ _ _ checked2741.1 (.cons _ _ _ _ _ checked2742.1 (.cons _ _ _ _ _ checked2743.1 (.cons _ _ _ _ _ checked2744.1 (.cons _ _ _ _ _ checked2745.1 (.cons _ _ _ _ _ checked2746.1 (.cons _ _ _ _ _ checked2747.1 (.cons _ _ _ _ _ checked2748.1 (.cons _ _ _ _ _ checked2749.1 (.cons _ _ _ _ _ checked2750.1 (.cons _ _ _ _ _ checked2751.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2731 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2688.2,checked2689.2,checked2690.2,checked2691.2,checked2692.2,checked2693.2,checked2694.2,checked2695.2,checked2696.2,checked2697.2,checked2698.2,checked2699.2,checked2700.2,checked2701.2,checked2702.2,checked2703.2,checked2704.2,checked2705.2,checked2706.2,checked2707.2,checked2708.2,checked2709.2,checked2710.2,checked2711.2,checked2712.2,checked2713.2,checked2714.2,checked2715.2,checked2716.2,checked2717.2,checked2718.2,checked2719.2,checked2720.2,checked2721.2,checked2722.2,checked2723.2,checked2724.2,checked2725.2,checked2726.2,checked2727.2,checked2728.2,checked2729.2,checked2730.2,checked2731.2,checked2732.2,checked2733.2,checked2734.2,checked2735.2,checked2736.2,checked2737.2,checked2738.2,checked2739.2,checked2740.2,checked2741.2,checked2742.2,checked2743.2,checked2744.2,checked2745.2,checked2746.2,checked2747.2,checked2748.2,checked2749.2,checked2750.2,checked2751.2]
  decide
end ArtifactFrameHashControllerGroup42
