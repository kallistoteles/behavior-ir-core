import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup43
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2752 : List WordIR.Op := [.bxor 2822 2823]
def bytes2752 : Bytes := ("    let r00000b08: u32 = r00000b06 ^ r00000b07;\n" : String).toByteArray.data.toList
theorem checked2752 : bytes2752=statementBytes 2824 (op2752.map lower) ∧ bytes2752.length=48 := by core033_kernel_decide
def op2753 : List WordIR.Op := [.rotr 2806 22]
def bytes2753 : Bytes := ("    let r00000b09: u32 = r00000af6.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2753 : bytes2753=statementBytes 2825 (op2753.map lower) ∧ bytes2753.length=65 := by core033_kernel_decide
def op2754 : List WordIR.Op := [.bxor 2824 2825]
def bytes2754 : Bytes := ("    let r00000b0a: u32 = r00000b08 ^ r00000b09;\n" : String).toByteArray.data.toList
theorem checked2754 : bytes2754=statementBytes 2826 (op2754.map lower) ∧ bytes2754.length=48 := by core033_kernel_decide
def op2755 : List WordIR.Op := [.band 2806 2779]
def bytes2755 : Bytes := ("    let r00000b0b: u32 = r00000af6 & r00000adb;\n" : String).toByteArray.data.toList
theorem checked2755 : bytes2755=statementBytes 2827 (op2755.map lower) ∧ bytes2755.length=48 := by core033_kernel_decide
def op2756 : List WordIR.Op := [.band 2806 2752]
def bytes2756 : Bytes := ("    let r00000b0c: u32 = r00000af6 & r00000ac0;\n" : String).toByteArray.data.toList
theorem checked2756 : bytes2756=statementBytes 2828 (op2756.map lower) ∧ bytes2756.length=48 := by core033_kernel_decide
def op2757 : List WordIR.Op := [.bxor 2827 2828]
def bytes2757 : Bytes := ("    let r00000b0d: u32 = r00000b0b ^ r00000b0c;\n" : String).toByteArray.data.toList
theorem checked2757 : bytes2757=statementBytes 2829 (op2757.map lower) ∧ bytes2757.length=48 := by core033_kernel_decide
def op2758 : List WordIR.Op := [.band 2779 2752]
def bytes2758 : Bytes := ("    let r00000b0e: u32 = r00000adb & r00000ac0;\n" : String).toByteArray.data.toList
theorem checked2758 : bytes2758=statementBytes 2830 (op2758.map lower) ∧ bytes2758.length=48 := by core033_kernel_decide
def op2759 : List WordIR.Op := [.bxor 2829 2830]
def bytes2759 : Bytes := ("    let r00000b0f: u32 = r00000b0d ^ r00000b0e;\n" : String).toByteArray.data.toList
theorem checked2759 : bytes2759=statementBytes 2831 (op2759.map lower) ∧ bytes2759.length=48 := by core033_kernel_decide
def op2760 : List WordIR.Op := [.badd 2826 2831]
def bytes2760 : Bytes := ("    let r00000b10: u32 = r00000b0a.wrapping_add(r00000b0f);\n" : String).toByteArray.data.toList
theorem checked2760 : bytes2760=statementBytes 2832 (op2760.map lower) ∧ bytes2760.length=60 := by core033_kernel_decide
def op2761 : List WordIR.Op := [.badd 2821 2832]
def bytes2761 : Bytes := ("    let r00000b11: u32 = r00000b05.wrapping_add(r00000b10);\n" : String).toByteArray.data.toList
theorem checked2761 : bytes2761=statementBytes 2833 (op2761.map lower) ∧ bytes2761.length=60 := by core033_kernel_decide
def op2762 : List WordIR.Op := [.badd 2725 2821]
def bytes2762 : Bytes := ("    let r00000b12: u32 = r00000aa5.wrapping_add(r00000b05);\n" : String).toByteArray.data.toList
theorem checked2762 : bytes2762=statementBytes 2834 (op2762.map lower) ∧ bytes2762.length=60 := by core033_kernel_decide
def op2763 : List WordIR.Op := [.rotr 2834 6]
def bytes2763 : Bytes := ("    let r00000b13: u32 = r00000b12.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2763 : bytes2763=statementBytes 2835 (op2763.map lower) ∧ bytes2763.length=65 := by core033_kernel_decide
def op2764 : List WordIR.Op := [.rotr 2834 11]
def bytes2764 : Bytes := ("    let r00000b14: u32 = r00000b12.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2764 : bytes2764=statementBytes 2836 (op2764.map lower) ∧ bytes2764.length=65 := by core033_kernel_decide
def op2765 : List WordIR.Op := [.bxor 2835 2836]
def bytes2765 : Bytes := ("    let r00000b15: u32 = r00000b13 ^ r00000b14;\n" : String).toByteArray.data.toList
theorem checked2765 : bytes2765=statementBytes 2837 (op2765.map lower) ∧ bytes2765.length=48 := by core033_kernel_decide
def op2766 : List WordIR.Op := [.rotr 2834 25]
def bytes2766 : Bytes := ("    let r00000b16: u32 = r00000b12.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2766 : bytes2766=statementBytes 2838 (op2766.map lower) ∧ bytes2766.length=65 := by core033_kernel_decide
def op2767 : List WordIR.Op := [.bxor 2837 2838]
def bytes2767 : Bytes := ("    let r00000b17: u32 = r00000b15 ^ r00000b16;\n" : String).toByteArray.data.toList
theorem checked2767 : bytes2767=statementBytes 2839 (op2767.map lower) ∧ bytes2767.length=48 := by core033_kernel_decide
def op2768 : List WordIR.Op := [.badd 2753 2839]
def bytes2768 : Bytes := ("    let r00000b18: u32 = r00000ac1.wrapping_add(r00000b17);\n" : String).toByteArray.data.toList
theorem checked2768 : bytes2768=statementBytes 2840 (op2768.map lower) ∧ bytes2768.length=60 := by core033_kernel_decide
def op2769 : List WordIR.Op := [.band 2834 2807]
def bytes2769 : Bytes := ("    let r00000b19: u32 = r00000b12 & r00000af7;\n" : String).toByteArray.data.toList
theorem checked2769 : bytes2769=statementBytes 2841 (op2769.map lower) ∧ bytes2769.length=48 := by core033_kernel_decide
def op2770 : List WordIR.Op := [.bnot 2834]
def bytes2770 : Bytes := ("    let r00000b1a: u32 = !r00000b12;\n" : String).toByteArray.data.toList
theorem checked2770 : bytes2770=statementBytes 2842 (op2770.map lower) ∧ bytes2770.length=37 := by core033_kernel_decide
def op2771 : List WordIR.Op := [.band 2842 2780]
def bytes2771 : Bytes := ("    let r00000b1b: u32 = r00000b1a & r00000adc;\n" : String).toByteArray.data.toList
theorem checked2771 : bytes2771=statementBytes 2843 (op2771.map lower) ∧ bytes2771.length=48 := by core033_kernel_decide
def op2772 : List WordIR.Op := [.bxor 2841 2843]
def bytes2772 : Bytes := ("    let r00000b1c: u32 = r00000b19 ^ r00000b1b;\n" : String).toByteArray.data.toList
theorem checked2772 : bytes2772=statementBytes 2844 (op2772.map lower) ∧ bytes2772.length=48 := by core033_kernel_decide
def op2773 : List WordIR.Op := [.badd 2840 2844]
def bytes2773 : Bytes := ("    let r00000b1d: u32 = r00000b18.wrapping_add(r00000b1c);\n" : String).toByteArray.data.toList
theorem checked2773 : bytes2773=statementBytes 2845 (op2773.map lower) ∧ bytes2773.length=60 := by core033_kernel_decide
def op2774 : List WordIR.Op := [.literal (BitVec.ofNat 32 773529912)]
def bytes2774 : Bytes := ("    let r00000b1e: u32 = 0x2e1b2138_u32;\n" : String).toByteArray.data.toList
theorem checked2774 : bytes2774=statementBytes 2846 (op2774.map lower) ∧ bytes2774.length=41 := by core033_kernel_decide
def op2775 : List WordIR.Op := [.badd 2845 2846]
def bytes2775 : Bytes := ("    let r00000b1f: u32 = r00000b1d.wrapping_add(r00000b1e);\n" : String).toByteArray.data.toList
theorem checked2775 : bytes2775=statementBytes 2847 (op2775.map lower) ∧ bytes2775.length=60 := by core033_kernel_decide
def op2776 : List WordIR.Op := [.badd 2847 1553]
def bytes2776 : Bytes := ("    let r00000b20: u32 = r00000b1f.wrapping_add(r00000611);\n" : String).toByteArray.data.toList
theorem checked2776 : bytes2776=statementBytes 2848 (op2776.map lower) ∧ bytes2776.length=60 := by core033_kernel_decide
def op2777 : List WordIR.Op := [.rotr 2833 2]
def bytes2777 : Bytes := ("    let r00000b21: u32 = r00000b11.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2777 : bytes2777=statementBytes 2849 (op2777.map lower) ∧ bytes2777.length=65 := by core033_kernel_decide
def op2778 : List WordIR.Op := [.rotr 2833 13]
def bytes2778 : Bytes := ("    let r00000b22: u32 = r00000b11.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2778 : bytes2778=statementBytes 2850 (op2778.map lower) ∧ bytes2778.length=65 := by core033_kernel_decide
def op2779 : List WordIR.Op := [.bxor 2849 2850]
def bytes2779 : Bytes := ("    let r00000b23: u32 = r00000b21 ^ r00000b22;\n" : String).toByteArray.data.toList
theorem checked2779 : bytes2779=statementBytes 2851 (op2779.map lower) ∧ bytes2779.length=48 := by core033_kernel_decide
def op2780 : List WordIR.Op := [.rotr 2833 22]
def bytes2780 : Bytes := ("    let r00000b24: u32 = r00000b11.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2780 : bytes2780=statementBytes 2852 (op2780.map lower) ∧ bytes2780.length=65 := by core033_kernel_decide
def op2781 : List WordIR.Op := [.bxor 2851 2852]
def bytes2781 : Bytes := ("    let r00000b25: u32 = r00000b23 ^ r00000b24;\n" : String).toByteArray.data.toList
theorem checked2781 : bytes2781=statementBytes 2853 (op2781.map lower) ∧ bytes2781.length=48 := by core033_kernel_decide
def op2782 : List WordIR.Op := [.band 2833 2806]
def bytes2782 : Bytes := ("    let r00000b26: u32 = r00000b11 & r00000af6;\n" : String).toByteArray.data.toList
theorem checked2782 : bytes2782=statementBytes 2854 (op2782.map lower) ∧ bytes2782.length=48 := by core033_kernel_decide
def op2783 : List WordIR.Op := [.band 2833 2779]
def bytes2783 : Bytes := ("    let r00000b27: u32 = r00000b11 & r00000adb;\n" : String).toByteArray.data.toList
theorem checked2783 : bytes2783=statementBytes 2855 (op2783.map lower) ∧ bytes2783.length=48 := by core033_kernel_decide
def op2784 : List WordIR.Op := [.bxor 2854 2855]
def bytes2784 : Bytes := ("    let r00000b28: u32 = r00000b26 ^ r00000b27;\n" : String).toByteArray.data.toList
theorem checked2784 : bytes2784=statementBytes 2856 (op2784.map lower) ∧ bytes2784.length=48 := by core033_kernel_decide
def op2785 : List WordIR.Op := [.band 2806 2779]
def bytes2785 : Bytes := ("    let r00000b29: u32 = r00000af6 & r00000adb;\n" : String).toByteArray.data.toList
theorem checked2785 : bytes2785=statementBytes 2857 (op2785.map lower) ∧ bytes2785.length=48 := by core033_kernel_decide
def op2786 : List WordIR.Op := [.bxor 2856 2857]
def bytes2786 : Bytes := ("    let r00000b2a: u32 = r00000b28 ^ r00000b29;\n" : String).toByteArray.data.toList
theorem checked2786 : bytes2786=statementBytes 2858 (op2786.map lower) ∧ bytes2786.length=48 := by core033_kernel_decide
def op2787 : List WordIR.Op := [.badd 2853 2858]
def bytes2787 : Bytes := ("    let r00000b2b: u32 = r00000b25.wrapping_add(r00000b2a);\n" : String).toByteArray.data.toList
theorem checked2787 : bytes2787=statementBytes 2859 (op2787.map lower) ∧ bytes2787.length=60 := by core033_kernel_decide
def op2788 : List WordIR.Op := [.badd 2848 2859]
def bytes2788 : Bytes := ("    let r00000b2c: u32 = r00000b20.wrapping_add(r00000b2b);\n" : String).toByteArray.data.toList
theorem checked2788 : bytes2788=statementBytes 2860 (op2788.map lower) ∧ bytes2788.length=60 := by core033_kernel_decide
def op2789 : List WordIR.Op := [.badd 2752 2848]
def bytes2789 : Bytes := ("    let r00000b2d: u32 = r00000ac0.wrapping_add(r00000b20);\n" : String).toByteArray.data.toList
theorem checked2789 : bytes2789=statementBytes 2861 (op2789.map lower) ∧ bytes2789.length=60 := by core033_kernel_decide
def op2790 : List WordIR.Op := [.rotr 2861 6]
def bytes2790 : Bytes := ("    let r00000b2e: u32 = r00000b2d.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2790 : bytes2790=statementBytes 2862 (op2790.map lower) ∧ bytes2790.length=65 := by core033_kernel_decide
def op2791 : List WordIR.Op := [.rotr 2861 11]
def bytes2791 : Bytes := ("    let r00000b2f: u32 = r00000b2d.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2791 : bytes2791=statementBytes 2863 (op2791.map lower) ∧ bytes2791.length=65 := by core033_kernel_decide
def op2792 : List WordIR.Op := [.bxor 2862 2863]
def bytes2792 : Bytes := ("    let r00000b30: u32 = r00000b2e ^ r00000b2f;\n" : String).toByteArray.data.toList
theorem checked2792 : bytes2792=statementBytes 2864 (op2792.map lower) ∧ bytes2792.length=48 := by core033_kernel_decide
def op2793 : List WordIR.Op := [.rotr 2861 25]
def bytes2793 : Bytes := ("    let r00000b31: u32 = r00000b2d.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2793 : bytes2793=statementBytes 2865 (op2793.map lower) ∧ bytes2793.length=65 := by core033_kernel_decide
def op2794 : List WordIR.Op := [.bxor 2864 2865]
def bytes2794 : Bytes := ("    let r00000b32: u32 = r00000b30 ^ r00000b31;\n" : String).toByteArray.data.toList
theorem checked2794 : bytes2794=statementBytes 2866 (op2794.map lower) ∧ bytes2794.length=48 := by core033_kernel_decide
def op2795 : List WordIR.Op := [.badd 2780 2866]
def bytes2795 : Bytes := ("    let r00000b33: u32 = r00000adc.wrapping_add(r00000b32);\n" : String).toByteArray.data.toList
theorem checked2795 : bytes2795=statementBytes 2867 (op2795.map lower) ∧ bytes2795.length=60 := by core033_kernel_decide
def op2796 : List WordIR.Op := [.band 2861 2834]
def bytes2796 : Bytes := ("    let r00000b34: u32 = r00000b2d & r00000b12;\n" : String).toByteArray.data.toList
theorem checked2796 : bytes2796=statementBytes 2868 (op2796.map lower) ∧ bytes2796.length=48 := by core033_kernel_decide
def op2797 : List WordIR.Op := [.bnot 2861]
def bytes2797 : Bytes := ("    let r00000b35: u32 = !r00000b2d;\n" : String).toByteArray.data.toList
theorem checked2797 : bytes2797=statementBytes 2869 (op2797.map lower) ∧ bytes2797.length=37 := by core033_kernel_decide
def op2798 : List WordIR.Op := [.band 2869 2807]
def bytes2798 : Bytes := ("    let r00000b36: u32 = r00000b35 & r00000af7;\n" : String).toByteArray.data.toList
theorem checked2798 : bytes2798=statementBytes 2870 (op2798.map lower) ∧ bytes2798.length=48 := by core033_kernel_decide
def op2799 : List WordIR.Op := [.bxor 2868 2870]
def bytes2799 : Bytes := ("    let r00000b37: u32 = r00000b34 ^ r00000b36;\n" : String).toByteArray.data.toList
theorem checked2799 : bytes2799=statementBytes 2871 (op2799.map lower) ∧ bytes2799.length=48 := by core033_kernel_decide
def op2800 : List WordIR.Op := [.badd 2867 2871]
def bytes2800 : Bytes := ("    let r00000b38: u32 = r00000b33.wrapping_add(r00000b37);\n" : String).toByteArray.data.toList
theorem checked2800 : bytes2800=statementBytes 2872 (op2800.map lower) ∧ bytes2800.length=60 := by core033_kernel_decide
def op2801 : List WordIR.Op := [.literal (BitVec.ofNat 32 1294757372)]
def bytes2801 : Bytes := ("    let r00000b39: u32 = 0x4d2c6dfc_u32;\n" : String).toByteArray.data.toList
theorem checked2801 : bytes2801=statementBytes 2873 (op2801.map lower) ∧ bytes2801.length=41 := by core033_kernel_decide
def op2802 : List WordIR.Op := [.badd 2872 2873]
def bytes2802 : Bytes := ("    let r00000b3a: u32 = r00000b38.wrapping_add(r00000b39);\n" : String).toByteArray.data.toList
theorem checked2802 : bytes2802=statementBytes 2874 (op2802.map lower) ∧ bytes2802.length=60 := by core033_kernel_decide
def op2803 : List WordIR.Op := [.badd 2874 1566]
def bytes2803 : Bytes := ("    let r00000b3b: u32 = r00000b3a.wrapping_add(r0000061e);\n" : String).toByteArray.data.toList
theorem checked2803 : bytes2803=statementBytes 2875 (op2803.map lower) ∧ bytes2803.length=60 := by core033_kernel_decide
def op2804 : List WordIR.Op := [.rotr 2860 2]
def bytes2804 : Bytes := ("    let r00000b3c: u32 = r00000b2c.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2804 : bytes2804=statementBytes 2876 (op2804.map lower) ∧ bytes2804.length=65 := by core033_kernel_decide
def op2805 : List WordIR.Op := [.rotr 2860 13]
def bytes2805 : Bytes := ("    let r00000b3d: u32 = r00000b2c.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2805 : bytes2805=statementBytes 2877 (op2805.map lower) ∧ bytes2805.length=65 := by core033_kernel_decide
def op2806 : List WordIR.Op := [.bxor 2876 2877]
def bytes2806 : Bytes := ("    let r00000b3e: u32 = r00000b3c ^ r00000b3d;\n" : String).toByteArray.data.toList
theorem checked2806 : bytes2806=statementBytes 2878 (op2806.map lower) ∧ bytes2806.length=48 := by core033_kernel_decide
def op2807 : List WordIR.Op := [.rotr 2860 22]
def bytes2807 : Bytes := ("    let r00000b3f: u32 = r00000b2c.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2807 : bytes2807=statementBytes 2879 (op2807.map lower) ∧ bytes2807.length=65 := by core033_kernel_decide
def op2808 : List WordIR.Op := [.bxor 2878 2879]
def bytes2808 : Bytes := ("    let r00000b40: u32 = r00000b3e ^ r00000b3f;\n" : String).toByteArray.data.toList
theorem checked2808 : bytes2808=statementBytes 2880 (op2808.map lower) ∧ bytes2808.length=48 := by core033_kernel_decide
def op2809 : List WordIR.Op := [.band 2860 2833]
def bytes2809 : Bytes := ("    let r00000b41: u32 = r00000b2c & r00000b11;\n" : String).toByteArray.data.toList
theorem checked2809 : bytes2809=statementBytes 2881 (op2809.map lower) ∧ bytes2809.length=48 := by core033_kernel_decide
def op2810 : List WordIR.Op := [.band 2860 2806]
def bytes2810 : Bytes := ("    let r00000b42: u32 = r00000b2c & r00000af6;\n" : String).toByteArray.data.toList
theorem checked2810 : bytes2810=statementBytes 2882 (op2810.map lower) ∧ bytes2810.length=48 := by core033_kernel_decide
def op2811 : List WordIR.Op := [.bxor 2881 2882]
def bytes2811 : Bytes := ("    let r00000b43: u32 = r00000b41 ^ r00000b42;\n" : String).toByteArray.data.toList
theorem checked2811 : bytes2811=statementBytes 2883 (op2811.map lower) ∧ bytes2811.length=48 := by core033_kernel_decide
def op2812 : List WordIR.Op := [.band 2833 2806]
def bytes2812 : Bytes := ("    let r00000b44: u32 = r00000b11 & r00000af6;\n" : String).toByteArray.data.toList
theorem checked2812 : bytes2812=statementBytes 2884 (op2812.map lower) ∧ bytes2812.length=48 := by core033_kernel_decide
def op2813 : List WordIR.Op := [.bxor 2883 2884]
def bytes2813 : Bytes := ("    let r00000b45: u32 = r00000b43 ^ r00000b44;\n" : String).toByteArray.data.toList
theorem checked2813 : bytes2813=statementBytes 2885 (op2813.map lower) ∧ bytes2813.length=48 := by core033_kernel_decide
def op2814 : List WordIR.Op := [.badd 2880 2885]
def bytes2814 : Bytes := ("    let r00000b46: u32 = r00000b40.wrapping_add(r00000b45);\n" : String).toByteArray.data.toList
theorem checked2814 : bytes2814=statementBytes 2886 (op2814.map lower) ∧ bytes2814.length=60 := by core033_kernel_decide
def op2815 : List WordIR.Op := [.badd 2875 2886]
def bytes2815 : Bytes := ("    let r00000b47: u32 = r00000b3b.wrapping_add(r00000b46);\n" : String).toByteArray.data.toList
theorem checked2815 : bytes2815=statementBytes 2887 (op2815.map lower) ∧ bytes2815.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2752,op2753,op2754,op2755,op2756,op2757,op2758,op2759,op2760,op2761,op2762,op2763,op2764,op2765,op2766,op2767,op2768,op2769,op2770,op2771,op2772,op2773,op2774,op2775,op2776,op2777,op2778,op2779,op2780,op2781,op2782,op2783,op2784,op2785,op2786,op2787,op2788,op2789,op2790,op2791,op2792,op2793,op2794,op2795,op2796,op2797,op2798,op2799,op2800,op2801,op2802,op2803,op2804,op2805,op2806,op2807,op2808,op2809,op2810,op2811,op2812,op2813,op2814,op2815]
def chunks : List Bytes := [bytes2752,bytes2753,bytes2754,bytes2755,bytes2756,bytes2757,bytes2758,bytes2759,bytes2760,bytes2761,bytes2762,bytes2763,bytes2764,bytes2765,bytes2766,bytes2767,bytes2768,bytes2769,bytes2770,bytes2771,bytes2772,bytes2773,bytes2774,bytes2775,bytes2776,bytes2777,bytes2778,bytes2779,bytes2780,bytes2781,bytes2782,bytes2783,bytes2784,bytes2785,bytes2786,bytes2787,bytes2788,bytes2789,bytes2790,bytes2791,bytes2792,bytes2793,bytes2794,bytes2795,bytes2796,bytes2797,bytes2798,bytes2799,bytes2800,bytes2801,bytes2802,bytes2803,bytes2804,bytes2805,bytes2806,bytes2807,bytes2808,bytes2809,bytes2810,bytes2811,bytes2812,bytes2813,bytes2814,bytes2815]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2824 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2752.1 (.cons _ _ _ _ _ checked2753.1 (.cons _ _ _ _ _ checked2754.1 (.cons _ _ _ _ _ checked2755.1 (.cons _ _ _ _ _ checked2756.1 (.cons _ _ _ _ _ checked2757.1 (.cons _ _ _ _ _ checked2758.1 (.cons _ _ _ _ _ checked2759.1 (.cons _ _ _ _ _ checked2760.1 (.cons _ _ _ _ _ checked2761.1 (.cons _ _ _ _ _ checked2762.1 (.cons _ _ _ _ _ checked2763.1 (.cons _ _ _ _ _ checked2764.1 (.cons _ _ _ _ _ checked2765.1 (.cons _ _ _ _ _ checked2766.1 (.cons _ _ _ _ _ checked2767.1 (.cons _ _ _ _ _ checked2768.1 (.cons _ _ _ _ _ checked2769.1 (.cons _ _ _ _ _ checked2770.1 (.cons _ _ _ _ _ checked2771.1 (.cons _ _ _ _ _ checked2772.1 (.cons _ _ _ _ _ checked2773.1 (.cons _ _ _ _ _ checked2774.1 (.cons _ _ _ _ _ checked2775.1 (.cons _ _ _ _ _ checked2776.1 (.cons _ _ _ _ _ checked2777.1 (.cons _ _ _ _ _ checked2778.1 (.cons _ _ _ _ _ checked2779.1 (.cons _ _ _ _ _ checked2780.1 (.cons _ _ _ _ _ checked2781.1 (.cons _ _ _ _ _ checked2782.1 (.cons _ _ _ _ _ checked2783.1 (.cons _ _ _ _ _ checked2784.1 (.cons _ _ _ _ _ checked2785.1 (.cons _ _ _ _ _ checked2786.1 (.cons _ _ _ _ _ checked2787.1 (.cons _ _ _ _ _ checked2788.1 (.cons _ _ _ _ _ checked2789.1 (.cons _ _ _ _ _ checked2790.1 (.cons _ _ _ _ _ checked2791.1 (.cons _ _ _ _ _ checked2792.1 (.cons _ _ _ _ _ checked2793.1 (.cons _ _ _ _ _ checked2794.1 (.cons _ _ _ _ _ checked2795.1 (.cons _ _ _ _ _ checked2796.1 (.cons _ _ _ _ _ checked2797.1 (.cons _ _ _ _ _ checked2798.1 (.cons _ _ _ _ _ checked2799.1 (.cons _ _ _ _ _ checked2800.1 (.cons _ _ _ _ _ checked2801.1 (.cons _ _ _ _ _ checked2802.1 (.cons _ _ _ _ _ checked2803.1 (.cons _ _ _ _ _ checked2804.1 (.cons _ _ _ _ _ checked2805.1 (.cons _ _ _ _ _ checked2806.1 (.cons _ _ _ _ _ checked2807.1 (.cons _ _ _ _ _ checked2808.1 (.cons _ _ _ _ _ checked2809.1 (.cons _ _ _ _ _ checked2810.1 (.cons _ _ _ _ _ checked2811.1 (.cons _ _ _ _ _ checked2812.1 (.cons _ _ _ _ _ checked2813.1 (.cons _ _ _ _ _ checked2814.1 (.cons _ _ _ _ _ checked2815.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2824 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3449 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2752.2,checked2753.2,checked2754.2,checked2755.2,checked2756.2,checked2757.2,checked2758.2,checked2759.2,checked2760.2,checked2761.2,checked2762.2,checked2763.2,checked2764.2,checked2765.2,checked2766.2,checked2767.2,checked2768.2,checked2769.2,checked2770.2,checked2771.2,checked2772.2,checked2773.2,checked2774.2,checked2775.2,checked2776.2,checked2777.2,checked2778.2,checked2779.2,checked2780.2,checked2781.2,checked2782.2,checked2783.2,checked2784.2,checked2785.2,checked2786.2,checked2787.2,checked2788.2,checked2789.2,checked2790.2,checked2791.2,checked2792.2,checked2793.2,checked2794.2,checked2795.2,checked2796.2,checked2797.2,checked2798.2,checked2799.2,checked2800.2,checked2801.2,checked2802.2,checked2803.2,checked2804.2,checked2805.2,checked2806.2,checked2807.2,checked2808.2,checked2809.2,checked2810.2,checked2811.2,checked2812.2,checked2813.2,checked2814.2,checked2815.2]
  decide
end ArtifactHashBlockGroup43
