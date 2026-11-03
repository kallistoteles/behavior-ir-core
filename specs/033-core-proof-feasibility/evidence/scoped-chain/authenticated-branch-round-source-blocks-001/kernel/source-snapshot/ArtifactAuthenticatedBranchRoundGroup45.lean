import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup45
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2880 : List WordIR.Op := [.bnot 2997]
def bytes2880 : Bytes := ("    let r00000bb6: u32 = !r00000bb5;\n" : String).toByteArray.data.toList
theorem checked2880 : bytes2880=statementBytes 2998 (op2880.map lower) ∧ bytes2880.length=37 := by core033_kernel_decide
def op2881 : List WordIR.Op := [.bxor 2178 2998]
def bytes2881 : Bytes := ("    let r00000bb7: u32 = r00000882 ^ r00000bb6;\n" : String).toByteArray.data.toList
theorem checked2881 : bytes2881=statementBytes 2999 (op2881.map lower) ∧ bytes2881.length=48 := by core033_kernel_decide
def op2882 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2882 : Bytes := ("    let r00000bb8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2882 : bytes2882=statementBytes 3000 (op2882.map lower) ∧ bytes2882.length=41 := by core033_kernel_decide
def op2883 : List WordIR.Op := [.bnot 3000]
def bytes2883 : Bytes := ("    let r00000bb9: u32 = !r00000bb8;\n" : String).toByteArray.data.toList
theorem checked2883 : bytes2883=statementBytes 3001 (op2883.map lower) ∧ bytes2883.length=37 := by core033_kernel_decide
def op2884 : List WordIR.Op := [.badd 2178 3001]
def bytes2884 : Bytes := ("    let r00000bba: u32 = r00000882.wrapping_add(r00000bb9);\n" : String).toByteArray.data.toList
theorem checked2884 : bytes2884=statementBytes 3002 (op2884.map lower) ∧ bytes2884.length=60 := by core033_kernel_decide
def op2885 : List WordIR.Op := [.bnot 3002]
def bytes2885 : Bytes := ("    let r00000bbb: u32 = !r00000bba;\n" : String).toByteArray.data.toList
theorem checked2885 : bytes2885=statementBytes 3003 (op2885.map lower) ∧ bytes2885.length=37 := by core033_kernel_decide
def op2886 : List WordIR.Op := [.band 2999 3003]
def bytes2886 : Bytes := ("    let r00000bbc: u32 = r00000bb7 & r00000bbb;\n" : String).toByteArray.data.toList
theorem checked2886 : bytes2886=statementBytes 3004 (op2886.map lower) ∧ bytes2886.length=48 := by core033_kernel_decide
def op2887 : List WordIR.Op := [.bxor 2996 3004]
def bytes2887 : Bytes := ("    let r00000bbd: u32 = r00000bb4 ^ r00000bbc;\n" : String).toByteArray.data.toList
theorem checked2887 : bytes2887=statementBytes 3005 (op2887.map lower) ∧ bytes2887.length=48 := by core033_kernel_decide
def op2888 : List WordIR.Op := [.shr 3005 31]
def bytes2888 : Bytes := ("    let r00000bbe: u32 = r00000bbd >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2888 : bytes2888=statementBytes 3006 (op2888.map lower) ∧ bytes2888.length=54 := by core033_kernel_decide
def op2889 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2889 : Bytes := ("    let r00000bbf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2889 : bytes2889=statementBytes 3007 (op2889.map lower) ∧ bytes2889.length=41 := by core033_kernel_decide
def op2890 : List WordIR.Op := [.bxor 3006 3007]
def bytes2890 : Bytes := ("    let r00000bc0: u32 = r00000bbe ^ r00000bbf;\n" : String).toByteArray.data.toList
theorem checked2890 : bytes2890=statementBytes 3008 (op2890.map lower) ∧ bytes2890.length=48 := by core033_kernel_decide
def op2891 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2891 : Bytes := ("    let r00000bc1: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2891 : bytes2891=statementBytes 3009 (op2891.map lower) ∧ bytes2891.length=41 := by core033_kernel_decide
def op2892 : List WordIR.Op := [.bnot 3009]
def bytes2892 : Bytes := ("    let r00000bc2: u32 = !r00000bc1;\n" : String).toByteArray.data.toList
theorem checked2892 : bytes2892=statementBytes 3010 (op2892.map lower) ∧ bytes2892.length=37 := by core033_kernel_decide
def op2893 : List WordIR.Op := [.band 2168 3010]
def bytes2893 : Bytes := ("    let r00000bc3: u32 = r00000878 & r00000bc2;\n" : String).toByteArray.data.toList
theorem checked2893 : bytes2893=statementBytes 3011 (op2893.map lower) ∧ bytes2893.length=48 := by core033_kernel_decide
def op2894 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2894 : Bytes := ("    let r00000bc4: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2894 : bytes2894=statementBytes 3012 (op2894.map lower) ∧ bytes2894.length=41 := by core033_kernel_decide
def op2895 : List WordIR.Op := [.bnot 3012]
def bytes2895 : Bytes := ("    let r00000bc5: u32 = !r00000bc4;\n" : String).toByteArray.data.toList
theorem checked2895 : bytes2895=statementBytes 3013 (op2895.map lower) ∧ bytes2895.length=37 := by core033_kernel_decide
def op2896 : List WordIR.Op := [.bxor 2168 3013]
def bytes2896 : Bytes := ("    let r00000bc6: u32 = r00000878 ^ r00000bc5;\n" : String).toByteArray.data.toList
theorem checked2896 : bytes2896=statementBytes 3014 (op2896.map lower) ∧ bytes2896.length=48 := by core033_kernel_decide
def op2897 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2897 : Bytes := ("    let r00000bc7: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2897 : bytes2897=statementBytes 3015 (op2897.map lower) ∧ bytes2897.length=41 := by core033_kernel_decide
def op2898 : List WordIR.Op := [.bnot 3015]
def bytes2898 : Bytes := ("    let r00000bc8: u32 = !r00000bc7;\n" : String).toByteArray.data.toList
theorem checked2898 : bytes2898=statementBytes 3016 (op2898.map lower) ∧ bytes2898.length=37 := by core033_kernel_decide
def op2899 : List WordIR.Op := [.badd 2168 3016]
def bytes2899 : Bytes := ("    let r00000bc9: u32 = r00000878.wrapping_add(r00000bc8);\n" : String).toByteArray.data.toList
theorem checked2899 : bytes2899=statementBytes 3017 (op2899.map lower) ∧ bytes2899.length=60 := by core033_kernel_decide
def op2900 : List WordIR.Op := [.bnot 3017]
def bytes2900 : Bytes := ("    let r00000bca: u32 = !r00000bc9;\n" : String).toByteArray.data.toList
theorem checked2900 : bytes2900=statementBytes 3018 (op2900.map lower) ∧ bytes2900.length=37 := by core033_kernel_decide
def op2901 : List WordIR.Op := [.band 3014 3018]
def bytes2901 : Bytes := ("    let r00000bcb: u32 = r00000bc6 & r00000bca;\n" : String).toByteArray.data.toList
theorem checked2901 : bytes2901=statementBytes 3019 (op2901.map lower) ∧ bytes2901.length=48 := by core033_kernel_decide
def op2902 : List WordIR.Op := [.bxor 3011 3019]
def bytes2902 : Bytes := ("    let r00000bcc: u32 = r00000bc3 ^ r00000bcb;\n" : String).toByteArray.data.toList
theorem checked2902 : bytes2902=statementBytes 3020 (op2902.map lower) ∧ bytes2902.length=48 := by core033_kernel_decide
def op2903 : List WordIR.Op := [.shr 3020 31]
def bytes2903 : Bytes := ("    let r00000bcd: u32 = r00000bcc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2903 : bytes2903=statementBytes 3021 (op2903.map lower) ∧ bytes2903.length=54 := by core033_kernel_decide
def op2904 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2904 : Bytes := ("    let r00000bce: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2904 : bytes2904=statementBytes 3022 (op2904.map lower) ∧ bytes2904.length=41 := by core033_kernel_decide
def op2905 : List WordIR.Op := [.bxor 3021 3022]
def bytes2905 : Bytes := ("    let r00000bcf: u32 = r00000bcd ^ r00000bce;\n" : String).toByteArray.data.toList
theorem checked2905 : bytes2905=statementBytes 3023 (op2905.map lower) ∧ bytes2905.length=48 := by core033_kernel_decide
def op2906 : List WordIR.Op := [.band 3008 3023]
def bytes2906 : Bytes := ("    let r00000bd0: u32 = r00000bc0 & r00000bcf;\n" : String).toByteArray.data.toList
theorem checked2906 : bytes2906=statementBytes 3024 (op2906.map lower) ∧ bytes2906.length=48 := by core033_kernel_decide
def op2907 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2907 : Bytes := ("    let r00000bd1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2907 : bytes2907=statementBytes 3025 (op2907.map lower) ∧ bytes2907.length=41 := by core033_kernel_decide
def op2908 : List WordIR.Op := [.bnot 3025]
def bytes2908 : Bytes := ("    let r00000bd2: u32 = !r00000bd1;\n" : String).toByteArray.data.toList
theorem checked2908 : bytes2908=statementBytes 3026 (op2908.map lower) ∧ bytes2908.length=37 := by core033_kernel_decide
def op2909 : List WordIR.Op := [.band 2298 3026]
def bytes2909 : Bytes := ("    let r00000bd3: u32 = r000008fa & r00000bd2;\n" : String).toByteArray.data.toList
theorem checked2909 : bytes2909=statementBytes 3027 (op2909.map lower) ∧ bytes2909.length=48 := by core033_kernel_decide
def op2910 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2910 : Bytes := ("    let r00000bd4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2910 : bytes2910=statementBytes 3028 (op2910.map lower) ∧ bytes2910.length=41 := by core033_kernel_decide
def op2911 : List WordIR.Op := [.bnot 3028]
def bytes2911 : Bytes := ("    let r00000bd5: u32 = !r00000bd4;\n" : String).toByteArray.data.toList
theorem checked2911 : bytes2911=statementBytes 3029 (op2911.map lower) ∧ bytes2911.length=37 := by core033_kernel_decide
def op2912 : List WordIR.Op := [.bxor 2298 3029]
def bytes2912 : Bytes := ("    let r00000bd6: u32 = r000008fa ^ r00000bd5;\n" : String).toByteArray.data.toList
theorem checked2912 : bytes2912=statementBytes 3030 (op2912.map lower) ∧ bytes2912.length=48 := by core033_kernel_decide
def op2913 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2913 : Bytes := ("    let r00000bd7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2913 : bytes2913=statementBytes 3031 (op2913.map lower) ∧ bytes2913.length=41 := by core033_kernel_decide
def op2914 : List WordIR.Op := [.bnot 3031]
def bytes2914 : Bytes := ("    let r00000bd8: u32 = !r00000bd7;\n" : String).toByteArray.data.toList
theorem checked2914 : bytes2914=statementBytes 3032 (op2914.map lower) ∧ bytes2914.length=37 := by core033_kernel_decide
def op2915 : List WordIR.Op := [.badd 2298 3032]
def bytes2915 : Bytes := ("    let r00000bd9: u32 = r000008fa.wrapping_add(r00000bd8);\n" : String).toByteArray.data.toList
theorem checked2915 : bytes2915=statementBytes 3033 (op2915.map lower) ∧ bytes2915.length=60 := by core033_kernel_decide
def op2916 : List WordIR.Op := [.bnot 3033]
def bytes2916 : Bytes := ("    let r00000bda: u32 = !r00000bd9;\n" : String).toByteArray.data.toList
theorem checked2916 : bytes2916=statementBytes 3034 (op2916.map lower) ∧ bytes2916.length=37 := by core033_kernel_decide
def op2917 : List WordIR.Op := [.band 3030 3034]
def bytes2917 : Bytes := ("    let r00000bdb: u32 = r00000bd6 & r00000bda;\n" : String).toByteArray.data.toList
theorem checked2917 : bytes2917=statementBytes 3035 (op2917.map lower) ∧ bytes2917.length=48 := by core033_kernel_decide
def op2918 : List WordIR.Op := [.bxor 3027 3035]
def bytes2918 : Bytes := ("    let r00000bdc: u32 = r00000bd3 ^ r00000bdb;\n" : String).toByteArray.data.toList
theorem checked2918 : bytes2918=statementBytes 3036 (op2918.map lower) ∧ bytes2918.length=48 := by core033_kernel_decide
def op2919 : List WordIR.Op := [.shr 3036 31]
def bytes2919 : Bytes := ("    let r00000bdd: u32 = r00000bdc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2919 : bytes2919=statementBytes 3037 (op2919.map lower) ∧ bytes2919.length=54 := by core033_kernel_decide
def op2920 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2920 : Bytes := ("    let r00000bde: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2920 : bytes2920=statementBytes 3038 (op2920.map lower) ∧ bytes2920.length=41 := by core033_kernel_decide
def op2921 : List WordIR.Op := [.bxor 3037 3038]
def bytes2921 : Bytes := ("    let r00000bdf: u32 = r00000bdd ^ r00000bde;\n" : String).toByteArray.data.toList
theorem checked2921 : bytes2921=statementBytes 3039 (op2921.map lower) ∧ bytes2921.length=48 := by core033_kernel_decide
def op2922 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2922 : Bytes := ("    let r00000be0: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2922 : bytes2922=statementBytes 3040 (op2922.map lower) ∧ bytes2922.length=41 := by core033_kernel_decide
def op2923 : List WordIR.Op := [.bnot 3040]
def bytes2923 : Bytes := ("    let r00000be1: u32 = !r00000be0;\n" : String).toByteArray.data.toList
theorem checked2923 : bytes2923=statementBytes 3041 (op2923.map lower) ∧ bytes2923.length=37 := by core033_kernel_decide
def op2924 : List WordIR.Op := [.band 2288 3041]
def bytes2924 : Bytes := ("    let r00000be2: u32 = r000008f0 & r00000be1;\n" : String).toByteArray.data.toList
theorem checked2924 : bytes2924=statementBytes 3042 (op2924.map lower) ∧ bytes2924.length=48 := by core033_kernel_decide
def op2925 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2925 : Bytes := ("    let r00000be3: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2925 : bytes2925=statementBytes 3043 (op2925.map lower) ∧ bytes2925.length=41 := by core033_kernel_decide
def op2926 : List WordIR.Op := [.bnot 3043]
def bytes2926 : Bytes := ("    let r00000be4: u32 = !r00000be3;\n" : String).toByteArray.data.toList
theorem checked2926 : bytes2926=statementBytes 3044 (op2926.map lower) ∧ bytes2926.length=37 := by core033_kernel_decide
def op2927 : List WordIR.Op := [.bxor 2288 3044]
def bytes2927 : Bytes := ("    let r00000be5: u32 = r000008f0 ^ r00000be4;\n" : String).toByteArray.data.toList
theorem checked2927 : bytes2927=statementBytes 3045 (op2927.map lower) ∧ bytes2927.length=48 := by core033_kernel_decide
def op2928 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes2928 : Bytes := ("    let r00000be6: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked2928 : bytes2928=statementBytes 3046 (op2928.map lower) ∧ bytes2928.length=41 := by core033_kernel_decide
def op2929 : List WordIR.Op := [.bnot 3046]
def bytes2929 : Bytes := ("    let r00000be7: u32 = !r00000be6;\n" : String).toByteArray.data.toList
theorem checked2929 : bytes2929=statementBytes 3047 (op2929.map lower) ∧ bytes2929.length=37 := by core033_kernel_decide
def op2930 : List WordIR.Op := [.badd 2288 3047]
def bytes2930 : Bytes := ("    let r00000be8: u32 = r000008f0.wrapping_add(r00000be7);\n" : String).toByteArray.data.toList
theorem checked2930 : bytes2930=statementBytes 3048 (op2930.map lower) ∧ bytes2930.length=60 := by core033_kernel_decide
def op2931 : List WordIR.Op := [.bnot 3048]
def bytes2931 : Bytes := ("    let r00000be9: u32 = !r00000be8;\n" : String).toByteArray.data.toList
theorem checked2931 : bytes2931=statementBytes 3049 (op2931.map lower) ∧ bytes2931.length=37 := by core033_kernel_decide
def op2932 : List WordIR.Op := [.band 3045 3049]
def bytes2932 : Bytes := ("    let r00000bea: u32 = r00000be5 & r00000be9;\n" : String).toByteArray.data.toList
theorem checked2932 : bytes2932=statementBytes 3050 (op2932.map lower) ∧ bytes2932.length=48 := by core033_kernel_decide
def op2933 : List WordIR.Op := [.bxor 3042 3050]
def bytes2933 : Bytes := ("    let r00000beb: u32 = r00000be2 ^ r00000bea;\n" : String).toByteArray.data.toList
theorem checked2933 : bytes2933=statementBytes 3051 (op2933.map lower) ∧ bytes2933.length=48 := by core033_kernel_decide
def op2934 : List WordIR.Op := [.shr 3051 31]
def bytes2934 : Bytes := ("    let r00000bec: u32 = r00000beb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2934 : bytes2934=statementBytes 3052 (op2934.map lower) ∧ bytes2934.length=54 := by core033_kernel_decide
def op2935 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2935 : Bytes := ("    let r00000bed: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2935 : bytes2935=statementBytes 3053 (op2935.map lower) ∧ bytes2935.length=41 := by core033_kernel_decide
def op2936 : List WordIR.Op := [.bxor 3052 3053]
def bytes2936 : Bytes := ("    let r00000bee: u32 = r00000bec ^ r00000bed;\n" : String).toByteArray.data.toList
theorem checked2936 : bytes2936=statementBytes 3054 (op2936.map lower) ∧ bytes2936.length=48 := by core033_kernel_decide
def op2937 : List WordIR.Op := [.band 3039 3054]
def bytes2937 : Bytes := ("    let r00000bef: u32 = r00000bdf & r00000bee;\n" : String).toByteArray.data.toList
theorem checked2937 : bytes2937=statementBytes 3055 (op2937.map lower) ∧ bytes2937.length=48 := by core033_kernel_decide
def op2938 : List WordIR.Op := [.band 3024 3055]
def bytes2938 : Bytes := ("    let r00000bf0: u32 = r00000bd0 & r00000bef;\n" : String).toByteArray.data.toList
theorem checked2938 : bytes2938=statementBytes 3056 (op2938.map lower) ∧ bytes2938.length=48 := by core033_kernel_decide
def op2939 : List WordIR.Op := [.badd 2178 2298]
def bytes2939 : Bytes := ("    let r00000bf1: u32 = r00000882.wrapping_add(r000008fa);\n" : String).toByteArray.data.toList
theorem checked2939 : bytes2939=statementBytes 3057 (op2939.map lower) ∧ bytes2939.length=60 := by core033_kernel_decide
def op2940 : List WordIR.Op := [.band 2168 2288]
def bytes2940 : Bytes := ("    let r00000bf2: u32 = r00000878 & r000008f0;\n" : String).toByteArray.data.toList
theorem checked2940 : bytes2940=statementBytes 3058 (op2940.map lower) ∧ bytes2940.length=48 := by core033_kernel_decide
def op2941 : List WordIR.Op := [.bxor 2168 2288]
def bytes2941 : Bytes := ("    let r00000bf3: u32 = r00000878 ^ r000008f0;\n" : String).toByteArray.data.toList
theorem checked2941 : bytes2941=statementBytes 3059 (op2941.map lower) ∧ bytes2941.length=48 := by core033_kernel_decide
def op2942 : List WordIR.Op := [.badd 2168 2288]
def bytes2942 : Bytes := ("    let r00000bf4: u32 = r00000878.wrapping_add(r000008f0);\n" : String).toByteArray.data.toList
theorem checked2942 : bytes2942=statementBytes 3060 (op2942.map lower) ∧ bytes2942.length=60 := by core033_kernel_decide
def op2943 : List WordIR.Op := [.bnot 3060]
def bytes2943 : Bytes := ("    let r00000bf5: u32 = !r00000bf4;\n" : String).toByteArray.data.toList
theorem checked2943 : bytes2943=statementBytes 3061 (op2943.map lower) ∧ bytes2943.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2880,op2881,op2882,op2883,op2884,op2885,op2886,op2887,op2888,op2889,op2890,op2891,op2892,op2893,op2894,op2895,op2896,op2897,op2898,op2899,op2900,op2901,op2902,op2903,op2904,op2905,op2906,op2907,op2908,op2909,op2910,op2911,op2912,op2913,op2914,op2915,op2916,op2917,op2918,op2919,op2920,op2921,op2922,op2923,op2924,op2925,op2926,op2927,op2928,op2929,op2930,op2931,op2932,op2933,op2934,op2935,op2936,op2937,op2938,op2939,op2940,op2941,op2942,op2943]
def chunks : List Bytes := [bytes2880,bytes2881,bytes2882,bytes2883,bytes2884,bytes2885,bytes2886,bytes2887,bytes2888,bytes2889,bytes2890,bytes2891,bytes2892,bytes2893,bytes2894,bytes2895,bytes2896,bytes2897,bytes2898,bytes2899,bytes2900,bytes2901,bytes2902,bytes2903,bytes2904,bytes2905,bytes2906,bytes2907,bytes2908,bytes2909,bytes2910,bytes2911,bytes2912,bytes2913,bytes2914,bytes2915,bytes2916,bytes2917,bytes2918,bytes2919,bytes2920,bytes2921,bytes2922,bytes2923,bytes2924,bytes2925,bytes2926,bytes2927,bytes2928,bytes2929,bytes2930,bytes2931,bytes2932,bytes2933,bytes2934,bytes2935,bytes2936,bytes2937,bytes2938,bytes2939,bytes2940,bytes2941,bytes2942,bytes2943]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2998 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2880.1 (.cons _ _ _ _ _ checked2881.1 (.cons _ _ _ _ _ checked2882.1 (.cons _ _ _ _ _ checked2883.1 (.cons _ _ _ _ _ checked2884.1 (.cons _ _ _ _ _ checked2885.1 (.cons _ _ _ _ _ checked2886.1 (.cons _ _ _ _ _ checked2887.1 (.cons _ _ _ _ _ checked2888.1 (.cons _ _ _ _ _ checked2889.1 (.cons _ _ _ _ _ checked2890.1 (.cons _ _ _ _ _ checked2891.1 (.cons _ _ _ _ _ checked2892.1 (.cons _ _ _ _ _ checked2893.1 (.cons _ _ _ _ _ checked2894.1 (.cons _ _ _ _ _ checked2895.1 (.cons _ _ _ _ _ checked2896.1 (.cons _ _ _ _ _ checked2897.1 (.cons _ _ _ _ _ checked2898.1 (.cons _ _ _ _ _ checked2899.1 (.cons _ _ _ _ _ checked2900.1 (.cons _ _ _ _ _ checked2901.1 (.cons _ _ _ _ _ checked2902.1 (.cons _ _ _ _ _ checked2903.1 (.cons _ _ _ _ _ checked2904.1 (.cons _ _ _ _ _ checked2905.1 (.cons _ _ _ _ _ checked2906.1 (.cons _ _ _ _ _ checked2907.1 (.cons _ _ _ _ _ checked2908.1 (.cons _ _ _ _ _ checked2909.1 (.cons _ _ _ _ _ checked2910.1 (.cons _ _ _ _ _ checked2911.1 (.cons _ _ _ _ _ checked2912.1 (.cons _ _ _ _ _ checked2913.1 (.cons _ _ _ _ _ checked2914.1 (.cons _ _ _ _ _ checked2915.1 (.cons _ _ _ _ _ checked2916.1 (.cons _ _ _ _ _ checked2917.1 (.cons _ _ _ _ _ checked2918.1 (.cons _ _ _ _ _ checked2919.1 (.cons _ _ _ _ _ checked2920.1 (.cons _ _ _ _ _ checked2921.1 (.cons _ _ _ _ _ checked2922.1 (.cons _ _ _ _ _ checked2923.1 (.cons _ _ _ _ _ checked2924.1 (.cons _ _ _ _ _ checked2925.1 (.cons _ _ _ _ _ checked2926.1 (.cons _ _ _ _ _ checked2927.1 (.cons _ _ _ _ _ checked2928.1 (.cons _ _ _ _ _ checked2929.1 (.cons _ _ _ _ _ checked2930.1 (.cons _ _ _ _ _ checked2931.1 (.cons _ _ _ _ _ checked2932.1 (.cons _ _ _ _ _ checked2933.1 (.cons _ _ _ _ _ checked2934.1 (.cons _ _ _ _ _ checked2935.1 (.cons _ _ _ _ _ checked2936.1 (.cons _ _ _ _ _ checked2937.1 (.cons _ _ _ _ _ checked2938.1 (.cons _ _ _ _ _ checked2939.1 (.cons _ _ _ _ _ checked2940.1 (.cons _ _ _ _ _ checked2941.1 (.cons _ _ _ _ _ checked2942.1 (.cons _ _ _ _ _ checked2943.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2998 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2894 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2880.2,checked2881.2,checked2882.2,checked2883.2,checked2884.2,checked2885.2,checked2886.2,checked2887.2,checked2888.2,checked2889.2,checked2890.2,checked2891.2,checked2892.2,checked2893.2,checked2894.2,checked2895.2,checked2896.2,checked2897.2,checked2898.2,checked2899.2,checked2900.2,checked2901.2,checked2902.2,checked2903.2,checked2904.2,checked2905.2,checked2906.2,checked2907.2,checked2908.2,checked2909.2,checked2910.2,checked2911.2,checked2912.2,checked2913.2,checked2914.2,checked2915.2,checked2916.2,checked2917.2,checked2918.2,checked2919.2,checked2920.2,checked2921.2,checked2922.2,checked2923.2,checked2924.2,checked2925.2,checked2926.2,checked2927.2,checked2928.2,checked2929.2,checked2930.2,checked2931.2,checked2932.2,checked2933.2,checked2934.2,checked2935.2,checked2936.2,checked2937.2,checked2938.2,checked2939.2,checked2940.2,checked2941.2,checked2942.2,checked2943.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup45
