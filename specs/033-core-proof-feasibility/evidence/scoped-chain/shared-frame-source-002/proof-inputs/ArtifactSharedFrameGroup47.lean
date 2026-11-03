import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup47
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3008 : List WordIR.Op := [.badd 3050 1775]
def bytes3008 : Bytes := ("    let r00000beb: u32 = r00000bea.wrapping_add(r000006ef);\n" : String).toByteArray.data.toList
theorem checked3008 : bytes3008=statementBytes 3051 (op3008.map lower) ∧ bytes3008.length=60 := by core033_kernel_decide
def op3009 : List WordIR.Op := [.rotr 3036 2]
def bytes3009 : Bytes := ("    let r00000bec: u32 = r00000bdc.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked3009 : bytes3009=statementBytes 3052 (op3009.map lower) ∧ bytes3009.length=65 := by core033_kernel_decide
def op3010 : List WordIR.Op := [.rotr 3036 13]
def bytes3010 : Bytes := ("    let r00000bed: u32 = r00000bdc.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked3010 : bytes3010=statementBytes 3053 (op3010.map lower) ∧ bytes3010.length=65 := by core033_kernel_decide
def op3011 : List WordIR.Op := [.bxor 3052 3053]
def bytes3011 : Bytes := ("    let r00000bee: u32 = r00000bec ^ r00000bed;\n" : String).toByteArray.data.toList
theorem checked3011 : bytes3011=statementBytes 3054 (op3011.map lower) ∧ bytes3011.length=48 := by core033_kernel_decide
def op3012 : List WordIR.Op := [.rotr 3036 22]
def bytes3012 : Bytes := ("    let r00000bef: u32 = r00000bdc.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked3012 : bytes3012=statementBytes 3055 (op3012.map lower) ∧ bytes3012.length=65 := by core033_kernel_decide
def op3013 : List WordIR.Op := [.bxor 3054 3055]
def bytes3013 : Bytes := ("    let r00000bf0: u32 = r00000bee ^ r00000bef;\n" : String).toByteArray.data.toList
theorem checked3013 : bytes3013=statementBytes 3056 (op3013.map lower) ∧ bytes3013.length=48 := by core033_kernel_decide
def op3014 : List WordIR.Op := [.band 3036 3010]
def bytes3014 : Bytes := ("    let r00000bf1: u32 = r00000bdc & r00000bc2;\n" : String).toByteArray.data.toList
theorem checked3014 : bytes3014=statementBytes 3057 (op3014.map lower) ∧ bytes3014.length=48 := by core033_kernel_decide
def op3015 : List WordIR.Op := [.band 3036 2984]
def bytes3015 : Bytes := ("    let r00000bf2: u32 = r00000bdc & r00000ba8;\n" : String).toByteArray.data.toList
theorem checked3015 : bytes3015=statementBytes 3058 (op3015.map lower) ∧ bytes3015.length=48 := by core033_kernel_decide
def op3016 : List WordIR.Op := [.bxor 3057 3058]
def bytes3016 : Bytes := ("    let r00000bf3: u32 = r00000bf1 ^ r00000bf2;\n" : String).toByteArray.data.toList
theorem checked3016 : bytes3016=statementBytes 3059 (op3016.map lower) ∧ bytes3016.length=48 := by core033_kernel_decide
def op3017 : List WordIR.Op := [.bxor 3059 3031]
def bytes3017 : Bytes := ("    let r00000bf4: u32 = r00000bf3 ^ r00000bd7;\n" : String).toByteArray.data.toList
theorem checked3017 : bytes3017=statementBytes 3060 (op3017.map lower) ∧ bytes3017.length=48 := by core033_kernel_decide
def op3018 : List WordIR.Op := [.badd 3056 3060]
def bytes3018 : Bytes := ("    let r00000bf5: u32 = r00000bf0.wrapping_add(r00000bf4);\n" : String).toByteArray.data.toList
theorem checked3018 : bytes3018=statementBytes 3061 (op3018.map lower) ∧ bytes3018.length=60 := by core033_kernel_decide
def op3019 : List WordIR.Op := [.badd 3051 3061]
def bytes3019 : Bytes := ("    let r00000bf6: u32 = r00000beb.wrapping_add(r00000bf5);\n" : String).toByteArray.data.toList
theorem checked3019 : bytes3019=statementBytes 3062 (op3019.map lower) ∧ bytes3019.length=60 := by core033_kernel_decide
def op3020 : List WordIR.Op := [.badd 2958 3051]
def bytes3020 : Bytes := ("    let r00000bf7: u32 = r00000b8e.wrapping_add(r00000beb);\n" : String).toByteArray.data.toList
theorem checked3020 : bytes3020=statementBytes 3063 (op3020.map lower) ∧ bytes3020.length=60 := by core033_kernel_decide
def op3021 : List WordIR.Op := [.rotr 3063 6]
def bytes3021 : Bytes := ("    let r00000bf8: u32 = r00000bf7.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked3021 : bytes3021=statementBytes 3064 (op3021.map lower) ∧ bytes3021.length=65 := by core033_kernel_decide
def op3022 : List WordIR.Op := [.rotr 3063 11]
def bytes3022 : Bytes := ("    let r00000bf9: u32 = r00000bf7.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked3022 : bytes3022=statementBytes 3065 (op3022.map lower) ∧ bytes3022.length=65 := by core033_kernel_decide
def op3023 : List WordIR.Op := [.bxor 3064 3065]
def bytes3023 : Bytes := ("    let r00000bfa: u32 = r00000bf8 ^ r00000bf9;\n" : String).toByteArray.data.toList
theorem checked3023 : bytes3023=statementBytes 3066 (op3023.map lower) ∧ bytes3023.length=48 := by core033_kernel_decide
def op3024 : List WordIR.Op := [.rotr 3063 25]
def bytes3024 : Bytes := ("    let r00000bfb: u32 = r00000bf7.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked3024 : bytes3024=statementBytes 3067 (op3024.map lower) ∧ bytes3024.length=65 := by core033_kernel_decide
def op3025 : List WordIR.Op := [.bxor 3066 3067]
def bytes3025 : Bytes := ("    let r00000bfc: u32 = r00000bfa ^ r00000bfb;\n" : String).toByteArray.data.toList
theorem checked3025 : bytes3025=statementBytes 3068 (op3025.map lower) ∧ bytes3025.length=48 := by core033_kernel_decide
def op3026 : List WordIR.Op := [.badd 2985 3068]
def bytes3026 : Bytes := ("    let r00000bfd: u32 = r00000ba9.wrapping_add(r00000bfc);\n" : String).toByteArray.data.toList
theorem checked3026 : bytes3026=statementBytes 3069 (op3026.map lower) ∧ bytes3026.length=60 := by core033_kernel_decide
def op3027 : List WordIR.Op := [.band 3063 3037]
def bytes3027 : Bytes := ("    let r00000bfe: u32 = r00000bf7 & r00000bdd;\n" : String).toByteArray.data.toList
theorem checked3027 : bytes3027=statementBytes 3070 (op3027.map lower) ∧ bytes3027.length=48 := by core033_kernel_decide
def op3028 : List WordIR.Op := [.bnot 3063]
def bytes3028 : Bytes := ("    let r00000bff: u32 = !r00000bf7;\n" : String).toByteArray.data.toList
theorem checked3028 : bytes3028=statementBytes 3071 (op3028.map lower) ∧ bytes3028.length=37 := by core033_kernel_decide
def op3029 : List WordIR.Op := [.band 3071 3011]
def bytes3029 : Bytes := ("    let r00000c00: u32 = r00000bff & r00000bc3;\n" : String).toByteArray.data.toList
theorem checked3029 : bytes3029=statementBytes 3072 (op3029.map lower) ∧ bytes3029.length=48 := by core033_kernel_decide
def op3030 : List WordIR.Op := [.bxor 3070 3072]
def bytes3030 : Bytes := ("    let r00000c01: u32 = r00000bfe ^ r00000c00;\n" : String).toByteArray.data.toList
theorem checked3030 : bytes3030=statementBytes 3073 (op3030.map lower) ∧ bytes3030.length=48 := by core033_kernel_decide
def op3031 : List WordIR.Op := [.badd 3069 3073]
def bytes3031 : Bytes := ("    let r00000c02: u32 = r00000bfd.wrapping_add(r00000c01);\n" : String).toByteArray.data.toList
theorem checked3031 : bytes3031=statementBytes 3074 (op3031.map lower) ∧ bytes3031.length=60 := by core033_kernel_decide
def op3032 : List WordIR.Op := [.literal (BitVec.ofNat 32 1396182291)]
def bytes3032 : Bytes := ("    let r00000c03: u32 = 0x53380d13_u32;\n" : String).toByteArray.data.toList
theorem checked3032 : bytes3032=statementBytes 3075 (op3032.map lower) ∧ bytes3032.length=41 := by core033_kernel_decide
def op3033 : List WordIR.Op := [.badd 3074 3075]
def bytes3033 : Bytes := ("    let r00000c04: u32 = r00000c02.wrapping_add(r00000c03);\n" : String).toByteArray.data.toList
theorem checked3033 : bytes3033=statementBytes 3076 (op3033.map lower) ∧ bytes3033.length=60 := by core033_kernel_decide
def op3034 : List WordIR.Op := [.badd 3076 1788]
def bytes3034 : Bytes := ("    let r00000c05: u32 = r00000c04.wrapping_add(r000006fc);\n" : String).toByteArray.data.toList
theorem checked3034 : bytes3034=statementBytes 3077 (op3034.map lower) ∧ bytes3034.length=60 := by core033_kernel_decide
def op3035 : List WordIR.Op := [.rotr 3062 2]
def bytes3035 : Bytes := ("    let r00000c06: u32 = r00000bf6.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked3035 : bytes3035=statementBytes 3078 (op3035.map lower) ∧ bytes3035.length=65 := by core033_kernel_decide
def op3036 : List WordIR.Op := [.rotr 3062 13]
def bytes3036 : Bytes := ("    let r00000c07: u32 = r00000bf6.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked3036 : bytes3036=statementBytes 3079 (op3036.map lower) ∧ bytes3036.length=65 := by core033_kernel_decide
def op3037 : List WordIR.Op := [.bxor 3078 3079]
def bytes3037 : Bytes := ("    let r00000c08: u32 = r00000c06 ^ r00000c07;\n" : String).toByteArray.data.toList
theorem checked3037 : bytes3037=statementBytes 3080 (op3037.map lower) ∧ bytes3037.length=48 := by core033_kernel_decide
def op3038 : List WordIR.Op := [.rotr 3062 22]
def bytes3038 : Bytes := ("    let r00000c09: u32 = r00000bf6.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked3038 : bytes3038=statementBytes 3081 (op3038.map lower) ∧ bytes3038.length=65 := by core033_kernel_decide
def op3039 : List WordIR.Op := [.bxor 3080 3081]
def bytes3039 : Bytes := ("    let r00000c0a: u32 = r00000c08 ^ r00000c09;\n" : String).toByteArray.data.toList
theorem checked3039 : bytes3039=statementBytes 3082 (op3039.map lower) ∧ bytes3039.length=48 := by core033_kernel_decide
def op3040 : List WordIR.Op := [.band 3062 3036]
def bytes3040 : Bytes := ("    let r00000c0b: u32 = r00000bf6 & r00000bdc;\n" : String).toByteArray.data.toList
theorem checked3040 : bytes3040=statementBytes 3083 (op3040.map lower) ∧ bytes3040.length=48 := by core033_kernel_decide
def op3041 : List WordIR.Op := [.band 3062 3010]
def bytes3041 : Bytes := ("    let r00000c0c: u32 = r00000bf6 & r00000bc2;\n" : String).toByteArray.data.toList
theorem checked3041 : bytes3041=statementBytes 3084 (op3041.map lower) ∧ bytes3041.length=48 := by core033_kernel_decide
def op3042 : List WordIR.Op := [.bxor 3083 3084]
def bytes3042 : Bytes := ("    let r00000c0d: u32 = r00000c0b ^ r00000c0c;\n" : String).toByteArray.data.toList
theorem checked3042 : bytes3042=statementBytes 3085 (op3042.map lower) ∧ bytes3042.length=48 := by core033_kernel_decide
def op3043 : List WordIR.Op := [.bxor 3085 3057]
def bytes3043 : Bytes := ("    let r00000c0e: u32 = r00000c0d ^ r00000bf1;\n" : String).toByteArray.data.toList
theorem checked3043 : bytes3043=statementBytes 3086 (op3043.map lower) ∧ bytes3043.length=48 := by core033_kernel_decide
def op3044 : List WordIR.Op := [.badd 3082 3086]
def bytes3044 : Bytes := ("    let r00000c0f: u32 = r00000c0a.wrapping_add(r00000c0e);\n" : String).toByteArray.data.toList
theorem checked3044 : bytes3044=statementBytes 3087 (op3044.map lower) ∧ bytes3044.length=60 := by core033_kernel_decide
def op3045 : List WordIR.Op := [.badd 3077 3087]
def bytes3045 : Bytes := ("    let r00000c10: u32 = r00000c05.wrapping_add(r00000c0f);\n" : String).toByteArray.data.toList
theorem checked3045 : bytes3045=statementBytes 3088 (op3045.map lower) ∧ bytes3045.length=60 := by core033_kernel_decide
def op3046 : List WordIR.Op := [.badd 2984 3077]
def bytes3046 : Bytes := ("    let r00000c11: u32 = r00000ba8.wrapping_add(r00000c05);\n" : String).toByteArray.data.toList
theorem checked3046 : bytes3046=statementBytes 3089 (op3046.map lower) ∧ bytes3046.length=60 := by core033_kernel_decide
def op3047 : List WordIR.Op := [.rotr 3089 6]
def bytes3047 : Bytes := ("    let r00000c12: u32 = r00000c11.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked3047 : bytes3047=statementBytes 3090 (op3047.map lower) ∧ bytes3047.length=65 := by core033_kernel_decide
def op3048 : List WordIR.Op := [.rotr 3089 11]
def bytes3048 : Bytes := ("    let r00000c13: u32 = r00000c11.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked3048 : bytes3048=statementBytes 3091 (op3048.map lower) ∧ bytes3048.length=65 := by core033_kernel_decide
def op3049 : List WordIR.Op := [.bxor 3090 3091]
def bytes3049 : Bytes := ("    let r00000c14: u32 = r00000c12 ^ r00000c13;\n" : String).toByteArray.data.toList
theorem checked3049 : bytes3049=statementBytes 3092 (op3049.map lower) ∧ bytes3049.length=48 := by core033_kernel_decide
def op3050 : List WordIR.Op := [.rotr 3089 25]
def bytes3050 : Bytes := ("    let r00000c15: u32 = r00000c11.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked3050 : bytes3050=statementBytes 3093 (op3050.map lower) ∧ bytes3050.length=65 := by core033_kernel_decide
def op3051 : List WordIR.Op := [.bxor 3092 3093]
def bytes3051 : Bytes := ("    let r00000c16: u32 = r00000c14 ^ r00000c15;\n" : String).toByteArray.data.toList
theorem checked3051 : bytes3051=statementBytes 3094 (op3051.map lower) ∧ bytes3051.length=48 := by core033_kernel_decide
def op3052 : List WordIR.Op := [.badd 3011 3094]
def bytes3052 : Bytes := ("    let r00000c17: u32 = r00000bc3.wrapping_add(r00000c16);\n" : String).toByteArray.data.toList
theorem checked3052 : bytes3052=statementBytes 3095 (op3052.map lower) ∧ bytes3052.length=60 := by core033_kernel_decide
def op3053 : List WordIR.Op := [.band 3089 3063]
def bytes3053 : Bytes := ("    let r00000c18: u32 = r00000c11 & r00000bf7;\n" : String).toByteArray.data.toList
theorem checked3053 : bytes3053=statementBytes 3096 (op3053.map lower) ∧ bytes3053.length=48 := by core033_kernel_decide
def op3054 : List WordIR.Op := [.bnot 3089]
def bytes3054 : Bytes := ("    let r00000c19: u32 = !r00000c11;\n" : String).toByteArray.data.toList
theorem checked3054 : bytes3054=statementBytes 3097 (op3054.map lower) ∧ bytes3054.length=37 := by core033_kernel_decide
def op3055 : List WordIR.Op := [.band 3097 3037]
def bytes3055 : Bytes := ("    let r00000c1a: u32 = r00000c19 & r00000bdd;\n" : String).toByteArray.data.toList
theorem checked3055 : bytes3055=statementBytes 3098 (op3055.map lower) ∧ bytes3055.length=48 := by core033_kernel_decide
def op3056 : List WordIR.Op := [.bxor 3096 3098]
def bytes3056 : Bytes := ("    let r00000c1b: u32 = r00000c18 ^ r00000c1a;\n" : String).toByteArray.data.toList
theorem checked3056 : bytes3056=statementBytes 3099 (op3056.map lower) ∧ bytes3056.length=48 := by core033_kernel_decide
def op3057 : List WordIR.Op := [.badd 3095 3099]
def bytes3057 : Bytes := ("    let r00000c1c: u32 = r00000c17.wrapping_add(r00000c1b);\n" : String).toByteArray.data.toList
theorem checked3057 : bytes3057=statementBytes 3100 (op3057.map lower) ∧ bytes3057.length=60 := by core033_kernel_decide
def op3058 : List WordIR.Op := [.literal (BitVec.ofNat 32 1695183700)]
def bytes3058 : Bytes := ("    let r00000c1d: u32 = 0x650a7354_u32;\n" : String).toByteArray.data.toList
theorem checked3058 : bytes3058=statementBytes 3101 (op3058.map lower) ∧ bytes3058.length=41 := by core033_kernel_decide
def op3059 : List WordIR.Op := [.badd 3100 3101]
def bytes3059 : Bytes := ("    let r00000c1e: u32 = r00000c1c.wrapping_add(r00000c1d);\n" : String).toByteArray.data.toList
theorem checked3059 : bytes3059=statementBytes 3102 (op3059.map lower) ∧ bytes3059.length=60 := by core033_kernel_decide
def op3060 : List WordIR.Op := [.badd 3102 1801]
def bytes3060 : Bytes := ("    let r00000c1f: u32 = r00000c1e.wrapping_add(r00000709);\n" : String).toByteArray.data.toList
theorem checked3060 : bytes3060=statementBytes 3103 (op3060.map lower) ∧ bytes3060.length=60 := by core033_kernel_decide
def op3061 : List WordIR.Op := [.rotr 3088 2]
def bytes3061 : Bytes := ("    let r00000c20: u32 = r00000c10.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked3061 : bytes3061=statementBytes 3104 (op3061.map lower) ∧ bytes3061.length=65 := by core033_kernel_decide
def op3062 : List WordIR.Op := [.rotr 3088 13]
def bytes3062 : Bytes := ("    let r00000c21: u32 = r00000c10.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked3062 : bytes3062=statementBytes 3105 (op3062.map lower) ∧ bytes3062.length=65 := by core033_kernel_decide
def op3063 : List WordIR.Op := [.bxor 3104 3105]
def bytes3063 : Bytes := ("    let r00000c22: u32 = r00000c20 ^ r00000c21;\n" : String).toByteArray.data.toList
theorem checked3063 : bytes3063=statementBytes 3106 (op3063.map lower) ∧ bytes3063.length=48 := by core033_kernel_decide
def op3064 : List WordIR.Op := [.rotr 3088 22]
def bytes3064 : Bytes := ("    let r00000c23: u32 = r00000c10.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked3064 : bytes3064=statementBytes 3107 (op3064.map lower) ∧ bytes3064.length=65 := by core033_kernel_decide
def op3065 : List WordIR.Op := [.bxor 3106 3107]
def bytes3065 : Bytes := ("    let r00000c24: u32 = r00000c22 ^ r00000c23;\n" : String).toByteArray.data.toList
theorem checked3065 : bytes3065=statementBytes 3108 (op3065.map lower) ∧ bytes3065.length=48 := by core033_kernel_decide
def op3066 : List WordIR.Op := [.band 3088 3062]
def bytes3066 : Bytes := ("    let r00000c25: u32 = r00000c10 & r00000bf6;\n" : String).toByteArray.data.toList
theorem checked3066 : bytes3066=statementBytes 3109 (op3066.map lower) ∧ bytes3066.length=48 := by core033_kernel_decide
def op3067 : List WordIR.Op := [.band 3088 3036]
def bytes3067 : Bytes := ("    let r00000c26: u32 = r00000c10 & r00000bdc;\n" : String).toByteArray.data.toList
theorem checked3067 : bytes3067=statementBytes 3110 (op3067.map lower) ∧ bytes3067.length=48 := by core033_kernel_decide
def op3068 : List WordIR.Op := [.bxor 3109 3110]
def bytes3068 : Bytes := ("    let r00000c27: u32 = r00000c25 ^ r00000c26;\n" : String).toByteArray.data.toList
theorem checked3068 : bytes3068=statementBytes 3111 (op3068.map lower) ∧ bytes3068.length=48 := by core033_kernel_decide
def op3069 : List WordIR.Op := [.bxor 3111 3083]
def bytes3069 : Bytes := ("    let r00000c28: u32 = r00000c27 ^ r00000c0b;\n" : String).toByteArray.data.toList
theorem checked3069 : bytes3069=statementBytes 3112 (op3069.map lower) ∧ bytes3069.length=48 := by core033_kernel_decide
def op3070 : List WordIR.Op := [.badd 3108 3112]
def bytes3070 : Bytes := ("    let r00000c29: u32 = r00000c24.wrapping_add(r00000c28);\n" : String).toByteArray.data.toList
theorem checked3070 : bytes3070=statementBytes 3113 (op3070.map lower) ∧ bytes3070.length=60 := by core033_kernel_decide
def op3071 : List WordIR.Op := [.badd 3103 3113]
def bytes3071 : Bytes := ("    let r00000c2a: u32 = r00000c1f.wrapping_add(r00000c29);\n" : String).toByteArray.data.toList
theorem checked3071 : bytes3071=statementBytes 3114 (op3071.map lower) ∧ bytes3071.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3008,op3009,op3010,op3011,op3012,op3013,op3014,op3015,op3016,op3017,op3018,op3019,op3020,op3021,op3022,op3023,op3024,op3025,op3026,op3027,op3028,op3029,op3030,op3031,op3032,op3033,op3034,op3035,op3036,op3037,op3038,op3039,op3040,op3041,op3042,op3043,op3044,op3045,op3046,op3047,op3048,op3049,op3050,op3051,op3052,op3053,op3054,op3055,op3056,op3057,op3058,op3059,op3060,op3061,op3062,op3063,op3064,op3065,op3066,op3067,op3068,op3069,op3070,op3071]
def chunks : List Bytes := [bytes3008,bytes3009,bytes3010,bytes3011,bytes3012,bytes3013,bytes3014,bytes3015,bytes3016,bytes3017,bytes3018,bytes3019,bytes3020,bytes3021,bytes3022,bytes3023,bytes3024,bytes3025,bytes3026,bytes3027,bytes3028,bytes3029,bytes3030,bytes3031,bytes3032,bytes3033,bytes3034,bytes3035,bytes3036,bytes3037,bytes3038,bytes3039,bytes3040,bytes3041,bytes3042,bytes3043,bytes3044,bytes3045,bytes3046,bytes3047,bytes3048,bytes3049,bytes3050,bytes3051,bytes3052,bytes3053,bytes3054,bytes3055,bytes3056,bytes3057,bytes3058,bytes3059,bytes3060,bytes3061,bytes3062,bytes3063,bytes3064,bytes3065,bytes3066,bytes3067,bytes3068,bytes3069,bytes3070,bytes3071]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3051 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3008.1 (.cons _ _ _ _ _ checked3009.1 (.cons _ _ _ _ _ checked3010.1 (.cons _ _ _ _ _ checked3011.1 (.cons _ _ _ _ _ checked3012.1 (.cons _ _ _ _ _ checked3013.1 (.cons _ _ _ _ _ checked3014.1 (.cons _ _ _ _ _ checked3015.1 (.cons _ _ _ _ _ checked3016.1 (.cons _ _ _ _ _ checked3017.1 (.cons _ _ _ _ _ checked3018.1 (.cons _ _ _ _ _ checked3019.1 (.cons _ _ _ _ _ checked3020.1 (.cons _ _ _ _ _ checked3021.1 (.cons _ _ _ _ _ checked3022.1 (.cons _ _ _ _ _ checked3023.1 (.cons _ _ _ _ _ checked3024.1 (.cons _ _ _ _ _ checked3025.1 (.cons _ _ _ _ _ checked3026.1 (.cons _ _ _ _ _ checked3027.1 (.cons _ _ _ _ _ checked3028.1 (.cons _ _ _ _ _ checked3029.1 (.cons _ _ _ _ _ checked3030.1 (.cons _ _ _ _ _ checked3031.1 (.cons _ _ _ _ _ checked3032.1 (.cons _ _ _ _ _ checked3033.1 (.cons _ _ _ _ _ checked3034.1 (.cons _ _ _ _ _ checked3035.1 (.cons _ _ _ _ _ checked3036.1 (.cons _ _ _ _ _ checked3037.1 (.cons _ _ _ _ _ checked3038.1 (.cons _ _ _ _ _ checked3039.1 (.cons _ _ _ _ _ checked3040.1 (.cons _ _ _ _ _ checked3041.1 (.cons _ _ _ _ _ checked3042.1 (.cons _ _ _ _ _ checked3043.1 (.cons _ _ _ _ _ checked3044.1 (.cons _ _ _ _ _ checked3045.1 (.cons _ _ _ _ _ checked3046.1 (.cons _ _ _ _ _ checked3047.1 (.cons _ _ _ _ _ checked3048.1 (.cons _ _ _ _ _ checked3049.1 (.cons _ _ _ _ _ checked3050.1 (.cons _ _ _ _ _ checked3051.1 (.cons _ _ _ _ _ checked3052.1 (.cons _ _ _ _ _ checked3053.1 (.cons _ _ _ _ _ checked3054.1 (.cons _ _ _ _ _ checked3055.1 (.cons _ _ _ _ _ checked3056.1 (.cons _ _ _ _ _ checked3057.1 (.cons _ _ _ _ _ checked3058.1 (.cons _ _ _ _ _ checked3059.1 (.cons _ _ _ _ _ checked3060.1 (.cons _ _ _ _ _ checked3061.1 (.cons _ _ _ _ _ checked3062.1 (.cons _ _ _ _ _ checked3063.1 (.cons _ _ _ _ _ checked3064.1 (.cons _ _ _ _ _ checked3065.1 (.cons _ _ _ _ _ checked3066.1 (.cons _ _ _ _ _ checked3067.1 (.cons _ _ _ _ _ checked3068.1 (.cons _ _ _ _ _ checked3069.1 (.cons _ _ _ _ _ checked3070.1 (.cons _ _ _ _ _ checked3071.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3051 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3495 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3008.2,checked3009.2,checked3010.2,checked3011.2,checked3012.2,checked3013.2,checked3014.2,checked3015.2,checked3016.2,checked3017.2,checked3018.2,checked3019.2,checked3020.2,checked3021.2,checked3022.2,checked3023.2,checked3024.2,checked3025.2,checked3026.2,checked3027.2,checked3028.2,checked3029.2,checked3030.2,checked3031.2,checked3032.2,checked3033.2,checked3034.2,checked3035.2,checked3036.2,checked3037.2,checked3038.2,checked3039.2,checked3040.2,checked3041.2,checked3042.2,checked3043.2,checked3044.2,checked3045.2,checked3046.2,checked3047.2,checked3048.2,checked3049.2,checked3050.2,checked3051.2,checked3052.2,checked3053.2,checked3054.2,checked3055.2,checked3056.2,checked3057.2,checked3058.2,checked3059.2,checked3060.2,checked3061.2,checked3062.2,checked3063.2,checked3064.2,checked3065.2,checked3066.2,checked3067.2,checked3068.2,checked3069.2,checked3070.2,checked3071.2]
  decide
end ArtifactSharedFrameGroup47
