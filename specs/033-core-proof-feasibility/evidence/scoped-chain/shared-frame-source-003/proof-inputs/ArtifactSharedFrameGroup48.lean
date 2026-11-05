import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup48
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3072 : List WordIR.Op := [.badd 3010 3103]
def bytes3072 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c2b: u32 = r00000bc2.wrapping_add(r00000c1f);\n" : String)
theorem checked3072 : bytes3072=statementBytes 3115 (op3072.map lower) ∧ bytes3072.length=60 := by core033_kernel_decide
def op3073 : List WordIR.Op := [.rotr 3115 6]
def bytes3073 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c2c: u32 = r00000c2b.rotate_right(0x00000006_u32);\n" : String)
theorem checked3073 : bytes3073=statementBytes 3116 (op3073.map lower) ∧ bytes3073.length=65 := by core033_kernel_decide
def op3074 : List WordIR.Op := [.rotr 3115 11]
def bytes3074 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c2d: u32 = r00000c2b.rotate_right(0x0000000b_u32);\n" : String)
theorem checked3074 : bytes3074=statementBytes 3117 (op3074.map lower) ∧ bytes3074.length=65 := by core033_kernel_decide
def op3075 : List WordIR.Op := [.bxor 3116 3117]
def bytes3075 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c2e: u32 = r00000c2c ^ r00000c2d;\n" : String)
theorem checked3075 : bytes3075=statementBytes 3118 (op3075.map lower) ∧ bytes3075.length=48 := by core033_kernel_decide
def op3076 : List WordIR.Op := [.rotr 3115 25]
def bytes3076 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c2f: u32 = r00000c2b.rotate_right(0x00000019_u32);\n" : String)
theorem checked3076 : bytes3076=statementBytes 3119 (op3076.map lower) ∧ bytes3076.length=65 := by core033_kernel_decide
def op3077 : List WordIR.Op := [.bxor 3118 3119]
def bytes3077 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c30: u32 = r00000c2e ^ r00000c2f;\n" : String)
theorem checked3077 : bytes3077=statementBytes 3120 (op3077.map lower) ∧ bytes3077.length=48 := by core033_kernel_decide
def op3078 : List WordIR.Op := [.badd 3037 3120]
def bytes3078 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c31: u32 = r00000bdd.wrapping_add(r00000c30);\n" : String)
theorem checked3078 : bytes3078=statementBytes 3121 (op3078.map lower) ∧ bytes3078.length=60 := by core033_kernel_decide
def op3079 : List WordIR.Op := [.band 3115 3089]
def bytes3079 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c32: u32 = r00000c2b & r00000c11;\n" : String)
theorem checked3079 : bytes3079=statementBytes 3122 (op3079.map lower) ∧ bytes3079.length=48 := by core033_kernel_decide
def op3080 : List WordIR.Op := [.bnot 3115]
def bytes3080 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c33: u32 = !r00000c2b;\n" : String)
theorem checked3080 : bytes3080=statementBytes 3123 (op3080.map lower) ∧ bytes3080.length=37 := by core033_kernel_decide
def op3081 : List WordIR.Op := [.band 3123 3063]
def bytes3081 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c34: u32 = r00000c33 & r00000bf7;\n" : String)
theorem checked3081 : bytes3081=statementBytes 3124 (op3081.map lower) ∧ bytes3081.length=48 := by core033_kernel_decide
def op3082 : List WordIR.Op := [.bxor 3122 3124]
def bytes3082 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c35: u32 = r00000c32 ^ r00000c34;\n" : String)
theorem checked3082 : bytes3082=statementBytes 3125 (op3082.map lower) ∧ bytes3082.length=48 := by core033_kernel_decide
def op3083 : List WordIR.Op := [.badd 3121 3125]
def bytes3083 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c36: u32 = r00000c31.wrapping_add(r00000c35);\n" : String)
theorem checked3083 : bytes3083=statementBytes 3126 (op3083.map lower) ∧ bytes3083.length=60 := by core033_kernel_decide
def op3084 : List WordIR.Op := [.literal (BitVec.ofNat 32 1986661051)]
def bytes3084 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c37: u32 = 0x766a0abb_u32;\n" : String)
theorem checked3084 : bytes3084=statementBytes 3127 (op3084.map lower) ∧ bytes3084.length=41 := by core033_kernel_decide
def op3085 : List WordIR.Op := [.badd 3126 3127]
def bytes3085 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c38: u32 = r00000c36.wrapping_add(r00000c37);\n" : String)
theorem checked3085 : bytes3085=statementBytes 3128 (op3085.map lower) ∧ bytes3085.length=60 := by core033_kernel_decide
def op3086 : List WordIR.Op := [.badd 3128 1814]
def bytes3086 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c39: u32 = r00000c38.wrapping_add(r00000716);\n" : String)
theorem checked3086 : bytes3086=statementBytes 3129 (op3086.map lower) ∧ bytes3086.length=60 := by core033_kernel_decide
def op3087 : List WordIR.Op := [.rotr 3114 2]
def bytes3087 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c3a: u32 = r00000c2a.rotate_right(0x00000002_u32);\n" : String)
theorem checked3087 : bytes3087=statementBytes 3130 (op3087.map lower) ∧ bytes3087.length=65 := by core033_kernel_decide
def op3088 : List WordIR.Op := [.rotr 3114 13]
def bytes3088 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c3b: u32 = r00000c2a.rotate_right(0x0000000d_u32);\n" : String)
theorem checked3088 : bytes3088=statementBytes 3131 (op3088.map lower) ∧ bytes3088.length=65 := by core033_kernel_decide
def op3089 : List WordIR.Op := [.bxor 3130 3131]
def bytes3089 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c3c: u32 = r00000c3a ^ r00000c3b;\n" : String)
theorem checked3089 : bytes3089=statementBytes 3132 (op3089.map lower) ∧ bytes3089.length=48 := by core033_kernel_decide
def op3090 : List WordIR.Op := [.rotr 3114 22]
def bytes3090 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c3d: u32 = r00000c2a.rotate_right(0x00000016_u32);\n" : String)
theorem checked3090 : bytes3090=statementBytes 3133 (op3090.map lower) ∧ bytes3090.length=65 := by core033_kernel_decide
def op3091 : List WordIR.Op := [.bxor 3132 3133]
def bytes3091 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c3e: u32 = r00000c3c ^ r00000c3d;\n" : String)
theorem checked3091 : bytes3091=statementBytes 3134 (op3091.map lower) ∧ bytes3091.length=48 := by core033_kernel_decide
def op3092 : List WordIR.Op := [.band 3114 3088]
def bytes3092 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c3f: u32 = r00000c2a & r00000c10;\n" : String)
theorem checked3092 : bytes3092=statementBytes 3135 (op3092.map lower) ∧ bytes3092.length=48 := by core033_kernel_decide
def op3093 : List WordIR.Op := [.band 3114 3062]
def bytes3093 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c40: u32 = r00000c2a & r00000bf6;\n" : String)
theorem checked3093 : bytes3093=statementBytes 3136 (op3093.map lower) ∧ bytes3093.length=48 := by core033_kernel_decide
def op3094 : List WordIR.Op := [.bxor 3135 3136]
def bytes3094 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c41: u32 = r00000c3f ^ r00000c40;\n" : String)
theorem checked3094 : bytes3094=statementBytes 3137 (op3094.map lower) ∧ bytes3094.length=48 := by core033_kernel_decide
def op3095 : List WordIR.Op := [.bxor 3137 3109]
def bytes3095 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c42: u32 = r00000c41 ^ r00000c25;\n" : String)
theorem checked3095 : bytes3095=statementBytes 3138 (op3095.map lower) ∧ bytes3095.length=48 := by core033_kernel_decide
def op3096 : List WordIR.Op := [.badd 3134 3138]
def bytes3096 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c43: u32 = r00000c3e.wrapping_add(r00000c42);\n" : String)
theorem checked3096 : bytes3096=statementBytes 3139 (op3096.map lower) ∧ bytes3096.length=60 := by core033_kernel_decide
def op3097 : List WordIR.Op := [.badd 3129 3139]
def bytes3097 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c44: u32 = r00000c39.wrapping_add(r00000c43);\n" : String)
theorem checked3097 : bytes3097=statementBytes 3140 (op3097.map lower) ∧ bytes3097.length=60 := by core033_kernel_decide
def op3098 : List WordIR.Op := [.badd 3036 3129]
def bytes3098 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c45: u32 = r00000bdc.wrapping_add(r00000c39);\n" : String)
theorem checked3098 : bytes3098=statementBytes 3141 (op3098.map lower) ∧ bytes3098.length=60 := by core033_kernel_decide
def op3099 : List WordIR.Op := [.rotr 3141 6]
def bytes3099 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c46: u32 = r00000c45.rotate_right(0x00000006_u32);\n" : String)
theorem checked3099 : bytes3099=statementBytes 3142 (op3099.map lower) ∧ bytes3099.length=65 := by core033_kernel_decide
def op3100 : List WordIR.Op := [.rotr 3141 11]
def bytes3100 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c47: u32 = r00000c45.rotate_right(0x0000000b_u32);\n" : String)
theorem checked3100 : bytes3100=statementBytes 3143 (op3100.map lower) ∧ bytes3100.length=65 := by core033_kernel_decide
def op3101 : List WordIR.Op := [.bxor 3142 3143]
def bytes3101 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c48: u32 = r00000c46 ^ r00000c47;\n" : String)
theorem checked3101 : bytes3101=statementBytes 3144 (op3101.map lower) ∧ bytes3101.length=48 := by core033_kernel_decide
def op3102 : List WordIR.Op := [.rotr 3141 25]
def bytes3102 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c49: u32 = r00000c45.rotate_right(0x00000019_u32);\n" : String)
theorem checked3102 : bytes3102=statementBytes 3145 (op3102.map lower) ∧ bytes3102.length=65 := by core033_kernel_decide
def op3103 : List WordIR.Op := [.bxor 3144 3145]
def bytes3103 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c4a: u32 = r00000c48 ^ r00000c49;\n" : String)
theorem checked3103 : bytes3103=statementBytes 3146 (op3103.map lower) ∧ bytes3103.length=48 := by core033_kernel_decide
def op3104 : List WordIR.Op := [.badd 3063 3146]
def bytes3104 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c4b: u32 = r00000bf7.wrapping_add(r00000c4a);\n" : String)
theorem checked3104 : bytes3104=statementBytes 3147 (op3104.map lower) ∧ bytes3104.length=60 := by core033_kernel_decide
def op3105 : List WordIR.Op := [.band 3141 3115]
def bytes3105 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c4c: u32 = r00000c45 & r00000c2b;\n" : String)
theorem checked3105 : bytes3105=statementBytes 3148 (op3105.map lower) ∧ bytes3105.length=48 := by core033_kernel_decide
def op3106 : List WordIR.Op := [.bnot 3141]
def bytes3106 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c4d: u32 = !r00000c45;\n" : String)
theorem checked3106 : bytes3106=statementBytes 3149 (op3106.map lower) ∧ bytes3106.length=37 := by core033_kernel_decide
def op3107 : List WordIR.Op := [.band 3149 3089]
def bytes3107 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c4e: u32 = r00000c4d & r00000c11;\n" : String)
theorem checked3107 : bytes3107=statementBytes 3150 (op3107.map lower) ∧ bytes3107.length=48 := by core033_kernel_decide
def op3108 : List WordIR.Op := [.bxor 3148 3150]
def bytes3108 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c4f: u32 = r00000c4c ^ r00000c4e;\n" : String)
theorem checked3108 : bytes3108=statementBytes 3151 (op3108.map lower) ∧ bytes3108.length=48 := by core033_kernel_decide
def op3109 : List WordIR.Op := [.badd 3147 3151]
def bytes3109 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c50: u32 = r00000c4b.wrapping_add(r00000c4f);\n" : String)
theorem checked3109 : bytes3109=statementBytes 3152 (op3109.map lower) ∧ bytes3109.length=60 := by core033_kernel_decide
def op3110 : List WordIR.Op := [.literal (BitVec.ofNat 32 2177026350)]
def bytes3110 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c51: u32 = 0x81c2c92e_u32;\n" : String)
theorem checked3110 : bytes3110=statementBytes 3153 (op3110.map lower) ∧ bytes3110.length=41 := by core033_kernel_decide
def op3111 : List WordIR.Op := [.badd 3152 3153]
def bytes3111 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c52: u32 = r00000c50.wrapping_add(r00000c51);\n" : String)
theorem checked3111 : bytes3111=statementBytes 3154 (op3111.map lower) ∧ bytes3111.length=60 := by core033_kernel_decide
def op3112 : List WordIR.Op := [.badd 3154 1827]
def bytes3112 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c53: u32 = r00000c52.wrapping_add(r00000723);\n" : String)
theorem checked3112 : bytes3112=statementBytes 3155 (op3112.map lower) ∧ bytes3112.length=60 := by core033_kernel_decide
def op3113 : List WordIR.Op := [.rotr 3140 2]
def bytes3113 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c54: u32 = r00000c44.rotate_right(0x00000002_u32);\n" : String)
theorem checked3113 : bytes3113=statementBytes 3156 (op3113.map lower) ∧ bytes3113.length=65 := by core033_kernel_decide
def op3114 : List WordIR.Op := [.rotr 3140 13]
def bytes3114 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c55: u32 = r00000c44.rotate_right(0x0000000d_u32);\n" : String)
theorem checked3114 : bytes3114=statementBytes 3157 (op3114.map lower) ∧ bytes3114.length=65 := by core033_kernel_decide
def op3115 : List WordIR.Op := [.bxor 3156 3157]
def bytes3115 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c56: u32 = r00000c54 ^ r00000c55;\n" : String)
theorem checked3115 : bytes3115=statementBytes 3158 (op3115.map lower) ∧ bytes3115.length=48 := by core033_kernel_decide
def op3116 : List WordIR.Op := [.rotr 3140 22]
def bytes3116 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c57: u32 = r00000c44.rotate_right(0x00000016_u32);\n" : String)
theorem checked3116 : bytes3116=statementBytes 3159 (op3116.map lower) ∧ bytes3116.length=65 := by core033_kernel_decide
def op3117 : List WordIR.Op := [.bxor 3158 3159]
def bytes3117 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c58: u32 = r00000c56 ^ r00000c57;\n" : String)
theorem checked3117 : bytes3117=statementBytes 3160 (op3117.map lower) ∧ bytes3117.length=48 := by core033_kernel_decide
def op3118 : List WordIR.Op := [.band 3140 3114]
def bytes3118 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c59: u32 = r00000c44 & r00000c2a;\n" : String)
theorem checked3118 : bytes3118=statementBytes 3161 (op3118.map lower) ∧ bytes3118.length=48 := by core033_kernel_decide
def op3119 : List WordIR.Op := [.band 3140 3088]
def bytes3119 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c5a: u32 = r00000c44 & r00000c10;\n" : String)
theorem checked3119 : bytes3119=statementBytes 3162 (op3119.map lower) ∧ bytes3119.length=48 := by core033_kernel_decide
def op3120 : List WordIR.Op := [.bxor 3161 3162]
def bytes3120 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c5b: u32 = r00000c59 ^ r00000c5a;\n" : String)
theorem checked3120 : bytes3120=statementBytes 3163 (op3120.map lower) ∧ bytes3120.length=48 := by core033_kernel_decide
def op3121 : List WordIR.Op := [.bxor 3163 3135]
def bytes3121 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c5c: u32 = r00000c5b ^ r00000c3f;\n" : String)
theorem checked3121 : bytes3121=statementBytes 3164 (op3121.map lower) ∧ bytes3121.length=48 := by core033_kernel_decide
def op3122 : List WordIR.Op := [.badd 3160 3164]
def bytes3122 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c5d: u32 = r00000c58.wrapping_add(r00000c5c);\n" : String)
theorem checked3122 : bytes3122=statementBytes 3165 (op3122.map lower) ∧ bytes3122.length=60 := by core033_kernel_decide
def op3123 : List WordIR.Op := [.badd 3155 3165]
def bytes3123 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c5e: u32 = r00000c53.wrapping_add(r00000c5d);\n" : String)
theorem checked3123 : bytes3123=statementBytes 3166 (op3123.map lower) ∧ bytes3123.length=60 := by core033_kernel_decide
def op3124 : List WordIR.Op := [.badd 3062 3155]
def bytes3124 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c5f: u32 = r00000bf6.wrapping_add(r00000c53);\n" : String)
theorem checked3124 : bytes3124=statementBytes 3167 (op3124.map lower) ∧ bytes3124.length=60 := by core033_kernel_decide
def op3125 : List WordIR.Op := [.rotr 3167 6]
def bytes3125 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c60: u32 = r00000c5f.rotate_right(0x00000006_u32);\n" : String)
theorem checked3125 : bytes3125=statementBytes 3168 (op3125.map lower) ∧ bytes3125.length=65 := by core033_kernel_decide
def op3126 : List WordIR.Op := [.rotr 3167 11]
def bytes3126 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c61: u32 = r00000c5f.rotate_right(0x0000000b_u32);\n" : String)
theorem checked3126 : bytes3126=statementBytes 3169 (op3126.map lower) ∧ bytes3126.length=65 := by core033_kernel_decide
def op3127 : List WordIR.Op := [.bxor 3168 3169]
def bytes3127 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c62: u32 = r00000c60 ^ r00000c61;\n" : String)
theorem checked3127 : bytes3127=statementBytes 3170 (op3127.map lower) ∧ bytes3127.length=48 := by core033_kernel_decide
def op3128 : List WordIR.Op := [.rotr 3167 25]
def bytes3128 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c63: u32 = r00000c5f.rotate_right(0x00000019_u32);\n" : String)
theorem checked3128 : bytes3128=statementBytes 3171 (op3128.map lower) ∧ bytes3128.length=65 := by core033_kernel_decide
def op3129 : List WordIR.Op := [.bxor 3170 3171]
def bytes3129 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c64: u32 = r00000c62 ^ r00000c63;\n" : String)
theorem checked3129 : bytes3129=statementBytes 3172 (op3129.map lower) ∧ bytes3129.length=48 := by core033_kernel_decide
def op3130 : List WordIR.Op := [.badd 3089 3172]
def bytes3130 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c65: u32 = r00000c11.wrapping_add(r00000c64);\n" : String)
theorem checked3130 : bytes3130=statementBytes 3173 (op3130.map lower) ∧ bytes3130.length=60 := by core033_kernel_decide
def op3131 : List WordIR.Op := [.band 3167 3141]
def bytes3131 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c66: u32 = r00000c5f & r00000c45;\n" : String)
theorem checked3131 : bytes3131=statementBytes 3174 (op3131.map lower) ∧ bytes3131.length=48 := by core033_kernel_decide
def op3132 : List WordIR.Op := [.bnot 3167]
def bytes3132 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c67: u32 = !r00000c5f;\n" : String)
theorem checked3132 : bytes3132=statementBytes 3175 (op3132.map lower) ∧ bytes3132.length=37 := by core033_kernel_decide
def op3133 : List WordIR.Op := [.band 3175 3115]
def bytes3133 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c68: u32 = r00000c67 & r00000c2b;\n" : String)
theorem checked3133 : bytes3133=statementBytes 3176 (op3133.map lower) ∧ bytes3133.length=48 := by core033_kernel_decide
def op3134 : List WordIR.Op := [.bxor 3174 3176]
def bytes3134 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c69: u32 = r00000c66 ^ r00000c68;\n" : String)
theorem checked3134 : bytes3134=statementBytes 3177 (op3134.map lower) ∧ bytes3134.length=48 := by core033_kernel_decide
def op3135 : List WordIR.Op := [.badd 3173 3177]
def bytes3135 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000c6a: u32 = r00000c65.wrapping_add(r00000c69);\n" : String)
theorem checked3135 : bytes3135=statementBytes 3178 (op3135.map lower) ∧ bytes3135.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3072,op3073,op3074,op3075,op3076,op3077,op3078,op3079,op3080,op3081,op3082,op3083,op3084,op3085,op3086,op3087,op3088,op3089,op3090,op3091,op3092,op3093,op3094,op3095,op3096,op3097,op3098,op3099,op3100,op3101,op3102,op3103,op3104,op3105,op3106,op3107,op3108,op3109,op3110,op3111,op3112,op3113,op3114,op3115,op3116,op3117,op3118,op3119,op3120,op3121,op3122,op3123,op3124,op3125,op3126,op3127,op3128,op3129,op3130,op3131,op3132,op3133,op3134,op3135]
def chunks : List Bytes := [bytes3072,bytes3073,bytes3074,bytes3075,bytes3076,bytes3077,bytes3078,bytes3079,bytes3080,bytes3081,bytes3082,bytes3083,bytes3084,bytes3085,bytes3086,bytes3087,bytes3088,bytes3089,bytes3090,bytes3091,bytes3092,bytes3093,bytes3094,bytes3095,bytes3096,bytes3097,bytes3098,bytes3099,bytes3100,bytes3101,bytes3102,bytes3103,bytes3104,bytes3105,bytes3106,bytes3107,bytes3108,bytes3109,bytes3110,bytes3111,bytes3112,bytes3113,bytes3114,bytes3115,bytes3116,bytes3117,bytes3118,bytes3119,bytes3120,bytes3121,bytes3122,bytes3123,bytes3124,bytes3125,bytes3126,bytes3127,bytes3128,bytes3129,bytes3130,bytes3131,bytes3132,bytes3133,bytes3134,bytes3135]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3115 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3072.1 (.cons _ _ _ _ _ checked3073.1 (.cons _ _ _ _ _ checked3074.1 (.cons _ _ _ _ _ checked3075.1 (.cons _ _ _ _ _ checked3076.1 (.cons _ _ _ _ _ checked3077.1 (.cons _ _ _ _ _ checked3078.1 (.cons _ _ _ _ _ checked3079.1 (.cons _ _ _ _ _ checked3080.1 (.cons _ _ _ _ _ checked3081.1 (.cons _ _ _ _ _ checked3082.1 (.cons _ _ _ _ _ checked3083.1 (.cons _ _ _ _ _ checked3084.1 (.cons _ _ _ _ _ checked3085.1 (.cons _ _ _ _ _ checked3086.1 (.cons _ _ _ _ _ checked3087.1 (.cons _ _ _ _ _ checked3088.1 (.cons _ _ _ _ _ checked3089.1 (.cons _ _ _ _ _ checked3090.1 (.cons _ _ _ _ _ checked3091.1 (.cons _ _ _ _ _ checked3092.1 (.cons _ _ _ _ _ checked3093.1 (.cons _ _ _ _ _ checked3094.1 (.cons _ _ _ _ _ checked3095.1 (.cons _ _ _ _ _ checked3096.1 (.cons _ _ _ _ _ checked3097.1 (.cons _ _ _ _ _ checked3098.1 (.cons _ _ _ _ _ checked3099.1 (.cons _ _ _ _ _ checked3100.1 (.cons _ _ _ _ _ checked3101.1 (.cons _ _ _ _ _ checked3102.1 (.cons _ _ _ _ _ checked3103.1 (.cons _ _ _ _ _ checked3104.1 (.cons _ _ _ _ _ checked3105.1 (.cons _ _ _ _ _ checked3106.1 (.cons _ _ _ _ _ checked3107.1 (.cons _ _ _ _ _ checked3108.1 (.cons _ _ _ _ _ checked3109.1 (.cons _ _ _ _ _ checked3110.1 (.cons _ _ _ _ _ checked3111.1 (.cons _ _ _ _ _ checked3112.1 (.cons _ _ _ _ _ checked3113.1 (.cons _ _ _ _ _ checked3114.1 (.cons _ _ _ _ _ checked3115.1 (.cons _ _ _ _ _ checked3116.1 (.cons _ _ _ _ _ checked3117.1 (.cons _ _ _ _ _ checked3118.1 (.cons _ _ _ _ _ checked3119.1 (.cons _ _ _ _ _ checked3120.1 (.cons _ _ _ _ _ checked3121.1 (.cons _ _ _ _ _ checked3122.1 (.cons _ _ _ _ _ checked3123.1 (.cons _ _ _ _ _ checked3124.1 (.cons _ _ _ _ _ checked3125.1 (.cons _ _ _ _ _ checked3126.1 (.cons _ _ _ _ _ checked3127.1 (.cons _ _ _ _ _ checked3128.1 (.cons _ _ _ _ _ checked3129.1 (.cons _ _ _ _ _ checked3130.1 (.cons _ _ _ _ _ checked3131.1 (.cons _ _ _ _ _ checked3132.1 (.cons _ _ _ _ _ checked3133.1 (.cons _ _ _ _ _ checked3134.1 (.cons _ _ _ _ _ checked3135.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3115 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3484 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3072.2,checked3073.2,checked3074.2,checked3075.2,checked3076.2,checked3077.2,checked3078.2,checked3079.2,checked3080.2,checked3081.2,checked3082.2,checked3083.2,checked3084.2,checked3085.2,checked3086.2,checked3087.2,checked3088.2,checked3089.2,checked3090.2,checked3091.2,checked3092.2,checked3093.2,checked3094.2,checked3095.2,checked3096.2,checked3097.2,checked3098.2,checked3099.2,checked3100.2,checked3101.2,checked3102.2,checked3103.2,checked3104.2,checked3105.2,checked3106.2,checked3107.2,checked3108.2,checked3109.2,checked3110.2,checked3111.2,checked3112.2,checked3113.2,checked3114.2,checked3115.2,checked3116.2,checked3117.2,checked3118.2,checked3119.2,checked3120.2,checked3121.2,checked3122.2,checked3123.2,checked3124.2,checked3125.2,checked3126.2,checked3127.2,checked3128.2,checked3129.2,checked3130.2,checked3131.2,checked3132.2,checked3133.2,checked3134.2,checked3135.2]
  decide
end ArtifactSharedFrameGroup48
