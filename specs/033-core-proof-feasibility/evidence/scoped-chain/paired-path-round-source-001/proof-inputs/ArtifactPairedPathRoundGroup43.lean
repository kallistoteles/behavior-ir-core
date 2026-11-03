import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup43
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2752 : List WordIR.Op := [.band 2841 2847]
def bytes2752 : Bytes := ("    let r00000b20: u32 = r00000b19 & r00000b1f;\n" : String).toByteArray.data.toList
theorem checked2752 : bytes2752=statementBytes 2848 (op2752.map lower) ∧ bytes2752.length=48 := by core033_kernel_decide
def op2753 : List WordIR.Op := [.bxor 2836 2848]
def bytes2753 : Bytes := ("    let r00000b21: u32 = r00000b14 ^ r00000b20;\n" : String).toByteArray.data.toList
theorem checked2753 : bytes2753=statementBytes 2849 (op2753.map lower) ∧ bytes2753.length=48 := by core033_kernel_decide
def op2754 : List WordIR.Op := [.shr 2849 31]
def bytes2754 : Bytes := ("    let r00000b22: u32 = r00000b21 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2754 : bytes2754=statementBytes 2850 (op2754.map lower) ∧ bytes2754.length=54 := by core033_kernel_decide
def op2755 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2755 : Bytes := ("    let r00000b23: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2755 : bytes2755=statementBytes 2851 (op2755.map lower) ∧ bytes2755.length=41 := by core033_kernel_decide
def op2756 : List WordIR.Op := [.bxor 2850 2851]
def bytes2756 : Bytes := ("    let r00000b24: u32 = r00000b22 ^ r00000b23;\n" : String).toByteArray.data.toList
theorem checked2756 : bytes2756=statementBytes 2852 (op2756.map lower) ∧ bytes2756.length=48 := by core033_kernel_decide
def op2757 : List WordIR.Op := [.bnot 2852]
def bytes2757 : Bytes := ("    let r00000b25: u32 = !r00000b24;\n" : String).toByteArray.data.toList
theorem checked2757 : bytes2757=statementBytes 2853 (op2757.map lower) ∧ bytes2757.length=37 := by core033_kernel_decide
def op2758 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2758 : Bytes := ("    let r00000b26: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2758 : bytes2758=statementBytes 2854 (op2758.map lower) ∧ bytes2758.length=41 := by core033_kernel_decide
def op2759 : List WordIR.Op := [.badd 2853 2854]
def bytes2759 : Bytes := ("    let r00000b27: u32 = r00000b25.wrapping_add(r00000b26);\n" : String).toByteArray.data.toList
theorem checked2759 : bytes2759=statementBytes 2855 (op2759.map lower) ∧ bytes2759.length=60 := by core033_kernel_decide
def op2760 : List WordIR.Op := [.bnot 2855]
def bytes2760 : Bytes := ("    let r00000b28: u32 = !r00000b27;\n" : String).toByteArray.data.toList
theorem checked2760 : bytes2760=statementBytes 2856 (op2760.map lower) ∧ bytes2760.length=37 := by core033_kernel_decide
def op2761 : List WordIR.Op := [.literal (BitVec.ofNat 32 1541459225)]
def bytes2761 : Bytes := ("    let r00000b29: u32 = 0x5be0cd19_u32;\n" : String).toByteArray.data.toList
theorem checked2761 : bytes2761=statementBytes 2857 (op2761.map lower) ∧ bytes2761.length=41 := by core033_kernel_decide
def op2762 : List WordIR.Op := [.band 2856 2857]
def bytes2762 : Bytes := ("    let r00000b2a: u32 = r00000b28 & r00000b29;\n" : String).toByteArray.data.toList
theorem checked2762 : bytes2762=statementBytes 2858 (op2762.map lower) ∧ bytes2762.length=48 := by core033_kernel_decide
def op2763 : List WordIR.Op := [.bxor 2831 2858]
def bytes2763 : Bytes := ("    let r00000b2b: u32 = r00000b0f ^ r00000b2a;\n" : String).toByteArray.data.toList
theorem checked2763 : bytes2763=statementBytes 2859 (op2763.map lower) ∧ bytes2763.length=48 := by core033_kernel_decide
def op2764 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2764 : Bytes := ("    let r00000b2c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2764 : bytes2764=statementBytes 2860 (op2764.map lower) ∧ bytes2764.length=41 := by core033_kernel_decide
def op2765 : List WordIR.Op := [.bxor 616 2860]
def bytes2765 : Bytes := ("    let r00000b2d: u32 = r00000268 ^ r00000b2c;\n" : String).toByteArray.data.toList
theorem checked2765 : bytes2765=statementBytes 2861 (op2765.map lower) ∧ bytes2765.length=48 := by core033_kernel_decide
def op2766 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2766 : Bytes := ("    let r00000b2e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2766 : bytes2766=statementBytes 2862 (op2766.map lower) ∧ bytes2766.length=41 := by core033_kernel_decide
def op2767 : List WordIR.Op := [.bnot 2862]
def bytes2767 : Bytes := ("    let r00000b2f: u32 = !r00000b2e;\n" : String).toByteArray.data.toList
theorem checked2767 : bytes2767=statementBytes 2863 (op2767.map lower) ∧ bytes2767.length=37 := by core033_kernel_decide
def op2768 : List WordIR.Op := [.band 2861 2863]
def bytes2768 : Bytes := ("    let r00000b30: u32 = r00000b2d & r00000b2f;\n" : String).toByteArray.data.toList
theorem checked2768 : bytes2768=statementBytes 2864 (op2768.map lower) ∧ bytes2768.length=48 := by core033_kernel_decide
def op2769 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2769 : Bytes := ("    let r00000b31: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2769 : bytes2769=statementBytes 2865 (op2769.map lower) ∧ bytes2769.length=41 := by core033_kernel_decide
def op2770 : List WordIR.Op := [.bxor 616 2865]
def bytes2770 : Bytes := ("    let r00000b32: u32 = r00000268 ^ r00000b31;\n" : String).toByteArray.data.toList
theorem checked2770 : bytes2770=statementBytes 2866 (op2770.map lower) ∧ bytes2770.length=48 := by core033_kernel_decide
def op2771 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2771 : Bytes := ("    let r00000b33: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2771 : bytes2771=statementBytes 2867 (op2771.map lower) ∧ bytes2771.length=41 := by core033_kernel_decide
def op2772 : List WordIR.Op := [.bnot 2867]
def bytes2772 : Bytes := ("    let r00000b34: u32 = !r00000b33;\n" : String).toByteArray.data.toList
theorem checked2772 : bytes2772=statementBytes 2868 (op2772.map lower) ∧ bytes2772.length=37 := by core033_kernel_decide
def op2773 : List WordIR.Op := [.bxor 2866 2868]
def bytes2773 : Bytes := ("    let r00000b35: u32 = r00000b32 ^ r00000b34;\n" : String).toByteArray.data.toList
theorem checked2773 : bytes2773=statementBytes 2869 (op2773.map lower) ∧ bytes2773.length=48 := by core033_kernel_decide
def op2774 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2774 : Bytes := ("    let r00000b36: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2774 : bytes2774=statementBytes 2870 (op2774.map lower) ∧ bytes2774.length=41 := by core033_kernel_decide
def op2775 : List WordIR.Op := [.bxor 616 2870]
def bytes2775 : Bytes := ("    let r00000b37: u32 = r00000268 ^ r00000b36;\n" : String).toByteArray.data.toList
theorem checked2775 : bytes2775=statementBytes 2871 (op2775.map lower) ∧ bytes2775.length=48 := by core033_kernel_decide
def op2776 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2776 : Bytes := ("    let r00000b38: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2776 : bytes2776=statementBytes 2872 (op2776.map lower) ∧ bytes2776.length=41 := by core033_kernel_decide
def op2777 : List WordIR.Op := [.bnot 2872]
def bytes2777 : Bytes := ("    let r00000b39: u32 = !r00000b38;\n" : String).toByteArray.data.toList
theorem checked2777 : bytes2777=statementBytes 2873 (op2777.map lower) ∧ bytes2777.length=37 := by core033_kernel_decide
def op2778 : List WordIR.Op := [.badd 2871 2873]
def bytes2778 : Bytes := ("    let r00000b3a: u32 = r00000b37.wrapping_add(r00000b39);\n" : String).toByteArray.data.toList
theorem checked2778 : bytes2778=statementBytes 2874 (op2778.map lower) ∧ bytes2778.length=60 := by core033_kernel_decide
def op2779 : List WordIR.Op := [.bnot 2874]
def bytes2779 : Bytes := ("    let r00000b3b: u32 = !r00000b3a;\n" : String).toByteArray.data.toList
theorem checked2779 : bytes2779=statementBytes 2875 (op2779.map lower) ∧ bytes2779.length=37 := by core033_kernel_decide
def op2780 : List WordIR.Op := [.band 2869 2875]
def bytes2780 : Bytes := ("    let r00000b3c: u32 = r00000b35 & r00000b3b;\n" : String).toByteArray.data.toList
theorem checked2780 : bytes2780=statementBytes 2876 (op2780.map lower) ∧ bytes2780.length=48 := by core033_kernel_decide
def op2781 : List WordIR.Op := [.bxor 2864 2876]
def bytes2781 : Bytes := ("    let r00000b3d: u32 = r00000b30 ^ r00000b3c;\n" : String).toByteArray.data.toList
theorem checked2781 : bytes2781=statementBytes 2877 (op2781.map lower) ∧ bytes2781.length=48 := by core033_kernel_decide
def op2782 : List WordIR.Op := [.shr 2877 31]
def bytes2782 : Bytes := ("    let r00000b3e: u32 = r00000b3d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2782 : bytes2782=statementBytes 2878 (op2782.map lower) ∧ bytes2782.length=54 := by core033_kernel_decide
def op2783 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2783 : Bytes := ("    let r00000b3f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2783 : bytes2783=statementBytes 2879 (op2783.map lower) ∧ bytes2783.length=41 := by core033_kernel_decide
def op2784 : List WordIR.Op := [.bxor 2878 2879]
def bytes2784 : Bytes := ("    let r00000b40: u32 = r00000b3e ^ r00000b3f;\n" : String).toByteArray.data.toList
theorem checked2784 : bytes2784=statementBytes 2880 (op2784.map lower) ∧ bytes2784.length=48 := by core033_kernel_decide
def op2785 : List WordIR.Op := [.bnot 2880]
def bytes2785 : Bytes := ("    let r00000b41: u32 = !r00000b40;\n" : String).toByteArray.data.toList
theorem checked2785 : bytes2785=statementBytes 2881 (op2785.map lower) ∧ bytes2785.length=37 := by core033_kernel_decide
def op2786 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2786 : Bytes := ("    let r00000b42: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2786 : bytes2786=statementBytes 2882 (op2786.map lower) ∧ bytes2786.length=41 := by core033_kernel_decide
def op2787 : List WordIR.Op := [.badd 2881 2882]
def bytes2787 : Bytes := ("    let r00000b43: u32 = r00000b41.wrapping_add(r00000b42);\n" : String).toByteArray.data.toList
theorem checked2787 : bytes2787=statementBytes 2883 (op2787.map lower) ∧ bytes2787.length=60 := by core033_kernel_decide
def op2788 : List WordIR.Op := [.band 2883 2013]
def bytes2788 : Bytes := ("    let r00000b44: u32 = r00000b43 & r000007dd;\n" : String).toByteArray.data.toList
theorem checked2788 : bytes2788=statementBytes 2884 (op2788.map lower) ∧ bytes2788.length=48 := by core033_kernel_decide
def op2789 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2789 : Bytes := ("    let r00000b45: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2789 : bytes2789=statementBytes 2885 (op2789.map lower) ∧ bytes2789.length=41 := by core033_kernel_decide
def op2790 : List WordIR.Op := [.bxor 616 2885]
def bytes2790 : Bytes := ("    let r00000b46: u32 = r00000268 ^ r00000b45;\n" : String).toByteArray.data.toList
theorem checked2790 : bytes2790=statementBytes 2886 (op2790.map lower) ∧ bytes2790.length=48 := by core033_kernel_decide
def op2791 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2791 : Bytes := ("    let r00000b47: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2791 : bytes2791=statementBytes 2887 (op2791.map lower) ∧ bytes2791.length=41 := by core033_kernel_decide
def op2792 : List WordIR.Op := [.bnot 2887]
def bytes2792 : Bytes := ("    let r00000b48: u32 = !r00000b47;\n" : String).toByteArray.data.toList
theorem checked2792 : bytes2792=statementBytes 2888 (op2792.map lower) ∧ bytes2792.length=37 := by core033_kernel_decide
def op2793 : List WordIR.Op := [.band 2886 2888]
def bytes2793 : Bytes := ("    let r00000b49: u32 = r00000b46 & r00000b48;\n" : String).toByteArray.data.toList
theorem checked2793 : bytes2793=statementBytes 2889 (op2793.map lower) ∧ bytes2793.length=48 := by core033_kernel_decide
def op2794 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2794 : Bytes := ("    let r00000b4a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2794 : bytes2794=statementBytes 2890 (op2794.map lower) ∧ bytes2794.length=41 := by core033_kernel_decide
def op2795 : List WordIR.Op := [.bxor 616 2890]
def bytes2795 : Bytes := ("    let r00000b4b: u32 = r00000268 ^ r00000b4a;\n" : String).toByteArray.data.toList
theorem checked2795 : bytes2795=statementBytes 2891 (op2795.map lower) ∧ bytes2795.length=48 := by core033_kernel_decide
def op2796 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2796 : Bytes := ("    let r00000b4c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2796 : bytes2796=statementBytes 2892 (op2796.map lower) ∧ bytes2796.length=41 := by core033_kernel_decide
def op2797 : List WordIR.Op := [.bnot 2892]
def bytes2797 : Bytes := ("    let r00000b4d: u32 = !r00000b4c;\n" : String).toByteArray.data.toList
theorem checked2797 : bytes2797=statementBytes 2893 (op2797.map lower) ∧ bytes2797.length=37 := by core033_kernel_decide
def op2798 : List WordIR.Op := [.bxor 2891 2893]
def bytes2798 : Bytes := ("    let r00000b4e: u32 = r00000b4b ^ r00000b4d;\n" : String).toByteArray.data.toList
theorem checked2798 : bytes2798=statementBytes 2894 (op2798.map lower) ∧ bytes2798.length=48 := by core033_kernel_decide
def op2799 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2799 : Bytes := ("    let r00000b4f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2799 : bytes2799=statementBytes 2895 (op2799.map lower) ∧ bytes2799.length=41 := by core033_kernel_decide
def op2800 : List WordIR.Op := [.bxor 616 2895]
def bytes2800 : Bytes := ("    let r00000b50: u32 = r00000268 ^ r00000b4f;\n" : String).toByteArray.data.toList
theorem checked2800 : bytes2800=statementBytes 2896 (op2800.map lower) ∧ bytes2800.length=48 := by core033_kernel_decide
def op2801 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2801 : Bytes := ("    let r00000b51: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2801 : bytes2801=statementBytes 2897 (op2801.map lower) ∧ bytes2801.length=41 := by core033_kernel_decide
def op2802 : List WordIR.Op := [.bnot 2897]
def bytes2802 : Bytes := ("    let r00000b52: u32 = !r00000b51;\n" : String).toByteArray.data.toList
theorem checked2802 : bytes2802=statementBytes 2898 (op2802.map lower) ∧ bytes2802.length=37 := by core033_kernel_decide
def op2803 : List WordIR.Op := [.badd 2896 2898]
def bytes2803 : Bytes := ("    let r00000b53: u32 = r00000b50.wrapping_add(r00000b52);\n" : String).toByteArray.data.toList
theorem checked2803 : bytes2803=statementBytes 2899 (op2803.map lower) ∧ bytes2803.length=60 := by core033_kernel_decide
def op2804 : List WordIR.Op := [.bnot 2899]
def bytes2804 : Bytes := ("    let r00000b54: u32 = !r00000b53;\n" : String).toByteArray.data.toList
theorem checked2804 : bytes2804=statementBytes 2900 (op2804.map lower) ∧ bytes2804.length=37 := by core033_kernel_decide
def op2805 : List WordIR.Op := [.band 2894 2900]
def bytes2805 : Bytes := ("    let r00000b55: u32 = r00000b4e & r00000b54;\n" : String).toByteArray.data.toList
theorem checked2805 : bytes2805=statementBytes 2901 (op2805.map lower) ∧ bytes2805.length=48 := by core033_kernel_decide
def op2806 : List WordIR.Op := [.bxor 2889 2901]
def bytes2806 : Bytes := ("    let r00000b56: u32 = r00000b49 ^ r00000b55;\n" : String).toByteArray.data.toList
theorem checked2806 : bytes2806=statementBytes 2902 (op2806.map lower) ∧ bytes2806.length=48 := by core033_kernel_decide
def op2807 : List WordIR.Op := [.shr 2902 31]
def bytes2807 : Bytes := ("    let r00000b57: u32 = r00000b56 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2807 : bytes2807=statementBytes 2903 (op2807.map lower) ∧ bytes2807.length=54 := by core033_kernel_decide
def op2808 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2808 : Bytes := ("    let r00000b58: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2808 : bytes2808=statementBytes 2904 (op2808.map lower) ∧ bytes2808.length=41 := by core033_kernel_decide
def op2809 : List WordIR.Op := [.bxor 2903 2904]
def bytes2809 : Bytes := ("    let r00000b59: u32 = r00000b57 ^ r00000b58;\n" : String).toByteArray.data.toList
theorem checked2809 : bytes2809=statementBytes 2905 (op2809.map lower) ∧ bytes2809.length=48 := by core033_kernel_decide
def op2810 : List WordIR.Op := [.bnot 2905]
def bytes2810 : Bytes := ("    let r00000b5a: u32 = !r00000b59;\n" : String).toByteArray.data.toList
theorem checked2810 : bytes2810=statementBytes 2906 (op2810.map lower) ∧ bytes2810.length=37 := by core033_kernel_decide
def op2811 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2811 : Bytes := ("    let r00000b5b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2811 : bytes2811=statementBytes 2907 (op2811.map lower) ∧ bytes2811.length=41 := by core033_kernel_decide
def op2812 : List WordIR.Op := [.badd 2906 2907]
def bytes2812 : Bytes := ("    let r00000b5c: u32 = r00000b5a.wrapping_add(r00000b5b);\n" : String).toByteArray.data.toList
theorem checked2812 : bytes2812=statementBytes 2908 (op2812.map lower) ∧ bytes2812.length=60 := by core033_kernel_decide
def op2813 : List WordIR.Op := [.bnot 2908]
def bytes2813 : Bytes := ("    let r00000b5d: u32 = !r00000b5c;\n" : String).toByteArray.data.toList
theorem checked2813 : bytes2813=statementBytes 2909 (op2813.map lower) ∧ bytes2813.length=37 := by core033_kernel_decide
def op2814 : List WordIR.Op := [.band 2909 1863]
def bytes2814 : Bytes := ("    let r00000b5e: u32 = r00000b5d & r00000747;\n" : String).toByteArray.data.toList
theorem checked2814 : bytes2814=statementBytes 2910 (op2814.map lower) ∧ bytes2814.length=48 := by core033_kernel_decide
def op2815 : List WordIR.Op := [.bxor 2884 2910]
def bytes2815 : Bytes := ("    let r00000b5f: u32 = r00000b44 ^ r00000b5e;\n" : String).toByteArray.data.toList
theorem checked2815 : bytes2815=statementBytes 2911 (op2815.map lower) ∧ bytes2815.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2752,op2753,op2754,op2755,op2756,op2757,op2758,op2759,op2760,op2761,op2762,op2763,op2764,op2765,op2766,op2767,op2768,op2769,op2770,op2771,op2772,op2773,op2774,op2775,op2776,op2777,op2778,op2779,op2780,op2781,op2782,op2783,op2784,op2785,op2786,op2787,op2788,op2789,op2790,op2791,op2792,op2793,op2794,op2795,op2796,op2797,op2798,op2799,op2800,op2801,op2802,op2803,op2804,op2805,op2806,op2807,op2808,op2809,op2810,op2811,op2812,op2813,op2814,op2815]
def chunks : List Bytes := [bytes2752,bytes2753,bytes2754,bytes2755,bytes2756,bytes2757,bytes2758,bytes2759,bytes2760,bytes2761,bytes2762,bytes2763,bytes2764,bytes2765,bytes2766,bytes2767,bytes2768,bytes2769,bytes2770,bytes2771,bytes2772,bytes2773,bytes2774,bytes2775,bytes2776,bytes2777,bytes2778,bytes2779,bytes2780,bytes2781,bytes2782,bytes2783,bytes2784,bytes2785,bytes2786,bytes2787,bytes2788,bytes2789,bytes2790,bytes2791,bytes2792,bytes2793,bytes2794,bytes2795,bytes2796,bytes2797,bytes2798,bytes2799,bytes2800,bytes2801,bytes2802,bytes2803,bytes2804,bytes2805,bytes2806,bytes2807,bytes2808,bytes2809,bytes2810,bytes2811,bytes2812,bytes2813,bytes2814,bytes2815]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2848 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2752.1 (.cons _ _ _ _ _ checked2753.1 (.cons _ _ _ _ _ checked2754.1 (.cons _ _ _ _ _ checked2755.1 (.cons _ _ _ _ _ checked2756.1 (.cons _ _ _ _ _ checked2757.1 (.cons _ _ _ _ _ checked2758.1 (.cons _ _ _ _ _ checked2759.1 (.cons _ _ _ _ _ checked2760.1 (.cons _ _ _ _ _ checked2761.1 (.cons _ _ _ _ _ checked2762.1 (.cons _ _ _ _ _ checked2763.1 (.cons _ _ _ _ _ checked2764.1 (.cons _ _ _ _ _ checked2765.1 (.cons _ _ _ _ _ checked2766.1 (.cons _ _ _ _ _ checked2767.1 (.cons _ _ _ _ _ checked2768.1 (.cons _ _ _ _ _ checked2769.1 (.cons _ _ _ _ _ checked2770.1 (.cons _ _ _ _ _ checked2771.1 (.cons _ _ _ _ _ checked2772.1 (.cons _ _ _ _ _ checked2773.1 (.cons _ _ _ _ _ checked2774.1 (.cons _ _ _ _ _ checked2775.1 (.cons _ _ _ _ _ checked2776.1 (.cons _ _ _ _ _ checked2777.1 (.cons _ _ _ _ _ checked2778.1 (.cons _ _ _ _ _ checked2779.1 (.cons _ _ _ _ _ checked2780.1 (.cons _ _ _ _ _ checked2781.1 (.cons _ _ _ _ _ checked2782.1 (.cons _ _ _ _ _ checked2783.1 (.cons _ _ _ _ _ checked2784.1 (.cons _ _ _ _ _ checked2785.1 (.cons _ _ _ _ _ checked2786.1 (.cons _ _ _ _ _ checked2787.1 (.cons _ _ _ _ _ checked2788.1 (.cons _ _ _ _ _ checked2789.1 (.cons _ _ _ _ _ checked2790.1 (.cons _ _ _ _ _ checked2791.1 (.cons _ _ _ _ _ checked2792.1 (.cons _ _ _ _ _ checked2793.1 (.cons _ _ _ _ _ checked2794.1 (.cons _ _ _ _ _ checked2795.1 (.cons _ _ _ _ _ checked2796.1 (.cons _ _ _ _ _ checked2797.1 (.cons _ _ _ _ _ checked2798.1 (.cons _ _ _ _ _ checked2799.1 (.cons _ _ _ _ _ checked2800.1 (.cons _ _ _ _ _ checked2801.1 (.cons _ _ _ _ _ checked2802.1 (.cons _ _ _ _ _ checked2803.1 (.cons _ _ _ _ _ checked2804.1 (.cons _ _ _ _ _ checked2805.1 (.cons _ _ _ _ _ checked2806.1 (.cons _ _ _ _ _ checked2807.1 (.cons _ _ _ _ _ checked2808.1 (.cons _ _ _ _ _ checked2809.1 (.cons _ _ _ _ _ checked2810.1 (.cons _ _ _ _ _ checked2811.1 (.cons _ _ _ _ _ checked2812.1 (.cons _ _ _ _ _ checked2813.1 (.cons _ _ _ _ _ checked2814.1 (.cons _ _ _ _ _ checked2815.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2848 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2874 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2752.2,checked2753.2,checked2754.2,checked2755.2,checked2756.2,checked2757.2,checked2758.2,checked2759.2,checked2760.2,checked2761.2,checked2762.2,checked2763.2,checked2764.2,checked2765.2,checked2766.2,checked2767.2,checked2768.2,checked2769.2,checked2770.2,checked2771.2,checked2772.2,checked2773.2,checked2774.2,checked2775.2,checked2776.2,checked2777.2,checked2778.2,checked2779.2,checked2780.2,checked2781.2,checked2782.2,checked2783.2,checked2784.2,checked2785.2,checked2786.2,checked2787.2,checked2788.2,checked2789.2,checked2790.2,checked2791.2,checked2792.2,checked2793.2,checked2794.2,checked2795.2,checked2796.2,checked2797.2,checked2798.2,checked2799.2,checked2800.2,checked2801.2,checked2802.2,checked2803.2,checked2804.2,checked2805.2,checked2806.2,checked2807.2,checked2808.2,checked2809.2,checked2810.2,checked2811.2,checked2812.2,checked2813.2,checked2814.2,checked2815.2]
  decide
end ArtifactPairedPathRoundGroup43
