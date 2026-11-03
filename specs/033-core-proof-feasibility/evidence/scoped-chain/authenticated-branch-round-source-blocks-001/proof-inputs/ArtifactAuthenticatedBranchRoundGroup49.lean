import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup49
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3136 : List WordIR.Op := [.band 3251 3253]
def bytes3136 : Bytes := ("    let r00000cb6: u32 = r00000cb3 & r00000cb5;\n" : String).toByteArray.data.toList
theorem checked3136 : bytes3136=statementBytes 3254 (op3136.map lower) ∧ bytes3136.length=48 := by core033_kernel_decide
def op3137 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3137 : Bytes := ("    let r00000cb7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3137 : bytes3137=statementBytes 3255 (op3137.map lower) ∧ bytes3137.length=41 := by core033_kernel_decide
def op3138 : List WordIR.Op := [.bxor 1299 3255]
def bytes3138 : Bytes := ("    let r00000cb8: u32 = r00000513 ^ r00000cb7;\n" : String).toByteArray.data.toList
theorem checked3138 : bytes3138=statementBytes 3256 (op3138.map lower) ∧ bytes3138.length=48 := by core033_kernel_decide
def op3139 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3139 : Bytes := ("    let r00000cb9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3139 : bytes3139=statementBytes 3257 (op3139.map lower) ∧ bytes3139.length=41 := by core033_kernel_decide
def op3140 : List WordIR.Op := [.bnot 3257]
def bytes3140 : Bytes := ("    let r00000cba: u32 = !r00000cb9;\n" : String).toByteArray.data.toList
theorem checked3140 : bytes3140=statementBytes 3258 (op3140.map lower) ∧ bytes3140.length=37 := by core033_kernel_decide
def op3141 : List WordIR.Op := [.bxor 3256 3258]
def bytes3141 : Bytes := ("    let r00000cbb: u32 = r00000cb8 ^ r00000cba;\n" : String).toByteArray.data.toList
theorem checked3141 : bytes3141=statementBytes 3259 (op3141.map lower) ∧ bytes3141.length=48 := by core033_kernel_decide
def op3142 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3142 : Bytes := ("    let r00000cbc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3142 : bytes3142=statementBytes 3260 (op3142.map lower) ∧ bytes3142.length=41 := by core033_kernel_decide
def op3143 : List WordIR.Op := [.bxor 1299 3260]
def bytes3143 : Bytes := ("    let r00000cbd: u32 = r00000513 ^ r00000cbc;\n" : String).toByteArray.data.toList
theorem checked3143 : bytes3143=statementBytes 3261 (op3143.map lower) ∧ bytes3143.length=48 := by core033_kernel_decide
def op3144 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3144 : Bytes := ("    let r00000cbe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3144 : bytes3144=statementBytes 3262 (op3144.map lower) ∧ bytes3144.length=41 := by core033_kernel_decide
def op3145 : List WordIR.Op := [.bnot 3262]
def bytes3145 : Bytes := ("    let r00000cbf: u32 = !r00000cbe;\n" : String).toByteArray.data.toList
theorem checked3145 : bytes3145=statementBytes 3263 (op3145.map lower) ∧ bytes3145.length=37 := by core033_kernel_decide
def op3146 : List WordIR.Op := [.badd 3261 3263]
def bytes3146 : Bytes := ("    let r00000cc0: u32 = r00000cbd.wrapping_add(r00000cbf);\n" : String).toByteArray.data.toList
theorem checked3146 : bytes3146=statementBytes 3264 (op3146.map lower) ∧ bytes3146.length=60 := by core033_kernel_decide
def op3147 : List WordIR.Op := [.bnot 3264]
def bytes3147 : Bytes := ("    let r00000cc1: u32 = !r00000cc0;\n" : String).toByteArray.data.toList
theorem checked3147 : bytes3147=statementBytes 3265 (op3147.map lower) ∧ bytes3147.length=37 := by core033_kernel_decide
def op3148 : List WordIR.Op := [.band 3259 3265]
def bytes3148 : Bytes := ("    let r00000cc2: u32 = r00000cbb & r00000cc1;\n" : String).toByteArray.data.toList
theorem checked3148 : bytes3148=statementBytes 3266 (op3148.map lower) ∧ bytes3148.length=48 := by core033_kernel_decide
def op3149 : List WordIR.Op := [.bxor 3254 3266]
def bytes3149 : Bytes := ("    let r00000cc3: u32 = r00000cb6 ^ r00000cc2;\n" : String).toByteArray.data.toList
theorem checked3149 : bytes3149=statementBytes 3267 (op3149.map lower) ∧ bytes3149.length=48 := by core033_kernel_decide
def op3150 : List WordIR.Op := [.shr 3267 31]
def bytes3150 : Bytes := ("    let r00000cc4: u32 = r00000cc3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3150 : bytes3150=statementBytes 3268 (op3150.map lower) ∧ bytes3150.length=54 := by core033_kernel_decide
def op3151 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3151 : Bytes := ("    let r00000cc5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3151 : bytes3151=statementBytes 3269 (op3151.map lower) ∧ bytes3151.length=41 := by core033_kernel_decide
def op3152 : List WordIR.Op := [.bxor 3268 3269]
def bytes3152 : Bytes := ("    let r00000cc6: u32 = r00000cc4 ^ r00000cc5;\n" : String).toByteArray.data.toList
theorem checked3152 : bytes3152=statementBytes 3270 (op3152.map lower) ∧ bytes3152.length=48 := by core033_kernel_decide
def op3153 : List WordIR.Op := [.bnot 3270]
def bytes3153 : Bytes := ("    let r00000cc7: u32 = !r00000cc6;\n" : String).toByteArray.data.toList
theorem checked3153 : bytes3153=statementBytes 3271 (op3153.map lower) ∧ bytes3153.length=37 := by core033_kernel_decide
def op3154 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3154 : Bytes := ("    let r00000cc8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3154 : bytes3154=statementBytes 3272 (op3154.map lower) ∧ bytes3154.length=41 := by core033_kernel_decide
def op3155 : List WordIR.Op := [.badd 3271 3272]
def bytes3155 : Bytes := ("    let r00000cc9: u32 = r00000cc7.wrapping_add(r00000cc8);\n" : String).toByteArray.data.toList
theorem checked3155 : bytes3155=statementBytes 3273 (op3155.map lower) ∧ bytes3155.length=60 := by core033_kernel_decide
def op3156 : List WordIR.Op := [.bnot 3273]
def bytes3156 : Bytes := ("    let r00000cca: u32 = !r00000cc9;\n" : String).toByteArray.data.toList
theorem checked3156 : bytes3156=statementBytes 3274 (op3156.map lower) ∧ bytes3156.length=37 := by core033_kernel_decide
def op3157 : List WordIR.Op := [.literal (BitVec.ofNat 32 1013904242)]
def bytes3157 : Bytes := ("    let r00000ccb: u32 = 0x3c6ef372_u32;\n" : String).toByteArray.data.toList
theorem checked3157 : bytes3157=statementBytes 3275 (op3157.map lower) ∧ bytes3157.length=41 := by core033_kernel_decide
def op3158 : List WordIR.Op := [.band 3274 3275]
def bytes3158 : Bytes := ("    let r00000ccc: u32 = r00000cca & r00000ccb;\n" : String).toByteArray.data.toList
theorem checked3158 : bytes3158=statementBytes 3276 (op3158.map lower) ∧ bytes3158.length=48 := by core033_kernel_decide
def op3159 : List WordIR.Op := [.bxor 3249 3276]
def bytes3159 : Bytes := ("    let r00000ccd: u32 = r00000cb1 ^ r00000ccc;\n" : String).toByteArray.data.toList
theorem checked3159 : bytes3159=statementBytes 3277 (op3159.map lower) ∧ bytes3159.length=48 := by core033_kernel_decide
def op3160 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3160 : Bytes := ("    let r00000cce: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3160 : bytes3160=statementBytes 3278 (op3160.map lower) ∧ bytes3160.length=41 := by core033_kernel_decide
def op3161 : List WordIR.Op := [.bxor 1299 3278]
def bytes3161 : Bytes := ("    let r00000ccf: u32 = r00000513 ^ r00000cce;\n" : String).toByteArray.data.toList
theorem checked3161 : bytes3161=statementBytes 3279 (op3161.map lower) ∧ bytes3161.length=48 := by core033_kernel_decide
def op3162 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3162 : Bytes := ("    let r00000cd0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3162 : bytes3162=statementBytes 3280 (op3162.map lower) ∧ bytes3162.length=41 := by core033_kernel_decide
def op3163 : List WordIR.Op := [.bnot 3280]
def bytes3163 : Bytes := ("    let r00000cd1: u32 = !r00000cd0;\n" : String).toByteArray.data.toList
theorem checked3163 : bytes3163=statementBytes 3281 (op3163.map lower) ∧ bytes3163.length=37 := by core033_kernel_decide
def op3164 : List WordIR.Op := [.band 3279 3281]
def bytes3164 : Bytes := ("    let r00000cd2: u32 = r00000ccf & r00000cd1;\n" : String).toByteArray.data.toList
theorem checked3164 : bytes3164=statementBytes 3282 (op3164.map lower) ∧ bytes3164.length=48 := by core033_kernel_decide
def op3165 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3165 : Bytes := ("    let r00000cd3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3165 : bytes3165=statementBytes 3283 (op3165.map lower) ∧ bytes3165.length=41 := by core033_kernel_decide
def op3166 : List WordIR.Op := [.bxor 1299 3283]
def bytes3166 : Bytes := ("    let r00000cd4: u32 = r00000513 ^ r00000cd3;\n" : String).toByteArray.data.toList
theorem checked3166 : bytes3166=statementBytes 3284 (op3166.map lower) ∧ bytes3166.length=48 := by core033_kernel_decide
def op3167 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3167 : Bytes := ("    let r00000cd5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3167 : bytes3167=statementBytes 3285 (op3167.map lower) ∧ bytes3167.length=41 := by core033_kernel_decide
def op3168 : List WordIR.Op := [.bnot 3285]
def bytes3168 : Bytes := ("    let r00000cd6: u32 = !r00000cd5;\n" : String).toByteArray.data.toList
theorem checked3168 : bytes3168=statementBytes 3286 (op3168.map lower) ∧ bytes3168.length=37 := by core033_kernel_decide
def op3169 : List WordIR.Op := [.bxor 3284 3286]
def bytes3169 : Bytes := ("    let r00000cd7: u32 = r00000cd4 ^ r00000cd6;\n" : String).toByteArray.data.toList
theorem checked3169 : bytes3169=statementBytes 3287 (op3169.map lower) ∧ bytes3169.length=48 := by core033_kernel_decide
def op3170 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3170 : Bytes := ("    let r00000cd8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3170 : bytes3170=statementBytes 3288 (op3170.map lower) ∧ bytes3170.length=41 := by core033_kernel_decide
def op3171 : List WordIR.Op := [.bxor 1299 3288]
def bytes3171 : Bytes := ("    let r00000cd9: u32 = r00000513 ^ r00000cd8;\n" : String).toByteArray.data.toList
theorem checked3171 : bytes3171=statementBytes 3289 (op3171.map lower) ∧ bytes3171.length=48 := by core033_kernel_decide
def op3172 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3172 : Bytes := ("    let r00000cda: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3172 : bytes3172=statementBytes 3290 (op3172.map lower) ∧ bytes3172.length=41 := by core033_kernel_decide
def op3173 : List WordIR.Op := [.bnot 3290]
def bytes3173 : Bytes := ("    let r00000cdb: u32 = !r00000cda;\n" : String).toByteArray.data.toList
theorem checked3173 : bytes3173=statementBytes 3291 (op3173.map lower) ∧ bytes3173.length=37 := by core033_kernel_decide
def op3174 : List WordIR.Op := [.badd 3289 3291]
def bytes3174 : Bytes := ("    let r00000cdc: u32 = r00000cd9.wrapping_add(r00000cdb);\n" : String).toByteArray.data.toList
theorem checked3174 : bytes3174=statementBytes 3292 (op3174.map lower) ∧ bytes3174.length=60 := by core033_kernel_decide
def op3175 : List WordIR.Op := [.bnot 3292]
def bytes3175 : Bytes := ("    let r00000cdd: u32 = !r00000cdc;\n" : String).toByteArray.data.toList
theorem checked3175 : bytes3175=statementBytes 3293 (op3175.map lower) ∧ bytes3175.length=37 := by core033_kernel_decide
def op3176 : List WordIR.Op := [.band 3287 3293]
def bytes3176 : Bytes := ("    let r00000cde: u32 = r00000cd7 & r00000cdd;\n" : String).toByteArray.data.toList
theorem checked3176 : bytes3176=statementBytes 3294 (op3176.map lower) ∧ bytes3176.length=48 := by core033_kernel_decide
def op3177 : List WordIR.Op := [.bxor 3282 3294]
def bytes3177 : Bytes := ("    let r00000cdf: u32 = r00000cd2 ^ r00000cde;\n" : String).toByteArray.data.toList
theorem checked3177 : bytes3177=statementBytes 3295 (op3177.map lower) ∧ bytes3177.length=48 := by core033_kernel_decide
def op3178 : List WordIR.Op := [.shr 3295 31]
def bytes3178 : Bytes := ("    let r00000ce0: u32 = r00000cdf >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3178 : bytes3178=statementBytes 3296 (op3178.map lower) ∧ bytes3178.length=54 := by core033_kernel_decide
def op3179 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3179 : Bytes := ("    let r00000ce1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3179 : bytes3179=statementBytes 3297 (op3179.map lower) ∧ bytes3179.length=41 := by core033_kernel_decide
def op3180 : List WordIR.Op := [.bxor 3296 3297]
def bytes3180 : Bytes := ("    let r00000ce2: u32 = r00000ce0 ^ r00000ce1;\n" : String).toByteArray.data.toList
theorem checked3180 : bytes3180=statementBytes 3298 (op3180.map lower) ∧ bytes3180.length=48 := by core033_kernel_decide
def op3181 : List WordIR.Op := [.bnot 3298]
def bytes3181 : Bytes := ("    let r00000ce3: u32 = !r00000ce2;\n" : String).toByteArray.data.toList
theorem checked3181 : bytes3181=statementBytes 3299 (op3181.map lower) ∧ bytes3181.length=37 := by core033_kernel_decide
def op3182 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3182 : Bytes := ("    let r00000ce4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3182 : bytes3182=statementBytes 3300 (op3182.map lower) ∧ bytes3182.length=41 := by core033_kernel_decide
def op3183 : List WordIR.Op := [.badd 3299 3300]
def bytes3183 : Bytes := ("    let r00000ce5: u32 = r00000ce3.wrapping_add(r00000ce4);\n" : String).toByteArray.data.toList
theorem checked3183 : bytes3183=statementBytes 3301 (op3183.map lower) ∧ bytes3183.length=60 := by core033_kernel_decide
def op3184 : List WordIR.Op := [.band 3301 1717]
def bytes3184 : Bytes := ("    let r00000ce6: u32 = r00000ce5 & r000006b5;\n" : String).toByteArray.data.toList
theorem checked3184 : bytes3184=statementBytes 3302 (op3184.map lower) ∧ bytes3184.length=48 := by core033_kernel_decide
def op3185 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3185 : Bytes := ("    let r00000ce7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3185 : bytes3185=statementBytes 3303 (op3185.map lower) ∧ bytes3185.length=41 := by core033_kernel_decide
def op3186 : List WordIR.Op := [.bxor 1299 3303]
def bytes3186 : Bytes := ("    let r00000ce8: u32 = r00000513 ^ r00000ce7;\n" : String).toByteArray.data.toList
theorem checked3186 : bytes3186=statementBytes 3304 (op3186.map lower) ∧ bytes3186.length=48 := by core033_kernel_decide
def op3187 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3187 : Bytes := ("    let r00000ce9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3187 : bytes3187=statementBytes 3305 (op3187.map lower) ∧ bytes3187.length=41 := by core033_kernel_decide
def op3188 : List WordIR.Op := [.bnot 3305]
def bytes3188 : Bytes := ("    let r00000cea: u32 = !r00000ce9;\n" : String).toByteArray.data.toList
theorem checked3188 : bytes3188=statementBytes 3306 (op3188.map lower) ∧ bytes3188.length=37 := by core033_kernel_decide
def op3189 : List WordIR.Op := [.band 3304 3306]
def bytes3189 : Bytes := ("    let r00000ceb: u32 = r00000ce8 & r00000cea;\n" : String).toByteArray.data.toList
theorem checked3189 : bytes3189=statementBytes 3307 (op3189.map lower) ∧ bytes3189.length=48 := by core033_kernel_decide
def op3190 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3190 : Bytes := ("    let r00000cec: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3190 : bytes3190=statementBytes 3308 (op3190.map lower) ∧ bytes3190.length=41 := by core033_kernel_decide
def op3191 : List WordIR.Op := [.bxor 1299 3308]
def bytes3191 : Bytes := ("    let r00000ced: u32 = r00000513 ^ r00000cec;\n" : String).toByteArray.data.toList
theorem checked3191 : bytes3191=statementBytes 3309 (op3191.map lower) ∧ bytes3191.length=48 := by core033_kernel_decide
def op3192 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3192 : Bytes := ("    let r00000cee: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3192 : bytes3192=statementBytes 3310 (op3192.map lower) ∧ bytes3192.length=41 := by core033_kernel_decide
def op3193 : List WordIR.Op := [.bnot 3310]
def bytes3193 : Bytes := ("    let r00000cef: u32 = !r00000cee;\n" : String).toByteArray.data.toList
theorem checked3193 : bytes3193=statementBytes 3311 (op3193.map lower) ∧ bytes3193.length=37 := by core033_kernel_decide
def op3194 : List WordIR.Op := [.bxor 3309 3311]
def bytes3194 : Bytes := ("    let r00000cf0: u32 = r00000ced ^ r00000cef;\n" : String).toByteArray.data.toList
theorem checked3194 : bytes3194=statementBytes 3312 (op3194.map lower) ∧ bytes3194.length=48 := by core033_kernel_decide
def op3195 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3195 : Bytes := ("    let r00000cf1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3195 : bytes3195=statementBytes 3313 (op3195.map lower) ∧ bytes3195.length=41 := by core033_kernel_decide
def op3196 : List WordIR.Op := [.bxor 1299 3313]
def bytes3196 : Bytes := ("    let r00000cf2: u32 = r00000513 ^ r00000cf1;\n" : String).toByteArray.data.toList
theorem checked3196 : bytes3196=statementBytes 3314 (op3196.map lower) ∧ bytes3196.length=48 := by core033_kernel_decide
def op3197 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3197 : Bytes := ("    let r00000cf3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3197 : bytes3197=statementBytes 3315 (op3197.map lower) ∧ bytes3197.length=41 := by core033_kernel_decide
def op3198 : List WordIR.Op := [.bnot 3315]
def bytes3198 : Bytes := ("    let r00000cf4: u32 = !r00000cf3;\n" : String).toByteArray.data.toList
theorem checked3198 : bytes3198=statementBytes 3316 (op3198.map lower) ∧ bytes3198.length=37 := by core033_kernel_decide
def op3199 : List WordIR.Op := [.badd 3314 3316]
def bytes3199 : Bytes := ("    let r00000cf5: u32 = r00000cf2.wrapping_add(r00000cf4);\n" : String).toByteArray.data.toList
theorem checked3199 : bytes3199=statementBytes 3317 (op3199.map lower) ∧ bytes3199.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3136,op3137,op3138,op3139,op3140,op3141,op3142,op3143,op3144,op3145,op3146,op3147,op3148,op3149,op3150,op3151,op3152,op3153,op3154,op3155,op3156,op3157,op3158,op3159,op3160,op3161,op3162,op3163,op3164,op3165,op3166,op3167,op3168,op3169,op3170,op3171,op3172,op3173,op3174,op3175,op3176,op3177,op3178,op3179,op3180,op3181,op3182,op3183,op3184,op3185,op3186,op3187,op3188,op3189,op3190,op3191,op3192,op3193,op3194,op3195,op3196,op3197,op3198,op3199]
def chunks : List Bytes := [bytes3136,bytes3137,bytes3138,bytes3139,bytes3140,bytes3141,bytes3142,bytes3143,bytes3144,bytes3145,bytes3146,bytes3147,bytes3148,bytes3149,bytes3150,bytes3151,bytes3152,bytes3153,bytes3154,bytes3155,bytes3156,bytes3157,bytes3158,bytes3159,bytes3160,bytes3161,bytes3162,bytes3163,bytes3164,bytes3165,bytes3166,bytes3167,bytes3168,bytes3169,bytes3170,bytes3171,bytes3172,bytes3173,bytes3174,bytes3175,bytes3176,bytes3177,bytes3178,bytes3179,bytes3180,bytes3181,bytes3182,bytes3183,bytes3184,bytes3185,bytes3186,bytes3187,bytes3188,bytes3189,bytes3190,bytes3191,bytes3192,bytes3193,bytes3194,bytes3195,bytes3196,bytes3197,bytes3198,bytes3199]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3254 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3136.1 (.cons _ _ _ _ _ checked3137.1 (.cons _ _ _ _ _ checked3138.1 (.cons _ _ _ _ _ checked3139.1 (.cons _ _ _ _ _ checked3140.1 (.cons _ _ _ _ _ checked3141.1 (.cons _ _ _ _ _ checked3142.1 (.cons _ _ _ _ _ checked3143.1 (.cons _ _ _ _ _ checked3144.1 (.cons _ _ _ _ _ checked3145.1 (.cons _ _ _ _ _ checked3146.1 (.cons _ _ _ _ _ checked3147.1 (.cons _ _ _ _ _ checked3148.1 (.cons _ _ _ _ _ checked3149.1 (.cons _ _ _ _ _ checked3150.1 (.cons _ _ _ _ _ checked3151.1 (.cons _ _ _ _ _ checked3152.1 (.cons _ _ _ _ _ checked3153.1 (.cons _ _ _ _ _ checked3154.1 (.cons _ _ _ _ _ checked3155.1 (.cons _ _ _ _ _ checked3156.1 (.cons _ _ _ _ _ checked3157.1 (.cons _ _ _ _ _ checked3158.1 (.cons _ _ _ _ _ checked3159.1 (.cons _ _ _ _ _ checked3160.1 (.cons _ _ _ _ _ checked3161.1 (.cons _ _ _ _ _ checked3162.1 (.cons _ _ _ _ _ checked3163.1 (.cons _ _ _ _ _ checked3164.1 (.cons _ _ _ _ _ checked3165.1 (.cons _ _ _ _ _ checked3166.1 (.cons _ _ _ _ _ checked3167.1 (.cons _ _ _ _ _ checked3168.1 (.cons _ _ _ _ _ checked3169.1 (.cons _ _ _ _ _ checked3170.1 (.cons _ _ _ _ _ checked3171.1 (.cons _ _ _ _ _ checked3172.1 (.cons _ _ _ _ _ checked3173.1 (.cons _ _ _ _ _ checked3174.1 (.cons _ _ _ _ _ checked3175.1 (.cons _ _ _ _ _ checked3176.1 (.cons _ _ _ _ _ checked3177.1 (.cons _ _ _ _ _ checked3178.1 (.cons _ _ _ _ _ checked3179.1 (.cons _ _ _ _ _ checked3180.1 (.cons _ _ _ _ _ checked3181.1 (.cons _ _ _ _ _ checked3182.1 (.cons _ _ _ _ _ checked3183.1 (.cons _ _ _ _ _ checked3184.1 (.cons _ _ _ _ _ checked3185.1 (.cons _ _ _ _ _ checked3186.1 (.cons _ _ _ _ _ checked3187.1 (.cons _ _ _ _ _ checked3188.1 (.cons _ _ _ _ _ checked3189.1 (.cons _ _ _ _ _ checked3190.1 (.cons _ _ _ _ _ checked3191.1 (.cons _ _ _ _ _ checked3192.1 (.cons _ _ _ _ _ checked3193.1 (.cons _ _ _ _ _ checked3194.1 (.cons _ _ _ _ _ checked3195.1 (.cons _ _ _ _ _ checked3196.1 (.cons _ _ _ _ _ checked3197.1 (.cons _ _ _ _ _ checked3198.1 (.cons _ _ _ _ _ checked3199.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3254 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2854 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3136.2,checked3137.2,checked3138.2,checked3139.2,checked3140.2,checked3141.2,checked3142.2,checked3143.2,checked3144.2,checked3145.2,checked3146.2,checked3147.2,checked3148.2,checked3149.2,checked3150.2,checked3151.2,checked3152.2,checked3153.2,checked3154.2,checked3155.2,checked3156.2,checked3157.2,checked3158.2,checked3159.2,checked3160.2,checked3161.2,checked3162.2,checked3163.2,checked3164.2,checked3165.2,checked3166.2,checked3167.2,checked3168.2,checked3169.2,checked3170.2,checked3171.2,checked3172.2,checked3173.2,checked3174.2,checked3175.2,checked3176.2,checked3177.2,checked3178.2,checked3179.2,checked3180.2,checked3181.2,checked3182.2,checked3183.2,checked3184.2,checked3185.2,checked3186.2,checked3187.2,checked3188.2,checked3189.2,checked3190.2,checked3191.2,checked3192.2,checked3193.2,checked3194.2,checked3195.2,checked3196.2,checked3197.2,checked3198.2,checked3199.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup49
