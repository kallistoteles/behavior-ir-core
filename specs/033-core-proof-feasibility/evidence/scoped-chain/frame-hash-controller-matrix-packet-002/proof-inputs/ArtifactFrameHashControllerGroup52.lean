import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup52
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3328 : List WordIR.Op := [.badd 3368 3370]
def bytes3328 : Bytes := ("    let r00000d2b: u32 = r00000d28.wrapping_add(r00000d2a);\n" : String).toByteArray.data.toList
theorem checked3328 : bytes3328=statementBytes 3371 (op3328.map lower) ∧ bytes3328.length=60 := by core033_kernel_decide
def op3329 : List WordIR.Op := [.bnot 3371]
def bytes3329 : Bytes := ("    let r00000d2c: u32 = !r00000d2b;\n" : String).toByteArray.data.toList
theorem checked3329 : bytes3329=statementBytes 3372 (op3329.map lower) ∧ bytes3329.length=37 := by core033_kernel_decide
def op3330 : List WordIR.Op := [.band 3366 3372]
def bytes3330 : Bytes := ("    let r00000d2d: u32 = r00000d26 & r00000d2c;\n" : String).toByteArray.data.toList
theorem checked3330 : bytes3330=statementBytes 3373 (op3330.map lower) ∧ bytes3330.length=48 := by core033_kernel_decide
def op3331 : List WordIR.Op := [.bxor 3361 3373]
def bytes3331 : Bytes := ("    let r00000d2e: u32 = r00000d21 ^ r00000d2d;\n" : String).toByteArray.data.toList
theorem checked3331 : bytes3331=statementBytes 3374 (op3331.map lower) ∧ bytes3331.length=48 := by core033_kernel_decide
def op3332 : List WordIR.Op := [.shr 3374 31]
def bytes3332 : Bytes := ("    let r00000d2f: u32 = r00000d2e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3332 : bytes3332=statementBytes 3375 (op3332.map lower) ∧ bytes3332.length=54 := by core033_kernel_decide
def op3333 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3333 : Bytes := ("    let r00000d30: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3333 : bytes3333=statementBytes 3376 (op3333.map lower) ∧ bytes3333.length=41 := by core033_kernel_decide
def op3334 : List WordIR.Op := [.bxor 3375 3376]
def bytes3334 : Bytes := ("    let r00000d31: u32 = r00000d2f ^ r00000d30;\n" : String).toByteArray.data.toList
theorem checked3334 : bytes3334=statementBytes 3377 (op3334.map lower) ∧ bytes3334.length=48 := by core033_kernel_decide
def op3335 : List WordIR.Op := [.bnot 3377]
def bytes3335 : Bytes := ("    let r00000d32: u32 = !r00000d31;\n" : String).toByteArray.data.toList
theorem checked3335 : bytes3335=statementBytes 3378 (op3335.map lower) ∧ bytes3335.length=37 := by core033_kernel_decide
def op3336 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3336 : Bytes := ("    let r00000d33: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3336 : bytes3336=statementBytes 3379 (op3336.map lower) ∧ bytes3336.length=41 := by core033_kernel_decide
def op3337 : List WordIR.Op := [.badd 3378 3379]
def bytes3337 : Bytes := ("    let r00000d34: u32 = r00000d32.wrapping_add(r00000d33);\n" : String).toByteArray.data.toList
theorem checked3337 : bytes3337=statementBytes 3380 (op3337.map lower) ∧ bytes3337.length=60 := by core033_kernel_decide
def op3338 : List WordIR.Op := [.bnot 3380]
def bytes3338 : Bytes := ("    let r00000d35: u32 = !r00000d34;\n" : String).toByteArray.data.toList
theorem checked3338 : bytes3338=statementBytes 3381 (op3338.map lower) ∧ bytes3338.length=37 := by core033_kernel_decide
def op3339 : List WordIR.Op := [.band 3381 872]
def bytes3339 : Bytes := ("    let r00000d36: u32 = r00000d35 & r00000368;\n" : String).toByteArray.data.toList
theorem checked3339 : bytes3339=statementBytes 3382 (op3339.map lower) ∧ bytes3339.length=48 := by core033_kernel_decide
def op3340 : List WordIR.Op := [.bxor 3356 3382]
def bytes3340 : Bytes := ("    let r00000d37: u32 = r00000d1c ^ r00000d36;\n" : String).toByteArray.data.toList
theorem checked3340 : bytes3340=statementBytes 3383 (op3340.map lower) ∧ bytes3340.length=48 := by core033_kernel_decide
def op3341 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3341 : Bytes := ("    let r00000d38: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3341 : bytes3341=statementBytes 3384 (op3341.map lower) ∧ bytes3341.length=41 := by core033_kernel_decide
def op3342 : List WordIR.Op := [.bxor 0 3384]
def bytes3342 : Bytes := ("    let r00000d39: u32 = r00000000 ^ r00000d38;\n" : String).toByteArray.data.toList
theorem checked3342 : bytes3342=statementBytes 3385 (op3342.map lower) ∧ bytes3342.length=48 := by core033_kernel_decide
def op3343 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3343 : Bytes := ("    let r00000d3a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3343 : bytes3343=statementBytes 3386 (op3343.map lower) ∧ bytes3343.length=41 := by core033_kernel_decide
def op3344 : List WordIR.Op := [.bnot 3386]
def bytes3344 : Bytes := ("    let r00000d3b: u32 = !r00000d3a;\n" : String).toByteArray.data.toList
theorem checked3344 : bytes3344=statementBytes 3387 (op3344.map lower) ∧ bytes3344.length=37 := by core033_kernel_decide
def op3345 : List WordIR.Op := [.band 3385 3387]
def bytes3345 : Bytes := ("    let r00000d3c: u32 = r00000d39 & r00000d3b;\n" : String).toByteArray.data.toList
theorem checked3345 : bytes3345=statementBytes 3388 (op3345.map lower) ∧ bytes3345.length=48 := by core033_kernel_decide
def op3346 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3346 : Bytes := ("    let r00000d3d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3346 : bytes3346=statementBytes 3389 (op3346.map lower) ∧ bytes3346.length=41 := by core033_kernel_decide
def op3347 : List WordIR.Op := [.bxor 0 3389]
def bytes3347 : Bytes := ("    let r00000d3e: u32 = r00000000 ^ r00000d3d;\n" : String).toByteArray.data.toList
theorem checked3347 : bytes3347=statementBytes 3390 (op3347.map lower) ∧ bytes3347.length=48 := by core033_kernel_decide
def op3348 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3348 : Bytes := ("    let r00000d3f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3348 : bytes3348=statementBytes 3391 (op3348.map lower) ∧ bytes3348.length=41 := by core033_kernel_decide
def op3349 : List WordIR.Op := [.bnot 3391]
def bytes3349 : Bytes := ("    let r00000d40: u32 = !r00000d3f;\n" : String).toByteArray.data.toList
theorem checked3349 : bytes3349=statementBytes 3392 (op3349.map lower) ∧ bytes3349.length=37 := by core033_kernel_decide
def op3350 : List WordIR.Op := [.bxor 3390 3392]
def bytes3350 : Bytes := ("    let r00000d41: u32 = r00000d3e ^ r00000d40;\n" : String).toByteArray.data.toList
theorem checked3350 : bytes3350=statementBytes 3393 (op3350.map lower) ∧ bytes3350.length=48 := by core033_kernel_decide
def op3351 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3351 : Bytes := ("    let r00000d42: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3351 : bytes3351=statementBytes 3394 (op3351.map lower) ∧ bytes3351.length=41 := by core033_kernel_decide
def op3352 : List WordIR.Op := [.bxor 0 3394]
def bytes3352 : Bytes := ("    let r00000d43: u32 = r00000000 ^ r00000d42;\n" : String).toByteArray.data.toList
theorem checked3352 : bytes3352=statementBytes 3395 (op3352.map lower) ∧ bytes3352.length=48 := by core033_kernel_decide
def op3353 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3353 : Bytes := ("    let r00000d44: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3353 : bytes3353=statementBytes 3396 (op3353.map lower) ∧ bytes3353.length=41 := by core033_kernel_decide
def op3354 : List WordIR.Op := [.bnot 3396]
def bytes3354 : Bytes := ("    let r00000d45: u32 = !r00000d44;\n" : String).toByteArray.data.toList
theorem checked3354 : bytes3354=statementBytes 3397 (op3354.map lower) ∧ bytes3354.length=37 := by core033_kernel_decide
def op3355 : List WordIR.Op := [.badd 3395 3397]
def bytes3355 : Bytes := ("    let r00000d46: u32 = r00000d43.wrapping_add(r00000d45);\n" : String).toByteArray.data.toList
theorem checked3355 : bytes3355=statementBytes 3398 (op3355.map lower) ∧ bytes3355.length=60 := by core033_kernel_decide
def op3356 : List WordIR.Op := [.bnot 3398]
def bytes3356 : Bytes := ("    let r00000d47: u32 = !r00000d46;\n" : String).toByteArray.data.toList
theorem checked3356 : bytes3356=statementBytes 3399 (op3356.map lower) ∧ bytes3356.length=37 := by core033_kernel_decide
def op3357 : List WordIR.Op := [.band 3393 3399]
def bytes3357 : Bytes := ("    let r00000d48: u32 = r00000d41 & r00000d47;\n" : String).toByteArray.data.toList
theorem checked3357 : bytes3357=statementBytes 3400 (op3357.map lower) ∧ bytes3357.length=48 := by core033_kernel_decide
def op3358 : List WordIR.Op := [.bxor 3388 3400]
def bytes3358 : Bytes := ("    let r00000d49: u32 = r00000d3c ^ r00000d48;\n" : String).toByteArray.data.toList
theorem checked3358 : bytes3358=statementBytes 3401 (op3358.map lower) ∧ bytes3358.length=48 := by core033_kernel_decide
def op3359 : List WordIR.Op := [.shr 3401 31]
def bytes3359 : Bytes := ("    let r00000d4a: u32 = r00000d49 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3359 : bytes3359=statementBytes 3402 (op3359.map lower) ∧ bytes3359.length=54 := by core033_kernel_decide
def op3360 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3360 : Bytes := ("    let r00000d4b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3360 : bytes3360=statementBytes 3403 (op3360.map lower) ∧ bytes3360.length=41 := by core033_kernel_decide
def op3361 : List WordIR.Op := [.bxor 3402 3403]
def bytes3361 : Bytes := ("    let r00000d4c: u32 = r00000d4a ^ r00000d4b;\n" : String).toByteArray.data.toList
theorem checked3361 : bytes3361=statementBytes 3404 (op3361.map lower) ∧ bytes3361.length=48 := by core033_kernel_decide
def op3362 : List WordIR.Op := [.bnot 3404]
def bytes3362 : Bytes := ("    let r00000d4d: u32 = !r00000d4c;\n" : String).toByteArray.data.toList
theorem checked3362 : bytes3362=statementBytes 3405 (op3362.map lower) ∧ bytes3362.length=37 := by core033_kernel_decide
def op3363 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3363 : Bytes := ("    let r00000d4e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3363 : bytes3363=statementBytes 3406 (op3363.map lower) ∧ bytes3363.length=41 := by core033_kernel_decide
def op3364 : List WordIR.Op := [.badd 3405 3406]
def bytes3364 : Bytes := ("    let r00000d4f: u32 = r00000d4d.wrapping_add(r00000d4e);\n" : String).toByteArray.data.toList
theorem checked3364 : bytes3364=statementBytes 3407 (op3364.map lower) ∧ bytes3364.length=60 := by core033_kernel_decide
def op3365 : List WordIR.Op := [.band 3407 1067]
def bytes3365 : Bytes := ("    let r00000d50: u32 = r00000d4f & r0000042b;\n" : String).toByteArray.data.toList
theorem checked3365 : bytes3365=statementBytes 3408 (op3365.map lower) ∧ bytes3365.length=48 := by core033_kernel_decide
def op3366 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3366 : Bytes := ("    let r00000d51: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3366 : bytes3366=statementBytes 3409 (op3366.map lower) ∧ bytes3366.length=41 := by core033_kernel_decide
def op3367 : List WordIR.Op := [.bxor 0 3409]
def bytes3367 : Bytes := ("    let r00000d52: u32 = r00000000 ^ r00000d51;\n" : String).toByteArray.data.toList
theorem checked3367 : bytes3367=statementBytes 3410 (op3367.map lower) ∧ bytes3367.length=48 := by core033_kernel_decide
def op3368 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3368 : Bytes := ("    let r00000d53: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3368 : bytes3368=statementBytes 3411 (op3368.map lower) ∧ bytes3368.length=41 := by core033_kernel_decide
def op3369 : List WordIR.Op := [.bnot 3411]
def bytes3369 : Bytes := ("    let r00000d54: u32 = !r00000d53;\n" : String).toByteArray.data.toList
theorem checked3369 : bytes3369=statementBytes 3412 (op3369.map lower) ∧ bytes3369.length=37 := by core033_kernel_decide
def op3370 : List WordIR.Op := [.band 3410 3412]
def bytes3370 : Bytes := ("    let r00000d55: u32 = r00000d52 & r00000d54;\n" : String).toByteArray.data.toList
theorem checked3370 : bytes3370=statementBytes 3413 (op3370.map lower) ∧ bytes3370.length=48 := by core033_kernel_decide
def op3371 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3371 : Bytes := ("    let r00000d56: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3371 : bytes3371=statementBytes 3414 (op3371.map lower) ∧ bytes3371.length=41 := by core033_kernel_decide
def op3372 : List WordIR.Op := [.bxor 0 3414]
def bytes3372 : Bytes := ("    let r00000d57: u32 = r00000000 ^ r00000d56;\n" : String).toByteArray.data.toList
theorem checked3372 : bytes3372=statementBytes 3415 (op3372.map lower) ∧ bytes3372.length=48 := by core033_kernel_decide
def op3373 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3373 : Bytes := ("    let r00000d58: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3373 : bytes3373=statementBytes 3416 (op3373.map lower) ∧ bytes3373.length=41 := by core033_kernel_decide
def op3374 : List WordIR.Op := [.bnot 3416]
def bytes3374 : Bytes := ("    let r00000d59: u32 = !r00000d58;\n" : String).toByteArray.data.toList
theorem checked3374 : bytes3374=statementBytes 3417 (op3374.map lower) ∧ bytes3374.length=37 := by core033_kernel_decide
def op3375 : List WordIR.Op := [.bxor 3415 3417]
def bytes3375 : Bytes := ("    let r00000d5a: u32 = r00000d57 ^ r00000d59;\n" : String).toByteArray.data.toList
theorem checked3375 : bytes3375=statementBytes 3418 (op3375.map lower) ∧ bytes3375.length=48 := by core033_kernel_decide
def op3376 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3376 : Bytes := ("    let r00000d5b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3376 : bytes3376=statementBytes 3419 (op3376.map lower) ∧ bytes3376.length=41 := by core033_kernel_decide
def op3377 : List WordIR.Op := [.bxor 0 3419]
def bytes3377 : Bytes := ("    let r00000d5c: u32 = r00000000 ^ r00000d5b;\n" : String).toByteArray.data.toList
theorem checked3377 : bytes3377=statementBytes 3420 (op3377.map lower) ∧ bytes3377.length=48 := by core033_kernel_decide
def op3378 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3378 : Bytes := ("    let r00000d5d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3378 : bytes3378=statementBytes 3421 (op3378.map lower) ∧ bytes3378.length=41 := by core033_kernel_decide
def op3379 : List WordIR.Op := [.bnot 3421]
def bytes3379 : Bytes := ("    let r00000d5e: u32 = !r00000d5d;\n" : String).toByteArray.data.toList
theorem checked3379 : bytes3379=statementBytes 3422 (op3379.map lower) ∧ bytes3379.length=37 := by core033_kernel_decide
def op3380 : List WordIR.Op := [.badd 3420 3422]
def bytes3380 : Bytes := ("    let r00000d5f: u32 = r00000d5c.wrapping_add(r00000d5e);\n" : String).toByteArray.data.toList
theorem checked3380 : bytes3380=statementBytes 3423 (op3380.map lower) ∧ bytes3380.length=60 := by core033_kernel_decide
def op3381 : List WordIR.Op := [.bnot 3423]
def bytes3381 : Bytes := ("    let r00000d60: u32 = !r00000d5f;\n" : String).toByteArray.data.toList
theorem checked3381 : bytes3381=statementBytes 3424 (op3381.map lower) ∧ bytes3381.length=37 := by core033_kernel_decide
def op3382 : List WordIR.Op := [.band 3418 3424]
def bytes3382 : Bytes := ("    let r00000d61: u32 = r00000d5a & r00000d60;\n" : String).toByteArray.data.toList
theorem checked3382 : bytes3382=statementBytes 3425 (op3382.map lower) ∧ bytes3382.length=48 := by core033_kernel_decide
def op3383 : List WordIR.Op := [.bxor 3413 3425]
def bytes3383 : Bytes := ("    let r00000d62: u32 = r00000d55 ^ r00000d61;\n" : String).toByteArray.data.toList
theorem checked3383 : bytes3383=statementBytes 3426 (op3383.map lower) ∧ bytes3383.length=48 := by core033_kernel_decide
def op3384 : List WordIR.Op := [.shr 3426 31]
def bytes3384 : Bytes := ("    let r00000d63: u32 = r00000d62 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3384 : bytes3384=statementBytes 3427 (op3384.map lower) ∧ bytes3384.length=54 := by core033_kernel_decide
def op3385 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3385 : Bytes := ("    let r00000d64: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3385 : bytes3385=statementBytes 3428 (op3385.map lower) ∧ bytes3385.length=41 := by core033_kernel_decide
def op3386 : List WordIR.Op := [.bxor 3427 3428]
def bytes3386 : Bytes := ("    let r00000d65: u32 = r00000d63 ^ r00000d64;\n" : String).toByteArray.data.toList
theorem checked3386 : bytes3386=statementBytes 3429 (op3386.map lower) ∧ bytes3386.length=48 := by core033_kernel_decide
def op3387 : List WordIR.Op := [.bnot 3429]
def bytes3387 : Bytes := ("    let r00000d66: u32 = !r00000d65;\n" : String).toByteArray.data.toList
theorem checked3387 : bytes3387=statementBytes 3430 (op3387.map lower) ∧ bytes3387.length=37 := by core033_kernel_decide
def op3388 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3388 : Bytes := ("    let r00000d67: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3388 : bytes3388=statementBytes 3431 (op3388.map lower) ∧ bytes3388.length=41 := by core033_kernel_decide
def op3389 : List WordIR.Op := [.badd 3430 3431]
def bytes3389 : Bytes := ("    let r00000d68: u32 = r00000d66.wrapping_add(r00000d67);\n" : String).toByteArray.data.toList
theorem checked3389 : bytes3389=statementBytes 3432 (op3389.map lower) ∧ bytes3389.length=60 := by core033_kernel_decide
def op3390 : List WordIR.Op := [.bnot 3432]
def bytes3390 : Bytes := ("    let r00000d69: u32 = !r00000d68;\n" : String).toByteArray.data.toList
theorem checked3390 : bytes3390=statementBytes 3433 (op3390.map lower) ∧ bytes3390.length=37 := by core033_kernel_decide
def op3391 : List WordIR.Op := [.band 3433 875]
def bytes3391 : Bytes := ("    let r00000d6a: u32 = r00000d69 & r0000036b;\n" : String).toByteArray.data.toList
theorem checked3391 : bytes3391=statementBytes 3434 (op3391.map lower) ∧ bytes3391.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3328,op3329,op3330,op3331,op3332,op3333,op3334,op3335,op3336,op3337,op3338,op3339,op3340,op3341,op3342,op3343,op3344,op3345,op3346,op3347,op3348,op3349,op3350,op3351,op3352,op3353,op3354,op3355,op3356,op3357,op3358,op3359,op3360,op3361,op3362,op3363,op3364,op3365,op3366,op3367,op3368,op3369,op3370,op3371,op3372,op3373,op3374,op3375,op3376,op3377,op3378,op3379,op3380,op3381,op3382,op3383,op3384,op3385,op3386,op3387,op3388,op3389,op3390,op3391]
def chunks : List Bytes := [bytes3328,bytes3329,bytes3330,bytes3331,bytes3332,bytes3333,bytes3334,bytes3335,bytes3336,bytes3337,bytes3338,bytes3339,bytes3340,bytes3341,bytes3342,bytes3343,bytes3344,bytes3345,bytes3346,bytes3347,bytes3348,bytes3349,bytes3350,bytes3351,bytes3352,bytes3353,bytes3354,bytes3355,bytes3356,bytes3357,bytes3358,bytes3359,bytes3360,bytes3361,bytes3362,bytes3363,bytes3364,bytes3365,bytes3366,bytes3367,bytes3368,bytes3369,bytes3370,bytes3371,bytes3372,bytes3373,bytes3374,bytes3375,bytes3376,bytes3377,bytes3378,bytes3379,bytes3380,bytes3381,bytes3382,bytes3383,bytes3384,bytes3385,bytes3386,bytes3387,bytes3388,bytes3389,bytes3390,bytes3391]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3371 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3328.1 (.cons _ _ _ _ _ checked3329.1 (.cons _ _ _ _ _ checked3330.1 (.cons _ _ _ _ _ checked3331.1 (.cons _ _ _ _ _ checked3332.1 (.cons _ _ _ _ _ checked3333.1 (.cons _ _ _ _ _ checked3334.1 (.cons _ _ _ _ _ checked3335.1 (.cons _ _ _ _ _ checked3336.1 (.cons _ _ _ _ _ checked3337.1 (.cons _ _ _ _ _ checked3338.1 (.cons _ _ _ _ _ checked3339.1 (.cons _ _ _ _ _ checked3340.1 (.cons _ _ _ _ _ checked3341.1 (.cons _ _ _ _ _ checked3342.1 (.cons _ _ _ _ _ checked3343.1 (.cons _ _ _ _ _ checked3344.1 (.cons _ _ _ _ _ checked3345.1 (.cons _ _ _ _ _ checked3346.1 (.cons _ _ _ _ _ checked3347.1 (.cons _ _ _ _ _ checked3348.1 (.cons _ _ _ _ _ checked3349.1 (.cons _ _ _ _ _ checked3350.1 (.cons _ _ _ _ _ checked3351.1 (.cons _ _ _ _ _ checked3352.1 (.cons _ _ _ _ _ checked3353.1 (.cons _ _ _ _ _ checked3354.1 (.cons _ _ _ _ _ checked3355.1 (.cons _ _ _ _ _ checked3356.1 (.cons _ _ _ _ _ checked3357.1 (.cons _ _ _ _ _ checked3358.1 (.cons _ _ _ _ _ checked3359.1 (.cons _ _ _ _ _ checked3360.1 (.cons _ _ _ _ _ checked3361.1 (.cons _ _ _ _ _ checked3362.1 (.cons _ _ _ _ _ checked3363.1 (.cons _ _ _ _ _ checked3364.1 (.cons _ _ _ _ _ checked3365.1 (.cons _ _ _ _ _ checked3366.1 (.cons _ _ _ _ _ checked3367.1 (.cons _ _ _ _ _ checked3368.1 (.cons _ _ _ _ _ checked3369.1 (.cons _ _ _ _ _ checked3370.1 (.cons _ _ _ _ _ checked3371.1 (.cons _ _ _ _ _ checked3372.1 (.cons _ _ _ _ _ checked3373.1 (.cons _ _ _ _ _ checked3374.1 (.cons _ _ _ _ _ checked3375.1 (.cons _ _ _ _ _ checked3376.1 (.cons _ _ _ _ _ checked3377.1 (.cons _ _ _ _ _ checked3378.1 (.cons _ _ _ _ _ checked3379.1 (.cons _ _ _ _ _ checked3380.1 (.cons _ _ _ _ _ checked3381.1 (.cons _ _ _ _ _ checked3382.1 (.cons _ _ _ _ _ checked3383.1 (.cons _ _ _ _ _ checked3384.1 (.cons _ _ _ _ _ checked3385.1 (.cons _ _ _ _ _ checked3386.1 (.cons _ _ _ _ _ checked3387.1 (.cons _ _ _ _ _ checked3388.1 (.cons _ _ _ _ _ checked3389.1 (.cons _ _ _ _ _ checked3390.1 (.cons _ _ _ _ _ checked3391.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3371 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2882 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3328.2,checked3329.2,checked3330.2,checked3331.2,checked3332.2,checked3333.2,checked3334.2,checked3335.2,checked3336.2,checked3337.2,checked3338.2,checked3339.2,checked3340.2,checked3341.2,checked3342.2,checked3343.2,checked3344.2,checked3345.2,checked3346.2,checked3347.2,checked3348.2,checked3349.2,checked3350.2,checked3351.2,checked3352.2,checked3353.2,checked3354.2,checked3355.2,checked3356.2,checked3357.2,checked3358.2,checked3359.2,checked3360.2,checked3361.2,checked3362.2,checked3363.2,checked3364.2,checked3365.2,checked3366.2,checked3367.2,checked3368.2,checked3369.2,checked3370.2,checked3371.2,checked3372.2,checked3373.2,checked3374.2,checked3375.2,checked3376.2,checked3377.2,checked3378.2,checked3379.2,checked3380.2,checked3381.2,checked3382.2,checked3383.2,checked3384.2,checked3385.2,checked3386.2,checked3387.2,checked3388.2,checked3389.2,checked3390.2,checked3391.2]
  decide
end ArtifactFrameHashControllerGroup52
