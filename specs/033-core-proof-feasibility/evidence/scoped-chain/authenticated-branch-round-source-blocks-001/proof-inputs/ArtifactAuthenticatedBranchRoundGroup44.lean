import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup44
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2816 : List WordIR.Op := [.bxor 2933 2337]
def bytes2816 : Bytes := ("    let r00000b76: u32 = r00000b75 ^ r00000921;\n" : String).toByteArray.data.toList
theorem checked2816 : bytes2816=statementBytes 2934 (op2816.map lower) ∧ bytes2816.length=48 := by core033_kernel_decide
def op2817 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2817 : Bytes := ("    let r00000b77: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2817 : bytes2817=statementBytes 2935 (op2817.map lower) ∧ bytes2817.length=41 := by core033_kernel_decide
def op2818 : List WordIR.Op := [.bnot 2935]
def bytes2818 : Bytes := ("    let r00000b78: u32 = !r00000b77;\n" : String).toByteArray.data.toList
theorem checked2818 : bytes2818=statementBytes 2936 (op2818.map lower) ∧ bytes2818.length=37 := by core033_kernel_decide
def op2819 : List WordIR.Op := [.bxor 2934 2936]
def bytes2819 : Bytes := ("    let r00000b79: u32 = r00000b76 ^ r00000b78;\n" : String).toByteArray.data.toList
theorem checked2819 : bytes2819=statementBytes 2937 (op2819.map lower) ∧ bytes2819.length=48 := by core033_kernel_decide
def op2820 : List WordIR.Op := [.badd 2168 2288]
def bytes2820 : Bytes := ("    let r00000b7a: u32 = r00000878.wrapping_add(r000008f0);\n" : String).toByteArray.data.toList
theorem checked2820 : bytes2820=statementBytes 2938 (op2820.map lower) ∧ bytes2820.length=60 := by core033_kernel_decide
def op2821 : List WordIR.Op := [.bxor 2938 2337]
def bytes2821 : Bytes := ("    let r00000b7b: u32 = r00000b7a ^ r00000921;\n" : String).toByteArray.data.toList
theorem checked2821 : bytes2821=statementBytes 2939 (op2821.map lower) ∧ bytes2821.length=48 := by core033_kernel_decide
def op2822 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2822 : Bytes := ("    let r00000b7c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2822 : bytes2822=statementBytes 2940 (op2822.map lower) ∧ bytes2822.length=41 := by core033_kernel_decide
def op2823 : List WordIR.Op := [.bnot 2940]
def bytes2823 : Bytes := ("    let r00000b7d: u32 = !r00000b7c;\n" : String).toByteArray.data.toList
theorem checked2823 : bytes2823=statementBytes 2941 (op2823.map lower) ∧ bytes2823.length=37 := by core033_kernel_decide
def op2824 : List WordIR.Op := [.badd 2939 2941]
def bytes2824 : Bytes := ("    let r00000b7e: u32 = r00000b7b.wrapping_add(r00000b7d);\n" : String).toByteArray.data.toList
theorem checked2824 : bytes2824=statementBytes 2942 (op2824.map lower) ∧ bytes2824.length=60 := by core033_kernel_decide
def op2825 : List WordIR.Op := [.bnot 2942]
def bytes2825 : Bytes := ("    let r00000b7f: u32 = !r00000b7e;\n" : String).toByteArray.data.toList
theorem checked2825 : bytes2825=statementBytes 2943 (op2825.map lower) ∧ bytes2825.length=37 := by core033_kernel_decide
def op2826 : List WordIR.Op := [.band 2937 2943]
def bytes2826 : Bytes := ("    let r00000b80: u32 = r00000b79 & r00000b7f;\n" : String).toByteArray.data.toList
theorem checked2826 : bytes2826=statementBytes 2944 (op2826.map lower) ∧ bytes2826.length=48 := by core033_kernel_decide
def op2827 : List WordIR.Op := [.bxor 2932 2944]
def bytes2827 : Bytes := ("    let r00000b81: u32 = r00000b74 ^ r00000b80;\n" : String).toByteArray.data.toList
theorem checked2827 : bytes2827=statementBytes 2945 (op2827.map lower) ∧ bytes2827.length=48 := by core033_kernel_decide
def op2828 : List WordIR.Op := [.shr 2945 31]
def bytes2828 : Bytes := ("    let r00000b82: u32 = r00000b81 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2828 : bytes2828=statementBytes 2946 (op2828.map lower) ∧ bytes2828.length=54 := by core033_kernel_decide
def op2829 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2829 : Bytes := ("    let r00000b83: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2829 : bytes2829=statementBytes 2947 (op2829.map lower) ∧ bytes2829.length=41 := by core033_kernel_decide
def op2830 : List WordIR.Op := [.bxor 2946 2947]
def bytes2830 : Bytes := ("    let r00000b84: u32 = r00000b82 ^ r00000b83;\n" : String).toByteArray.data.toList
theorem checked2830 : bytes2830=statementBytes 2948 (op2830.map lower) ∧ bytes2830.length=48 := by core033_kernel_decide
def op2831 : List WordIR.Op := [.badd 2178 2298]
def bytes2831 : Bytes := ("    let r00000b85: u32 = r00000882.wrapping_add(r000008fa);\n" : String).toByteArray.data.toList
theorem checked2831 : bytes2831=statementBytes 2949 (op2831.map lower) ∧ bytes2831.length=60 := by core033_kernel_decide
def op2832 : List WordIR.Op := [.band 2168 2288]
def bytes2832 : Bytes := ("    let r00000b86: u32 = r00000878 & r000008f0;\n" : String).toByteArray.data.toList
theorem checked2832 : bytes2832=statementBytes 2950 (op2832.map lower) ∧ bytes2832.length=48 := by core033_kernel_decide
def op2833 : List WordIR.Op := [.bxor 2168 2288]
def bytes2833 : Bytes := ("    let r00000b87: u32 = r00000878 ^ r000008f0;\n" : String).toByteArray.data.toList
theorem checked2833 : bytes2833=statementBytes 2951 (op2833.map lower) ∧ bytes2833.length=48 := by core033_kernel_decide
def op2834 : List WordIR.Op := [.badd 2168 2288]
def bytes2834 : Bytes := ("    let r00000b88: u32 = r00000878.wrapping_add(r000008f0);\n" : String).toByteArray.data.toList
theorem checked2834 : bytes2834=statementBytes 2952 (op2834.map lower) ∧ bytes2834.length=60 := by core033_kernel_decide
def op2835 : List WordIR.Op := [.bnot 2952]
def bytes2835 : Bytes := ("    let r00000b89: u32 = !r00000b88;\n" : String).toByteArray.data.toList
theorem checked2835 : bytes2835=statementBytes 2953 (op2835.map lower) ∧ bytes2835.length=37 := by core033_kernel_decide
def op2836 : List WordIR.Op := [.band 2951 2953]
def bytes2836 : Bytes := ("    let r00000b8a: u32 = r00000b87 & r00000b89;\n" : String).toByteArray.data.toList
theorem checked2836 : bytes2836=statementBytes 2954 (op2836.map lower) ∧ bytes2836.length=48 := by core033_kernel_decide
def op2837 : List WordIR.Op := [.bxor 2950 2954]
def bytes2837 : Bytes := ("    let r00000b8b: u32 = r00000b86 ^ r00000b8a;\n" : String).toByteArray.data.toList
theorem checked2837 : bytes2837=statementBytes 2955 (op2837.map lower) ∧ bytes2837.length=48 := by core033_kernel_decide
def op2838 : List WordIR.Op := [.shr 2955 31]
def bytes2838 : Bytes := ("    let r00000b8c: u32 = r00000b8b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2838 : bytes2838=statementBytes 2956 (op2838.map lower) ∧ bytes2838.length=54 := by core033_kernel_decide
def op2839 : List WordIR.Op := [.badd 2949 2956]
def bytes2839 : Bytes := ("    let r00000b8d: u32 = r00000b85.wrapping_add(r00000b8c);\n" : String).toByteArray.data.toList
theorem checked2839 : bytes2839=statementBytes 2957 (op2839.map lower) ∧ bytes2839.length=60 := by core033_kernel_decide
def op2840 : List WordIR.Op := [.bxor 2957 2346]
def bytes2840 : Bytes := ("    let r00000b8e: u32 = r00000b8d ^ r0000092a;\n" : String).toByteArray.data.toList
theorem checked2840 : bytes2840=statementBytes 2958 (op2840.map lower) ∧ bytes2840.length=48 := by core033_kernel_decide
def op2841 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2841 : Bytes := ("    let r00000b8f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2841 : bytes2841=statementBytes 2959 (op2841.map lower) ∧ bytes2841.length=41 := by core033_kernel_decide
def op2842 : List WordIR.Op := [.bnot 2959]
def bytes2842 : Bytes := ("    let r00000b90: u32 = !r00000b8f;\n" : String).toByteArray.data.toList
theorem checked2842 : bytes2842=statementBytes 2960 (op2842.map lower) ∧ bytes2842.length=37 := by core033_kernel_decide
def op2843 : List WordIR.Op := [.band 2958 2960]
def bytes2843 : Bytes := ("    let r00000b91: u32 = r00000b8e & r00000b90;\n" : String).toByteArray.data.toList
theorem checked2843 : bytes2843=statementBytes 2961 (op2843.map lower) ∧ bytes2843.length=48 := by core033_kernel_decide
def op2844 : List WordIR.Op := [.badd 2178 2298]
def bytes2844 : Bytes := ("    let r00000b92: u32 = r00000882.wrapping_add(r000008fa);\n" : String).toByteArray.data.toList
theorem checked2844 : bytes2844=statementBytes 2962 (op2844.map lower) ∧ bytes2844.length=60 := by core033_kernel_decide
def op2845 : List WordIR.Op := [.band 2168 2288]
def bytes2845 : Bytes := ("    let r00000b93: u32 = r00000878 & r000008f0;\n" : String).toByteArray.data.toList
theorem checked2845 : bytes2845=statementBytes 2963 (op2845.map lower) ∧ bytes2845.length=48 := by core033_kernel_decide
def op2846 : List WordIR.Op := [.bxor 2168 2288]
def bytes2846 : Bytes := ("    let r00000b94: u32 = r00000878 ^ r000008f0;\n" : String).toByteArray.data.toList
theorem checked2846 : bytes2846=statementBytes 2964 (op2846.map lower) ∧ bytes2846.length=48 := by core033_kernel_decide
def op2847 : List WordIR.Op := [.badd 2168 2288]
def bytes2847 : Bytes := ("    let r00000b95: u32 = r00000878.wrapping_add(r000008f0);\n" : String).toByteArray.data.toList
theorem checked2847 : bytes2847=statementBytes 2965 (op2847.map lower) ∧ bytes2847.length=60 := by core033_kernel_decide
def op2848 : List WordIR.Op := [.bnot 2965]
def bytes2848 : Bytes := ("    let r00000b96: u32 = !r00000b95;\n" : String).toByteArray.data.toList
theorem checked2848 : bytes2848=statementBytes 2966 (op2848.map lower) ∧ bytes2848.length=37 := by core033_kernel_decide
def op2849 : List WordIR.Op := [.band 2964 2966]
def bytes2849 : Bytes := ("    let r00000b97: u32 = r00000b94 & r00000b96;\n" : String).toByteArray.data.toList
theorem checked2849 : bytes2849=statementBytes 2967 (op2849.map lower) ∧ bytes2849.length=48 := by core033_kernel_decide
def op2850 : List WordIR.Op := [.bxor 2963 2967]
def bytes2850 : Bytes := ("    let r00000b98: u32 = r00000b93 ^ r00000b97;\n" : String).toByteArray.data.toList
theorem checked2850 : bytes2850=statementBytes 2968 (op2850.map lower) ∧ bytes2850.length=48 := by core033_kernel_decide
def op2851 : List WordIR.Op := [.shr 2968 31]
def bytes2851 : Bytes := ("    let r00000b99: u32 = r00000b98 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2851 : bytes2851=statementBytes 2969 (op2851.map lower) ∧ bytes2851.length=54 := by core033_kernel_decide
def op2852 : List WordIR.Op := [.badd 2962 2969]
def bytes2852 : Bytes := ("    let r00000b9a: u32 = r00000b92.wrapping_add(r00000b99);\n" : String).toByteArray.data.toList
theorem checked2852 : bytes2852=statementBytes 2970 (op2852.map lower) ∧ bytes2852.length=60 := by core033_kernel_decide
def op2853 : List WordIR.Op := [.bxor 2970 2346]
def bytes2853 : Bytes := ("    let r00000b9b: u32 = r00000b9a ^ r0000092a;\n" : String).toByteArray.data.toList
theorem checked2853 : bytes2853=statementBytes 2971 (op2853.map lower) ∧ bytes2853.length=48 := by core033_kernel_decide
def op2854 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2854 : Bytes := ("    let r00000b9c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2854 : bytes2854=statementBytes 2972 (op2854.map lower) ∧ bytes2854.length=41 := by core033_kernel_decide
def op2855 : List WordIR.Op := [.bnot 2972]
def bytes2855 : Bytes := ("    let r00000b9d: u32 = !r00000b9c;\n" : String).toByteArray.data.toList
theorem checked2855 : bytes2855=statementBytes 2973 (op2855.map lower) ∧ bytes2855.length=37 := by core033_kernel_decide
def op2856 : List WordIR.Op := [.bxor 2971 2973]
def bytes2856 : Bytes := ("    let r00000b9e: u32 = r00000b9b ^ r00000b9d;\n" : String).toByteArray.data.toList
theorem checked2856 : bytes2856=statementBytes 2974 (op2856.map lower) ∧ bytes2856.length=48 := by core033_kernel_decide
def op2857 : List WordIR.Op := [.badd 2178 2298]
def bytes2857 : Bytes := ("    let r00000b9f: u32 = r00000882.wrapping_add(r000008fa);\n" : String).toByteArray.data.toList
theorem checked2857 : bytes2857=statementBytes 2975 (op2857.map lower) ∧ bytes2857.length=60 := by core033_kernel_decide
def op2858 : List WordIR.Op := [.band 2168 2288]
def bytes2858 : Bytes := ("    let r00000ba0: u32 = r00000878 & r000008f0;\n" : String).toByteArray.data.toList
theorem checked2858 : bytes2858=statementBytes 2976 (op2858.map lower) ∧ bytes2858.length=48 := by core033_kernel_decide
def op2859 : List WordIR.Op := [.bxor 2168 2288]
def bytes2859 : Bytes := ("    let r00000ba1: u32 = r00000878 ^ r000008f0;\n" : String).toByteArray.data.toList
theorem checked2859 : bytes2859=statementBytes 2977 (op2859.map lower) ∧ bytes2859.length=48 := by core033_kernel_decide
def op2860 : List WordIR.Op := [.badd 2168 2288]
def bytes2860 : Bytes := ("    let r00000ba2: u32 = r00000878.wrapping_add(r000008f0);\n" : String).toByteArray.data.toList
theorem checked2860 : bytes2860=statementBytes 2978 (op2860.map lower) ∧ bytes2860.length=60 := by core033_kernel_decide
def op2861 : List WordIR.Op := [.bnot 2978]
def bytes2861 : Bytes := ("    let r00000ba3: u32 = !r00000ba2;\n" : String).toByteArray.data.toList
theorem checked2861 : bytes2861=statementBytes 2979 (op2861.map lower) ∧ bytes2861.length=37 := by core033_kernel_decide
def op2862 : List WordIR.Op := [.band 2977 2979]
def bytes2862 : Bytes := ("    let r00000ba4: u32 = r00000ba1 & r00000ba3;\n" : String).toByteArray.data.toList
theorem checked2862 : bytes2862=statementBytes 2980 (op2862.map lower) ∧ bytes2862.length=48 := by core033_kernel_decide
def op2863 : List WordIR.Op := [.bxor 2976 2980]
def bytes2863 : Bytes := ("    let r00000ba5: u32 = r00000ba0 ^ r00000ba4;\n" : String).toByteArray.data.toList
theorem checked2863 : bytes2863=statementBytes 2981 (op2863.map lower) ∧ bytes2863.length=48 := by core033_kernel_decide
def op2864 : List WordIR.Op := [.shr 2981 31]
def bytes2864 : Bytes := ("    let r00000ba6: u32 = r00000ba5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2864 : bytes2864=statementBytes 2982 (op2864.map lower) ∧ bytes2864.length=54 := by core033_kernel_decide
def op2865 : List WordIR.Op := [.badd 2975 2982]
def bytes2865 : Bytes := ("    let r00000ba7: u32 = r00000b9f.wrapping_add(r00000ba6);\n" : String).toByteArray.data.toList
theorem checked2865 : bytes2865=statementBytes 2983 (op2865.map lower) ∧ bytes2865.length=60 := by core033_kernel_decide
def op2866 : List WordIR.Op := [.bxor 2983 2346]
def bytes2866 : Bytes := ("    let r00000ba8: u32 = r00000ba7 ^ r0000092a;\n" : String).toByteArray.data.toList
theorem checked2866 : bytes2866=statementBytes 2984 (op2866.map lower) ∧ bytes2866.length=48 := by core033_kernel_decide
def op2867 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2867 : Bytes := ("    let r00000ba9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2867 : bytes2867=statementBytes 2985 (op2867.map lower) ∧ bytes2867.length=41 := by core033_kernel_decide
def op2868 : List WordIR.Op := [.bnot 2985]
def bytes2868 : Bytes := ("    let r00000baa: u32 = !r00000ba9;\n" : String).toByteArray.data.toList
theorem checked2868 : bytes2868=statementBytes 2986 (op2868.map lower) ∧ bytes2868.length=37 := by core033_kernel_decide
def op2869 : List WordIR.Op := [.badd 2984 2986]
def bytes2869 : Bytes := ("    let r00000bab: u32 = r00000ba8.wrapping_add(r00000baa);\n" : String).toByteArray.data.toList
theorem checked2869 : bytes2869=statementBytes 2987 (op2869.map lower) ∧ bytes2869.length=60 := by core033_kernel_decide
def op2870 : List WordIR.Op := [.bnot 2987]
def bytes2870 : Bytes := ("    let r00000bac: u32 = !r00000bab;\n" : String).toByteArray.data.toList
theorem checked2870 : bytes2870=statementBytes 2988 (op2870.map lower) ∧ bytes2870.length=37 := by core033_kernel_decide
def op2871 : List WordIR.Op := [.band 2974 2988]
def bytes2871 : Bytes := ("    let r00000bad: u32 = r00000b9e & r00000bac;\n" : String).toByteArray.data.toList
theorem checked2871 : bytes2871=statementBytes 2989 (op2871.map lower) ∧ bytes2871.length=48 := by core033_kernel_decide
def op2872 : List WordIR.Op := [.bxor 2961 2989]
def bytes2872 : Bytes := ("    let r00000bae: u32 = r00000b91 ^ r00000bad;\n" : String).toByteArray.data.toList
theorem checked2872 : bytes2872=statementBytes 2990 (op2872.map lower) ∧ bytes2872.length=48 := by core033_kernel_decide
def op2873 : List WordIR.Op := [.shr 2990 31]
def bytes2873 : Bytes := ("    let r00000baf: u32 = r00000bae >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2873 : bytes2873=statementBytes 2991 (op2873.map lower) ∧ bytes2873.length=54 := by core033_kernel_decide
def op2874 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2874 : Bytes := ("    let r00000bb0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2874 : bytes2874=statementBytes 2992 (op2874.map lower) ∧ bytes2874.length=41 := by core033_kernel_decide
def op2875 : List WordIR.Op := [.bxor 2991 2992]
def bytes2875 : Bytes := ("    let r00000bb1: u32 = r00000baf ^ r00000bb0;\n" : String).toByteArray.data.toList
theorem checked2875 : bytes2875=statementBytes 2993 (op2875.map lower) ∧ bytes2875.length=48 := by core033_kernel_decide
def op2876 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2876 : Bytes := ("    let r00000bb2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2876 : bytes2876=statementBytes 2994 (op2876.map lower) ∧ bytes2876.length=41 := by core033_kernel_decide
def op2877 : List WordIR.Op := [.bnot 2994]
def bytes2877 : Bytes := ("    let r00000bb3: u32 = !r00000bb2;\n" : String).toByteArray.data.toList
theorem checked2877 : bytes2877=statementBytes 2995 (op2877.map lower) ∧ bytes2877.length=37 := by core033_kernel_decide
def op2878 : List WordIR.Op := [.band 2178 2995]
def bytes2878 : Bytes := ("    let r00000bb4: u32 = r00000882 & r00000bb3;\n" : String).toByteArray.data.toList
theorem checked2878 : bytes2878=statementBytes 2996 (op2878.map lower) ∧ bytes2878.length=48 := by core033_kernel_decide
def op2879 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2879 : Bytes := ("    let r00000bb5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2879 : bytes2879=statementBytes 2997 (op2879.map lower) ∧ bytes2879.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2816,op2817,op2818,op2819,op2820,op2821,op2822,op2823,op2824,op2825,op2826,op2827,op2828,op2829,op2830,op2831,op2832,op2833,op2834,op2835,op2836,op2837,op2838,op2839,op2840,op2841,op2842,op2843,op2844,op2845,op2846,op2847,op2848,op2849,op2850,op2851,op2852,op2853,op2854,op2855,op2856,op2857,op2858,op2859,op2860,op2861,op2862,op2863,op2864,op2865,op2866,op2867,op2868,op2869,op2870,op2871,op2872,op2873,op2874,op2875,op2876,op2877,op2878,op2879]
def chunks : List Bytes := [bytes2816,bytes2817,bytes2818,bytes2819,bytes2820,bytes2821,bytes2822,bytes2823,bytes2824,bytes2825,bytes2826,bytes2827,bytes2828,bytes2829,bytes2830,bytes2831,bytes2832,bytes2833,bytes2834,bytes2835,bytes2836,bytes2837,bytes2838,bytes2839,bytes2840,bytes2841,bytes2842,bytes2843,bytes2844,bytes2845,bytes2846,bytes2847,bytes2848,bytes2849,bytes2850,bytes2851,bytes2852,bytes2853,bytes2854,bytes2855,bytes2856,bytes2857,bytes2858,bytes2859,bytes2860,bytes2861,bytes2862,bytes2863,bytes2864,bytes2865,bytes2866,bytes2867,bytes2868,bytes2869,bytes2870,bytes2871,bytes2872,bytes2873,bytes2874,bytes2875,bytes2876,bytes2877,bytes2878,bytes2879]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2934 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2816.1 (.cons _ _ _ _ _ checked2817.1 (.cons _ _ _ _ _ checked2818.1 (.cons _ _ _ _ _ checked2819.1 (.cons _ _ _ _ _ checked2820.1 (.cons _ _ _ _ _ checked2821.1 (.cons _ _ _ _ _ checked2822.1 (.cons _ _ _ _ _ checked2823.1 (.cons _ _ _ _ _ checked2824.1 (.cons _ _ _ _ _ checked2825.1 (.cons _ _ _ _ _ checked2826.1 (.cons _ _ _ _ _ checked2827.1 (.cons _ _ _ _ _ checked2828.1 (.cons _ _ _ _ _ checked2829.1 (.cons _ _ _ _ _ checked2830.1 (.cons _ _ _ _ _ checked2831.1 (.cons _ _ _ _ _ checked2832.1 (.cons _ _ _ _ _ checked2833.1 (.cons _ _ _ _ _ checked2834.1 (.cons _ _ _ _ _ checked2835.1 (.cons _ _ _ _ _ checked2836.1 (.cons _ _ _ _ _ checked2837.1 (.cons _ _ _ _ _ checked2838.1 (.cons _ _ _ _ _ checked2839.1 (.cons _ _ _ _ _ checked2840.1 (.cons _ _ _ _ _ checked2841.1 (.cons _ _ _ _ _ checked2842.1 (.cons _ _ _ _ _ checked2843.1 (.cons _ _ _ _ _ checked2844.1 (.cons _ _ _ _ _ checked2845.1 (.cons _ _ _ _ _ checked2846.1 (.cons _ _ _ _ _ checked2847.1 (.cons _ _ _ _ _ checked2848.1 (.cons _ _ _ _ _ checked2849.1 (.cons _ _ _ _ _ checked2850.1 (.cons _ _ _ _ _ checked2851.1 (.cons _ _ _ _ _ checked2852.1 (.cons _ _ _ _ _ checked2853.1 (.cons _ _ _ _ _ checked2854.1 (.cons _ _ _ _ _ checked2855.1 (.cons _ _ _ _ _ checked2856.1 (.cons _ _ _ _ _ checked2857.1 (.cons _ _ _ _ _ checked2858.1 (.cons _ _ _ _ _ checked2859.1 (.cons _ _ _ _ _ checked2860.1 (.cons _ _ _ _ _ checked2861.1 (.cons _ _ _ _ _ checked2862.1 (.cons _ _ _ _ _ checked2863.1 (.cons _ _ _ _ _ checked2864.1 (.cons _ _ _ _ _ checked2865.1 (.cons _ _ _ _ _ checked2866.1 (.cons _ _ _ _ _ checked2867.1 (.cons _ _ _ _ _ checked2868.1 (.cons _ _ _ _ _ checked2869.1 (.cons _ _ _ _ _ checked2870.1 (.cons _ _ _ _ _ checked2871.1 (.cons _ _ _ _ _ checked2872.1 (.cons _ _ _ _ _ checked2873.1 (.cons _ _ _ _ _ checked2874.1 (.cons _ _ _ _ _ checked2875.1 (.cons _ _ _ _ _ checked2876.1 (.cons _ _ _ _ _ checked2877.1 (.cons _ _ _ _ _ checked2878.1 (.cons _ _ _ _ _ checked2879.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2934 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3062 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2816.2,checked2817.2,checked2818.2,checked2819.2,checked2820.2,checked2821.2,checked2822.2,checked2823.2,checked2824.2,checked2825.2,checked2826.2,checked2827.2,checked2828.2,checked2829.2,checked2830.2,checked2831.2,checked2832.2,checked2833.2,checked2834.2,checked2835.2,checked2836.2,checked2837.2,checked2838.2,checked2839.2,checked2840.2,checked2841.2,checked2842.2,checked2843.2,checked2844.2,checked2845.2,checked2846.2,checked2847.2,checked2848.2,checked2849.2,checked2850.2,checked2851.2,checked2852.2,checked2853.2,checked2854.2,checked2855.2,checked2856.2,checked2857.2,checked2858.2,checked2859.2,checked2860.2,checked2861.2,checked2862.2,checked2863.2,checked2864.2,checked2865.2,checked2866.2,checked2867.2,checked2868.2,checked2869.2,checked2870.2,checked2871.2,checked2872.2,checked2873.2,checked2874.2,checked2875.2,checked2876.2,checked2877.2,checked2878.2,checked2879.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup44
