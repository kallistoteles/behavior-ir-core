import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup44
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2816 : List WordIR.Op := [.rotr 2855 25]
def bytes2816 : Bytes := ("    let r00000b2b: u32 = r00000b27.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2816 : bytes2816=statementBytes 2859 (op2816.map lower) ∧ bytes2816.length=65 := by core033_kernel_decide
def op2817 : List WordIR.Op := [.bxor 2858 2859]
def bytes2817 : Bytes := ("    let r00000b2c: u32 = r00000b2a ^ r00000b2b;\n" : String).toByteArray.data.toList
theorem checked2817 : bytes2817=statementBytes 2860 (op2817.map lower) ∧ bytes2817.length=48 := by core033_kernel_decide
def op2818 : List WordIR.Op := [.badd 2777 2860]
def bytes2818 : Bytes := ("    let r00000b2d: u32 = r00000ad9.wrapping_add(r00000b2c);\n" : String).toByteArray.data.toList
theorem checked2818 : bytes2818=statementBytes 2861 (op2818.map lower) ∧ bytes2818.length=60 := by core033_kernel_decide
def op2819 : List WordIR.Op := [.band 2855 2829]
def bytes2819 : Bytes := ("    let r00000b2e: u32 = r00000b27 & r00000b0d;\n" : String).toByteArray.data.toList
theorem checked2819 : bytes2819=statementBytes 2862 (op2819.map lower) ∧ bytes2819.length=48 := by core033_kernel_decide
def op2820 : List WordIR.Op := [.bnot 2855]
def bytes2820 : Bytes := ("    let r00000b2f: u32 = !r00000b27;\n" : String).toByteArray.data.toList
theorem checked2820 : bytes2820=statementBytes 2863 (op2820.map lower) ∧ bytes2820.length=37 := by core033_kernel_decide
def op2821 : List WordIR.Op := [.band 2863 2803]
def bytes2821 : Bytes := ("    let r00000b30: u32 = r00000b2f & r00000af3;\n" : String).toByteArray.data.toList
theorem checked2821 : bytes2821=statementBytes 2864 (op2821.map lower) ∧ bytes2821.length=48 := by core033_kernel_decide
def op2822 : List WordIR.Op := [.bxor 2862 2864]
def bytes2822 : Bytes := ("    let r00000b31: u32 = r00000b2e ^ r00000b30;\n" : String).toByteArray.data.toList
theorem checked2822 : bytes2822=statementBytes 2865 (op2822.map lower) ∧ bytes2822.length=48 := by core033_kernel_decide
def op2823 : List WordIR.Op := [.badd 2861 2865]
def bytes2823 : Bytes := ("    let r00000b32: u32 = r00000b2d.wrapping_add(r00000b31);\n" : String).toByteArray.data.toList
theorem checked2823 : bytes2823=statementBytes 2866 (op2823.map lower) ∧ bytes2823.length=60 := by core033_kernel_decide
def op2824 : List WordIR.Op := [.literal (BitVec.ofNat 32 3210313671)]
def bytes2824 : Bytes := ("    let r00000b33: u32 = 0xbf597fc7_u32;\n" : String).toByteArray.data.toList
theorem checked2824 : bytes2824=statementBytes 2867 (op2824.map lower) ∧ bytes2824.length=41 := by core033_kernel_decide
def op2825 : List WordIR.Op := [.badd 2866 2867]
def bytes2825 : Bytes := ("    let r00000b34: u32 = r00000b32.wrapping_add(r00000b33);\n" : String).toByteArray.data.toList
theorem checked2825 : bytes2825=statementBytes 2868 (op2825.map lower) ∧ bytes2825.length=60 := by core033_kernel_decide
def op2826 : List WordIR.Op := [.badd 2868 1684]
def bytes2826 : Bytes := ("    let r00000b35: u32 = r00000b34.wrapping_add(r00000694);\n" : String).toByteArray.data.toList
theorem checked2826 : bytes2826=statementBytes 2869 (op2826.map lower) ∧ bytes2826.length=60 := by core033_kernel_decide
def op2827 : List WordIR.Op := [.rotr 2854 2]
def bytes2827 : Bytes := ("    let r00000b36: u32 = r00000b26.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2827 : bytes2827=statementBytes 2870 (op2827.map lower) ∧ bytes2827.length=65 := by core033_kernel_decide
def op2828 : List WordIR.Op := [.rotr 2854 13]
def bytes2828 : Bytes := ("    let r00000b37: u32 = r00000b26.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2828 : bytes2828=statementBytes 2871 (op2828.map lower) ∧ bytes2828.length=65 := by core033_kernel_decide
def op2829 : List WordIR.Op := [.bxor 2870 2871]
def bytes2829 : Bytes := ("    let r00000b38: u32 = r00000b36 ^ r00000b37;\n" : String).toByteArray.data.toList
theorem checked2829 : bytes2829=statementBytes 2872 (op2829.map lower) ∧ bytes2829.length=48 := by core033_kernel_decide
def op2830 : List WordIR.Op := [.rotr 2854 22]
def bytes2830 : Bytes := ("    let r00000b39: u32 = r00000b26.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2830 : bytes2830=statementBytes 2873 (op2830.map lower) ∧ bytes2830.length=65 := by core033_kernel_decide
def op2831 : List WordIR.Op := [.bxor 2872 2873]
def bytes2831 : Bytes := ("    let r00000b3a: u32 = r00000b38 ^ r00000b39;\n" : String).toByteArray.data.toList
theorem checked2831 : bytes2831=statementBytes 2874 (op2831.map lower) ∧ bytes2831.length=48 := by core033_kernel_decide
def op2832 : List WordIR.Op := [.band 2854 2828]
def bytes2832 : Bytes := ("    let r00000b3b: u32 = r00000b26 & r00000b0c;\n" : String).toByteArray.data.toList
theorem checked2832 : bytes2832=statementBytes 2875 (op2832.map lower) ∧ bytes2832.length=48 := by core033_kernel_decide
def op2833 : List WordIR.Op := [.band 2854 2802]
def bytes2833 : Bytes := ("    let r00000b3c: u32 = r00000b26 & r00000af2;\n" : String).toByteArray.data.toList
theorem checked2833 : bytes2833=statementBytes 2876 (op2833.map lower) ∧ bytes2833.length=48 := by core033_kernel_decide
def op2834 : List WordIR.Op := [.bxor 2875 2876]
def bytes2834 : Bytes := ("    let r00000b3d: u32 = r00000b3b ^ r00000b3c;\n" : String).toByteArray.data.toList
theorem checked2834 : bytes2834=statementBytes 2877 (op2834.map lower) ∧ bytes2834.length=48 := by core033_kernel_decide
def op2835 : List WordIR.Op := [.bxor 2877 2849]
def bytes2835 : Bytes := ("    let r00000b3e: u32 = r00000b3d ^ r00000b21;\n" : String).toByteArray.data.toList
theorem checked2835 : bytes2835=statementBytes 2878 (op2835.map lower) ∧ bytes2835.length=48 := by core033_kernel_decide
def op2836 : List WordIR.Op := [.badd 2874 2878]
def bytes2836 : Bytes := ("    let r00000b3f: u32 = r00000b3a.wrapping_add(r00000b3e);\n" : String).toByteArray.data.toList
theorem checked2836 : bytes2836=statementBytes 2879 (op2836.map lower) ∧ bytes2836.length=60 := by core033_kernel_decide
def op2837 : List WordIR.Op := [.badd 2869 2879]
def bytes2837 : Bytes := ("    let r00000b40: u32 = r00000b35.wrapping_add(r00000b3f);\n" : String).toByteArray.data.toList
theorem checked2837 : bytes2837=statementBytes 2880 (op2837.map lower) ∧ bytes2837.length=60 := by core033_kernel_decide
def op2838 : List WordIR.Op := [.badd 2776 2869]
def bytes2838 : Bytes := ("    let r00000b41: u32 = r00000ad8.wrapping_add(r00000b35);\n" : String).toByteArray.data.toList
theorem checked2838 : bytes2838=statementBytes 2881 (op2838.map lower) ∧ bytes2838.length=60 := by core033_kernel_decide
def op2839 : List WordIR.Op := [.rotr 2881 6]
def bytes2839 : Bytes := ("    let r00000b42: u32 = r00000b41.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2839 : bytes2839=statementBytes 2882 (op2839.map lower) ∧ bytes2839.length=65 := by core033_kernel_decide
def op2840 : List WordIR.Op := [.rotr 2881 11]
def bytes2840 : Bytes := ("    let r00000b43: u32 = r00000b41.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2840 : bytes2840=statementBytes 2883 (op2840.map lower) ∧ bytes2840.length=65 := by core033_kernel_decide
def op2841 : List WordIR.Op := [.bxor 2882 2883]
def bytes2841 : Bytes := ("    let r00000b44: u32 = r00000b42 ^ r00000b43;\n" : String).toByteArray.data.toList
theorem checked2841 : bytes2841=statementBytes 2884 (op2841.map lower) ∧ bytes2841.length=48 := by core033_kernel_decide
def op2842 : List WordIR.Op := [.rotr 2881 25]
def bytes2842 : Bytes := ("    let r00000b45: u32 = r00000b41.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2842 : bytes2842=statementBytes 2885 (op2842.map lower) ∧ bytes2842.length=65 := by core033_kernel_decide
def op2843 : List WordIR.Op := [.bxor 2884 2885]
def bytes2843 : Bytes := ("    let r00000b46: u32 = r00000b44 ^ r00000b45;\n" : String).toByteArray.data.toList
theorem checked2843 : bytes2843=statementBytes 2886 (op2843.map lower) ∧ bytes2843.length=48 := by core033_kernel_decide
def op2844 : List WordIR.Op := [.badd 2803 2886]
def bytes2844 : Bytes := ("    let r00000b47: u32 = r00000af3.wrapping_add(r00000b46);\n" : String).toByteArray.data.toList
theorem checked2844 : bytes2844=statementBytes 2887 (op2844.map lower) ∧ bytes2844.length=60 := by core033_kernel_decide
def op2845 : List WordIR.Op := [.band 2881 2855]
def bytes2845 : Bytes := ("    let r00000b48: u32 = r00000b41 & r00000b27;\n" : String).toByteArray.data.toList
theorem checked2845 : bytes2845=statementBytes 2888 (op2845.map lower) ∧ bytes2845.length=48 := by core033_kernel_decide
def op2846 : List WordIR.Op := [.bnot 2881]
def bytes2846 : Bytes := ("    let r00000b49: u32 = !r00000b41;\n" : String).toByteArray.data.toList
theorem checked2846 : bytes2846=statementBytes 2889 (op2846.map lower) ∧ bytes2846.length=37 := by core033_kernel_decide
def op2847 : List WordIR.Op := [.band 2889 2829]
def bytes2847 : Bytes := ("    let r00000b4a: u32 = r00000b49 & r00000b0d;\n" : String).toByteArray.data.toList
theorem checked2847 : bytes2847=statementBytes 2890 (op2847.map lower) ∧ bytes2847.length=48 := by core033_kernel_decide
def op2848 : List WordIR.Op := [.bxor 2888 2890]
def bytes2848 : Bytes := ("    let r00000b4b: u32 = r00000b48 ^ r00000b4a;\n" : String).toByteArray.data.toList
theorem checked2848 : bytes2848=statementBytes 2891 (op2848.map lower) ∧ bytes2848.length=48 := by core033_kernel_decide
def op2849 : List WordIR.Op := [.badd 2887 2891]
def bytes2849 : Bytes := ("    let r00000b4c: u32 = r00000b47.wrapping_add(r00000b4b);\n" : String).toByteArray.data.toList
theorem checked2849 : bytes2849=statementBytes 2892 (op2849.map lower) ∧ bytes2849.length=60 := by core033_kernel_decide
def op2850 : List WordIR.Op := [.literal (BitVec.ofNat 32 3336571891)]
def bytes2850 : Bytes := ("    let r00000b4d: u32 = 0xc6e00bf3_u32;\n" : String).toByteArray.data.toList
theorem checked2850 : bytes2850=statementBytes 2893 (op2850.map lower) ∧ bytes2850.length=41 := by core033_kernel_decide
def op2851 : List WordIR.Op := [.badd 2892 2893]
def bytes2851 : Bytes := ("    let r00000b4e: u32 = r00000b4c.wrapping_add(r00000b4d);\n" : String).toByteArray.data.toList
theorem checked2851 : bytes2851=statementBytes 2894 (op2851.map lower) ∧ bytes2851.length=60 := by core033_kernel_decide
def op2852 : List WordIR.Op := [.badd 2894 1697]
def bytes2852 : Bytes := ("    let r00000b4f: u32 = r00000b4e.wrapping_add(r000006a1);\n" : String).toByteArray.data.toList
theorem checked2852 : bytes2852=statementBytes 2895 (op2852.map lower) ∧ bytes2852.length=60 := by core033_kernel_decide
def op2853 : List WordIR.Op := [.rotr 2880 2]
def bytes2853 : Bytes := ("    let r00000b50: u32 = r00000b40.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2853 : bytes2853=statementBytes 2896 (op2853.map lower) ∧ bytes2853.length=65 := by core033_kernel_decide
def op2854 : List WordIR.Op := [.rotr 2880 13]
def bytes2854 : Bytes := ("    let r00000b51: u32 = r00000b40.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked2854 : bytes2854=statementBytes 2897 (op2854.map lower) ∧ bytes2854.length=65 := by core033_kernel_decide
def op2855 : List WordIR.Op := [.bxor 2896 2897]
def bytes2855 : Bytes := ("    let r00000b52: u32 = r00000b50 ^ r00000b51;\n" : String).toByteArray.data.toList
theorem checked2855 : bytes2855=statementBytes 2898 (op2855.map lower) ∧ bytes2855.length=48 := by core033_kernel_decide
def op2856 : List WordIR.Op := [.rotr 2880 22]
def bytes2856 : Bytes := ("    let r00000b53: u32 = r00000b40.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked2856 : bytes2856=statementBytes 2899 (op2856.map lower) ∧ bytes2856.length=65 := by core033_kernel_decide
def op2857 : List WordIR.Op := [.bxor 2898 2899]
def bytes2857 : Bytes := ("    let r00000b54: u32 = r00000b52 ^ r00000b53;\n" : String).toByteArray.data.toList
theorem checked2857 : bytes2857=statementBytes 2900 (op2857.map lower) ∧ bytes2857.length=48 := by core033_kernel_decide
def op2858 : List WordIR.Op := [.band 2880 2854]
def bytes2858 : Bytes := ("    let r00000b55: u32 = r00000b40 & r00000b26;\n" : String).toByteArray.data.toList
theorem checked2858 : bytes2858=statementBytes 2901 (op2858.map lower) ∧ bytes2858.length=48 := by core033_kernel_decide
def op2859 : List WordIR.Op := [.band 2880 2828]
def bytes2859 : Bytes := ("    let r00000b56: u32 = r00000b40 & r00000b0c;\n" : String).toByteArray.data.toList
theorem checked2859 : bytes2859=statementBytes 2902 (op2859.map lower) ∧ bytes2859.length=48 := by core033_kernel_decide
def op2860 : List WordIR.Op := [.bxor 2901 2902]
def bytes2860 : Bytes := ("    let r00000b57: u32 = r00000b55 ^ r00000b56;\n" : String).toByteArray.data.toList
theorem checked2860 : bytes2860=statementBytes 2903 (op2860.map lower) ∧ bytes2860.length=48 := by core033_kernel_decide
def op2861 : List WordIR.Op := [.bxor 2903 2875]
def bytes2861 : Bytes := ("    let r00000b58: u32 = r00000b57 ^ r00000b3b;\n" : String).toByteArray.data.toList
theorem checked2861 : bytes2861=statementBytes 2904 (op2861.map lower) ∧ bytes2861.length=48 := by core033_kernel_decide
def op2862 : List WordIR.Op := [.badd 2900 2904]
def bytes2862 : Bytes := ("    let r00000b59: u32 = r00000b54.wrapping_add(r00000b58);\n" : String).toByteArray.data.toList
theorem checked2862 : bytes2862=statementBytes 2905 (op2862.map lower) ∧ bytes2862.length=60 := by core033_kernel_decide
def op2863 : List WordIR.Op := [.badd 2895 2905]
def bytes2863 : Bytes := ("    let r00000b5a: u32 = r00000b4f.wrapping_add(r00000b59);\n" : String).toByteArray.data.toList
theorem checked2863 : bytes2863=statementBytes 2906 (op2863.map lower) ∧ bytes2863.length=60 := by core033_kernel_decide
def op2864 : List WordIR.Op := [.badd 2802 2895]
def bytes2864 : Bytes := ("    let r00000b5b: u32 = r00000af2.wrapping_add(r00000b4f);\n" : String).toByteArray.data.toList
theorem checked2864 : bytes2864=statementBytes 2907 (op2864.map lower) ∧ bytes2864.length=60 := by core033_kernel_decide
def op2865 : List WordIR.Op := [.rotr 2907 6]
def bytes2865 : Bytes := ("    let r00000b5c: u32 = r00000b5b.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked2865 : bytes2865=statementBytes 2908 (op2865.map lower) ∧ bytes2865.length=65 := by core033_kernel_decide
def op2866 : List WordIR.Op := [.rotr 2907 11]
def bytes2866 : Bytes := ("    let r00000b5d: u32 = r00000b5b.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked2866 : bytes2866=statementBytes 2909 (op2866.map lower) ∧ bytes2866.length=65 := by core033_kernel_decide
def op2867 : List WordIR.Op := [.bxor 2908 2909]
def bytes2867 : Bytes := ("    let r00000b5e: u32 = r00000b5c ^ r00000b5d;\n" : String).toByteArray.data.toList
theorem checked2867 : bytes2867=statementBytes 2910 (op2867.map lower) ∧ bytes2867.length=48 := by core033_kernel_decide
def op2868 : List WordIR.Op := [.rotr 2907 25]
def bytes2868 : Bytes := ("    let r00000b5f: u32 = r00000b5b.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked2868 : bytes2868=statementBytes 2911 (op2868.map lower) ∧ bytes2868.length=65 := by core033_kernel_decide
def op2869 : List WordIR.Op := [.bxor 2910 2911]
def bytes2869 : Bytes := ("    let r00000b60: u32 = r00000b5e ^ r00000b5f;\n" : String).toByteArray.data.toList
theorem checked2869 : bytes2869=statementBytes 2912 (op2869.map lower) ∧ bytes2869.length=48 := by core033_kernel_decide
def op2870 : List WordIR.Op := [.badd 2829 2912]
def bytes2870 : Bytes := ("    let r00000b61: u32 = r00000b0d.wrapping_add(r00000b60);\n" : String).toByteArray.data.toList
theorem checked2870 : bytes2870=statementBytes 2913 (op2870.map lower) ∧ bytes2870.length=60 := by core033_kernel_decide
def op2871 : List WordIR.Op := [.band 2907 2881]
def bytes2871 : Bytes := ("    let r00000b62: u32 = r00000b5b & r00000b41;\n" : String).toByteArray.data.toList
theorem checked2871 : bytes2871=statementBytes 2914 (op2871.map lower) ∧ bytes2871.length=48 := by core033_kernel_decide
def op2872 : List WordIR.Op := [.bnot 2907]
def bytes2872 : Bytes := ("    let r00000b63: u32 = !r00000b5b;\n" : String).toByteArray.data.toList
theorem checked2872 : bytes2872=statementBytes 2915 (op2872.map lower) ∧ bytes2872.length=37 := by core033_kernel_decide
def op2873 : List WordIR.Op := [.band 2915 2855]
def bytes2873 : Bytes := ("    let r00000b64: u32 = r00000b63 & r00000b27;\n" : String).toByteArray.data.toList
theorem checked2873 : bytes2873=statementBytes 2916 (op2873.map lower) ∧ bytes2873.length=48 := by core033_kernel_decide
def op2874 : List WordIR.Op := [.bxor 2914 2916]
def bytes2874 : Bytes := ("    let r00000b65: u32 = r00000b62 ^ r00000b64;\n" : String).toByteArray.data.toList
theorem checked2874 : bytes2874=statementBytes 2917 (op2874.map lower) ∧ bytes2874.length=48 := by core033_kernel_decide
def op2875 : List WordIR.Op := [.badd 2913 2917]
def bytes2875 : Bytes := ("    let r00000b66: u32 = r00000b61.wrapping_add(r00000b65);\n" : String).toByteArray.data.toList
theorem checked2875 : bytes2875=statementBytes 2918 (op2875.map lower) ∧ bytes2875.length=60 := by core033_kernel_decide
def op2876 : List WordIR.Op := [.literal (BitVec.ofNat 32 3584528711)]
def bytes2876 : Bytes := ("    let r00000b67: u32 = 0xd5a79147_u32;\n" : String).toByteArray.data.toList
theorem checked2876 : bytes2876=statementBytes 2919 (op2876.map lower) ∧ bytes2876.length=41 := by core033_kernel_decide
def op2877 : List WordIR.Op := [.badd 2918 2919]
def bytes2877 : Bytes := ("    let r00000b68: u32 = r00000b66.wrapping_add(r00000b67);\n" : String).toByteArray.data.toList
theorem checked2877 : bytes2877=statementBytes 2920 (op2877.map lower) ∧ bytes2877.length=60 := by core033_kernel_decide
def op2878 : List WordIR.Op := [.badd 2920 1710]
def bytes2878 : Bytes := ("    let r00000b69: u32 = r00000b68.wrapping_add(r000006ae);\n" : String).toByteArray.data.toList
theorem checked2878 : bytes2878=statementBytes 2921 (op2878.map lower) ∧ bytes2878.length=60 := by core033_kernel_decide
def op2879 : List WordIR.Op := [.rotr 2906 2]
def bytes2879 : Bytes := ("    let r00000b6a: u32 = r00000b5a.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked2879 : bytes2879=statementBytes 2922 (op2879.map lower) ∧ bytes2879.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2816,op2817,op2818,op2819,op2820,op2821,op2822,op2823,op2824,op2825,op2826,op2827,op2828,op2829,op2830,op2831,op2832,op2833,op2834,op2835,op2836,op2837,op2838,op2839,op2840,op2841,op2842,op2843,op2844,op2845,op2846,op2847,op2848,op2849,op2850,op2851,op2852,op2853,op2854,op2855,op2856,op2857,op2858,op2859,op2860,op2861,op2862,op2863,op2864,op2865,op2866,op2867,op2868,op2869,op2870,op2871,op2872,op2873,op2874,op2875,op2876,op2877,op2878,op2879]
def chunks : List Bytes := [bytes2816,bytes2817,bytes2818,bytes2819,bytes2820,bytes2821,bytes2822,bytes2823,bytes2824,bytes2825,bytes2826,bytes2827,bytes2828,bytes2829,bytes2830,bytes2831,bytes2832,bytes2833,bytes2834,bytes2835,bytes2836,bytes2837,bytes2838,bytes2839,bytes2840,bytes2841,bytes2842,bytes2843,bytes2844,bytes2845,bytes2846,bytes2847,bytes2848,bytes2849,bytes2850,bytes2851,bytes2852,bytes2853,bytes2854,bytes2855,bytes2856,bytes2857,bytes2858,bytes2859,bytes2860,bytes2861,bytes2862,bytes2863,bytes2864,bytes2865,bytes2866,bytes2867,bytes2868,bytes2869,bytes2870,bytes2871,bytes2872,bytes2873,bytes2874,bytes2875,bytes2876,bytes2877,bytes2878,bytes2879]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2859 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2816.1 (.cons _ _ _ _ _ checked2817.1 (.cons _ _ _ _ _ checked2818.1 (.cons _ _ _ _ _ checked2819.1 (.cons _ _ _ _ _ checked2820.1 (.cons _ _ _ _ _ checked2821.1 (.cons _ _ _ _ _ checked2822.1 (.cons _ _ _ _ _ checked2823.1 (.cons _ _ _ _ _ checked2824.1 (.cons _ _ _ _ _ checked2825.1 (.cons _ _ _ _ _ checked2826.1 (.cons _ _ _ _ _ checked2827.1 (.cons _ _ _ _ _ checked2828.1 (.cons _ _ _ _ _ checked2829.1 (.cons _ _ _ _ _ checked2830.1 (.cons _ _ _ _ _ checked2831.1 (.cons _ _ _ _ _ checked2832.1 (.cons _ _ _ _ _ checked2833.1 (.cons _ _ _ _ _ checked2834.1 (.cons _ _ _ _ _ checked2835.1 (.cons _ _ _ _ _ checked2836.1 (.cons _ _ _ _ _ checked2837.1 (.cons _ _ _ _ _ checked2838.1 (.cons _ _ _ _ _ checked2839.1 (.cons _ _ _ _ _ checked2840.1 (.cons _ _ _ _ _ checked2841.1 (.cons _ _ _ _ _ checked2842.1 (.cons _ _ _ _ _ checked2843.1 (.cons _ _ _ _ _ checked2844.1 (.cons _ _ _ _ _ checked2845.1 (.cons _ _ _ _ _ checked2846.1 (.cons _ _ _ _ _ checked2847.1 (.cons _ _ _ _ _ checked2848.1 (.cons _ _ _ _ _ checked2849.1 (.cons _ _ _ _ _ checked2850.1 (.cons _ _ _ _ _ checked2851.1 (.cons _ _ _ _ _ checked2852.1 (.cons _ _ _ _ _ checked2853.1 (.cons _ _ _ _ _ checked2854.1 (.cons _ _ _ _ _ checked2855.1 (.cons _ _ _ _ _ checked2856.1 (.cons _ _ _ _ _ checked2857.1 (.cons _ _ _ _ _ checked2858.1 (.cons _ _ _ _ _ checked2859.1 (.cons _ _ _ _ _ checked2860.1 (.cons _ _ _ _ _ checked2861.1 (.cons _ _ _ _ _ checked2862.1 (.cons _ _ _ _ _ checked2863.1 (.cons _ _ _ _ _ checked2864.1 (.cons _ _ _ _ _ checked2865.1 (.cons _ _ _ _ _ checked2866.1 (.cons _ _ _ _ _ checked2867.1 (.cons _ _ _ _ _ checked2868.1 (.cons _ _ _ _ _ checked2869.1 (.cons _ _ _ _ _ checked2870.1 (.cons _ _ _ _ _ checked2871.1 (.cons _ _ _ _ _ checked2872.1 (.cons _ _ _ _ _ checked2873.1 (.cons _ _ _ _ _ checked2874.1 (.cons _ _ _ _ _ checked2875.1 (.cons _ _ _ _ _ checked2876.1 (.cons _ _ _ _ _ checked2877.1 (.cons _ _ _ _ _ checked2878.1 (.cons _ _ _ _ _ checked2879.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2859 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3472 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2816.2,checked2817.2,checked2818.2,checked2819.2,checked2820.2,checked2821.2,checked2822.2,checked2823.2,checked2824.2,checked2825.2,checked2826.2,checked2827.2,checked2828.2,checked2829.2,checked2830.2,checked2831.2,checked2832.2,checked2833.2,checked2834.2,checked2835.2,checked2836.2,checked2837.2,checked2838.2,checked2839.2,checked2840.2,checked2841.2,checked2842.2,checked2843.2,checked2844.2,checked2845.2,checked2846.2,checked2847.2,checked2848.2,checked2849.2,checked2850.2,checked2851.2,checked2852.2,checked2853.2,checked2854.2,checked2855.2,checked2856.2,checked2857.2,checked2858.2,checked2859.2,checked2860.2,checked2861.2,checked2862.2,checked2863.2,checked2864.2,checked2865.2,checked2866.2,checked2867.2,checked2868.2,checked2869.2,checked2870.2,checked2871.2,checked2872.2,checked2873.2,checked2874.2,checked2875.2,checked2876.2,checked2877.2,checked2878.2,checked2879.2]
  decide
end ArtifactSharedFrameGroup44
