import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup48
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3072 : List WordIR.Op := [.badd 3166 3167]
def bytes3072 : Bytes := ("    let r00000c60: u32 = r00000c5e.wrapping_add(r00000c5f);\n" : String).toByteArray.data.toList
theorem checked3072 : bytes3072=statementBytes 3168 (op3072.map lower) ∧ bytes3072.length=60 := by core033_kernel_decide
def op3073 : List WordIR.Op := [.bnot 3168]
def bytes3073 : Bytes := ("    let r00000c61: u32 = !r00000c60;\n" : String).toByteArray.data.toList
theorem checked3073 : bytes3073=statementBytes 3169 (op3073.map lower) ∧ bytes3073.length=37 := by core033_kernel_decide
def op3074 : List WordIR.Op := [.band 3169 1868]
def bytes3074 : Bytes := ("    let r00000c62: u32 = r00000c61 & r0000074c;\n" : String).toByteArray.data.toList
theorem checked3074 : bytes3074=statementBytes 3170 (op3074.map lower) ∧ bytes3074.length=48 := by core033_kernel_decide
def op3075 : List WordIR.Op := [.bxor 3144 3170]
def bytes3075 : Bytes := ("    let r00000c63: u32 = r00000c48 ^ r00000c62;\n" : String).toByteArray.data.toList
theorem checked3075 : bytes3075=statementBytes 3171 (op3075.map lower) ∧ bytes3075.length=48 := by core033_kernel_decide
def op3076 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3076 : Bytes := ("    let r00000c64: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3076 : bytes3076=statementBytes 3172 (op3076.map lower) ∧ bytes3076.length=41 := by core033_kernel_decide
def op3077 : List WordIR.Op := [.bxor 616 3172]
def bytes3077 : Bytes := ("    let r00000c65: u32 = r00000268 ^ r00000c64;\n" : String).toByteArray.data.toList
theorem checked3077 : bytes3077=statementBytes 3173 (op3077.map lower) ∧ bytes3077.length=48 := by core033_kernel_decide
def op3078 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3078 : Bytes := ("    let r00000c66: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3078 : bytes3078=statementBytes 3174 (op3078.map lower) ∧ bytes3078.length=41 := by core033_kernel_decide
def op3079 : List WordIR.Op := [.bnot 3174]
def bytes3079 : Bytes := ("    let r00000c67: u32 = !r00000c66;\n" : String).toByteArray.data.toList
theorem checked3079 : bytes3079=statementBytes 3175 (op3079.map lower) ∧ bytes3079.length=37 := by core033_kernel_decide
def op3080 : List WordIR.Op := [.band 3173 3175]
def bytes3080 : Bytes := ("    let r00000c68: u32 = r00000c65 & r00000c67;\n" : String).toByteArray.data.toList
theorem checked3080 : bytes3080=statementBytes 3176 (op3080.map lower) ∧ bytes3080.length=48 := by core033_kernel_decide
def op3081 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3081 : Bytes := ("    let r00000c69: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3081 : bytes3081=statementBytes 3177 (op3081.map lower) ∧ bytes3081.length=41 := by core033_kernel_decide
def op3082 : List WordIR.Op := [.bxor 616 3177]
def bytes3082 : Bytes := ("    let r00000c6a: u32 = r00000268 ^ r00000c69;\n" : String).toByteArray.data.toList
theorem checked3082 : bytes3082=statementBytes 3178 (op3082.map lower) ∧ bytes3082.length=48 := by core033_kernel_decide
def op3083 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3083 : Bytes := ("    let r00000c6b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3083 : bytes3083=statementBytes 3179 (op3083.map lower) ∧ bytes3083.length=41 := by core033_kernel_decide
def op3084 : List WordIR.Op := [.bnot 3179]
def bytes3084 : Bytes := ("    let r00000c6c: u32 = !r00000c6b;\n" : String).toByteArray.data.toList
theorem checked3084 : bytes3084=statementBytes 3180 (op3084.map lower) ∧ bytes3084.length=37 := by core033_kernel_decide
def op3085 : List WordIR.Op := [.bxor 3178 3180]
def bytes3085 : Bytes := ("    let r00000c6d: u32 = r00000c6a ^ r00000c6c;\n" : String).toByteArray.data.toList
theorem checked3085 : bytes3085=statementBytes 3181 (op3085.map lower) ∧ bytes3085.length=48 := by core033_kernel_decide
def op3086 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3086 : Bytes := ("    let r00000c6e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3086 : bytes3086=statementBytes 3182 (op3086.map lower) ∧ bytes3086.length=41 := by core033_kernel_decide
def op3087 : List WordIR.Op := [.bxor 616 3182]
def bytes3087 : Bytes := ("    let r00000c6f: u32 = r00000268 ^ r00000c6e;\n" : String).toByteArray.data.toList
theorem checked3087 : bytes3087=statementBytes 3183 (op3087.map lower) ∧ bytes3087.length=48 := by core033_kernel_decide
def op3088 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3088 : Bytes := ("    let r00000c70: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3088 : bytes3088=statementBytes 3184 (op3088.map lower) ∧ bytes3088.length=41 := by core033_kernel_decide
def op3089 : List WordIR.Op := [.bnot 3184]
def bytes3089 : Bytes := ("    let r00000c71: u32 = !r00000c70;\n" : String).toByteArray.data.toList
theorem checked3089 : bytes3089=statementBytes 3185 (op3089.map lower) ∧ bytes3089.length=37 := by core033_kernel_decide
def op3090 : List WordIR.Op := [.badd 3183 3185]
def bytes3090 : Bytes := ("    let r00000c72: u32 = r00000c6f.wrapping_add(r00000c71);\n" : String).toByteArray.data.toList
theorem checked3090 : bytes3090=statementBytes 3186 (op3090.map lower) ∧ bytes3090.length=60 := by core033_kernel_decide
def op3091 : List WordIR.Op := [.bnot 3186]
def bytes3091 : Bytes := ("    let r00000c73: u32 = !r00000c72;\n" : String).toByteArray.data.toList
theorem checked3091 : bytes3091=statementBytes 3187 (op3091.map lower) ∧ bytes3091.length=37 := by core033_kernel_decide
def op3092 : List WordIR.Op := [.band 3181 3187]
def bytes3092 : Bytes := ("    let r00000c74: u32 = r00000c6d & r00000c73;\n" : String).toByteArray.data.toList
theorem checked3092 : bytes3092=statementBytes 3188 (op3092.map lower) ∧ bytes3092.length=48 := by core033_kernel_decide
def op3093 : List WordIR.Op := [.bxor 3176 3188]
def bytes3093 : Bytes := ("    let r00000c75: u32 = r00000c68 ^ r00000c74;\n" : String).toByteArray.data.toList
theorem checked3093 : bytes3093=statementBytes 3189 (op3093.map lower) ∧ bytes3093.length=48 := by core033_kernel_decide
def op3094 : List WordIR.Op := [.shr 3189 31]
def bytes3094 : Bytes := ("    let r00000c76: u32 = r00000c75 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3094 : bytes3094=statementBytes 3190 (op3094.map lower) ∧ bytes3094.length=54 := by core033_kernel_decide
def op3095 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3095 : Bytes := ("    let r00000c77: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3095 : bytes3095=statementBytes 3191 (op3095.map lower) ∧ bytes3095.length=41 := by core033_kernel_decide
def op3096 : List WordIR.Op := [.bxor 3190 3191]
def bytes3096 : Bytes := ("    let r00000c78: u32 = r00000c76 ^ r00000c77;\n" : String).toByteArray.data.toList
theorem checked3096 : bytes3096=statementBytes 3192 (op3096.map lower) ∧ bytes3096.length=48 := by core033_kernel_decide
def op3097 : List WordIR.Op := [.bnot 3192]
def bytes3097 : Bytes := ("    let r00000c79: u32 = !r00000c78;\n" : String).toByteArray.data.toList
theorem checked3097 : bytes3097=statementBytes 3193 (op3097.map lower) ∧ bytes3097.length=37 := by core033_kernel_decide
def op3098 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3098 : Bytes := ("    let r00000c7a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3098 : bytes3098=statementBytes 3194 (op3098.map lower) ∧ bytes3098.length=41 := by core033_kernel_decide
def op3099 : List WordIR.Op := [.badd 3193 3194]
def bytes3099 : Bytes := ("    let r00000c7b: u32 = r00000c79.wrapping_add(r00000c7a);\n" : String).toByteArray.data.toList
theorem checked3099 : bytes3099=statementBytes 3195 (op3099.map lower) ∧ bytes3099.length=60 := by core033_kernel_decide
def op3100 : List WordIR.Op := [.band 3195 2031]
def bytes3100 : Bytes := ("    let r00000c7c: u32 = r00000c7b & r000007ef;\n" : String).toByteArray.data.toList
theorem checked3100 : bytes3100=statementBytes 3196 (op3100.map lower) ∧ bytes3100.length=48 := by core033_kernel_decide
def op3101 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3101 : Bytes := ("    let r00000c7d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3101 : bytes3101=statementBytes 3197 (op3101.map lower) ∧ bytes3101.length=41 := by core033_kernel_decide
def op3102 : List WordIR.Op := [.bxor 616 3197]
def bytes3102 : Bytes := ("    let r00000c7e: u32 = r00000268 ^ r00000c7d;\n" : String).toByteArray.data.toList
theorem checked3102 : bytes3102=statementBytes 3198 (op3102.map lower) ∧ bytes3102.length=48 := by core033_kernel_decide
def op3103 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3103 : Bytes := ("    let r00000c7f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3103 : bytes3103=statementBytes 3199 (op3103.map lower) ∧ bytes3103.length=41 := by core033_kernel_decide
def op3104 : List WordIR.Op := [.bnot 3199]
def bytes3104 : Bytes := ("    let r00000c80: u32 = !r00000c7f;\n" : String).toByteArray.data.toList
theorem checked3104 : bytes3104=statementBytes 3200 (op3104.map lower) ∧ bytes3104.length=37 := by core033_kernel_decide
def op3105 : List WordIR.Op := [.band 3198 3200]
def bytes3105 : Bytes := ("    let r00000c81: u32 = r00000c7e & r00000c80;\n" : String).toByteArray.data.toList
theorem checked3105 : bytes3105=statementBytes 3201 (op3105.map lower) ∧ bytes3105.length=48 := by core033_kernel_decide
def op3106 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3106 : Bytes := ("    let r00000c82: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3106 : bytes3106=statementBytes 3202 (op3106.map lower) ∧ bytes3106.length=41 := by core033_kernel_decide
def op3107 : List WordIR.Op := [.bxor 616 3202]
def bytes3107 : Bytes := ("    let r00000c83: u32 = r00000268 ^ r00000c82;\n" : String).toByteArray.data.toList
theorem checked3107 : bytes3107=statementBytes 3203 (op3107.map lower) ∧ bytes3107.length=48 := by core033_kernel_decide
def op3108 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3108 : Bytes := ("    let r00000c84: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3108 : bytes3108=statementBytes 3204 (op3108.map lower) ∧ bytes3108.length=41 := by core033_kernel_decide
def op3109 : List WordIR.Op := [.bnot 3204]
def bytes3109 : Bytes := ("    let r00000c85: u32 = !r00000c84;\n" : String).toByteArray.data.toList
theorem checked3109 : bytes3109=statementBytes 3205 (op3109.map lower) ∧ bytes3109.length=37 := by core033_kernel_decide
def op3110 : List WordIR.Op := [.bxor 3203 3205]
def bytes3110 : Bytes := ("    let r00000c86: u32 = r00000c83 ^ r00000c85;\n" : String).toByteArray.data.toList
theorem checked3110 : bytes3110=statementBytes 3206 (op3110.map lower) ∧ bytes3110.length=48 := by core033_kernel_decide
def op3111 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3111 : Bytes := ("    let r00000c87: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3111 : bytes3111=statementBytes 3207 (op3111.map lower) ∧ bytes3111.length=41 := by core033_kernel_decide
def op3112 : List WordIR.Op := [.bxor 616 3207]
def bytes3112 : Bytes := ("    let r00000c88: u32 = r00000268 ^ r00000c87;\n" : String).toByteArray.data.toList
theorem checked3112 : bytes3112=statementBytes 3208 (op3112.map lower) ∧ bytes3112.length=48 := by core033_kernel_decide
def op3113 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3113 : Bytes := ("    let r00000c89: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3113 : bytes3113=statementBytes 3209 (op3113.map lower) ∧ bytes3113.length=41 := by core033_kernel_decide
def op3114 : List WordIR.Op := [.bnot 3209]
def bytes3114 : Bytes := ("    let r00000c8a: u32 = !r00000c89;\n" : String).toByteArray.data.toList
theorem checked3114 : bytes3114=statementBytes 3210 (op3114.map lower) ∧ bytes3114.length=37 := by core033_kernel_decide
def op3115 : List WordIR.Op := [.badd 3208 3210]
def bytes3115 : Bytes := ("    let r00000c8b: u32 = r00000c88.wrapping_add(r00000c8a);\n" : String).toByteArray.data.toList
theorem checked3115 : bytes3115=statementBytes 3211 (op3115.map lower) ∧ bytes3115.length=60 := by core033_kernel_decide
def op3116 : List WordIR.Op := [.bnot 3211]
def bytes3116 : Bytes := ("    let r00000c8c: u32 = !r00000c8b;\n" : String).toByteArray.data.toList
theorem checked3116 : bytes3116=statementBytes 3212 (op3116.map lower) ∧ bytes3116.length=37 := by core033_kernel_decide
def op3117 : List WordIR.Op := [.band 3206 3212]
def bytes3117 : Bytes := ("    let r00000c8d: u32 = r00000c86 & r00000c8c;\n" : String).toByteArray.data.toList
theorem checked3117 : bytes3117=statementBytes 3213 (op3117.map lower) ∧ bytes3117.length=48 := by core033_kernel_decide
def op3118 : List WordIR.Op := [.bxor 3201 3213]
def bytes3118 : Bytes := ("    let r00000c8e: u32 = r00000c81 ^ r00000c8d;\n" : String).toByteArray.data.toList
theorem checked3118 : bytes3118=statementBytes 3214 (op3118.map lower) ∧ bytes3118.length=48 := by core033_kernel_decide
def op3119 : List WordIR.Op := [.shr 3214 31]
def bytes3119 : Bytes := ("    let r00000c8f: u32 = r00000c8e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3119 : bytes3119=statementBytes 3215 (op3119.map lower) ∧ bytes3119.length=54 := by core033_kernel_decide
def op3120 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3120 : Bytes := ("    let r00000c90: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3120 : bytes3120=statementBytes 3216 (op3120.map lower) ∧ bytes3120.length=41 := by core033_kernel_decide
def op3121 : List WordIR.Op := [.bxor 3215 3216]
def bytes3121 : Bytes := ("    let r00000c91: u32 = r00000c8f ^ r00000c90;\n" : String).toByteArray.data.toList
theorem checked3121 : bytes3121=statementBytes 3217 (op3121.map lower) ∧ bytes3121.length=48 := by core033_kernel_decide
def op3122 : List WordIR.Op := [.bnot 3217]
def bytes3122 : Bytes := ("    let r00000c92: u32 = !r00000c91;\n" : String).toByteArray.data.toList
theorem checked3122 : bytes3122=statementBytes 3218 (op3122.map lower) ∧ bytes3122.length=37 := by core033_kernel_decide
def op3123 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3123 : Bytes := ("    let r00000c93: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3123 : bytes3123=statementBytes 3219 (op3123.map lower) ∧ bytes3123.length=41 := by core033_kernel_decide
def op3124 : List WordIR.Op := [.badd 3218 3219]
def bytes3124 : Bytes := ("    let r00000c94: u32 = r00000c92.wrapping_add(r00000c93);\n" : String).toByteArray.data.toList
theorem checked3124 : bytes3124=statementBytes 3220 (op3124.map lower) ∧ bytes3124.length=60 := by core033_kernel_decide
def op3125 : List WordIR.Op := [.bnot 3220]
def bytes3125 : Bytes := ("    let r00000c95: u32 = !r00000c94;\n" : String).toByteArray.data.toList
theorem checked3125 : bytes3125=statementBytes 3221 (op3125.map lower) ∧ bytes3125.length=37 := by core033_kernel_decide
def op3126 : List WordIR.Op := [.band 3221 1869]
def bytes3126 : Bytes := ("    let r00000c96: u32 = r00000c95 & r0000074d;\n" : String).toByteArray.data.toList
theorem checked3126 : bytes3126=statementBytes 3222 (op3126.map lower) ∧ bytes3126.length=48 := by core033_kernel_decide
def op3127 : List WordIR.Op := [.bxor 3196 3222]
def bytes3127 : Bytes := ("    let r00000c97: u32 = r00000c7c ^ r00000c96;\n" : String).toByteArray.data.toList
theorem checked3127 : bytes3127=statementBytes 3223 (op3127.map lower) ∧ bytes3127.length=48 := by core033_kernel_decide
def op3128 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3128 : Bytes := ("    let r00000c98: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3128 : bytes3128=statementBytes 3224 (op3128.map lower) ∧ bytes3128.length=41 := by core033_kernel_decide
def op3129 : List WordIR.Op := [.bxor 616 3224]
def bytes3129 : Bytes := ("    let r00000c99: u32 = r00000268 ^ r00000c98;\n" : String).toByteArray.data.toList
theorem checked3129 : bytes3129=statementBytes 3225 (op3129.map lower) ∧ bytes3129.length=48 := by core033_kernel_decide
def op3130 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3130 : Bytes := ("    let r00000c9a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3130 : bytes3130=statementBytes 3226 (op3130.map lower) ∧ bytes3130.length=41 := by core033_kernel_decide
def op3131 : List WordIR.Op := [.bnot 3226]
def bytes3131 : Bytes := ("    let r00000c9b: u32 = !r00000c9a;\n" : String).toByteArray.data.toList
theorem checked3131 : bytes3131=statementBytes 3227 (op3131.map lower) ∧ bytes3131.length=37 := by core033_kernel_decide
def op3132 : List WordIR.Op := [.band 3225 3227]
def bytes3132 : Bytes := ("    let r00000c9c: u32 = r00000c99 & r00000c9b;\n" : String).toByteArray.data.toList
theorem checked3132 : bytes3132=statementBytes 3228 (op3132.map lower) ∧ bytes3132.length=48 := by core033_kernel_decide
def op3133 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3133 : Bytes := ("    let r00000c9d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3133 : bytes3133=statementBytes 3229 (op3133.map lower) ∧ bytes3133.length=41 := by core033_kernel_decide
def op3134 : List WordIR.Op := [.bxor 616 3229]
def bytes3134 : Bytes := ("    let r00000c9e: u32 = r00000268 ^ r00000c9d;\n" : String).toByteArray.data.toList
theorem checked3134 : bytes3134=statementBytes 3230 (op3134.map lower) ∧ bytes3134.length=48 := by core033_kernel_decide
def op3135 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3135 : Bytes := ("    let r00000c9f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3135 : bytes3135=statementBytes 3231 (op3135.map lower) ∧ bytes3135.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3072,op3073,op3074,op3075,op3076,op3077,op3078,op3079,op3080,op3081,op3082,op3083,op3084,op3085,op3086,op3087,op3088,op3089,op3090,op3091,op3092,op3093,op3094,op3095,op3096,op3097,op3098,op3099,op3100,op3101,op3102,op3103,op3104,op3105,op3106,op3107,op3108,op3109,op3110,op3111,op3112,op3113,op3114,op3115,op3116,op3117,op3118,op3119,op3120,op3121,op3122,op3123,op3124,op3125,op3126,op3127,op3128,op3129,op3130,op3131,op3132,op3133,op3134,op3135]
def chunks : List Bytes := [bytes3072,bytes3073,bytes3074,bytes3075,bytes3076,bytes3077,bytes3078,bytes3079,bytes3080,bytes3081,bytes3082,bytes3083,bytes3084,bytes3085,bytes3086,bytes3087,bytes3088,bytes3089,bytes3090,bytes3091,bytes3092,bytes3093,bytes3094,bytes3095,bytes3096,bytes3097,bytes3098,bytes3099,bytes3100,bytes3101,bytes3102,bytes3103,bytes3104,bytes3105,bytes3106,bytes3107,bytes3108,bytes3109,bytes3110,bytes3111,bytes3112,bytes3113,bytes3114,bytes3115,bytes3116,bytes3117,bytes3118,bytes3119,bytes3120,bytes3121,bytes3122,bytes3123,bytes3124,bytes3125,bytes3126,bytes3127,bytes3128,bytes3129,bytes3130,bytes3131,bytes3132,bytes3133,bytes3134,bytes3135]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3168 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3072.1 (.cons _ _ _ _ _ checked3073.1 (.cons _ _ _ _ _ checked3074.1 (.cons _ _ _ _ _ checked3075.1 (.cons _ _ _ _ _ checked3076.1 (.cons _ _ _ _ _ checked3077.1 (.cons _ _ _ _ _ checked3078.1 (.cons _ _ _ _ _ checked3079.1 (.cons _ _ _ _ _ checked3080.1 (.cons _ _ _ _ _ checked3081.1 (.cons _ _ _ _ _ checked3082.1 (.cons _ _ _ _ _ checked3083.1 (.cons _ _ _ _ _ checked3084.1 (.cons _ _ _ _ _ checked3085.1 (.cons _ _ _ _ _ checked3086.1 (.cons _ _ _ _ _ checked3087.1 (.cons _ _ _ _ _ checked3088.1 (.cons _ _ _ _ _ checked3089.1 (.cons _ _ _ _ _ checked3090.1 (.cons _ _ _ _ _ checked3091.1 (.cons _ _ _ _ _ checked3092.1 (.cons _ _ _ _ _ checked3093.1 (.cons _ _ _ _ _ checked3094.1 (.cons _ _ _ _ _ checked3095.1 (.cons _ _ _ _ _ checked3096.1 (.cons _ _ _ _ _ checked3097.1 (.cons _ _ _ _ _ checked3098.1 (.cons _ _ _ _ _ checked3099.1 (.cons _ _ _ _ _ checked3100.1 (.cons _ _ _ _ _ checked3101.1 (.cons _ _ _ _ _ checked3102.1 (.cons _ _ _ _ _ checked3103.1 (.cons _ _ _ _ _ checked3104.1 (.cons _ _ _ _ _ checked3105.1 (.cons _ _ _ _ _ checked3106.1 (.cons _ _ _ _ _ checked3107.1 (.cons _ _ _ _ _ checked3108.1 (.cons _ _ _ _ _ checked3109.1 (.cons _ _ _ _ _ checked3110.1 (.cons _ _ _ _ _ checked3111.1 (.cons _ _ _ _ _ checked3112.1 (.cons _ _ _ _ _ checked3113.1 (.cons _ _ _ _ _ checked3114.1 (.cons _ _ _ _ _ checked3115.1 (.cons _ _ _ _ _ checked3116.1 (.cons _ _ _ _ _ checked3117.1 (.cons _ _ _ _ _ checked3118.1 (.cons _ _ _ _ _ checked3119.1 (.cons _ _ _ _ _ checked3120.1 (.cons _ _ _ _ _ checked3121.1 (.cons _ _ _ _ _ checked3122.1 (.cons _ _ _ _ _ checked3123.1 (.cons _ _ _ _ _ checked3124.1 (.cons _ _ _ _ _ checked3125.1 (.cons _ _ _ _ _ checked3126.1 (.cons _ _ _ _ _ checked3127.1 (.cons _ _ _ _ _ checked3128.1 (.cons _ _ _ _ _ checked3129.1 (.cons _ _ _ _ _ checked3130.1 (.cons _ _ _ _ _ checked3131.1 (.cons _ _ _ _ _ checked3132.1 (.cons _ _ _ _ _ checked3133.1 (.cons _ _ _ _ _ checked3134.1 (.cons _ _ _ _ _ checked3135.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3168 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3072.2,checked3073.2,checked3074.2,checked3075.2,checked3076.2,checked3077.2,checked3078.2,checked3079.2,checked3080.2,checked3081.2,checked3082.2,checked3083.2,checked3084.2,checked3085.2,checked3086.2,checked3087.2,checked3088.2,checked3089.2,checked3090.2,checked3091.2,checked3092.2,checked3093.2,checked3094.2,checked3095.2,checked3096.2,checked3097.2,checked3098.2,checked3099.2,checked3100.2,checked3101.2,checked3102.2,checked3103.2,checked3104.2,checked3105.2,checked3106.2,checked3107.2,checked3108.2,checked3109.2,checked3110.2,checked3111.2,checked3112.2,checked3113.2,checked3114.2,checked3115.2,checked3116.2,checked3117.2,checked3118.2,checked3119.2,checked3120.2,checked3121.2,checked3122.2,checked3123.2,checked3124.2,checked3125.2,checked3126.2,checked3127.2,checked3128.2,checked3129.2,checked3130.2,checked3131.2,checked3132.2,checked3133.2,checked3134.2,checked3135.2]
  decide
end ArtifactPairedPathRoundGroup48
