import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup46
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2944 : List WordIR.Op := [.band 3039 2022]
def bytes2944 : Bytes := ("    let r00000be0: u32 = r00000bdf & r000007e6;\n" : String).toByteArray.data.toList
theorem checked2944 : bytes2944=statementBytes 3040 (op2944.map lower) ∧ bytes2944.length=48 := by core033_kernel_decide
def op2945 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2945 : Bytes := ("    let r00000be1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2945 : bytes2945=statementBytes 3041 (op2945.map lower) ∧ bytes2945.length=41 := by core033_kernel_decide
def op2946 : List WordIR.Op := [.bxor 616 3041]
def bytes2946 : Bytes := ("    let r00000be2: u32 = r00000268 ^ r00000be1;\n" : String).toByteArray.data.toList
theorem checked2946 : bytes2946=statementBytes 3042 (op2946.map lower) ∧ bytes2946.length=48 := by core033_kernel_decide
def op2947 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2947 : Bytes := ("    let r00000be3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2947 : bytes2947=statementBytes 3043 (op2947.map lower) ∧ bytes2947.length=41 := by core033_kernel_decide
def op2948 : List WordIR.Op := [.bnot 3043]
def bytes2948 : Bytes := ("    let r00000be4: u32 = !r00000be3;\n" : String).toByteArray.data.toList
theorem checked2948 : bytes2948=statementBytes 3044 (op2948.map lower) ∧ bytes2948.length=37 := by core033_kernel_decide
def op2949 : List WordIR.Op := [.band 3042 3044]
def bytes2949 : Bytes := ("    let r00000be5: u32 = r00000be2 & r00000be4;\n" : String).toByteArray.data.toList
theorem checked2949 : bytes2949=statementBytes 3045 (op2949.map lower) ∧ bytes2949.length=48 := by core033_kernel_decide
def op2950 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2950 : Bytes := ("    let r00000be6: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2950 : bytes2950=statementBytes 3046 (op2950.map lower) ∧ bytes2950.length=41 := by core033_kernel_decide
def op2951 : List WordIR.Op := [.bxor 616 3046]
def bytes2951 : Bytes := ("    let r00000be7: u32 = r00000268 ^ r00000be6;\n" : String).toByteArray.data.toList
theorem checked2951 : bytes2951=statementBytes 3047 (op2951.map lower) ∧ bytes2951.length=48 := by core033_kernel_decide
def op2952 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2952 : Bytes := ("    let r00000be8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2952 : bytes2952=statementBytes 3048 (op2952.map lower) ∧ bytes2952.length=41 := by core033_kernel_decide
def op2953 : List WordIR.Op := [.bnot 3048]
def bytes2953 : Bytes := ("    let r00000be9: u32 = !r00000be8;\n" : String).toByteArray.data.toList
theorem checked2953 : bytes2953=statementBytes 3049 (op2953.map lower) ∧ bytes2953.length=37 := by core033_kernel_decide
def op2954 : List WordIR.Op := [.bxor 3047 3049]
def bytes2954 : Bytes := ("    let r00000bea: u32 = r00000be7 ^ r00000be9;\n" : String).toByteArray.data.toList
theorem checked2954 : bytes2954=statementBytes 3050 (op2954.map lower) ∧ bytes2954.length=48 := by core033_kernel_decide
def op2955 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2955 : Bytes := ("    let r00000beb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2955 : bytes2955=statementBytes 3051 (op2955.map lower) ∧ bytes2955.length=41 := by core033_kernel_decide
def op2956 : List WordIR.Op := [.bxor 616 3051]
def bytes2956 : Bytes := ("    let r00000bec: u32 = r00000268 ^ r00000beb;\n" : String).toByteArray.data.toList
theorem checked2956 : bytes2956=statementBytes 3052 (op2956.map lower) ∧ bytes2956.length=48 := by core033_kernel_decide
def op2957 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2957 : Bytes := ("    let r00000bed: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2957 : bytes2957=statementBytes 3053 (op2957.map lower) ∧ bytes2957.length=41 := by core033_kernel_decide
def op2958 : List WordIR.Op := [.bnot 3053]
def bytes2958 : Bytes := ("    let r00000bee: u32 = !r00000bed;\n" : String).toByteArray.data.toList
theorem checked2958 : bytes2958=statementBytes 3054 (op2958.map lower) ∧ bytes2958.length=37 := by core033_kernel_decide
def op2959 : List WordIR.Op := [.badd 3052 3054]
def bytes2959 : Bytes := ("    let r00000bef: u32 = r00000bec.wrapping_add(r00000bee);\n" : String).toByteArray.data.toList
theorem checked2959 : bytes2959=statementBytes 3055 (op2959.map lower) ∧ bytes2959.length=60 := by core033_kernel_decide
def op2960 : List WordIR.Op := [.bnot 3055]
def bytes2960 : Bytes := ("    let r00000bf0: u32 = !r00000bef;\n" : String).toByteArray.data.toList
theorem checked2960 : bytes2960=statementBytes 3056 (op2960.map lower) ∧ bytes2960.length=37 := by core033_kernel_decide
def op2961 : List WordIR.Op := [.band 3050 3056]
def bytes2961 : Bytes := ("    let r00000bf1: u32 = r00000bea & r00000bf0;\n" : String).toByteArray.data.toList
theorem checked2961 : bytes2961=statementBytes 3057 (op2961.map lower) ∧ bytes2961.length=48 := by core033_kernel_decide
def op2962 : List WordIR.Op := [.bxor 3045 3057]
def bytes2962 : Bytes := ("    let r00000bf2: u32 = r00000be5 ^ r00000bf1;\n" : String).toByteArray.data.toList
theorem checked2962 : bytes2962=statementBytes 3058 (op2962.map lower) ∧ bytes2962.length=48 := by core033_kernel_decide
def op2963 : List WordIR.Op := [.shr 3058 31]
def bytes2963 : Bytes := ("    let r00000bf3: u32 = r00000bf2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2963 : bytes2963=statementBytes 3059 (op2963.map lower) ∧ bytes2963.length=54 := by core033_kernel_decide
def op2964 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2964 : Bytes := ("    let r00000bf4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2964 : bytes2964=statementBytes 3060 (op2964.map lower) ∧ bytes2964.length=41 := by core033_kernel_decide
def op2965 : List WordIR.Op := [.bxor 3059 3060]
def bytes2965 : Bytes := ("    let r00000bf5: u32 = r00000bf3 ^ r00000bf4;\n" : String).toByteArray.data.toList
theorem checked2965 : bytes2965=statementBytes 3061 (op2965.map lower) ∧ bytes2965.length=48 := by core033_kernel_decide
def op2966 : List WordIR.Op := [.bnot 3061]
def bytes2966 : Bytes := ("    let r00000bf6: u32 = !r00000bf5;\n" : String).toByteArray.data.toList
theorem checked2966 : bytes2966=statementBytes 3062 (op2966.map lower) ∧ bytes2966.length=37 := by core033_kernel_decide
def op2967 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2967 : Bytes := ("    let r00000bf7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2967 : bytes2967=statementBytes 3063 (op2967.map lower) ∧ bytes2967.length=41 := by core033_kernel_decide
def op2968 : List WordIR.Op := [.badd 3062 3063]
def bytes2968 : Bytes := ("    let r00000bf8: u32 = r00000bf6.wrapping_add(r00000bf7);\n" : String).toByteArray.data.toList
theorem checked2968 : bytes2968=statementBytes 3064 (op2968.map lower) ∧ bytes2968.length=60 := by core033_kernel_decide
def op2969 : List WordIR.Op := [.bnot 3064]
def bytes2969 : Bytes := ("    let r00000bf9: u32 = !r00000bf8;\n" : String).toByteArray.data.toList
theorem checked2969 : bytes2969=statementBytes 3065 (op2969.map lower) ∧ bytes2969.length=37 := by core033_kernel_decide
def op2970 : List WordIR.Op := [.band 3065 1866]
def bytes2970 : Bytes := ("    let r00000bfa: u32 = r00000bf9 & r0000074a;\n" : String).toByteArray.data.toList
theorem checked2970 : bytes2970=statementBytes 3066 (op2970.map lower) ∧ bytes2970.length=48 := by core033_kernel_decide
def op2971 : List WordIR.Op := [.bxor 3040 3066]
def bytes2971 : Bytes := ("    let r00000bfb: u32 = r00000be0 ^ r00000bfa;\n" : String).toByteArray.data.toList
theorem checked2971 : bytes2971=statementBytes 3067 (op2971.map lower) ∧ bytes2971.length=48 := by core033_kernel_decide
def op2972 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2972 : Bytes := ("    let r00000bfc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2972 : bytes2972=statementBytes 3068 (op2972.map lower) ∧ bytes2972.length=41 := by core033_kernel_decide
def op2973 : List WordIR.Op := [.bxor 616 3068]
def bytes2973 : Bytes := ("    let r00000bfd: u32 = r00000268 ^ r00000bfc;\n" : String).toByteArray.data.toList
theorem checked2973 : bytes2973=statementBytes 3069 (op2973.map lower) ∧ bytes2973.length=48 := by core033_kernel_decide
def op2974 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2974 : Bytes := ("    let r00000bfe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2974 : bytes2974=statementBytes 3070 (op2974.map lower) ∧ bytes2974.length=41 := by core033_kernel_decide
def op2975 : List WordIR.Op := [.bnot 3070]
def bytes2975 : Bytes := ("    let r00000bff: u32 = !r00000bfe;\n" : String).toByteArray.data.toList
theorem checked2975 : bytes2975=statementBytes 3071 (op2975.map lower) ∧ bytes2975.length=37 := by core033_kernel_decide
def op2976 : List WordIR.Op := [.band 3069 3071]
def bytes2976 : Bytes := ("    let r00000c00: u32 = r00000bfd & r00000bff;\n" : String).toByteArray.data.toList
theorem checked2976 : bytes2976=statementBytes 3072 (op2976.map lower) ∧ bytes2976.length=48 := by core033_kernel_decide
def op2977 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2977 : Bytes := ("    let r00000c01: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2977 : bytes2977=statementBytes 3073 (op2977.map lower) ∧ bytes2977.length=41 := by core033_kernel_decide
def op2978 : List WordIR.Op := [.bxor 616 3073]
def bytes2978 : Bytes := ("    let r00000c02: u32 = r00000268 ^ r00000c01;\n" : String).toByteArray.data.toList
theorem checked2978 : bytes2978=statementBytes 3074 (op2978.map lower) ∧ bytes2978.length=48 := by core033_kernel_decide
def op2979 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2979 : Bytes := ("    let r00000c03: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2979 : bytes2979=statementBytes 3075 (op2979.map lower) ∧ bytes2979.length=41 := by core033_kernel_decide
def op2980 : List WordIR.Op := [.bnot 3075]
def bytes2980 : Bytes := ("    let r00000c04: u32 = !r00000c03;\n" : String).toByteArray.data.toList
theorem checked2980 : bytes2980=statementBytes 3076 (op2980.map lower) ∧ bytes2980.length=37 := by core033_kernel_decide
def op2981 : List WordIR.Op := [.bxor 3074 3076]
def bytes2981 : Bytes := ("    let r00000c05: u32 = r00000c02 ^ r00000c04;\n" : String).toByteArray.data.toList
theorem checked2981 : bytes2981=statementBytes 3077 (op2981.map lower) ∧ bytes2981.length=48 := by core033_kernel_decide
def op2982 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2982 : Bytes := ("    let r00000c06: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2982 : bytes2982=statementBytes 3078 (op2982.map lower) ∧ bytes2982.length=41 := by core033_kernel_decide
def op2983 : List WordIR.Op := [.bxor 616 3078]
def bytes2983 : Bytes := ("    let r00000c07: u32 = r00000268 ^ r00000c06;\n" : String).toByteArray.data.toList
theorem checked2983 : bytes2983=statementBytes 3079 (op2983.map lower) ∧ bytes2983.length=48 := by core033_kernel_decide
def op2984 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2984 : Bytes := ("    let r00000c08: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2984 : bytes2984=statementBytes 3080 (op2984.map lower) ∧ bytes2984.length=41 := by core033_kernel_decide
def op2985 : List WordIR.Op := [.bnot 3080]
def bytes2985 : Bytes := ("    let r00000c09: u32 = !r00000c08;\n" : String).toByteArray.data.toList
theorem checked2985 : bytes2985=statementBytes 3081 (op2985.map lower) ∧ bytes2985.length=37 := by core033_kernel_decide
def op2986 : List WordIR.Op := [.badd 3079 3081]
def bytes2986 : Bytes := ("    let r00000c0a: u32 = r00000c07.wrapping_add(r00000c09);\n" : String).toByteArray.data.toList
theorem checked2986 : bytes2986=statementBytes 3082 (op2986.map lower) ∧ bytes2986.length=60 := by core033_kernel_decide
def op2987 : List WordIR.Op := [.bnot 3082]
def bytes2987 : Bytes := ("    let r00000c0b: u32 = !r00000c0a;\n" : String).toByteArray.data.toList
theorem checked2987 : bytes2987=statementBytes 3083 (op2987.map lower) ∧ bytes2987.length=37 := by core033_kernel_decide
def op2988 : List WordIR.Op := [.band 3077 3083]
def bytes2988 : Bytes := ("    let r00000c0c: u32 = r00000c05 & r00000c0b;\n" : String).toByteArray.data.toList
theorem checked2988 : bytes2988=statementBytes 3084 (op2988.map lower) ∧ bytes2988.length=48 := by core033_kernel_decide
def op2989 : List WordIR.Op := [.bxor 3072 3084]
def bytes2989 : Bytes := ("    let r00000c0d: u32 = r00000c00 ^ r00000c0c;\n" : String).toByteArray.data.toList
theorem checked2989 : bytes2989=statementBytes 3085 (op2989.map lower) ∧ bytes2989.length=48 := by core033_kernel_decide
def op2990 : List WordIR.Op := [.shr 3085 31]
def bytes2990 : Bytes := ("    let r00000c0e: u32 = r00000c0d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2990 : bytes2990=statementBytes 3086 (op2990.map lower) ∧ bytes2990.length=54 := by core033_kernel_decide
def op2991 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2991 : Bytes := ("    let r00000c0f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2991 : bytes2991=statementBytes 3087 (op2991.map lower) ∧ bytes2991.length=41 := by core033_kernel_decide
def op2992 : List WordIR.Op := [.bxor 3086 3087]
def bytes2992 : Bytes := ("    let r00000c10: u32 = r00000c0e ^ r00000c0f;\n" : String).toByteArray.data.toList
theorem checked2992 : bytes2992=statementBytes 3088 (op2992.map lower) ∧ bytes2992.length=48 := by core033_kernel_decide
def op2993 : List WordIR.Op := [.bnot 3088]
def bytes2993 : Bytes := ("    let r00000c11: u32 = !r00000c10;\n" : String).toByteArray.data.toList
theorem checked2993 : bytes2993=statementBytes 3089 (op2993.map lower) ∧ bytes2993.length=37 := by core033_kernel_decide
def op2994 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2994 : Bytes := ("    let r00000c12: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2994 : bytes2994=statementBytes 3090 (op2994.map lower) ∧ bytes2994.length=41 := by core033_kernel_decide
def op2995 : List WordIR.Op := [.badd 3089 3090]
def bytes2995 : Bytes := ("    let r00000c13: u32 = r00000c11.wrapping_add(r00000c12);\n" : String).toByteArray.data.toList
theorem checked2995 : bytes2995=statementBytes 3091 (op2995.map lower) ∧ bytes2995.length=60 := by core033_kernel_decide
def op2996 : List WordIR.Op := [.band 3091 2025]
def bytes2996 : Bytes := ("    let r00000c14: u32 = r00000c13 & r000007e9;\n" : String).toByteArray.data.toList
theorem checked2996 : bytes2996=statementBytes 3092 (op2996.map lower) ∧ bytes2996.length=48 := by core033_kernel_decide
def op2997 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2997 : Bytes := ("    let r00000c15: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2997 : bytes2997=statementBytes 3093 (op2997.map lower) ∧ bytes2997.length=41 := by core033_kernel_decide
def op2998 : List WordIR.Op := [.bxor 616 3093]
def bytes2998 : Bytes := ("    let r00000c16: u32 = r00000268 ^ r00000c15;\n" : String).toByteArray.data.toList
theorem checked2998 : bytes2998=statementBytes 3094 (op2998.map lower) ∧ bytes2998.length=48 := by core033_kernel_decide
def op2999 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2999 : Bytes := ("    let r00000c17: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2999 : bytes2999=statementBytes 3095 (op2999.map lower) ∧ bytes2999.length=41 := by core033_kernel_decide
def op3000 : List WordIR.Op := [.bnot 3095]
def bytes3000 : Bytes := ("    let r00000c18: u32 = !r00000c17;\n" : String).toByteArray.data.toList
theorem checked3000 : bytes3000=statementBytes 3096 (op3000.map lower) ∧ bytes3000.length=37 := by core033_kernel_decide
def op3001 : List WordIR.Op := [.band 3094 3096]
def bytes3001 : Bytes := ("    let r00000c19: u32 = r00000c16 & r00000c18;\n" : String).toByteArray.data.toList
theorem checked3001 : bytes3001=statementBytes 3097 (op3001.map lower) ∧ bytes3001.length=48 := by core033_kernel_decide
def op3002 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3002 : Bytes := ("    let r00000c1a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3002 : bytes3002=statementBytes 3098 (op3002.map lower) ∧ bytes3002.length=41 := by core033_kernel_decide
def op3003 : List WordIR.Op := [.bxor 616 3098]
def bytes3003 : Bytes := ("    let r00000c1b: u32 = r00000268 ^ r00000c1a;\n" : String).toByteArray.data.toList
theorem checked3003 : bytes3003=statementBytes 3099 (op3003.map lower) ∧ bytes3003.length=48 := by core033_kernel_decide
def op3004 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3004 : Bytes := ("    let r00000c1c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3004 : bytes3004=statementBytes 3100 (op3004.map lower) ∧ bytes3004.length=41 := by core033_kernel_decide
def op3005 : List WordIR.Op := [.bnot 3100]
def bytes3005 : Bytes := ("    let r00000c1d: u32 = !r00000c1c;\n" : String).toByteArray.data.toList
theorem checked3005 : bytes3005=statementBytes 3101 (op3005.map lower) ∧ bytes3005.length=37 := by core033_kernel_decide
def op3006 : List WordIR.Op := [.bxor 3099 3101]
def bytes3006 : Bytes := ("    let r00000c1e: u32 = r00000c1b ^ r00000c1d;\n" : String).toByteArray.data.toList
theorem checked3006 : bytes3006=statementBytes 3102 (op3006.map lower) ∧ bytes3006.length=48 := by core033_kernel_decide
def op3007 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3007 : Bytes := ("    let r00000c1f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3007 : bytes3007=statementBytes 3103 (op3007.map lower) ∧ bytes3007.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2944,op2945,op2946,op2947,op2948,op2949,op2950,op2951,op2952,op2953,op2954,op2955,op2956,op2957,op2958,op2959,op2960,op2961,op2962,op2963,op2964,op2965,op2966,op2967,op2968,op2969,op2970,op2971,op2972,op2973,op2974,op2975,op2976,op2977,op2978,op2979,op2980,op2981,op2982,op2983,op2984,op2985,op2986,op2987,op2988,op2989,op2990,op2991,op2992,op2993,op2994,op2995,op2996,op2997,op2998,op2999,op3000,op3001,op3002,op3003,op3004,op3005,op3006,op3007]
def chunks : List Bytes := [bytes2944,bytes2945,bytes2946,bytes2947,bytes2948,bytes2949,bytes2950,bytes2951,bytes2952,bytes2953,bytes2954,bytes2955,bytes2956,bytes2957,bytes2958,bytes2959,bytes2960,bytes2961,bytes2962,bytes2963,bytes2964,bytes2965,bytes2966,bytes2967,bytes2968,bytes2969,bytes2970,bytes2971,bytes2972,bytes2973,bytes2974,bytes2975,bytes2976,bytes2977,bytes2978,bytes2979,bytes2980,bytes2981,bytes2982,bytes2983,bytes2984,bytes2985,bytes2986,bytes2987,bytes2988,bytes2989,bytes2990,bytes2991,bytes2992,bytes2993,bytes2994,bytes2995,bytes2996,bytes2997,bytes2998,bytes2999,bytes3000,bytes3001,bytes3002,bytes3003,bytes3004,bytes3005,bytes3006,bytes3007]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3040 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2944.1 (.cons _ _ _ _ _ checked2945.1 (.cons _ _ _ _ _ checked2946.1 (.cons _ _ _ _ _ checked2947.1 (.cons _ _ _ _ _ checked2948.1 (.cons _ _ _ _ _ checked2949.1 (.cons _ _ _ _ _ checked2950.1 (.cons _ _ _ _ _ checked2951.1 (.cons _ _ _ _ _ checked2952.1 (.cons _ _ _ _ _ checked2953.1 (.cons _ _ _ _ _ checked2954.1 (.cons _ _ _ _ _ checked2955.1 (.cons _ _ _ _ _ checked2956.1 (.cons _ _ _ _ _ checked2957.1 (.cons _ _ _ _ _ checked2958.1 (.cons _ _ _ _ _ checked2959.1 (.cons _ _ _ _ _ checked2960.1 (.cons _ _ _ _ _ checked2961.1 (.cons _ _ _ _ _ checked2962.1 (.cons _ _ _ _ _ checked2963.1 (.cons _ _ _ _ _ checked2964.1 (.cons _ _ _ _ _ checked2965.1 (.cons _ _ _ _ _ checked2966.1 (.cons _ _ _ _ _ checked2967.1 (.cons _ _ _ _ _ checked2968.1 (.cons _ _ _ _ _ checked2969.1 (.cons _ _ _ _ _ checked2970.1 (.cons _ _ _ _ _ checked2971.1 (.cons _ _ _ _ _ checked2972.1 (.cons _ _ _ _ _ checked2973.1 (.cons _ _ _ _ _ checked2974.1 (.cons _ _ _ _ _ checked2975.1 (.cons _ _ _ _ _ checked2976.1 (.cons _ _ _ _ _ checked2977.1 (.cons _ _ _ _ _ checked2978.1 (.cons _ _ _ _ _ checked2979.1 (.cons _ _ _ _ _ checked2980.1 (.cons _ _ _ _ _ checked2981.1 (.cons _ _ _ _ _ checked2982.1 (.cons _ _ _ _ _ checked2983.1 (.cons _ _ _ _ _ checked2984.1 (.cons _ _ _ _ _ checked2985.1 (.cons _ _ _ _ _ checked2986.1 (.cons _ _ _ _ _ checked2987.1 (.cons _ _ _ _ _ checked2988.1 (.cons _ _ _ _ _ checked2989.1 (.cons _ _ _ _ _ checked2990.1 (.cons _ _ _ _ _ checked2991.1 (.cons _ _ _ _ _ checked2992.1 (.cons _ _ _ _ _ checked2993.1 (.cons _ _ _ _ _ checked2994.1 (.cons _ _ _ _ _ checked2995.1 (.cons _ _ _ _ _ checked2996.1 (.cons _ _ _ _ _ checked2997.1 (.cons _ _ _ _ _ checked2998.1 (.cons _ _ _ _ _ checked2999.1 (.cons _ _ _ _ _ checked3000.1 (.cons _ _ _ _ _ checked3001.1 (.cons _ _ _ _ _ checked3002.1 (.cons _ _ _ _ _ checked3003.1 (.cons _ _ _ _ _ checked3004.1 (.cons _ _ _ _ _ checked3005.1 (.cons _ _ _ _ _ checked3006.1 (.cons _ _ _ _ _ checked3007.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3040 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2944.2,checked2945.2,checked2946.2,checked2947.2,checked2948.2,checked2949.2,checked2950.2,checked2951.2,checked2952.2,checked2953.2,checked2954.2,checked2955.2,checked2956.2,checked2957.2,checked2958.2,checked2959.2,checked2960.2,checked2961.2,checked2962.2,checked2963.2,checked2964.2,checked2965.2,checked2966.2,checked2967.2,checked2968.2,checked2969.2,checked2970.2,checked2971.2,checked2972.2,checked2973.2,checked2974.2,checked2975.2,checked2976.2,checked2977.2,checked2978.2,checked2979.2,checked2980.2,checked2981.2,checked2982.2,checked2983.2,checked2984.2,checked2985.2,checked2986.2,checked2987.2,checked2988.2,checked2989.2,checked2990.2,checked2991.2,checked2992.2,checked2993.2,checked2994.2,checked2995.2,checked2996.2,checked2997.2,checked2998.2,checked2999.2,checked3000.2,checked3001.2,checked3002.2,checked3003.2,checked3004.2,checked3005.2,checked3006.2,checked3007.2]
  decide
end ArtifactPairedPathRoundGroup46
