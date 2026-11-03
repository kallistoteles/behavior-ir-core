import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup50
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3200 : List WordIR.Op := [.badd 3185 3271]
def bytes3200 : Bytes := ("    let r00000cc8: u32 = r00000c71.wrapping_add(r00000cc7);\n" : String).toByteArray.data.toList
theorem checked3200 : bytes3200=statementBytes 3272 (op3200.map lower) ∧ bytes3200.length=60 := by core033_kernel_decide
def op3201 : List WordIR.Op := [.band 3266 3239]
def bytes3201 : Bytes := ("    let r00000cc9: u32 = r00000cc2 & r00000ca7;\n" : String).toByteArray.data.toList
theorem checked3201 : bytes3201=statementBytes 3273 (op3201.map lower) ∧ bytes3201.length=48 := by core033_kernel_decide
def op3202 : List WordIR.Op := [.bnot 3266]
def bytes3202 : Bytes := ("    let r00000cca: u32 = !r00000cc2;\n" : String).toByteArray.data.toList
theorem checked3202 : bytes3202=statementBytes 3274 (op3202.map lower) ∧ bytes3202.length=37 := by core033_kernel_decide
def op3203 : List WordIR.Op := [.band 3274 3212]
def bytes3203 : Bytes := ("    let r00000ccb: u32 = r00000cca & r00000c8c;\n" : String).toByteArray.data.toList
theorem checked3203 : bytes3203=statementBytes 3275 (op3203.map lower) ∧ bytes3203.length=48 := by core033_kernel_decide
def op3204 : List WordIR.Op := [.bxor 3273 3275]
def bytes3204 : Bytes := ("    let r00000ccc: u32 = r00000cc9 ^ r00000ccb;\n" : String).toByteArray.data.toList
theorem checked3204 : bytes3204=statementBytes 3276 (op3204.map lower) ∧ bytes3204.length=48 := by core033_kernel_decide
def op3205 : List WordIR.Op := [.badd 3272 3276]
def bytes3205 : Bytes := ("    let r00000ccd: u32 = r00000cc8.wrapping_add(r00000ccc);\n" : String).toByteArray.data.toList
theorem checked3205 : bytes3205=statementBytes 3277 (op3205.map lower) ∧ bytes3205.length=60 := by core033_kernel_decide
def op3206 : List WordIR.Op := [.literal (BitVec.ofNat 32 506948616)]
def bytes3206 : Bytes := ("    let r00000cce: u32 = 0x1e376c08_u32;\n" : String).toByteArray.data.toList
theorem checked3206 : bytes3206=statementBytes 3278 (op3206.map lower) ∧ bytes3206.length=41 := by core033_kernel_decide
def op3207 : List WordIR.Op := [.badd 3277 3278]
def bytes3207 : Bytes := ("    let r00000ccf: u32 = r00000ccd.wrapping_add(r00000cce);\n" : String).toByteArray.data.toList
theorem checked3207 : bytes3207=statementBytes 3279 (op3207.map lower) ∧ bytes3207.length=60 := by core033_kernel_decide
def op3208 : List WordIR.Op := [.badd 3279 1761]
def bytes3208 : Bytes := ("    let r00000cd0: u32 = r00000ccf.wrapping_add(r000006e1);\n" : String).toByteArray.data.toList
theorem checked3208 : bytes3208=statementBytes 3280 (op3208.map lower) ∧ bytes3208.length=60 := by core033_kernel_decide
def op3209 : List WordIR.Op := [.rotr 3265 2]
def bytes3209 : Bytes := ("    let r00000cd1: u32 = r00000cc1.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked3209 : bytes3209=statementBytes 3281 (op3209.map lower) ∧ bytes3209.length=65 := by core033_kernel_decide
def op3210 : List WordIR.Op := [.rotr 3265 13]
def bytes3210 : Bytes := ("    let r00000cd2: u32 = r00000cc1.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked3210 : bytes3210=statementBytes 3282 (op3210.map lower) ∧ bytes3210.length=65 := by core033_kernel_decide
def op3211 : List WordIR.Op := [.bxor 3281 3282]
def bytes3211 : Bytes := ("    let r00000cd3: u32 = r00000cd1 ^ r00000cd2;\n" : String).toByteArray.data.toList
theorem checked3211 : bytes3211=statementBytes 3283 (op3211.map lower) ∧ bytes3211.length=48 := by core033_kernel_decide
def op3212 : List WordIR.Op := [.rotr 3265 22]
def bytes3212 : Bytes := ("    let r00000cd4: u32 = r00000cc1.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked3212 : bytes3212=statementBytes 3284 (op3212.map lower) ∧ bytes3212.length=65 := by core033_kernel_decide
def op3213 : List WordIR.Op := [.bxor 3283 3284]
def bytes3213 : Bytes := ("    let r00000cd5: u32 = r00000cd3 ^ r00000cd4;\n" : String).toByteArray.data.toList
theorem checked3213 : bytes3213=statementBytes 3285 (op3213.map lower) ∧ bytes3213.length=48 := by core033_kernel_decide
def op3214 : List WordIR.Op := [.band 3265 3238]
def bytes3214 : Bytes := ("    let r00000cd6: u32 = r00000cc1 & r00000ca6;\n" : String).toByteArray.data.toList
theorem checked3214 : bytes3214=statementBytes 3286 (op3214.map lower) ∧ bytes3214.length=48 := by core033_kernel_decide
def op3215 : List WordIR.Op := [.band 3265 3211]
def bytes3215 : Bytes := ("    let r00000cd7: u32 = r00000cc1 & r00000c8b;\n" : String).toByteArray.data.toList
theorem checked3215 : bytes3215=statementBytes 3287 (op3215.map lower) ∧ bytes3215.length=48 := by core033_kernel_decide
def op3216 : List WordIR.Op := [.bxor 3286 3287]
def bytes3216 : Bytes := ("    let r00000cd8: u32 = r00000cd6 ^ r00000cd7;\n" : String).toByteArray.data.toList
theorem checked3216 : bytes3216=statementBytes 3288 (op3216.map lower) ∧ bytes3216.length=48 := by core033_kernel_decide
def op3217 : List WordIR.Op := [.band 3238 3211]
def bytes3217 : Bytes := ("    let r00000cd9: u32 = r00000ca6 & r00000c8b;\n" : String).toByteArray.data.toList
theorem checked3217 : bytes3217=statementBytes 3289 (op3217.map lower) ∧ bytes3217.length=48 := by core033_kernel_decide
def op3218 : List WordIR.Op := [.bxor 3288 3289]
def bytes3218 : Bytes := ("    let r00000cda: u32 = r00000cd8 ^ r00000cd9;\n" : String).toByteArray.data.toList
theorem checked3218 : bytes3218=statementBytes 3290 (op3218.map lower) ∧ bytes3218.length=48 := by core033_kernel_decide
def op3219 : List WordIR.Op := [.badd 3285 3290]
def bytes3219 : Bytes := ("    let r00000cdb: u32 = r00000cd5.wrapping_add(r00000cda);\n" : String).toByteArray.data.toList
theorem checked3219 : bytes3219=statementBytes 3291 (op3219.map lower) ∧ bytes3219.length=60 := by core033_kernel_decide
def op3220 : List WordIR.Op := [.badd 3280 3291]
def bytes3220 : Bytes := ("    let r00000cdc: u32 = r00000cd0.wrapping_add(r00000cdb);\n" : String).toByteArray.data.toList
theorem checked3220 : bytes3220=statementBytes 3292 (op3220.map lower) ∧ bytes3220.length=60 := by core033_kernel_decide
def op3221 : List WordIR.Op := [.badd 3184 3280]
def bytes3221 : Bytes := ("    let r00000cdd: u32 = r00000c70.wrapping_add(r00000cd0);\n" : String).toByteArray.data.toList
theorem checked3221 : bytes3221=statementBytes 3293 (op3221.map lower) ∧ bytes3221.length=60 := by core033_kernel_decide
def op3222 : List WordIR.Op := [.rotr 3293 6]
def bytes3222 : Bytes := ("    let r00000cde: u32 = r00000cdd.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked3222 : bytes3222=statementBytes 3294 (op3222.map lower) ∧ bytes3222.length=65 := by core033_kernel_decide
def op3223 : List WordIR.Op := [.rotr 3293 11]
def bytes3223 : Bytes := ("    let r00000cdf: u32 = r00000cdd.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked3223 : bytes3223=statementBytes 3295 (op3223.map lower) ∧ bytes3223.length=65 := by core033_kernel_decide
def op3224 : List WordIR.Op := [.bxor 3294 3295]
def bytes3224 : Bytes := ("    let r00000ce0: u32 = r00000cde ^ r00000cdf;\n" : String).toByteArray.data.toList
theorem checked3224 : bytes3224=statementBytes 3296 (op3224.map lower) ∧ bytes3224.length=48 := by core033_kernel_decide
def op3225 : List WordIR.Op := [.rotr 3293 25]
def bytes3225 : Bytes := ("    let r00000ce1: u32 = r00000cdd.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked3225 : bytes3225=statementBytes 3297 (op3225.map lower) ∧ bytes3225.length=65 := by core033_kernel_decide
def op3226 : List WordIR.Op := [.bxor 3296 3297]
def bytes3226 : Bytes := ("    let r00000ce2: u32 = r00000ce0 ^ r00000ce1;\n" : String).toByteArray.data.toList
theorem checked3226 : bytes3226=statementBytes 3298 (op3226.map lower) ∧ bytes3226.length=48 := by core033_kernel_decide
def op3227 : List WordIR.Op := [.badd 3212 3298]
def bytes3227 : Bytes := ("    let r00000ce3: u32 = r00000c8c.wrapping_add(r00000ce2);\n" : String).toByteArray.data.toList
theorem checked3227 : bytes3227=statementBytes 3299 (op3227.map lower) ∧ bytes3227.length=60 := by core033_kernel_decide
def op3228 : List WordIR.Op := [.band 3293 3266]
def bytes3228 : Bytes := ("    let r00000ce4: u32 = r00000cdd & r00000cc2;\n" : String).toByteArray.data.toList
theorem checked3228 : bytes3228=statementBytes 3300 (op3228.map lower) ∧ bytes3228.length=48 := by core033_kernel_decide
def op3229 : List WordIR.Op := [.bnot 3293]
def bytes3229 : Bytes := ("    let r00000ce5: u32 = !r00000cdd;\n" : String).toByteArray.data.toList
theorem checked3229 : bytes3229=statementBytes 3301 (op3229.map lower) ∧ bytes3229.length=37 := by core033_kernel_decide
def op3230 : List WordIR.Op := [.band 3301 3239]
def bytes3230 : Bytes := ("    let r00000ce6: u32 = r00000ce5 & r00000ca7;\n" : String).toByteArray.data.toList
theorem checked3230 : bytes3230=statementBytes 3302 (op3230.map lower) ∧ bytes3230.length=48 := by core033_kernel_decide
def op3231 : List WordIR.Op := [.bxor 3300 3302]
def bytes3231 : Bytes := ("    let r00000ce7: u32 = r00000ce4 ^ r00000ce6;\n" : String).toByteArray.data.toList
theorem checked3231 : bytes3231=statementBytes 3303 (op3231.map lower) ∧ bytes3231.length=48 := by core033_kernel_decide
def op3232 : List WordIR.Op := [.badd 3299 3303]
def bytes3232 : Bytes := ("    let r00000ce8: u32 = r00000ce3.wrapping_add(r00000ce7);\n" : String).toByteArray.data.toList
theorem checked3232 : bytes3232=statementBytes 3304 (op3232.map lower) ∧ bytes3232.length=60 := by core033_kernel_decide
def op3233 : List WordIR.Op := [.literal (BitVec.ofNat 32 659060556)]
def bytes3233 : Bytes := ("    let r00000ce9: u32 = 0x2748774c_u32;\n" : String).toByteArray.data.toList
theorem checked3233 : bytes3233=statementBytes 3305 (op3233.map lower) ∧ bytes3233.length=41 := by core033_kernel_decide
def op3234 : List WordIR.Op := [.badd 3304 3305]
def bytes3234 : Bytes := ("    let r00000cea: u32 = r00000ce8.wrapping_add(r00000ce9);\n" : String).toByteArray.data.toList
theorem checked3234 : bytes3234=statementBytes 3306 (op3234.map lower) ∧ bytes3234.length=60 := by core033_kernel_decide
def op3235 : List WordIR.Op := [.badd 3306 1774]
def bytes3235 : Bytes := ("    let r00000ceb: u32 = r00000cea.wrapping_add(r000006ee);\n" : String).toByteArray.data.toList
theorem checked3235 : bytes3235=statementBytes 3307 (op3235.map lower) ∧ bytes3235.length=60 := by core033_kernel_decide
def op3236 : List WordIR.Op := [.rotr 3292 2]
def bytes3236 : Bytes := ("    let r00000cec: u32 = r00000cdc.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked3236 : bytes3236=statementBytes 3308 (op3236.map lower) ∧ bytes3236.length=65 := by core033_kernel_decide
def op3237 : List WordIR.Op := [.rotr 3292 13]
def bytes3237 : Bytes := ("    let r00000ced: u32 = r00000cdc.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked3237 : bytes3237=statementBytes 3309 (op3237.map lower) ∧ bytes3237.length=65 := by core033_kernel_decide
def op3238 : List WordIR.Op := [.bxor 3308 3309]
def bytes3238 : Bytes := ("    let r00000cee: u32 = r00000cec ^ r00000ced;\n" : String).toByteArray.data.toList
theorem checked3238 : bytes3238=statementBytes 3310 (op3238.map lower) ∧ bytes3238.length=48 := by core033_kernel_decide
def op3239 : List WordIR.Op := [.rotr 3292 22]
def bytes3239 : Bytes := ("    let r00000cef: u32 = r00000cdc.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked3239 : bytes3239=statementBytes 3311 (op3239.map lower) ∧ bytes3239.length=65 := by core033_kernel_decide
def op3240 : List WordIR.Op := [.bxor 3310 3311]
def bytes3240 : Bytes := ("    let r00000cf0: u32 = r00000cee ^ r00000cef;\n" : String).toByteArray.data.toList
theorem checked3240 : bytes3240=statementBytes 3312 (op3240.map lower) ∧ bytes3240.length=48 := by core033_kernel_decide
def op3241 : List WordIR.Op := [.band 3292 3265]
def bytes3241 : Bytes := ("    let r00000cf1: u32 = r00000cdc & r00000cc1;\n" : String).toByteArray.data.toList
theorem checked3241 : bytes3241=statementBytes 3313 (op3241.map lower) ∧ bytes3241.length=48 := by core033_kernel_decide
def op3242 : List WordIR.Op := [.band 3292 3238]
def bytes3242 : Bytes := ("    let r00000cf2: u32 = r00000cdc & r00000ca6;\n" : String).toByteArray.data.toList
theorem checked3242 : bytes3242=statementBytes 3314 (op3242.map lower) ∧ bytes3242.length=48 := by core033_kernel_decide
def op3243 : List WordIR.Op := [.bxor 3313 3314]
def bytes3243 : Bytes := ("    let r00000cf3: u32 = r00000cf1 ^ r00000cf2;\n" : String).toByteArray.data.toList
theorem checked3243 : bytes3243=statementBytes 3315 (op3243.map lower) ∧ bytes3243.length=48 := by core033_kernel_decide
def op3244 : List WordIR.Op := [.band 3265 3238]
def bytes3244 : Bytes := ("    let r00000cf4: u32 = r00000cc1 & r00000ca6;\n" : String).toByteArray.data.toList
theorem checked3244 : bytes3244=statementBytes 3316 (op3244.map lower) ∧ bytes3244.length=48 := by core033_kernel_decide
def op3245 : List WordIR.Op := [.bxor 3315 3316]
def bytes3245 : Bytes := ("    let r00000cf5: u32 = r00000cf3 ^ r00000cf4;\n" : String).toByteArray.data.toList
theorem checked3245 : bytes3245=statementBytes 3317 (op3245.map lower) ∧ bytes3245.length=48 := by core033_kernel_decide
def op3246 : List WordIR.Op := [.badd 3312 3317]
def bytes3246 : Bytes := ("    let r00000cf6: u32 = r00000cf0.wrapping_add(r00000cf5);\n" : String).toByteArray.data.toList
theorem checked3246 : bytes3246=statementBytes 3318 (op3246.map lower) ∧ bytes3246.length=60 := by core033_kernel_decide
def op3247 : List WordIR.Op := [.badd 3307 3318]
def bytes3247 : Bytes := ("    let r00000cf7: u32 = r00000ceb.wrapping_add(r00000cf6);\n" : String).toByteArray.data.toList
theorem checked3247 : bytes3247=statementBytes 3319 (op3247.map lower) ∧ bytes3247.length=60 := by core033_kernel_decide
def op3248 : List WordIR.Op := [.badd 3211 3307]
def bytes3248 : Bytes := ("    let r00000cf8: u32 = r00000c8b.wrapping_add(r00000ceb);\n" : String).toByteArray.data.toList
theorem checked3248 : bytes3248=statementBytes 3320 (op3248.map lower) ∧ bytes3248.length=60 := by core033_kernel_decide
def op3249 : List WordIR.Op := [.rotr 3320 6]
def bytes3249 : Bytes := ("    let r00000cf9: u32 = r00000cf8.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked3249 : bytes3249=statementBytes 3321 (op3249.map lower) ∧ bytes3249.length=65 := by core033_kernel_decide
def op3250 : List WordIR.Op := [.rotr 3320 11]
def bytes3250 : Bytes := ("    let r00000cfa: u32 = r00000cf8.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked3250 : bytes3250=statementBytes 3322 (op3250.map lower) ∧ bytes3250.length=65 := by core033_kernel_decide
def op3251 : List WordIR.Op := [.bxor 3321 3322]
def bytes3251 : Bytes := ("    let r00000cfb: u32 = r00000cf9 ^ r00000cfa;\n" : String).toByteArray.data.toList
theorem checked3251 : bytes3251=statementBytes 3323 (op3251.map lower) ∧ bytes3251.length=48 := by core033_kernel_decide
def op3252 : List WordIR.Op := [.rotr 3320 25]
def bytes3252 : Bytes := ("    let r00000cfc: u32 = r00000cf8.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked3252 : bytes3252=statementBytes 3324 (op3252.map lower) ∧ bytes3252.length=65 := by core033_kernel_decide
def op3253 : List WordIR.Op := [.bxor 3323 3324]
def bytes3253 : Bytes := ("    let r00000cfd: u32 = r00000cfb ^ r00000cfc;\n" : String).toByteArray.data.toList
theorem checked3253 : bytes3253=statementBytes 3325 (op3253.map lower) ∧ bytes3253.length=48 := by core033_kernel_decide
def op3254 : List WordIR.Op := [.badd 3239 3325]
def bytes3254 : Bytes := ("    let r00000cfe: u32 = r00000ca7.wrapping_add(r00000cfd);\n" : String).toByteArray.data.toList
theorem checked3254 : bytes3254=statementBytes 3326 (op3254.map lower) ∧ bytes3254.length=60 := by core033_kernel_decide
def op3255 : List WordIR.Op := [.band 3320 3293]
def bytes3255 : Bytes := ("    let r00000cff: u32 = r00000cf8 & r00000cdd;\n" : String).toByteArray.data.toList
theorem checked3255 : bytes3255=statementBytes 3327 (op3255.map lower) ∧ bytes3255.length=48 := by core033_kernel_decide
def op3256 : List WordIR.Op := [.bnot 3320]
def bytes3256 : Bytes := ("    let r00000d00: u32 = !r00000cf8;\n" : String).toByteArray.data.toList
theorem checked3256 : bytes3256=statementBytes 3328 (op3256.map lower) ∧ bytes3256.length=37 := by core033_kernel_decide
def op3257 : List WordIR.Op := [.band 3328 3266]
def bytes3257 : Bytes := ("    let r00000d01: u32 = r00000d00 & r00000cc2;\n" : String).toByteArray.data.toList
theorem checked3257 : bytes3257=statementBytes 3329 (op3257.map lower) ∧ bytes3257.length=48 := by core033_kernel_decide
def op3258 : List WordIR.Op := [.bxor 3327 3329]
def bytes3258 : Bytes := ("    let r00000d02: u32 = r00000cff ^ r00000d01;\n" : String).toByteArray.data.toList
theorem checked3258 : bytes3258=statementBytes 3330 (op3258.map lower) ∧ bytes3258.length=48 := by core033_kernel_decide
def op3259 : List WordIR.Op := [.badd 3326 3330]
def bytes3259 : Bytes := ("    let r00000d03: u32 = r00000cfe.wrapping_add(r00000d02);\n" : String).toByteArray.data.toList
theorem checked3259 : bytes3259=statementBytes 3331 (op3259.map lower) ∧ bytes3259.length=60 := by core033_kernel_decide
def op3260 : List WordIR.Op := [.literal (BitVec.ofNat 32 883997877)]
def bytes3260 : Bytes := ("    let r00000d04: u32 = 0x34b0bcb5_u32;\n" : String).toByteArray.data.toList
theorem checked3260 : bytes3260=statementBytes 3332 (op3260.map lower) ∧ bytes3260.length=41 := by core033_kernel_decide
def op3261 : List WordIR.Op := [.badd 3331 3332]
def bytes3261 : Bytes := ("    let r00000d05: u32 = r00000d03.wrapping_add(r00000d04);\n" : String).toByteArray.data.toList
theorem checked3261 : bytes3261=statementBytes 3333 (op3261.map lower) ∧ bytes3261.length=60 := by core033_kernel_decide
def op3262 : List WordIR.Op := [.badd 3333 1787]
def bytes3262 : Bytes := ("    let r00000d06: u32 = r00000d05.wrapping_add(r000006fb);\n" : String).toByteArray.data.toList
theorem checked3262 : bytes3262=statementBytes 3334 (op3262.map lower) ∧ bytes3262.length=60 := by core033_kernel_decide
def op3263 : List WordIR.Op := [.rotr 3319 2]
def bytes3263 : Bytes := ("    let r00000d07: u32 = r00000cf7.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked3263 : bytes3263=statementBytes 3335 (op3263.map lower) ∧ bytes3263.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3200,op3201,op3202,op3203,op3204,op3205,op3206,op3207,op3208,op3209,op3210,op3211,op3212,op3213,op3214,op3215,op3216,op3217,op3218,op3219,op3220,op3221,op3222,op3223,op3224,op3225,op3226,op3227,op3228,op3229,op3230,op3231,op3232,op3233,op3234,op3235,op3236,op3237,op3238,op3239,op3240,op3241,op3242,op3243,op3244,op3245,op3246,op3247,op3248,op3249,op3250,op3251,op3252,op3253,op3254,op3255,op3256,op3257,op3258,op3259,op3260,op3261,op3262,op3263]
def chunks : List Bytes := [bytes3200,bytes3201,bytes3202,bytes3203,bytes3204,bytes3205,bytes3206,bytes3207,bytes3208,bytes3209,bytes3210,bytes3211,bytes3212,bytes3213,bytes3214,bytes3215,bytes3216,bytes3217,bytes3218,bytes3219,bytes3220,bytes3221,bytes3222,bytes3223,bytes3224,bytes3225,bytes3226,bytes3227,bytes3228,bytes3229,bytes3230,bytes3231,bytes3232,bytes3233,bytes3234,bytes3235,bytes3236,bytes3237,bytes3238,bytes3239,bytes3240,bytes3241,bytes3242,bytes3243,bytes3244,bytes3245,bytes3246,bytes3247,bytes3248,bytes3249,bytes3250,bytes3251,bytes3252,bytes3253,bytes3254,bytes3255,bytes3256,bytes3257,bytes3258,bytes3259,bytes3260,bytes3261,bytes3262,bytes3263]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3272 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3200.1 (.cons _ _ _ _ _ checked3201.1 (.cons _ _ _ _ _ checked3202.1 (.cons _ _ _ _ _ checked3203.1 (.cons _ _ _ _ _ checked3204.1 (.cons _ _ _ _ _ checked3205.1 (.cons _ _ _ _ _ checked3206.1 (.cons _ _ _ _ _ checked3207.1 (.cons _ _ _ _ _ checked3208.1 (.cons _ _ _ _ _ checked3209.1 (.cons _ _ _ _ _ checked3210.1 (.cons _ _ _ _ _ checked3211.1 (.cons _ _ _ _ _ checked3212.1 (.cons _ _ _ _ _ checked3213.1 (.cons _ _ _ _ _ checked3214.1 (.cons _ _ _ _ _ checked3215.1 (.cons _ _ _ _ _ checked3216.1 (.cons _ _ _ _ _ checked3217.1 (.cons _ _ _ _ _ checked3218.1 (.cons _ _ _ _ _ checked3219.1 (.cons _ _ _ _ _ checked3220.1 (.cons _ _ _ _ _ checked3221.1 (.cons _ _ _ _ _ checked3222.1 (.cons _ _ _ _ _ checked3223.1 (.cons _ _ _ _ _ checked3224.1 (.cons _ _ _ _ _ checked3225.1 (.cons _ _ _ _ _ checked3226.1 (.cons _ _ _ _ _ checked3227.1 (.cons _ _ _ _ _ checked3228.1 (.cons _ _ _ _ _ checked3229.1 (.cons _ _ _ _ _ checked3230.1 (.cons _ _ _ _ _ checked3231.1 (.cons _ _ _ _ _ checked3232.1 (.cons _ _ _ _ _ checked3233.1 (.cons _ _ _ _ _ checked3234.1 (.cons _ _ _ _ _ checked3235.1 (.cons _ _ _ _ _ checked3236.1 (.cons _ _ _ _ _ checked3237.1 (.cons _ _ _ _ _ checked3238.1 (.cons _ _ _ _ _ checked3239.1 (.cons _ _ _ _ _ checked3240.1 (.cons _ _ _ _ _ checked3241.1 (.cons _ _ _ _ _ checked3242.1 (.cons _ _ _ _ _ checked3243.1 (.cons _ _ _ _ _ checked3244.1 (.cons _ _ _ _ _ checked3245.1 (.cons _ _ _ _ _ checked3246.1 (.cons _ _ _ _ _ checked3247.1 (.cons _ _ _ _ _ checked3248.1 (.cons _ _ _ _ _ checked3249.1 (.cons _ _ _ _ _ checked3250.1 (.cons _ _ _ _ _ checked3251.1 (.cons _ _ _ _ _ checked3252.1 (.cons _ _ _ _ _ checked3253.1 (.cons _ _ _ _ _ checked3254.1 (.cons _ _ _ _ _ checked3255.1 (.cons _ _ _ _ _ checked3256.1 (.cons _ _ _ _ _ checked3257.1 (.cons _ _ _ _ _ checked3258.1 (.cons _ _ _ _ _ checked3259.1 (.cons _ _ _ _ _ checked3260.1 (.cons _ _ _ _ _ checked3261.1 (.cons _ _ _ _ _ checked3262.1 (.cons _ _ _ _ _ checked3263.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3272 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3455 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3200.2,checked3201.2,checked3202.2,checked3203.2,checked3204.2,checked3205.2,checked3206.2,checked3207.2,checked3208.2,checked3209.2,checked3210.2,checked3211.2,checked3212.2,checked3213.2,checked3214.2,checked3215.2,checked3216.2,checked3217.2,checked3218.2,checked3219.2,checked3220.2,checked3221.2,checked3222.2,checked3223.2,checked3224.2,checked3225.2,checked3226.2,checked3227.2,checked3228.2,checked3229.2,checked3230.2,checked3231.2,checked3232.2,checked3233.2,checked3234.2,checked3235.2,checked3236.2,checked3237.2,checked3238.2,checked3239.2,checked3240.2,checked3241.2,checked3242.2,checked3243.2,checked3244.2,checked3245.2,checked3246.2,checked3247.2,checked3248.2,checked3249.2,checked3250.2,checked3251.2,checked3252.2,checked3253.2,checked3254.2,checked3255.2,checked3256.2,checked3257.2,checked3258.2,checked3259.2,checked3260.2,checked3261.2,checked3262.2,checked3263.2]
  decide
end ArtifactHashBlockGroup50
