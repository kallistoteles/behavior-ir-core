import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup45
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2880 : List WordIR.Op := [.bxor 96 2922]
def bytes2880 : Bytes := ("    let r00000b6b: u32 = r00000060 ^ r00000b6a;\n" : String).toByteArray.data.toList
theorem checked2880 : bytes2880=statementBytes 2923 (op2880.map lower) ∧ bytes2880.length=48 := by core033_kernel_decide
def op2881 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2881 : Bytes := ("    let r00000b6c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2881 : bytes2881=statementBytes 2924 (op2881.map lower) ∧ bytes2881.length=41 := by core033_kernel_decide
def op2882 : List WordIR.Op := [.bnot 2924]
def bytes2882 : Bytes := ("    let r00000b6d: u32 = !r00000b6c;\n" : String).toByteArray.data.toList
theorem checked2882 : bytes2882=statementBytes 2925 (op2882.map lower) ∧ bytes2882.length=37 := by core033_kernel_decide
def op2883 : List WordIR.Op := [.badd 2923 2925]
def bytes2883 : Bytes := ("    let r00000b6e: u32 = r00000b6b.wrapping_add(r00000b6d);\n" : String).toByteArray.data.toList
theorem checked2883 : bytes2883=statementBytes 2926 (op2883.map lower) ∧ bytes2883.length=60 := by core033_kernel_decide
def op2884 : List WordIR.Op := [.bnot 2926]
def bytes2884 : Bytes := ("    let r00000b6f: u32 = !r00000b6e;\n" : String).toByteArray.data.toList
theorem checked2884 : bytes2884=statementBytes 2927 (op2884.map lower) ∧ bytes2884.length=37 := by core033_kernel_decide
def op2885 : List WordIR.Op := [.band 2921 2927]
def bytes2885 : Bytes := ("    let r00000b70: u32 = r00000b69 & r00000b6f;\n" : String).toByteArray.data.toList
theorem checked2885 : bytes2885=statementBytes 2928 (op2885.map lower) ∧ bytes2885.length=48 := by core033_kernel_decide
def op2886 : List WordIR.Op := [.bxor 2916 2928]
def bytes2886 : Bytes := ("    let r00000b71: u32 = r00000b64 ^ r00000b70;\n" : String).toByteArray.data.toList
theorem checked2886 : bytes2886=statementBytes 2929 (op2886.map lower) ∧ bytes2886.length=48 := by core033_kernel_decide
def op2887 : List WordIR.Op := [.shr 2929 31]
def bytes2887 : Bytes := ("    let r00000b72: u32 = r00000b71 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2887 : bytes2887=statementBytes 2930 (op2887.map lower) ∧ bytes2887.length=54 := by core033_kernel_decide
def op2888 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2888 : Bytes := ("    let r00000b73: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2888 : bytes2888=statementBytes 2931 (op2888.map lower) ∧ bytes2888.length=41 := by core033_kernel_decide
def op2889 : List WordIR.Op := [.bxor 2930 2931]
def bytes2889 : Bytes := ("    let r00000b74: u32 = r00000b72 ^ r00000b73;\n" : String).toByteArray.data.toList
theorem checked2889 : bytes2889=statementBytes 2932 (op2889.map lower) ∧ bytes2889.length=48 := by core033_kernel_decide
def op2890 : List WordIR.Op := [.bnot 2932]
def bytes2890 : Bytes := ("    let r00000b75: u32 = !r00000b74;\n" : String).toByteArray.data.toList
theorem checked2890 : bytes2890=statementBytes 2933 (op2890.map lower) ∧ bytes2890.length=37 := by core033_kernel_decide
def op2891 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2891 : Bytes := ("    let r00000b76: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2891 : bytes2891=statementBytes 2934 (op2891.map lower) ∧ bytes2891.length=41 := by core033_kernel_decide
def op2892 : List WordIR.Op := [.badd 2933 2934]
def bytes2892 : Bytes := ("    let r00000b77: u32 = r00000b75.wrapping_add(r00000b76);\n" : String).toByteArray.data.toList
theorem checked2892 : bytes2892=statementBytes 2935 (op2892.map lower) ∧ bytes2892.length=60 := by core033_kernel_decide
def op2893 : List WordIR.Op := [.band 2935 1526]
def bytes2893 : Bytes := ("    let r00000b78: u32 = r00000b77 & r000005f6;\n" : String).toByteArray.data.toList
theorem checked2893 : bytes2893=statementBytes 2936 (op2893.map lower) ∧ bytes2893.length=48 := by core033_kernel_decide
def op2894 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2894 : Bytes := ("    let r00000b79: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2894 : bytes2894=statementBytes 2937 (op2894.map lower) ∧ bytes2894.length=41 := by core033_kernel_decide
def op2895 : List WordIR.Op := [.bxor 96 2937]
def bytes2895 : Bytes := ("    let r00000b7a: u32 = r00000060 ^ r00000b79;\n" : String).toByteArray.data.toList
theorem checked2895 : bytes2895=statementBytes 2938 (op2895.map lower) ∧ bytes2895.length=48 := by core033_kernel_decide
def op2896 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2896 : Bytes := ("    let r00000b7b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2896 : bytes2896=statementBytes 2939 (op2896.map lower) ∧ bytes2896.length=41 := by core033_kernel_decide
def op2897 : List WordIR.Op := [.bnot 2939]
def bytes2897 : Bytes := ("    let r00000b7c: u32 = !r00000b7b;\n" : String).toByteArray.data.toList
theorem checked2897 : bytes2897=statementBytes 2940 (op2897.map lower) ∧ bytes2897.length=37 := by core033_kernel_decide
def op2898 : List WordIR.Op := [.band 2938 2940]
def bytes2898 : Bytes := ("    let r00000b7d: u32 = r00000b7a & r00000b7c;\n" : String).toByteArray.data.toList
theorem checked2898 : bytes2898=statementBytes 2941 (op2898.map lower) ∧ bytes2898.length=48 := by core033_kernel_decide
def op2899 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2899 : Bytes := ("    let r00000b7e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2899 : bytes2899=statementBytes 2942 (op2899.map lower) ∧ bytes2899.length=41 := by core033_kernel_decide
def op2900 : List WordIR.Op := [.bxor 96 2942]
def bytes2900 : Bytes := ("    let r00000b7f: u32 = r00000060 ^ r00000b7e;\n" : String).toByteArray.data.toList
theorem checked2900 : bytes2900=statementBytes 2943 (op2900.map lower) ∧ bytes2900.length=48 := by core033_kernel_decide
def op2901 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2901 : Bytes := ("    let r00000b80: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2901 : bytes2901=statementBytes 2944 (op2901.map lower) ∧ bytes2901.length=41 := by core033_kernel_decide
def op2902 : List WordIR.Op := [.bnot 2944]
def bytes2902 : Bytes := ("    let r00000b81: u32 = !r00000b80;\n" : String).toByteArray.data.toList
theorem checked2902 : bytes2902=statementBytes 2945 (op2902.map lower) ∧ bytes2902.length=37 := by core033_kernel_decide
def op2903 : List WordIR.Op := [.bxor 2943 2945]
def bytes2903 : Bytes := ("    let r00000b82: u32 = r00000b7f ^ r00000b81;\n" : String).toByteArray.data.toList
theorem checked2903 : bytes2903=statementBytes 2946 (op2903.map lower) ∧ bytes2903.length=48 := by core033_kernel_decide
def op2904 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2904 : Bytes := ("    let r00000b83: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2904 : bytes2904=statementBytes 2947 (op2904.map lower) ∧ bytes2904.length=41 := by core033_kernel_decide
def op2905 : List WordIR.Op := [.bxor 96 2947]
def bytes2905 : Bytes := ("    let r00000b84: u32 = r00000060 ^ r00000b83;\n" : String).toByteArray.data.toList
theorem checked2905 : bytes2905=statementBytes 2948 (op2905.map lower) ∧ bytes2905.length=48 := by core033_kernel_decide
def op2906 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2906 : Bytes := ("    let r00000b85: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2906 : bytes2906=statementBytes 2949 (op2906.map lower) ∧ bytes2906.length=41 := by core033_kernel_decide
def op2907 : List WordIR.Op := [.bnot 2949]
def bytes2907 : Bytes := ("    let r00000b86: u32 = !r00000b85;\n" : String).toByteArray.data.toList
theorem checked2907 : bytes2907=statementBytes 2950 (op2907.map lower) ∧ bytes2907.length=37 := by core033_kernel_decide
def op2908 : List WordIR.Op := [.badd 2948 2950]
def bytes2908 : Bytes := ("    let r00000b87: u32 = r00000b84.wrapping_add(r00000b86);\n" : String).toByteArray.data.toList
theorem checked2908 : bytes2908=statementBytes 2951 (op2908.map lower) ∧ bytes2908.length=60 := by core033_kernel_decide
def op2909 : List WordIR.Op := [.bnot 2951]
def bytes2909 : Bytes := ("    let r00000b88: u32 = !r00000b87;\n" : String).toByteArray.data.toList
theorem checked2909 : bytes2909=statementBytes 2952 (op2909.map lower) ∧ bytes2909.length=37 := by core033_kernel_decide
def op2910 : List WordIR.Op := [.band 2946 2952]
def bytes2910 : Bytes := ("    let r00000b89: u32 = r00000b82 & r00000b88;\n" : String).toByteArray.data.toList
theorem checked2910 : bytes2910=statementBytes 2953 (op2910.map lower) ∧ bytes2910.length=48 := by core033_kernel_decide
def op2911 : List WordIR.Op := [.bxor 2941 2953]
def bytes2911 : Bytes := ("    let r00000b8a: u32 = r00000b7d ^ r00000b89;\n" : String).toByteArray.data.toList
theorem checked2911 : bytes2911=statementBytes 2954 (op2911.map lower) ∧ bytes2911.length=48 := by core033_kernel_decide
def op2912 : List WordIR.Op := [.shr 2954 31]
def bytes2912 : Bytes := ("    let r00000b8b: u32 = r00000b8a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2912 : bytes2912=statementBytes 2955 (op2912.map lower) ∧ bytes2912.length=54 := by core033_kernel_decide
def op2913 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2913 : Bytes := ("    let r00000b8c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2913 : bytes2913=statementBytes 2956 (op2913.map lower) ∧ bytes2913.length=41 := by core033_kernel_decide
def op2914 : List WordIR.Op := [.bxor 2955 2956]
def bytes2914 : Bytes := ("    let r00000b8d: u32 = r00000b8b ^ r00000b8c;\n" : String).toByteArray.data.toList
theorem checked2914 : bytes2914=statementBytes 2957 (op2914.map lower) ∧ bytes2914.length=48 := by core033_kernel_decide
def op2915 : List WordIR.Op := [.bnot 2957]
def bytes2915 : Bytes := ("    let r00000b8e: u32 = !r00000b8d;\n" : String).toByteArray.data.toList
theorem checked2915 : bytes2915=statementBytes 2958 (op2915.map lower) ∧ bytes2915.length=37 := by core033_kernel_decide
def op2916 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2916 : Bytes := ("    let r00000b8f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2916 : bytes2916=statementBytes 2959 (op2916.map lower) ∧ bytes2916.length=41 := by core033_kernel_decide
def op2917 : List WordIR.Op := [.badd 2958 2959]
def bytes2917 : Bytes := ("    let r00000b90: u32 = r00000b8e.wrapping_add(r00000b8f);\n" : String).toByteArray.data.toList
theorem checked2917 : bytes2917=statementBytes 2960 (op2917.map lower) ∧ bytes2917.length=60 := by core033_kernel_decide
def op2918 : List WordIR.Op := [.bnot 2960]
def bytes2918 : Bytes := ("    let r00000b91: u32 = !r00000b90;\n" : String).toByteArray.data.toList
theorem checked2918 : bytes2918=statementBytes 2961 (op2918.map lower) ∧ bytes2918.length=37 := by core033_kernel_decide
def op2919 : List WordIR.Op := [.band 2961 1354]
def bytes2919 : Bytes := ("    let r00000b92: u32 = r00000b91 & r0000054a;\n" : String).toByteArray.data.toList
theorem checked2919 : bytes2919=statementBytes 2962 (op2919.map lower) ∧ bytes2919.length=48 := by core033_kernel_decide
def op2920 : List WordIR.Op := [.bxor 2936 2962]
def bytes2920 : Bytes := ("    let r00000b93: u32 = r00000b78 ^ r00000b92;\n" : String).toByteArray.data.toList
theorem checked2920 : bytes2920=statementBytes 2963 (op2920.map lower) ∧ bytes2920.length=48 := by core033_kernel_decide
def op2921 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2921 : Bytes := ("    let r00000b94: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2921 : bytes2921=statementBytes 2964 (op2921.map lower) ∧ bytes2921.length=41 := by core033_kernel_decide
def op2922 : List WordIR.Op := [.bxor 96 2964]
def bytes2922 : Bytes := ("    let r00000b95: u32 = r00000060 ^ r00000b94;\n" : String).toByteArray.data.toList
theorem checked2922 : bytes2922=statementBytes 2965 (op2922.map lower) ∧ bytes2922.length=48 := by core033_kernel_decide
def op2923 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2923 : Bytes := ("    let r00000b96: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2923 : bytes2923=statementBytes 2966 (op2923.map lower) ∧ bytes2923.length=41 := by core033_kernel_decide
def op2924 : List WordIR.Op := [.bnot 2966]
def bytes2924 : Bytes := ("    let r00000b97: u32 = !r00000b96;\n" : String).toByteArray.data.toList
theorem checked2924 : bytes2924=statementBytes 2967 (op2924.map lower) ∧ bytes2924.length=37 := by core033_kernel_decide
def op2925 : List WordIR.Op := [.band 2965 2967]
def bytes2925 : Bytes := ("    let r00000b98: u32 = r00000b95 & r00000b97;\n" : String).toByteArray.data.toList
theorem checked2925 : bytes2925=statementBytes 2968 (op2925.map lower) ∧ bytes2925.length=48 := by core033_kernel_decide
def op2926 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2926 : Bytes := ("    let r00000b99: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2926 : bytes2926=statementBytes 2969 (op2926.map lower) ∧ bytes2926.length=41 := by core033_kernel_decide
def op2927 : List WordIR.Op := [.bxor 96 2969]
def bytes2927 : Bytes := ("    let r00000b9a: u32 = r00000060 ^ r00000b99;\n" : String).toByteArray.data.toList
theorem checked2927 : bytes2927=statementBytes 2970 (op2927.map lower) ∧ bytes2927.length=48 := by core033_kernel_decide
def op2928 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2928 : Bytes := ("    let r00000b9b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2928 : bytes2928=statementBytes 2971 (op2928.map lower) ∧ bytes2928.length=41 := by core033_kernel_decide
def op2929 : List WordIR.Op := [.bnot 2971]
def bytes2929 : Bytes := ("    let r00000b9c: u32 = !r00000b9b;\n" : String).toByteArray.data.toList
theorem checked2929 : bytes2929=statementBytes 2972 (op2929.map lower) ∧ bytes2929.length=37 := by core033_kernel_decide
def op2930 : List WordIR.Op := [.bxor 2970 2972]
def bytes2930 : Bytes := ("    let r00000b9d: u32 = r00000b9a ^ r00000b9c;\n" : String).toByteArray.data.toList
theorem checked2930 : bytes2930=statementBytes 2973 (op2930.map lower) ∧ bytes2930.length=48 := by core033_kernel_decide
def op2931 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2931 : Bytes := ("    let r00000b9e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2931 : bytes2931=statementBytes 2974 (op2931.map lower) ∧ bytes2931.length=41 := by core033_kernel_decide
def op2932 : List WordIR.Op := [.bxor 96 2974]
def bytes2932 : Bytes := ("    let r00000b9f: u32 = r00000060 ^ r00000b9e;\n" : String).toByteArray.data.toList
theorem checked2932 : bytes2932=statementBytes 2975 (op2932.map lower) ∧ bytes2932.length=48 := by core033_kernel_decide
def op2933 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2933 : Bytes := ("    let r00000ba0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2933 : bytes2933=statementBytes 2976 (op2933.map lower) ∧ bytes2933.length=41 := by core033_kernel_decide
def op2934 : List WordIR.Op := [.bnot 2976]
def bytes2934 : Bytes := ("    let r00000ba1: u32 = !r00000ba0;\n" : String).toByteArray.data.toList
theorem checked2934 : bytes2934=statementBytes 2977 (op2934.map lower) ∧ bytes2934.length=37 := by core033_kernel_decide
def op2935 : List WordIR.Op := [.badd 2975 2977]
def bytes2935 : Bytes := ("    let r00000ba2: u32 = r00000b9f.wrapping_add(r00000ba1);\n" : String).toByteArray.data.toList
theorem checked2935 : bytes2935=statementBytes 2978 (op2935.map lower) ∧ bytes2935.length=60 := by core033_kernel_decide
def op2936 : List WordIR.Op := [.bnot 2978]
def bytes2936 : Bytes := ("    let r00000ba3: u32 = !r00000ba2;\n" : String).toByteArray.data.toList
theorem checked2936 : bytes2936=statementBytes 2979 (op2936.map lower) ∧ bytes2936.length=37 := by core033_kernel_decide
def op2937 : List WordIR.Op := [.band 2973 2979]
def bytes2937 : Bytes := ("    let r00000ba4: u32 = r00000b9d & r00000ba3;\n" : String).toByteArray.data.toList
theorem checked2937 : bytes2937=statementBytes 2980 (op2937.map lower) ∧ bytes2937.length=48 := by core033_kernel_decide
def op2938 : List WordIR.Op := [.bxor 2968 2980]
def bytes2938 : Bytes := ("    let r00000ba5: u32 = r00000b98 ^ r00000ba4;\n" : String).toByteArray.data.toList
theorem checked2938 : bytes2938=statementBytes 2981 (op2938.map lower) ∧ bytes2938.length=48 := by core033_kernel_decide
def op2939 : List WordIR.Op := [.shr 2981 31]
def bytes2939 : Bytes := ("    let r00000ba6: u32 = r00000ba5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2939 : bytes2939=statementBytes 2982 (op2939.map lower) ∧ bytes2939.length=54 := by core033_kernel_decide
def op2940 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2940 : Bytes := ("    let r00000ba7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2940 : bytes2940=statementBytes 2983 (op2940.map lower) ∧ bytes2940.length=41 := by core033_kernel_decide
def op2941 : List WordIR.Op := [.bxor 2982 2983]
def bytes2941 : Bytes := ("    let r00000ba8: u32 = r00000ba6 ^ r00000ba7;\n" : String).toByteArray.data.toList
theorem checked2941 : bytes2941=statementBytes 2984 (op2941.map lower) ∧ bytes2941.length=48 := by core033_kernel_decide
def op2942 : List WordIR.Op := [.bnot 2984]
def bytes2942 : Bytes := ("    let r00000ba9: u32 = !r00000ba8;\n" : String).toByteArray.data.toList
theorem checked2942 : bytes2942=statementBytes 2985 (op2942.map lower) ∧ bytes2942.length=37 := by core033_kernel_decide
def op2943 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2943 : Bytes := ("    let r00000baa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2943 : bytes2943=statementBytes 2986 (op2943.map lower) ∧ bytes2943.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2880,op2881,op2882,op2883,op2884,op2885,op2886,op2887,op2888,op2889,op2890,op2891,op2892,op2893,op2894,op2895,op2896,op2897,op2898,op2899,op2900,op2901,op2902,op2903,op2904,op2905,op2906,op2907,op2908,op2909,op2910,op2911,op2912,op2913,op2914,op2915,op2916,op2917,op2918,op2919,op2920,op2921,op2922,op2923,op2924,op2925,op2926,op2927,op2928,op2929,op2930,op2931,op2932,op2933,op2934,op2935,op2936,op2937,op2938,op2939,op2940,op2941,op2942,op2943]
def chunks : List Bytes := [bytes2880,bytes2881,bytes2882,bytes2883,bytes2884,bytes2885,bytes2886,bytes2887,bytes2888,bytes2889,bytes2890,bytes2891,bytes2892,bytes2893,bytes2894,bytes2895,bytes2896,bytes2897,bytes2898,bytes2899,bytes2900,bytes2901,bytes2902,bytes2903,bytes2904,bytes2905,bytes2906,bytes2907,bytes2908,bytes2909,bytes2910,bytes2911,bytes2912,bytes2913,bytes2914,bytes2915,bytes2916,bytes2917,bytes2918,bytes2919,bytes2920,bytes2921,bytes2922,bytes2923,bytes2924,bytes2925,bytes2926,bytes2927,bytes2928,bytes2929,bytes2930,bytes2931,bytes2932,bytes2933,bytes2934,bytes2935,bytes2936,bytes2937,bytes2938,bytes2939,bytes2940,bytes2941,bytes2942,bytes2943]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2923 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2880.1 (.cons _ _ _ _ _ checked2881.1 (.cons _ _ _ _ _ checked2882.1 (.cons _ _ _ _ _ checked2883.1 (.cons _ _ _ _ _ checked2884.1 (.cons _ _ _ _ _ checked2885.1 (.cons _ _ _ _ _ checked2886.1 (.cons _ _ _ _ _ checked2887.1 (.cons _ _ _ _ _ checked2888.1 (.cons _ _ _ _ _ checked2889.1 (.cons _ _ _ _ _ checked2890.1 (.cons _ _ _ _ _ checked2891.1 (.cons _ _ _ _ _ checked2892.1 (.cons _ _ _ _ _ checked2893.1 (.cons _ _ _ _ _ checked2894.1 (.cons _ _ _ _ _ checked2895.1 (.cons _ _ _ _ _ checked2896.1 (.cons _ _ _ _ _ checked2897.1 (.cons _ _ _ _ _ checked2898.1 (.cons _ _ _ _ _ checked2899.1 (.cons _ _ _ _ _ checked2900.1 (.cons _ _ _ _ _ checked2901.1 (.cons _ _ _ _ _ checked2902.1 (.cons _ _ _ _ _ checked2903.1 (.cons _ _ _ _ _ checked2904.1 (.cons _ _ _ _ _ checked2905.1 (.cons _ _ _ _ _ checked2906.1 (.cons _ _ _ _ _ checked2907.1 (.cons _ _ _ _ _ checked2908.1 (.cons _ _ _ _ _ checked2909.1 (.cons _ _ _ _ _ checked2910.1 (.cons _ _ _ _ _ checked2911.1 (.cons _ _ _ _ _ checked2912.1 (.cons _ _ _ _ _ checked2913.1 (.cons _ _ _ _ _ checked2914.1 (.cons _ _ _ _ _ checked2915.1 (.cons _ _ _ _ _ checked2916.1 (.cons _ _ _ _ _ checked2917.1 (.cons _ _ _ _ _ checked2918.1 (.cons _ _ _ _ _ checked2919.1 (.cons _ _ _ _ _ checked2920.1 (.cons _ _ _ _ _ checked2921.1 (.cons _ _ _ _ _ checked2922.1 (.cons _ _ _ _ _ checked2923.1 (.cons _ _ _ _ _ checked2924.1 (.cons _ _ _ _ _ checked2925.1 (.cons _ _ _ _ _ checked2926.1 (.cons _ _ _ _ _ checked2927.1 (.cons _ _ _ _ _ checked2928.1 (.cons _ _ _ _ _ checked2929.1 (.cons _ _ _ _ _ checked2930.1 (.cons _ _ _ _ _ checked2931.1 (.cons _ _ _ _ _ checked2932.1 (.cons _ _ _ _ _ checked2933.1 (.cons _ _ _ _ _ checked2934.1 (.cons _ _ _ _ _ checked2935.1 (.cons _ _ _ _ _ checked2936.1 (.cons _ _ _ _ _ checked2937.1 (.cons _ _ _ _ _ checked2938.1 (.cons _ _ _ _ _ checked2939.1 (.cons _ _ _ _ _ checked2940.1 (.cons _ _ _ _ _ checked2941.1 (.cons _ _ _ _ _ checked2942.1 (.cons _ _ _ _ _ checked2943.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2923 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2880.2,checked2881.2,checked2882.2,checked2883.2,checked2884.2,checked2885.2,checked2886.2,checked2887.2,checked2888.2,checked2889.2,checked2890.2,checked2891.2,checked2892.2,checked2893.2,checked2894.2,checked2895.2,checked2896.2,checked2897.2,checked2898.2,checked2899.2,checked2900.2,checked2901.2,checked2902.2,checked2903.2,checked2904.2,checked2905.2,checked2906.2,checked2907.2,checked2908.2,checked2909.2,checked2910.2,checked2911.2,checked2912.2,checked2913.2,checked2914.2,checked2915.2,checked2916.2,checked2917.2,checked2918.2,checked2919.2,checked2920.2,checked2921.2,checked2922.2,checked2923.2,checked2924.2,checked2925.2,checked2926.2,checked2927.2,checked2928.2,checked2929.2,checked2930.2,checked2931.2,checked2932.2,checked2933.2,checked2934.2,checked2935.2,checked2936.2,checked2937.2,checked2938.2,checked2939.2,checked2940.2,checked2941.2,checked2942.2,checked2943.2]
  decide
end ArtifactPathRoundDispatchGroup45
