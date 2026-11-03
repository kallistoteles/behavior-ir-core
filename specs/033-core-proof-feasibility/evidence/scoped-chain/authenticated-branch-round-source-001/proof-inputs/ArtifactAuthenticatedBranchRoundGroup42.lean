import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup42
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2688 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2688 : Bytes := ("    let r00000af6: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2688 : bytes2688=statementBytes 2806 (op2688.map lower) ∧ bytes2688.length=41 := by core033_kernel_decide
def op2689 : List WordIR.Op := [.band 2805 2806]
def bytes2689 : Bytes := ("    let r00000af7: u32 = r00000af5 & r00000af6;\n" : String).toByteArray.data.toList
theorem checked2689 : bytes2689=statementBytes 2807 (op2689.map lower) ∧ bytes2689.length=48 := by core033_kernel_decide
def op2690 : List WordIR.Op := [.shr 2298 8]
def bytes2690 : Bytes := ("    let r00000af8: u32 = r000008fa >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2690 : bytes2690=statementBytes 2808 (op2690.map lower) ∧ bytes2690.length=54 := by core033_kernel_decide
def op2691 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2691 : Bytes := ("    let r00000af9: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2691 : bytes2691=statementBytes 2809 (op2691.map lower) ∧ bytes2691.length=41 := by core033_kernel_decide
def op2692 : List WordIR.Op := [.band 2808 2809]
def bytes2692 : Bytes := ("    let r00000afa: u32 = r00000af8 & r00000af9;\n" : String).toByteArray.data.toList
theorem checked2692 : bytes2692=statementBytes 2810 (op2692.map lower) ∧ bytes2692.length=48 := by core033_kernel_decide
def op2693 : List WordIR.Op := [.shr 2298 16]
def bytes2693 : Bytes := ("    let r00000afb: u32 = r000008fa >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2693 : bytes2693=statementBytes 2811 (op2693.map lower) ∧ bytes2693.length=54 := by core033_kernel_decide
def op2694 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2694 : Bytes := ("    let r00000afc: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2694 : bytes2694=statementBytes 2812 (op2694.map lower) ∧ bytes2694.length=41 := by core033_kernel_decide
def op2695 : List WordIR.Op := [.band 2811 2812]
def bytes2695 : Bytes := ("    let r00000afd: u32 = r00000afb & r00000afc;\n" : String).toByteArray.data.toList
theorem checked2695 : bytes2695=statementBytes 2813 (op2695.map lower) ∧ bytes2695.length=48 := by core033_kernel_decide
def op2696 : List WordIR.Op := [.shr 2298 24]
def bytes2696 : Bytes := ("    let r00000afe: u32 = r000008fa >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2696 : bytes2696=statementBytes 2814 (op2696.map lower) ∧ bytes2696.length=54 := by core033_kernel_decide
def op2697 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2697 : Bytes := ("    let r00000aff: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2697 : bytes2697=statementBytes 2815 (op2697.map lower) ∧ bytes2697.length=41 := by core033_kernel_decide
def op2698 : List WordIR.Op := [.band 2814 2815]
def bytes2698 : Bytes := ("    let r00000b00: u32 = r00000afe & r00000aff;\n" : String).toByteArray.data.toList
theorem checked2698 : bytes2698=statementBytes 2816 (op2698.map lower) ∧ bytes2698.length=48 := by core033_kernel_decide
def op2699 : List WordIR.Op := [.shr 2337 0]
def bytes2699 : Bytes := ("    let r00000b01: u32 = r00000921 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2699 : bytes2699=statementBytes 2817 (op2699.map lower) ∧ bytes2699.length=54 := by core033_kernel_decide
def op2700 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2700 : Bytes := ("    let r00000b02: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2700 : bytes2700=statementBytes 2818 (op2700.map lower) ∧ bytes2700.length=41 := by core033_kernel_decide
def op2701 : List WordIR.Op := [.band 2817 2818]
def bytes2701 : Bytes := ("    let r00000b03: u32 = r00000b01 & r00000b02;\n" : String).toByteArray.data.toList
theorem checked2701 : bytes2701=statementBytes 2819 (op2701.map lower) ∧ bytes2701.length=48 := by core033_kernel_decide
def op2702 : List WordIR.Op := [.shr 2337 8]
def bytes2702 : Bytes := ("    let r00000b04: u32 = r00000921 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2702 : bytes2702=statementBytes 2820 (op2702.map lower) ∧ bytes2702.length=54 := by core033_kernel_decide
def op2703 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2703 : Bytes := ("    let r00000b05: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2703 : bytes2703=statementBytes 2821 (op2703.map lower) ∧ bytes2703.length=41 := by core033_kernel_decide
def op2704 : List WordIR.Op := [.band 2820 2821]
def bytes2704 : Bytes := ("    let r00000b06: u32 = r00000b04 & r00000b05;\n" : String).toByteArray.data.toList
theorem checked2704 : bytes2704=statementBytes 2822 (op2704.map lower) ∧ bytes2704.length=48 := by core033_kernel_decide
def op2705 : List WordIR.Op := [.shr 2337 16]
def bytes2705 : Bytes := ("    let r00000b07: u32 = r00000921 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2705 : bytes2705=statementBytes 2823 (op2705.map lower) ∧ bytes2705.length=54 := by core033_kernel_decide
def op2706 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2706 : Bytes := ("    let r00000b08: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2706 : bytes2706=statementBytes 2824 (op2706.map lower) ∧ bytes2706.length=41 := by core033_kernel_decide
def op2707 : List WordIR.Op := [.band 2823 2824]
def bytes2707 : Bytes := ("    let r00000b09: u32 = r00000b07 & r00000b08;\n" : String).toByteArray.data.toList
theorem checked2707 : bytes2707=statementBytes 2825 (op2707.map lower) ∧ bytes2707.length=48 := by core033_kernel_decide
def op2708 : List WordIR.Op := [.shr 2337 24]
def bytes2708 : Bytes := ("    let r00000b0a: u32 = r00000921 >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2708 : bytes2708=statementBytes 2826 (op2708.map lower) ∧ bytes2708.length=54 := by core033_kernel_decide
def op2709 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2709 : Bytes := ("    let r00000b0b: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2709 : bytes2709=statementBytes 2827 (op2709.map lower) ∧ bytes2709.length=41 := by core033_kernel_decide
def op2710 : List WordIR.Op := [.band 2826 2827]
def bytes2710 : Bytes := ("    let r00000b0c: u32 = r00000b0a & r00000b0b;\n" : String).toByteArray.data.toList
theorem checked2710 : bytes2710=statementBytes 2828 (op2710.map lower) ∧ bytes2710.length=48 := by core033_kernel_decide
def op2711 : List WordIR.Op := [.shr 2346 0]
def bytes2711 : Bytes := ("    let r00000b0d: u32 = r0000092a >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2711 : bytes2711=statementBytes 2829 (op2711.map lower) ∧ bytes2711.length=54 := by core033_kernel_decide
def op2712 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2712 : Bytes := ("    let r00000b0e: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2712 : bytes2712=statementBytes 2830 (op2712.map lower) ∧ bytes2712.length=41 := by core033_kernel_decide
def op2713 : List WordIR.Op := [.band 2829 2830]
def bytes2713 : Bytes := ("    let r00000b0f: u32 = r00000b0d & r00000b0e;\n" : String).toByteArray.data.toList
theorem checked2713 : bytes2713=statementBytes 2831 (op2713.map lower) ∧ bytes2713.length=48 := by core033_kernel_decide
def op2714 : List WordIR.Op := [.shr 2346 8]
def bytes2714 : Bytes := ("    let r00000b10: u32 = r0000092a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked2714 : bytes2714=statementBytes 2832 (op2714.map lower) ∧ bytes2714.length=54 := by core033_kernel_decide
def op2715 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2715 : Bytes := ("    let r00000b11: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2715 : bytes2715=statementBytes 2833 (op2715.map lower) ∧ bytes2715.length=41 := by core033_kernel_decide
def op2716 : List WordIR.Op := [.band 2832 2833]
def bytes2716 : Bytes := ("    let r00000b12: u32 = r00000b10 & r00000b11;\n" : String).toByteArray.data.toList
theorem checked2716 : bytes2716=statementBytes 2834 (op2716.map lower) ∧ bytes2716.length=48 := by core033_kernel_decide
def op2717 : List WordIR.Op := [.shr 2346 16]
def bytes2717 : Bytes := ("    let r00000b13: u32 = r0000092a >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked2717 : bytes2717=statementBytes 2835 (op2717.map lower) ∧ bytes2717.length=54 := by core033_kernel_decide
def op2718 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2718 : Bytes := ("    let r00000b14: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2718 : bytes2718=statementBytes 2836 (op2718.map lower) ∧ bytes2718.length=41 := by core033_kernel_decide
def op2719 : List WordIR.Op := [.band 2835 2836]
def bytes2719 : Bytes := ("    let r00000b15: u32 = r00000b13 & r00000b14;\n" : String).toByteArray.data.toList
theorem checked2719 : bytes2719=statementBytes 2837 (op2719.map lower) ∧ bytes2719.length=48 := by core033_kernel_decide
def op2720 : List WordIR.Op := [.shr 2346 24]
def bytes2720 : Bytes := ("    let r00000b16: u32 = r0000092a >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked2720 : bytes2720=statementBytes 2838 (op2720.map lower) ∧ bytes2720.length=54 := by core033_kernel_decide
def op2721 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2721 : Bytes := ("    let r00000b17: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2721 : bytes2721=statementBytes 2839 (op2721.map lower) ∧ bytes2721.length=41 := by core033_kernel_decide
def op2722 : List WordIR.Op := [.band 2838 2839]
def bytes2722 : Bytes := ("    let r00000b18: u32 = r00000b16 & r00000b17;\n" : String).toByteArray.data.toList
theorem checked2722 : bytes2722=statementBytes 2840 (op2722.map lower) ∧ bytes2722.length=48 := by core033_kernel_decide
def op2723 : List WordIR.Op := [.shr 2472 0]
def bytes2723 : Bytes := ("    let r00000b19: u32 = r000009a8 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2723 : bytes2723=statementBytes 2841 (op2723.map lower) ∧ bytes2723.length=54 := by core033_kernel_decide
def op2724 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2724 : Bytes := ("    let r00000b1a: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2724 : bytes2724=statementBytes 2842 (op2724.map lower) ∧ bytes2724.length=41 := by core033_kernel_decide
def op2725 : List WordIR.Op := [.band 2841 2842]
def bytes2725 : Bytes := ("    let r00000b1b: u32 = r00000b19 & r00000b1a;\n" : String).toByteArray.data.toList
theorem checked2725 : bytes2725=statementBytes 2843 (op2725.map lower) ∧ bytes2725.length=48 := by core033_kernel_decide
def op2726 : List WordIR.Op := [.shr 2473 0]
def bytes2726 : Bytes := ("    let r00000b1c: u32 = r000009a9 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2726 : bytes2726=statementBytes 2844 (op2726.map lower) ∧ bytes2726.length=54 := by core033_kernel_decide
def op2727 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes2727 : Bytes := ("    let r00000b1d: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked2727 : bytes2727=statementBytes 2845 (op2727.map lower) ∧ bytes2727.length=41 := by core033_kernel_decide
def op2728 : List WordIR.Op := [.band 2844 2845]
def bytes2728 : Bytes := ("    let r00000b1e: u32 = r00000b1c & r00000b1d;\n" : String).toByteArray.data.toList
theorem checked2728 : bytes2728=statementBytes 2846 (op2728.map lower) ∧ bytes2728.length=48 := by core033_kernel_decide
def op2729 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2729 : Bytes := ("    let r00000b1f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2729 : bytes2729=statementBytes 2847 (op2729.map lower) ∧ bytes2729.length=41 := by core033_kernel_decide
def op2730 : List WordIR.Op := [.bnot 2847]
def bytes2730 : Bytes := ("    let r00000b20: u32 = !r00000b1f;\n" : String).toByteArray.data.toList
theorem checked2730 : bytes2730=statementBytes 2848 (op2730.map lower) ∧ bytes2730.length=37 := by core033_kernel_decide
def op2731 : List WordIR.Op := [.band 1310 2848]
def bytes2731 : Bytes := ("    let r00000b21: u32 = r0000051e & r00000b20;\n" : String).toByteArray.data.toList
theorem checked2731 : bytes2731=statementBytes 2849 (op2731.map lower) ∧ bytes2731.length=48 := by core033_kernel_decide
def op2732 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2732 : Bytes := ("    let r00000b22: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2732 : bytes2732=statementBytes 2850 (op2732.map lower) ∧ bytes2732.length=41 := by core033_kernel_decide
def op2733 : List WordIR.Op := [.bnot 2850]
def bytes2733 : Bytes := ("    let r00000b23: u32 = !r00000b22;\n" : String).toByteArray.data.toList
theorem checked2733 : bytes2733=statementBytes 2851 (op2733.map lower) ∧ bytes2733.length=37 := by core033_kernel_decide
def op2734 : List WordIR.Op := [.bxor 1310 2851]
def bytes2734 : Bytes := ("    let r00000b24: u32 = r0000051e ^ r00000b23;\n" : String).toByteArray.data.toList
theorem checked2734 : bytes2734=statementBytes 2852 (op2734.map lower) ∧ bytes2734.length=48 := by core033_kernel_decide
def op2735 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2735 : Bytes := ("    let r00000b25: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2735 : bytes2735=statementBytes 2853 (op2735.map lower) ∧ bytes2735.length=41 := by core033_kernel_decide
def op2736 : List WordIR.Op := [.bnot 2853]
def bytes2736 : Bytes := ("    let r00000b26: u32 = !r00000b25;\n" : String).toByteArray.data.toList
theorem checked2736 : bytes2736=statementBytes 2854 (op2736.map lower) ∧ bytes2736.length=37 := by core033_kernel_decide
def op2737 : List WordIR.Op := [.badd 1310 2854]
def bytes2737 : Bytes := ("    let r00000b27: u32 = r0000051e.wrapping_add(r00000b26);\n" : String).toByteArray.data.toList
theorem checked2737 : bytes2737=statementBytes 2855 (op2737.map lower) ∧ bytes2737.length=60 := by core033_kernel_decide
def op2738 : List WordIR.Op := [.bnot 2855]
def bytes2738 : Bytes := ("    let r00000b28: u32 = !r00000b27;\n" : String).toByteArray.data.toList
theorem checked2738 : bytes2738=statementBytes 2856 (op2738.map lower) ∧ bytes2738.length=37 := by core033_kernel_decide
def op2739 : List WordIR.Op := [.band 2852 2856]
def bytes2739 : Bytes := ("    let r00000b29: u32 = r00000b24 & r00000b28;\n" : String).toByteArray.data.toList
theorem checked2739 : bytes2739=statementBytes 2857 (op2739.map lower) ∧ bytes2739.length=48 := by core033_kernel_decide
def op2740 : List WordIR.Op := [.bxor 2849 2857]
def bytes2740 : Bytes := ("    let r00000b2a: u32 = r00000b21 ^ r00000b29;\n" : String).toByteArray.data.toList
theorem checked2740 : bytes2740=statementBytes 2858 (op2740.map lower) ∧ bytes2740.length=48 := by core033_kernel_decide
def op2741 : List WordIR.Op := [.shr 2858 31]
def bytes2741 : Bytes := ("    let r00000b2b: u32 = r00000b2a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2741 : bytes2741=statementBytes 2859 (op2741.map lower) ∧ bytes2741.length=54 := by core033_kernel_decide
def op2742 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes2742 : Bytes := ("    let r00000b2c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked2742 : bytes2742=statementBytes 2860 (op2742.map lower) ∧ bytes2742.length=41 := by core033_kernel_decide
def op2743 : List WordIR.Op := [.bnot 1310]
def bytes2743 : Bytes := ("    let r00000b2d: u32 = !r0000051e;\n" : String).toByteArray.data.toList
theorem checked2743 : bytes2743=statementBytes 2861 (op2743.map lower) ∧ bytes2743.length=37 := by core033_kernel_decide
def op2744 : List WordIR.Op := [.band 2860 2861]
def bytes2744 : Bytes := ("    let r00000b2e: u32 = r00000b2c & r00000b2d;\n" : String).toByteArray.data.toList
theorem checked2744 : bytes2744=statementBytes 2862 (op2744.map lower) ∧ bytes2744.length=48 := by core033_kernel_decide
def op2745 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes2745 : Bytes := ("    let r00000b2f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked2745 : bytes2745=statementBytes 2863 (op2745.map lower) ∧ bytes2745.length=41 := by core033_kernel_decide
def op2746 : List WordIR.Op := [.bnot 1310]
def bytes2746 : Bytes := ("    let r00000b30: u32 = !r0000051e;\n" : String).toByteArray.data.toList
theorem checked2746 : bytes2746=statementBytes 2864 (op2746.map lower) ∧ bytes2746.length=37 := by core033_kernel_decide
def op2747 : List WordIR.Op := [.bxor 2863 2864]
def bytes2747 : Bytes := ("    let r00000b31: u32 = r00000b2f ^ r00000b30;\n" : String).toByteArray.data.toList
theorem checked2747 : bytes2747=statementBytes 2865 (op2747.map lower) ∧ bytes2747.length=48 := by core033_kernel_decide
def op2748 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes2748 : Bytes := ("    let r00000b32: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked2748 : bytes2748=statementBytes 2866 (op2748.map lower) ∧ bytes2748.length=41 := by core033_kernel_decide
def op2749 : List WordIR.Op := [.bnot 1310]
def bytes2749 : Bytes := ("    let r00000b33: u32 = !r0000051e;\n" : String).toByteArray.data.toList
theorem checked2749 : bytes2749=statementBytes 2867 (op2749.map lower) ∧ bytes2749.length=37 := by core033_kernel_decide
def op2750 : List WordIR.Op := [.badd 2866 2867]
def bytes2750 : Bytes := ("    let r00000b34: u32 = r00000b32.wrapping_add(r00000b33);\n" : String).toByteArray.data.toList
theorem checked2750 : bytes2750=statementBytes 2868 (op2750.map lower) ∧ bytes2750.length=60 := by core033_kernel_decide
def op2751 : List WordIR.Op := [.bnot 2868]
def bytes2751 : Bytes := ("    let r00000b35: u32 = !r00000b34;\n" : String).toByteArray.data.toList
theorem checked2751 : bytes2751=statementBytes 2869 (op2751.map lower) ∧ bytes2751.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2688,op2689,op2690,op2691,op2692,op2693,op2694,op2695,op2696,op2697,op2698,op2699,op2700,op2701,op2702,op2703,op2704,op2705,op2706,op2707,op2708,op2709,op2710,op2711,op2712,op2713,op2714,op2715,op2716,op2717,op2718,op2719,op2720,op2721,op2722,op2723,op2724,op2725,op2726,op2727,op2728,op2729,op2730,op2731,op2732,op2733,op2734,op2735,op2736,op2737,op2738,op2739,op2740,op2741,op2742,op2743,op2744,op2745,op2746,op2747,op2748,op2749,op2750,op2751]
def chunks : List Bytes := [bytes2688,bytes2689,bytes2690,bytes2691,bytes2692,bytes2693,bytes2694,bytes2695,bytes2696,bytes2697,bytes2698,bytes2699,bytes2700,bytes2701,bytes2702,bytes2703,bytes2704,bytes2705,bytes2706,bytes2707,bytes2708,bytes2709,bytes2710,bytes2711,bytes2712,bytes2713,bytes2714,bytes2715,bytes2716,bytes2717,bytes2718,bytes2719,bytes2720,bytes2721,bytes2722,bytes2723,bytes2724,bytes2725,bytes2726,bytes2727,bytes2728,bytes2729,bytes2730,bytes2731,bytes2732,bytes2733,bytes2734,bytes2735,bytes2736,bytes2737,bytes2738,bytes2739,bytes2740,bytes2741,bytes2742,bytes2743,bytes2744,bytes2745,bytes2746,bytes2747,bytes2748,bytes2749,bytes2750,bytes2751]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2806 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2688.1 (.cons _ _ _ _ _ checked2689.1 (.cons _ _ _ _ _ checked2690.1 (.cons _ _ _ _ _ checked2691.1 (.cons _ _ _ _ _ checked2692.1 (.cons _ _ _ _ _ checked2693.1 (.cons _ _ _ _ _ checked2694.1 (.cons _ _ _ _ _ checked2695.1 (.cons _ _ _ _ _ checked2696.1 (.cons _ _ _ _ _ checked2697.1 (.cons _ _ _ _ _ checked2698.1 (.cons _ _ _ _ _ checked2699.1 (.cons _ _ _ _ _ checked2700.1 (.cons _ _ _ _ _ checked2701.1 (.cons _ _ _ _ _ checked2702.1 (.cons _ _ _ _ _ checked2703.1 (.cons _ _ _ _ _ checked2704.1 (.cons _ _ _ _ _ checked2705.1 (.cons _ _ _ _ _ checked2706.1 (.cons _ _ _ _ _ checked2707.1 (.cons _ _ _ _ _ checked2708.1 (.cons _ _ _ _ _ checked2709.1 (.cons _ _ _ _ _ checked2710.1 (.cons _ _ _ _ _ checked2711.1 (.cons _ _ _ _ _ checked2712.1 (.cons _ _ _ _ _ checked2713.1 (.cons _ _ _ _ _ checked2714.1 (.cons _ _ _ _ _ checked2715.1 (.cons _ _ _ _ _ checked2716.1 (.cons _ _ _ _ _ checked2717.1 (.cons _ _ _ _ _ checked2718.1 (.cons _ _ _ _ _ checked2719.1 (.cons _ _ _ _ _ checked2720.1 (.cons _ _ _ _ _ checked2721.1 (.cons _ _ _ _ _ checked2722.1 (.cons _ _ _ _ _ checked2723.1 (.cons _ _ _ _ _ checked2724.1 (.cons _ _ _ _ _ checked2725.1 (.cons _ _ _ _ _ checked2726.1 (.cons _ _ _ _ _ checked2727.1 (.cons _ _ _ _ _ checked2728.1 (.cons _ _ _ _ _ checked2729.1 (.cons _ _ _ _ _ checked2730.1 (.cons _ _ _ _ _ checked2731.1 (.cons _ _ _ _ _ checked2732.1 (.cons _ _ _ _ _ checked2733.1 (.cons _ _ _ _ _ checked2734.1 (.cons _ _ _ _ _ checked2735.1 (.cons _ _ _ _ _ checked2736.1 (.cons _ _ _ _ _ checked2737.1 (.cons _ _ _ _ _ checked2738.1 (.cons _ _ _ _ _ checked2739.1 (.cons _ _ _ _ _ checked2740.1 (.cons _ _ _ _ _ checked2741.1 (.cons _ _ _ _ _ checked2742.1 (.cons _ _ _ _ _ checked2743.1 (.cons _ _ _ _ _ checked2744.1 (.cons _ _ _ _ _ checked2745.1 (.cons _ _ _ _ _ checked2746.1 (.cons _ _ _ _ _ checked2747.1 (.cons _ _ _ _ _ checked2748.1 (.cons _ _ _ _ _ checked2749.1 (.cons _ _ _ _ _ checked2750.1 (.cons _ _ _ _ _ checked2751.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2806 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2952 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2688.2,checked2689.2,checked2690.2,checked2691.2,checked2692.2,checked2693.2,checked2694.2,checked2695.2,checked2696.2,checked2697.2,checked2698.2,checked2699.2,checked2700.2,checked2701.2,checked2702.2,checked2703.2,checked2704.2,checked2705.2,checked2706.2,checked2707.2,checked2708.2,checked2709.2,checked2710.2,checked2711.2,checked2712.2,checked2713.2,checked2714.2,checked2715.2,checked2716.2,checked2717.2,checked2718.2,checked2719.2,checked2720.2,checked2721.2,checked2722.2,checked2723.2,checked2724.2,checked2725.2,checked2726.2,checked2727.2,checked2728.2,checked2729.2,checked2730.2,checked2731.2,checked2732.2,checked2733.2,checked2734.2,checked2735.2,checked2736.2,checked2737.2,checked2738.2,checked2739.2,checked2740.2,checked2741.2,checked2742.2,checked2743.2,checked2744.2,checked2745.2,checked2746.2,checked2747.2,checked2748.2,checked2749.2,checked2750.2,checked2751.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup42
