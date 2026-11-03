import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup51
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3264 : List WordIR.Op := [.band 3380 3381]
def bytes3264 : Bytes := ("    let r00000d36: u32 = r00000d34 & r00000d35;\n" : String).toByteArray.data.toList
theorem checked3264 : bytes3264=statementBytes 3382 (op3264.map lower) ∧ bytes3264.length=48 := by core033_kernel_decide
def op3265 : List WordIR.Op := [.bxor 3355 3382]
def bytes3265 : Bytes := ("    let r00000d37: u32 = r00000d1b ^ r00000d36;\n" : String).toByteArray.data.toList
theorem checked3265 : bytes3265=statementBytes 3383 (op3265.map lower) ∧ bytes3265.length=48 := by core033_kernel_decide
def op3266 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3266 : Bytes := ("    let r00000d38: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3266 : bytes3266=statementBytes 3384 (op3266.map lower) ∧ bytes3266.length=41 := by core033_kernel_decide
def op3267 : List WordIR.Op := [.bxor 1299 3384]
def bytes3267 : Bytes := ("    let r00000d39: u32 = r00000513 ^ r00000d38;\n" : String).toByteArray.data.toList
theorem checked3267 : bytes3267=statementBytes 3385 (op3267.map lower) ∧ bytes3267.length=48 := by core033_kernel_decide
def op3268 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3268 : Bytes := ("    let r00000d3a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3268 : bytes3268=statementBytes 3386 (op3268.map lower) ∧ bytes3268.length=41 := by core033_kernel_decide
def op3269 : List WordIR.Op := [.bnot 3386]
def bytes3269 : Bytes := ("    let r00000d3b: u32 = !r00000d3a;\n" : String).toByteArray.data.toList
theorem checked3269 : bytes3269=statementBytes 3387 (op3269.map lower) ∧ bytes3269.length=37 := by core033_kernel_decide
def op3270 : List WordIR.Op := [.band 3385 3387]
def bytes3270 : Bytes := ("    let r00000d3c: u32 = r00000d39 & r00000d3b;\n" : String).toByteArray.data.toList
theorem checked3270 : bytes3270=statementBytes 3388 (op3270.map lower) ∧ bytes3270.length=48 := by core033_kernel_decide
def op3271 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3271 : Bytes := ("    let r00000d3d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3271 : bytes3271=statementBytes 3389 (op3271.map lower) ∧ bytes3271.length=41 := by core033_kernel_decide
def op3272 : List WordIR.Op := [.bxor 1299 3389]
def bytes3272 : Bytes := ("    let r00000d3e: u32 = r00000513 ^ r00000d3d;\n" : String).toByteArray.data.toList
theorem checked3272 : bytes3272=statementBytes 3390 (op3272.map lower) ∧ bytes3272.length=48 := by core033_kernel_decide
def op3273 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3273 : Bytes := ("    let r00000d3f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3273 : bytes3273=statementBytes 3391 (op3273.map lower) ∧ bytes3273.length=41 := by core033_kernel_decide
def op3274 : List WordIR.Op := [.bnot 3391]
def bytes3274 : Bytes := ("    let r00000d40: u32 = !r00000d3f;\n" : String).toByteArray.data.toList
theorem checked3274 : bytes3274=statementBytes 3392 (op3274.map lower) ∧ bytes3274.length=37 := by core033_kernel_decide
def op3275 : List WordIR.Op := [.bxor 3390 3392]
def bytes3275 : Bytes := ("    let r00000d41: u32 = r00000d3e ^ r00000d40;\n" : String).toByteArray.data.toList
theorem checked3275 : bytes3275=statementBytes 3393 (op3275.map lower) ∧ bytes3275.length=48 := by core033_kernel_decide
def op3276 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3276 : Bytes := ("    let r00000d42: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3276 : bytes3276=statementBytes 3394 (op3276.map lower) ∧ bytes3276.length=41 := by core033_kernel_decide
def op3277 : List WordIR.Op := [.bxor 1299 3394]
def bytes3277 : Bytes := ("    let r00000d43: u32 = r00000513 ^ r00000d42;\n" : String).toByteArray.data.toList
theorem checked3277 : bytes3277=statementBytes 3395 (op3277.map lower) ∧ bytes3277.length=48 := by core033_kernel_decide
def op3278 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3278 : Bytes := ("    let r00000d44: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3278 : bytes3278=statementBytes 3396 (op3278.map lower) ∧ bytes3278.length=41 := by core033_kernel_decide
def op3279 : List WordIR.Op := [.bnot 3396]
def bytes3279 : Bytes := ("    let r00000d45: u32 = !r00000d44;\n" : String).toByteArray.data.toList
theorem checked3279 : bytes3279=statementBytes 3397 (op3279.map lower) ∧ bytes3279.length=37 := by core033_kernel_decide
def op3280 : List WordIR.Op := [.badd 3395 3397]
def bytes3280 : Bytes := ("    let r00000d46: u32 = r00000d43.wrapping_add(r00000d45);\n" : String).toByteArray.data.toList
theorem checked3280 : bytes3280=statementBytes 3398 (op3280.map lower) ∧ bytes3280.length=60 := by core033_kernel_decide
def op3281 : List WordIR.Op := [.bnot 3398]
def bytes3281 : Bytes := ("    let r00000d47: u32 = !r00000d46;\n" : String).toByteArray.data.toList
theorem checked3281 : bytes3281=statementBytes 3399 (op3281.map lower) ∧ bytes3281.length=37 := by core033_kernel_decide
def op3282 : List WordIR.Op := [.band 3393 3399]
def bytes3282 : Bytes := ("    let r00000d48: u32 = r00000d41 & r00000d47;\n" : String).toByteArray.data.toList
theorem checked3282 : bytes3282=statementBytes 3400 (op3282.map lower) ∧ bytes3282.length=48 := by core033_kernel_decide
def op3283 : List WordIR.Op := [.bxor 3388 3400]
def bytes3283 : Bytes := ("    let r00000d49: u32 = r00000d3c ^ r00000d48;\n" : String).toByteArray.data.toList
theorem checked3283 : bytes3283=statementBytes 3401 (op3283.map lower) ∧ bytes3283.length=48 := by core033_kernel_decide
def op3284 : List WordIR.Op := [.shr 3401 31]
def bytes3284 : Bytes := ("    let r00000d4a: u32 = r00000d49 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3284 : bytes3284=statementBytes 3402 (op3284.map lower) ∧ bytes3284.length=54 := by core033_kernel_decide
def op3285 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3285 : Bytes := ("    let r00000d4b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3285 : bytes3285=statementBytes 3403 (op3285.map lower) ∧ bytes3285.length=41 := by core033_kernel_decide
def op3286 : List WordIR.Op := [.bxor 3402 3403]
def bytes3286 : Bytes := ("    let r00000d4c: u32 = r00000d4a ^ r00000d4b;\n" : String).toByteArray.data.toList
theorem checked3286 : bytes3286=statementBytes 3404 (op3286.map lower) ∧ bytes3286.length=48 := by core033_kernel_decide
def op3287 : List WordIR.Op := [.bnot 3404]
def bytes3287 : Bytes := ("    let r00000d4d: u32 = !r00000d4c;\n" : String).toByteArray.data.toList
theorem checked3287 : bytes3287=statementBytes 3405 (op3287.map lower) ∧ bytes3287.length=37 := by core033_kernel_decide
def op3288 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3288 : Bytes := ("    let r00000d4e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3288 : bytes3288=statementBytes 3406 (op3288.map lower) ∧ bytes3288.length=41 := by core033_kernel_decide
def op3289 : List WordIR.Op := [.badd 3405 3406]
def bytes3289 : Bytes := ("    let r00000d4f: u32 = r00000d4d.wrapping_add(r00000d4e);\n" : String).toByteArray.data.toList
theorem checked3289 : bytes3289=statementBytes 3407 (op3289.map lower) ∧ bytes3289.length=60 := by core033_kernel_decide
def op3290 : List WordIR.Op := [.band 3407 1739]
def bytes3290 : Bytes := ("    let r00000d50: u32 = r00000d4f & r000006cb;\n" : String).toByteArray.data.toList
theorem checked3290 : bytes3290=statementBytes 3408 (op3290.map lower) ∧ bytes3290.length=48 := by core033_kernel_decide
def op3291 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3291 : Bytes := ("    let r00000d51: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3291 : bytes3291=statementBytes 3409 (op3291.map lower) ∧ bytes3291.length=41 := by core033_kernel_decide
def op3292 : List WordIR.Op := [.bxor 1299 3409]
def bytes3292 : Bytes := ("    let r00000d52: u32 = r00000513 ^ r00000d51;\n" : String).toByteArray.data.toList
theorem checked3292 : bytes3292=statementBytes 3410 (op3292.map lower) ∧ bytes3292.length=48 := by core033_kernel_decide
def op3293 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3293 : Bytes := ("    let r00000d53: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3293 : bytes3293=statementBytes 3411 (op3293.map lower) ∧ bytes3293.length=41 := by core033_kernel_decide
def op3294 : List WordIR.Op := [.bnot 3411]
def bytes3294 : Bytes := ("    let r00000d54: u32 = !r00000d53;\n" : String).toByteArray.data.toList
theorem checked3294 : bytes3294=statementBytes 3412 (op3294.map lower) ∧ bytes3294.length=37 := by core033_kernel_decide
def op3295 : List WordIR.Op := [.band 3410 3412]
def bytes3295 : Bytes := ("    let r00000d55: u32 = r00000d52 & r00000d54;\n" : String).toByteArray.data.toList
theorem checked3295 : bytes3295=statementBytes 3413 (op3295.map lower) ∧ bytes3295.length=48 := by core033_kernel_decide
def op3296 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3296 : Bytes := ("    let r00000d56: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3296 : bytes3296=statementBytes 3414 (op3296.map lower) ∧ bytes3296.length=41 := by core033_kernel_decide
def op3297 : List WordIR.Op := [.bxor 1299 3414]
def bytes3297 : Bytes := ("    let r00000d57: u32 = r00000513 ^ r00000d56;\n" : String).toByteArray.data.toList
theorem checked3297 : bytes3297=statementBytes 3415 (op3297.map lower) ∧ bytes3297.length=48 := by core033_kernel_decide
def op3298 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3298 : Bytes := ("    let r00000d58: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3298 : bytes3298=statementBytes 3416 (op3298.map lower) ∧ bytes3298.length=41 := by core033_kernel_decide
def op3299 : List WordIR.Op := [.bnot 3416]
def bytes3299 : Bytes := ("    let r00000d59: u32 = !r00000d58;\n" : String).toByteArray.data.toList
theorem checked3299 : bytes3299=statementBytes 3417 (op3299.map lower) ∧ bytes3299.length=37 := by core033_kernel_decide
def op3300 : List WordIR.Op := [.bxor 3415 3417]
def bytes3300 : Bytes := ("    let r00000d5a: u32 = r00000d57 ^ r00000d59;\n" : String).toByteArray.data.toList
theorem checked3300 : bytes3300=statementBytes 3418 (op3300.map lower) ∧ bytes3300.length=48 := by core033_kernel_decide
def op3301 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3301 : Bytes := ("    let r00000d5b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3301 : bytes3301=statementBytes 3419 (op3301.map lower) ∧ bytes3301.length=41 := by core033_kernel_decide
def op3302 : List WordIR.Op := [.bxor 1299 3419]
def bytes3302 : Bytes := ("    let r00000d5c: u32 = r00000513 ^ r00000d5b;\n" : String).toByteArray.data.toList
theorem checked3302 : bytes3302=statementBytes 3420 (op3302.map lower) ∧ bytes3302.length=48 := by core033_kernel_decide
def op3303 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3303 : Bytes := ("    let r00000d5d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3303 : bytes3303=statementBytes 3421 (op3303.map lower) ∧ bytes3303.length=41 := by core033_kernel_decide
def op3304 : List WordIR.Op := [.bnot 3421]
def bytes3304 : Bytes := ("    let r00000d5e: u32 = !r00000d5d;\n" : String).toByteArray.data.toList
theorem checked3304 : bytes3304=statementBytes 3422 (op3304.map lower) ∧ bytes3304.length=37 := by core033_kernel_decide
def op3305 : List WordIR.Op := [.badd 3420 3422]
def bytes3305 : Bytes := ("    let r00000d5f: u32 = r00000d5c.wrapping_add(r00000d5e);\n" : String).toByteArray.data.toList
theorem checked3305 : bytes3305=statementBytes 3423 (op3305.map lower) ∧ bytes3305.length=60 := by core033_kernel_decide
def op3306 : List WordIR.Op := [.bnot 3423]
def bytes3306 : Bytes := ("    let r00000d60: u32 = !r00000d5f;\n" : String).toByteArray.data.toList
theorem checked3306 : bytes3306=statementBytes 3424 (op3306.map lower) ∧ bytes3306.length=37 := by core033_kernel_decide
def op3307 : List WordIR.Op := [.band 3418 3424]
def bytes3307 : Bytes := ("    let r00000d61: u32 = r00000d5a & r00000d60;\n" : String).toByteArray.data.toList
theorem checked3307 : bytes3307=statementBytes 3425 (op3307.map lower) ∧ bytes3307.length=48 := by core033_kernel_decide
def op3308 : List WordIR.Op := [.bxor 3413 3425]
def bytes3308 : Bytes := ("    let r00000d62: u32 = r00000d55 ^ r00000d61;\n" : String).toByteArray.data.toList
theorem checked3308 : bytes3308=statementBytes 3426 (op3308.map lower) ∧ bytes3308.length=48 := by core033_kernel_decide
def op3309 : List WordIR.Op := [.shr 3426 31]
def bytes3309 : Bytes := ("    let r00000d63: u32 = r00000d62 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3309 : bytes3309=statementBytes 3427 (op3309.map lower) ∧ bytes3309.length=54 := by core033_kernel_decide
def op3310 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3310 : Bytes := ("    let r00000d64: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3310 : bytes3310=statementBytes 3428 (op3310.map lower) ∧ bytes3310.length=41 := by core033_kernel_decide
def op3311 : List WordIR.Op := [.bxor 3427 3428]
def bytes3311 : Bytes := ("    let r00000d65: u32 = r00000d63 ^ r00000d64;\n" : String).toByteArray.data.toList
theorem checked3311 : bytes3311=statementBytes 3429 (op3311.map lower) ∧ bytes3311.length=48 := by core033_kernel_decide
def op3312 : List WordIR.Op := [.bnot 3429]
def bytes3312 : Bytes := ("    let r00000d66: u32 = !r00000d65;\n" : String).toByteArray.data.toList
theorem checked3312 : bytes3312=statementBytes 3430 (op3312.map lower) ∧ bytes3312.length=37 := by core033_kernel_decide
def op3313 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3313 : Bytes := ("    let r00000d67: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3313 : bytes3313=statementBytes 3431 (op3313.map lower) ∧ bytes3313.length=41 := by core033_kernel_decide
def op3314 : List WordIR.Op := [.badd 3430 3431]
def bytes3314 : Bytes := ("    let r00000d68: u32 = r00000d66.wrapping_add(r00000d67);\n" : String).toByteArray.data.toList
theorem checked3314 : bytes3314=statementBytes 3432 (op3314.map lower) ∧ bytes3314.length=60 := by core033_kernel_decide
def op3315 : List WordIR.Op := [.bnot 3432]
def bytes3315 : Bytes := ("    let r00000d69: u32 = !r00000d68;\n" : String).toByteArray.data.toList
theorem checked3315 : bytes3315=statementBytes 3433 (op3315.map lower) ∧ bytes3315.length=37 := by core033_kernel_decide
def op3316 : List WordIR.Op := [.literal (BitVec.ofNat 32 2600822924)]
def bytes3316 : Bytes := ("    let r00000d6a: u32 = 0x9b05688c_u32;\n" : String).toByteArray.data.toList
theorem checked3316 : bytes3316=statementBytes 3434 (op3316.map lower) ∧ bytes3316.length=41 := by core033_kernel_decide
def op3317 : List WordIR.Op := [.band 3433 3434]
def bytes3317 : Bytes := ("    let r00000d6b: u32 = r00000d69 & r00000d6a;\n" : String).toByteArray.data.toList
theorem checked3317 : bytes3317=statementBytes 3435 (op3317.map lower) ∧ bytes3317.length=48 := by core033_kernel_decide
def op3318 : List WordIR.Op := [.bxor 3408 3435]
def bytes3318 : Bytes := ("    let r00000d6c: u32 = r00000d50 ^ r00000d6b;\n" : String).toByteArray.data.toList
theorem checked3318 : bytes3318=statementBytes 3436 (op3318.map lower) ∧ bytes3318.length=48 := by core033_kernel_decide
def op3319 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3319 : Bytes := ("    let r00000d6d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3319 : bytes3319=statementBytes 3437 (op3319.map lower) ∧ bytes3319.length=41 := by core033_kernel_decide
def op3320 : List WordIR.Op := [.bxor 1299 3437]
def bytes3320 : Bytes := ("    let r00000d6e: u32 = r00000513 ^ r00000d6d;\n" : String).toByteArray.data.toList
theorem checked3320 : bytes3320=statementBytes 3438 (op3320.map lower) ∧ bytes3320.length=48 := by core033_kernel_decide
def op3321 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3321 : Bytes := ("    let r00000d6f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3321 : bytes3321=statementBytes 3439 (op3321.map lower) ∧ bytes3321.length=41 := by core033_kernel_decide
def op3322 : List WordIR.Op := [.bnot 3439]
def bytes3322 : Bytes := ("    let r00000d70: u32 = !r00000d6f;\n" : String).toByteArray.data.toList
theorem checked3322 : bytes3322=statementBytes 3440 (op3322.map lower) ∧ bytes3322.length=37 := by core033_kernel_decide
def op3323 : List WordIR.Op := [.band 3438 3440]
def bytes3323 : Bytes := ("    let r00000d71: u32 = r00000d6e & r00000d70;\n" : String).toByteArray.data.toList
theorem checked3323 : bytes3323=statementBytes 3441 (op3323.map lower) ∧ bytes3323.length=48 := by core033_kernel_decide
def op3324 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3324 : Bytes := ("    let r00000d72: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3324 : bytes3324=statementBytes 3442 (op3324.map lower) ∧ bytes3324.length=41 := by core033_kernel_decide
def op3325 : List WordIR.Op := [.bxor 1299 3442]
def bytes3325 : Bytes := ("    let r00000d73: u32 = r00000513 ^ r00000d72;\n" : String).toByteArray.data.toList
theorem checked3325 : bytes3325=statementBytes 3443 (op3325.map lower) ∧ bytes3325.length=48 := by core033_kernel_decide
def op3326 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3326 : Bytes := ("    let r00000d74: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3326 : bytes3326=statementBytes 3444 (op3326.map lower) ∧ bytes3326.length=41 := by core033_kernel_decide
def op3327 : List WordIR.Op := [.bnot 3444]
def bytes3327 : Bytes := ("    let r00000d75: u32 = !r00000d74;\n" : String).toByteArray.data.toList
theorem checked3327 : bytes3327=statementBytes 3445 (op3327.map lower) ∧ bytes3327.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3264,op3265,op3266,op3267,op3268,op3269,op3270,op3271,op3272,op3273,op3274,op3275,op3276,op3277,op3278,op3279,op3280,op3281,op3282,op3283,op3284,op3285,op3286,op3287,op3288,op3289,op3290,op3291,op3292,op3293,op3294,op3295,op3296,op3297,op3298,op3299,op3300,op3301,op3302,op3303,op3304,op3305,op3306,op3307,op3308,op3309,op3310,op3311,op3312,op3313,op3314,op3315,op3316,op3317,op3318,op3319,op3320,op3321,op3322,op3323,op3324,op3325,op3326,op3327]
def chunks : List Bytes := [bytes3264,bytes3265,bytes3266,bytes3267,bytes3268,bytes3269,bytes3270,bytes3271,bytes3272,bytes3273,bytes3274,bytes3275,bytes3276,bytes3277,bytes3278,bytes3279,bytes3280,bytes3281,bytes3282,bytes3283,bytes3284,bytes3285,bytes3286,bytes3287,bytes3288,bytes3289,bytes3290,bytes3291,bytes3292,bytes3293,bytes3294,bytes3295,bytes3296,bytes3297,bytes3298,bytes3299,bytes3300,bytes3301,bytes3302,bytes3303,bytes3304,bytes3305,bytes3306,bytes3307,bytes3308,bytes3309,bytes3310,bytes3311,bytes3312,bytes3313,bytes3314,bytes3315,bytes3316,bytes3317,bytes3318,bytes3319,bytes3320,bytes3321,bytes3322,bytes3323,bytes3324,bytes3325,bytes3326,bytes3327]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3382 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3264.1 (.cons _ _ _ _ _ checked3265.1 (.cons _ _ _ _ _ checked3266.1 (.cons _ _ _ _ _ checked3267.1 (.cons _ _ _ _ _ checked3268.1 (.cons _ _ _ _ _ checked3269.1 (.cons _ _ _ _ _ checked3270.1 (.cons _ _ _ _ _ checked3271.1 (.cons _ _ _ _ _ checked3272.1 (.cons _ _ _ _ _ checked3273.1 (.cons _ _ _ _ _ checked3274.1 (.cons _ _ _ _ _ checked3275.1 (.cons _ _ _ _ _ checked3276.1 (.cons _ _ _ _ _ checked3277.1 (.cons _ _ _ _ _ checked3278.1 (.cons _ _ _ _ _ checked3279.1 (.cons _ _ _ _ _ checked3280.1 (.cons _ _ _ _ _ checked3281.1 (.cons _ _ _ _ _ checked3282.1 (.cons _ _ _ _ _ checked3283.1 (.cons _ _ _ _ _ checked3284.1 (.cons _ _ _ _ _ checked3285.1 (.cons _ _ _ _ _ checked3286.1 (.cons _ _ _ _ _ checked3287.1 (.cons _ _ _ _ _ checked3288.1 (.cons _ _ _ _ _ checked3289.1 (.cons _ _ _ _ _ checked3290.1 (.cons _ _ _ _ _ checked3291.1 (.cons _ _ _ _ _ checked3292.1 (.cons _ _ _ _ _ checked3293.1 (.cons _ _ _ _ _ checked3294.1 (.cons _ _ _ _ _ checked3295.1 (.cons _ _ _ _ _ checked3296.1 (.cons _ _ _ _ _ checked3297.1 (.cons _ _ _ _ _ checked3298.1 (.cons _ _ _ _ _ checked3299.1 (.cons _ _ _ _ _ checked3300.1 (.cons _ _ _ _ _ checked3301.1 (.cons _ _ _ _ _ checked3302.1 (.cons _ _ _ _ _ checked3303.1 (.cons _ _ _ _ _ checked3304.1 (.cons _ _ _ _ _ checked3305.1 (.cons _ _ _ _ _ checked3306.1 (.cons _ _ _ _ _ checked3307.1 (.cons _ _ _ _ _ checked3308.1 (.cons _ _ _ _ _ checked3309.1 (.cons _ _ _ _ _ checked3310.1 (.cons _ _ _ _ _ checked3311.1 (.cons _ _ _ _ _ checked3312.1 (.cons _ _ _ _ _ checked3313.1 (.cons _ _ _ _ _ checked3314.1 (.cons _ _ _ _ _ checked3315.1 (.cons _ _ _ _ _ checked3316.1 (.cons _ _ _ _ _ checked3317.1 (.cons _ _ _ _ _ checked3318.1 (.cons _ _ _ _ _ checked3319.1 (.cons _ _ _ _ _ checked3320.1 (.cons _ _ _ _ _ checked3321.1 (.cons _ _ _ _ _ checked3322.1 (.cons _ _ _ _ _ checked3323.1 (.cons _ _ _ _ _ checked3324.1 (.cons _ _ _ _ _ checked3325.1 (.cons _ _ _ _ _ checked3326.1 (.cons _ _ _ _ _ checked3327.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3382 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3264.2,checked3265.2,checked3266.2,checked3267.2,checked3268.2,checked3269.2,checked3270.2,checked3271.2,checked3272.2,checked3273.2,checked3274.2,checked3275.2,checked3276.2,checked3277.2,checked3278.2,checked3279.2,checked3280.2,checked3281.2,checked3282.2,checked3283.2,checked3284.2,checked3285.2,checked3286.2,checked3287.2,checked3288.2,checked3289.2,checked3290.2,checked3291.2,checked3292.2,checked3293.2,checked3294.2,checked3295.2,checked3296.2,checked3297.2,checked3298.2,checked3299.2,checked3300.2,checked3301.2,checked3302.2,checked3303.2,checked3304.2,checked3305.2,checked3306.2,checked3307.2,checked3308.2,checked3309.2,checked3310.2,checked3311.2,checked3312.2,checked3313.2,checked3314.2,checked3315.2,checked3316.2,checked3317.2,checked3318.2,checked3319.2,checked3320.2,checked3321.2,checked3322.2,checked3323.2,checked3324.2,checked3325.2,checked3326.2,checked3327.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup51
