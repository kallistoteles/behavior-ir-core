import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup52
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3328 : List WordIR.Op := [.bxor 3443 3445]
def bytes3328 : Bytes := ("    let r00000d76: u32 = r00000d73 ^ r00000d75;\n" : String).toByteArray.data.toList
theorem checked3328 : bytes3328=statementBytes 3446 (op3328.map lower) ∧ bytes3328.length=48 := by core033_kernel_decide
def op3329 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3329 : Bytes := ("    let r00000d77: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3329 : bytes3329=statementBytes 3447 (op3329.map lower) ∧ bytes3329.length=41 := by core033_kernel_decide
def op3330 : List WordIR.Op := [.bxor 1299 3447]
def bytes3330 : Bytes := ("    let r00000d78: u32 = r00000513 ^ r00000d77;\n" : String).toByteArray.data.toList
theorem checked3330 : bytes3330=statementBytes 3448 (op3330.map lower) ∧ bytes3330.length=48 := by core033_kernel_decide
def op3331 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3331 : Bytes := ("    let r00000d79: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3331 : bytes3331=statementBytes 3449 (op3331.map lower) ∧ bytes3331.length=41 := by core033_kernel_decide
def op3332 : List WordIR.Op := [.bnot 3449]
def bytes3332 : Bytes := ("    let r00000d7a: u32 = !r00000d79;\n" : String).toByteArray.data.toList
theorem checked3332 : bytes3332=statementBytes 3450 (op3332.map lower) ∧ bytes3332.length=37 := by core033_kernel_decide
def op3333 : List WordIR.Op := [.badd 3448 3450]
def bytes3333 : Bytes := ("    let r00000d7b: u32 = r00000d78.wrapping_add(r00000d7a);\n" : String).toByteArray.data.toList
theorem checked3333 : bytes3333=statementBytes 3451 (op3333.map lower) ∧ bytes3333.length=60 := by core033_kernel_decide
def op3334 : List WordIR.Op := [.bnot 3451]
def bytes3334 : Bytes := ("    let r00000d7c: u32 = !r00000d7b;\n" : String).toByteArray.data.toList
theorem checked3334 : bytes3334=statementBytes 3452 (op3334.map lower) ∧ bytes3334.length=37 := by core033_kernel_decide
def op3335 : List WordIR.Op := [.band 3446 3452]
def bytes3335 : Bytes := ("    let r00000d7d: u32 = r00000d76 & r00000d7c;\n" : String).toByteArray.data.toList
theorem checked3335 : bytes3335=statementBytes 3453 (op3335.map lower) ∧ bytes3335.length=48 := by core033_kernel_decide
def op3336 : List WordIR.Op := [.bxor 3441 3453]
def bytes3336 : Bytes := ("    let r00000d7e: u32 = r00000d71 ^ r00000d7d;\n" : String).toByteArray.data.toList
theorem checked3336 : bytes3336=statementBytes 3454 (op3336.map lower) ∧ bytes3336.length=48 := by core033_kernel_decide
def op3337 : List WordIR.Op := [.shr 3454 31]
def bytes3337 : Bytes := ("    let r00000d7f: u32 = r00000d7e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3337 : bytes3337=statementBytes 3455 (op3337.map lower) ∧ bytes3337.length=54 := by core033_kernel_decide
def op3338 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3338 : Bytes := ("    let r00000d80: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3338 : bytes3338=statementBytes 3456 (op3338.map lower) ∧ bytes3338.length=41 := by core033_kernel_decide
def op3339 : List WordIR.Op := [.bxor 3455 3456]
def bytes3339 : Bytes := ("    let r00000d81: u32 = r00000d7f ^ r00000d80;\n" : String).toByteArray.data.toList
theorem checked3339 : bytes3339=statementBytes 3457 (op3339.map lower) ∧ bytes3339.length=48 := by core033_kernel_decide
def op3340 : List WordIR.Op := [.bnot 3457]
def bytes3340 : Bytes := ("    let r00000d82: u32 = !r00000d81;\n" : String).toByteArray.data.toList
theorem checked3340 : bytes3340=statementBytes 3458 (op3340.map lower) ∧ bytes3340.length=37 := by core033_kernel_decide
def op3341 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3341 : Bytes := ("    let r00000d83: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3341 : bytes3341=statementBytes 3459 (op3341.map lower) ∧ bytes3341.length=41 := by core033_kernel_decide
def op3342 : List WordIR.Op := [.badd 3458 3459]
def bytes3342 : Bytes := ("    let r00000d84: u32 = r00000d82.wrapping_add(r00000d83);\n" : String).toByteArray.data.toList
theorem checked3342 : bytes3342=statementBytes 3460 (op3342.map lower) ∧ bytes3342.length=60 := by core033_kernel_decide
def op3343 : List WordIR.Op := [.band 3460 1750]
def bytes3343 : Bytes := ("    let r00000d85: u32 = r00000d84 & r000006d6;\n" : String).toByteArray.data.toList
theorem checked3343 : bytes3343=statementBytes 3461 (op3343.map lower) ∧ bytes3343.length=48 := by core033_kernel_decide
def op3344 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3344 : Bytes := ("    let r00000d86: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3344 : bytes3344=statementBytes 3462 (op3344.map lower) ∧ bytes3344.length=41 := by core033_kernel_decide
def op3345 : List WordIR.Op := [.bxor 1299 3462]
def bytes3345 : Bytes := ("    let r00000d87: u32 = r00000513 ^ r00000d86;\n" : String).toByteArray.data.toList
theorem checked3345 : bytes3345=statementBytes 3463 (op3345.map lower) ∧ bytes3345.length=48 := by core033_kernel_decide
def op3346 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3346 : Bytes := ("    let r00000d88: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3346 : bytes3346=statementBytes 3464 (op3346.map lower) ∧ bytes3346.length=41 := by core033_kernel_decide
def op3347 : List WordIR.Op := [.bnot 3464]
def bytes3347 : Bytes := ("    let r00000d89: u32 = !r00000d88;\n" : String).toByteArray.data.toList
theorem checked3347 : bytes3347=statementBytes 3465 (op3347.map lower) ∧ bytes3347.length=37 := by core033_kernel_decide
def op3348 : List WordIR.Op := [.band 3463 3465]
def bytes3348 : Bytes := ("    let r00000d8a: u32 = r00000d87 & r00000d89;\n" : String).toByteArray.data.toList
theorem checked3348 : bytes3348=statementBytes 3466 (op3348.map lower) ∧ bytes3348.length=48 := by core033_kernel_decide
def op3349 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3349 : Bytes := ("    let r00000d8b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3349 : bytes3349=statementBytes 3467 (op3349.map lower) ∧ bytes3349.length=41 := by core033_kernel_decide
def op3350 : List WordIR.Op := [.bxor 1299 3467]
def bytes3350 : Bytes := ("    let r00000d8c: u32 = r00000513 ^ r00000d8b;\n" : String).toByteArray.data.toList
theorem checked3350 : bytes3350=statementBytes 3468 (op3350.map lower) ∧ bytes3350.length=48 := by core033_kernel_decide
def op3351 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3351 : Bytes := ("    let r00000d8d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3351 : bytes3351=statementBytes 3469 (op3351.map lower) ∧ bytes3351.length=41 := by core033_kernel_decide
def op3352 : List WordIR.Op := [.bnot 3469]
def bytes3352 : Bytes := ("    let r00000d8e: u32 = !r00000d8d;\n" : String).toByteArray.data.toList
theorem checked3352 : bytes3352=statementBytes 3470 (op3352.map lower) ∧ bytes3352.length=37 := by core033_kernel_decide
def op3353 : List WordIR.Op := [.bxor 3468 3470]
def bytes3353 : Bytes := ("    let r00000d8f: u32 = r00000d8c ^ r00000d8e;\n" : String).toByteArray.data.toList
theorem checked3353 : bytes3353=statementBytes 3471 (op3353.map lower) ∧ bytes3353.length=48 := by core033_kernel_decide
def op3354 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3354 : Bytes := ("    let r00000d90: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3354 : bytes3354=statementBytes 3472 (op3354.map lower) ∧ bytes3354.length=41 := by core033_kernel_decide
def op3355 : List WordIR.Op := [.bxor 1299 3472]
def bytes3355 : Bytes := ("    let r00000d91: u32 = r00000513 ^ r00000d90;\n" : String).toByteArray.data.toList
theorem checked3355 : bytes3355=statementBytes 3473 (op3355.map lower) ∧ bytes3355.length=48 := by core033_kernel_decide
def op3356 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3356 : Bytes := ("    let r00000d92: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3356 : bytes3356=statementBytes 3474 (op3356.map lower) ∧ bytes3356.length=41 := by core033_kernel_decide
def op3357 : List WordIR.Op := [.bnot 3474]
def bytes3357 : Bytes := ("    let r00000d93: u32 = !r00000d92;\n" : String).toByteArray.data.toList
theorem checked3357 : bytes3357=statementBytes 3475 (op3357.map lower) ∧ bytes3357.length=37 := by core033_kernel_decide
def op3358 : List WordIR.Op := [.badd 3473 3475]
def bytes3358 : Bytes := ("    let r00000d94: u32 = r00000d91.wrapping_add(r00000d93);\n" : String).toByteArray.data.toList
theorem checked3358 : bytes3358=statementBytes 3476 (op3358.map lower) ∧ bytes3358.length=60 := by core033_kernel_decide
def op3359 : List WordIR.Op := [.bnot 3476]
def bytes3359 : Bytes := ("    let r00000d95: u32 = !r00000d94;\n" : String).toByteArray.data.toList
theorem checked3359 : bytes3359=statementBytes 3477 (op3359.map lower) ∧ bytes3359.length=37 := by core033_kernel_decide
def op3360 : List WordIR.Op := [.band 3471 3477]
def bytes3360 : Bytes := ("    let r00000d96: u32 = r00000d8f & r00000d95;\n" : String).toByteArray.data.toList
theorem checked3360 : bytes3360=statementBytes 3478 (op3360.map lower) ∧ bytes3360.length=48 := by core033_kernel_decide
def op3361 : List WordIR.Op := [.bxor 3466 3478]
def bytes3361 : Bytes := ("    let r00000d97: u32 = r00000d8a ^ r00000d96;\n" : String).toByteArray.data.toList
theorem checked3361 : bytes3361=statementBytes 3479 (op3361.map lower) ∧ bytes3361.length=48 := by core033_kernel_decide
def op3362 : List WordIR.Op := [.shr 3479 31]
def bytes3362 : Bytes := ("    let r00000d98: u32 = r00000d97 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3362 : bytes3362=statementBytes 3480 (op3362.map lower) ∧ bytes3362.length=54 := by core033_kernel_decide
def op3363 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3363 : Bytes := ("    let r00000d99: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3363 : bytes3363=statementBytes 3481 (op3363.map lower) ∧ bytes3363.length=41 := by core033_kernel_decide
def op3364 : List WordIR.Op := [.bxor 3480 3481]
def bytes3364 : Bytes := ("    let r00000d9a: u32 = r00000d98 ^ r00000d99;\n" : String).toByteArray.data.toList
theorem checked3364 : bytes3364=statementBytes 3482 (op3364.map lower) ∧ bytes3364.length=48 := by core033_kernel_decide
def op3365 : List WordIR.Op := [.bnot 3482]
def bytes3365 : Bytes := ("    let r00000d9b: u32 = !r00000d9a;\n" : String).toByteArray.data.toList
theorem checked3365 : bytes3365=statementBytes 3483 (op3365.map lower) ∧ bytes3365.length=37 := by core033_kernel_decide
def op3366 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3366 : Bytes := ("    let r00000d9c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3366 : bytes3366=statementBytes 3484 (op3366.map lower) ∧ bytes3366.length=41 := by core033_kernel_decide
def op3367 : List WordIR.Op := [.badd 3483 3484]
def bytes3367 : Bytes := ("    let r00000d9d: u32 = r00000d9b.wrapping_add(r00000d9c);\n" : String).toByteArray.data.toList
theorem checked3367 : bytes3367=statementBytes 3485 (op3367.map lower) ∧ bytes3367.length=60 := by core033_kernel_decide
def op3368 : List WordIR.Op := [.bnot 3485]
def bytes3368 : Bytes := ("    let r00000d9e: u32 = !r00000d9d;\n" : String).toByteArray.data.toList
theorem checked3368 : bytes3368=statementBytes 3486 (op3368.map lower) ∧ bytes3368.length=37 := by core033_kernel_decide
def op3369 : List WordIR.Op := [.literal (BitVec.ofNat 32 528734635)]
def bytes3369 : Bytes := ("    let r00000d9f: u32 = 0x1f83d9ab_u32;\n" : String).toByteArray.data.toList
theorem checked3369 : bytes3369=statementBytes 3487 (op3369.map lower) ∧ bytes3369.length=41 := by core033_kernel_decide
def op3370 : List WordIR.Op := [.band 3486 3487]
def bytes3370 : Bytes := ("    let r00000da0: u32 = r00000d9e & r00000d9f;\n" : String).toByteArray.data.toList
theorem checked3370 : bytes3370=statementBytes 3488 (op3370.map lower) ∧ bytes3370.length=48 := by core033_kernel_decide
def op3371 : List WordIR.Op := [.bxor 3461 3488]
def bytes3371 : Bytes := ("    let r00000da1: u32 = r00000d85 ^ r00000da0;\n" : String).toByteArray.data.toList
theorem checked3371 : bytes3371=statementBytes 3489 (op3371.map lower) ∧ bytes3371.length=48 := by core033_kernel_decide
def op3372 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3372 : Bytes := ("    let r00000da2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3372 : bytes3372=statementBytes 3490 (op3372.map lower) ∧ bytes3372.length=41 := by core033_kernel_decide
def op3373 : List WordIR.Op := [.bxor 1299 3490]
def bytes3373 : Bytes := ("    let r00000da3: u32 = r00000513 ^ r00000da2;\n" : String).toByteArray.data.toList
theorem checked3373 : bytes3373=statementBytes 3491 (op3373.map lower) ∧ bytes3373.length=48 := by core033_kernel_decide
def op3374 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3374 : Bytes := ("    let r00000da4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3374 : bytes3374=statementBytes 3492 (op3374.map lower) ∧ bytes3374.length=41 := by core033_kernel_decide
def op3375 : List WordIR.Op := [.bnot 3492]
def bytes3375 : Bytes := ("    let r00000da5: u32 = !r00000da4;\n" : String).toByteArray.data.toList
theorem checked3375 : bytes3375=statementBytes 3493 (op3375.map lower) ∧ bytes3375.length=37 := by core033_kernel_decide
def op3376 : List WordIR.Op := [.band 3491 3493]
def bytes3376 : Bytes := ("    let r00000da6: u32 = r00000da3 & r00000da5;\n" : String).toByteArray.data.toList
theorem checked3376 : bytes3376=statementBytes 3494 (op3376.map lower) ∧ bytes3376.length=48 := by core033_kernel_decide
def op3377 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3377 : Bytes := ("    let r00000da7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3377 : bytes3377=statementBytes 3495 (op3377.map lower) ∧ bytes3377.length=41 := by core033_kernel_decide
def op3378 : List WordIR.Op := [.bxor 1299 3495]
def bytes3378 : Bytes := ("    let r00000da8: u32 = r00000513 ^ r00000da7;\n" : String).toByteArray.data.toList
theorem checked3378 : bytes3378=statementBytes 3496 (op3378.map lower) ∧ bytes3378.length=48 := by core033_kernel_decide
def op3379 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3379 : Bytes := ("    let r00000da9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3379 : bytes3379=statementBytes 3497 (op3379.map lower) ∧ bytes3379.length=41 := by core033_kernel_decide
def op3380 : List WordIR.Op := [.bnot 3497]
def bytes3380 : Bytes := ("    let r00000daa: u32 = !r00000da9;\n" : String).toByteArray.data.toList
theorem checked3380 : bytes3380=statementBytes 3498 (op3380.map lower) ∧ bytes3380.length=37 := by core033_kernel_decide
def op3381 : List WordIR.Op := [.bxor 3496 3498]
def bytes3381 : Bytes := ("    let r00000dab: u32 = r00000da8 ^ r00000daa;\n" : String).toByteArray.data.toList
theorem checked3381 : bytes3381=statementBytes 3499 (op3381.map lower) ∧ bytes3381.length=48 := by core033_kernel_decide
def op3382 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3382 : Bytes := ("    let r00000dac: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3382 : bytes3382=statementBytes 3500 (op3382.map lower) ∧ bytes3382.length=41 := by core033_kernel_decide
def op3383 : List WordIR.Op := [.bxor 1299 3500]
def bytes3383 : Bytes := ("    let r00000dad: u32 = r00000513 ^ r00000dac;\n" : String).toByteArray.data.toList
theorem checked3383 : bytes3383=statementBytes 3501 (op3383.map lower) ∧ bytes3383.length=48 := by core033_kernel_decide
def op3384 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3384 : Bytes := ("    let r00000dae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3384 : bytes3384=statementBytes 3502 (op3384.map lower) ∧ bytes3384.length=41 := by core033_kernel_decide
def op3385 : List WordIR.Op := [.bnot 3502]
def bytes3385 : Bytes := ("    let r00000daf: u32 = !r00000dae;\n" : String).toByteArray.data.toList
theorem checked3385 : bytes3385=statementBytes 3503 (op3385.map lower) ∧ bytes3385.length=37 := by core033_kernel_decide
def op3386 : List WordIR.Op := [.badd 3501 3503]
def bytes3386 : Bytes := ("    let r00000db0: u32 = r00000dad.wrapping_add(r00000daf);\n" : String).toByteArray.data.toList
theorem checked3386 : bytes3386=statementBytes 3504 (op3386.map lower) ∧ bytes3386.length=60 := by core033_kernel_decide
def op3387 : List WordIR.Op := [.bnot 3504]
def bytes3387 : Bytes := ("    let r00000db1: u32 = !r00000db0;\n" : String).toByteArray.data.toList
theorem checked3387 : bytes3387=statementBytes 3505 (op3387.map lower) ∧ bytes3387.length=37 := by core033_kernel_decide
def op3388 : List WordIR.Op := [.band 3499 3505]
def bytes3388 : Bytes := ("    let r00000db2: u32 = r00000dab & r00000db1;\n" : String).toByteArray.data.toList
theorem checked3388 : bytes3388=statementBytes 3506 (op3388.map lower) ∧ bytes3388.length=48 := by core033_kernel_decide
def op3389 : List WordIR.Op := [.bxor 3494 3506]
def bytes3389 : Bytes := ("    let r00000db3: u32 = r00000da6 ^ r00000db2;\n" : String).toByteArray.data.toList
theorem checked3389 : bytes3389=statementBytes 3507 (op3389.map lower) ∧ bytes3389.length=48 := by core033_kernel_decide
def op3390 : List WordIR.Op := [.shr 3507 31]
def bytes3390 : Bytes := ("    let r00000db4: u32 = r00000db3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3390 : bytes3390=statementBytes 3508 (op3390.map lower) ∧ bytes3390.length=54 := by core033_kernel_decide
def op3391 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3391 : Bytes := ("    let r00000db5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3391 : bytes3391=statementBytes 3509 (op3391.map lower) ∧ bytes3391.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3328,op3329,op3330,op3331,op3332,op3333,op3334,op3335,op3336,op3337,op3338,op3339,op3340,op3341,op3342,op3343,op3344,op3345,op3346,op3347,op3348,op3349,op3350,op3351,op3352,op3353,op3354,op3355,op3356,op3357,op3358,op3359,op3360,op3361,op3362,op3363,op3364,op3365,op3366,op3367,op3368,op3369,op3370,op3371,op3372,op3373,op3374,op3375,op3376,op3377,op3378,op3379,op3380,op3381,op3382,op3383,op3384,op3385,op3386,op3387,op3388,op3389,op3390,op3391]
def chunks : List Bytes := [bytes3328,bytes3329,bytes3330,bytes3331,bytes3332,bytes3333,bytes3334,bytes3335,bytes3336,bytes3337,bytes3338,bytes3339,bytes3340,bytes3341,bytes3342,bytes3343,bytes3344,bytes3345,bytes3346,bytes3347,bytes3348,bytes3349,bytes3350,bytes3351,bytes3352,bytes3353,bytes3354,bytes3355,bytes3356,bytes3357,bytes3358,bytes3359,bytes3360,bytes3361,bytes3362,bytes3363,bytes3364,bytes3365,bytes3366,bytes3367,bytes3368,bytes3369,bytes3370,bytes3371,bytes3372,bytes3373,bytes3374,bytes3375,bytes3376,bytes3377,bytes3378,bytes3379,bytes3380,bytes3381,bytes3382,bytes3383,bytes3384,bytes3385,bytes3386,bytes3387,bytes3388,bytes3389,bytes3390,bytes3391]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3446 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3328.1 (.cons _ _ _ _ _ checked3329.1 (.cons _ _ _ _ _ checked3330.1 (.cons _ _ _ _ _ checked3331.1 (.cons _ _ _ _ _ checked3332.1 (.cons _ _ _ _ _ checked3333.1 (.cons _ _ _ _ _ checked3334.1 (.cons _ _ _ _ _ checked3335.1 (.cons _ _ _ _ _ checked3336.1 (.cons _ _ _ _ _ checked3337.1 (.cons _ _ _ _ _ checked3338.1 (.cons _ _ _ _ _ checked3339.1 (.cons _ _ _ _ _ checked3340.1 (.cons _ _ _ _ _ checked3341.1 (.cons _ _ _ _ _ checked3342.1 (.cons _ _ _ _ _ checked3343.1 (.cons _ _ _ _ _ checked3344.1 (.cons _ _ _ _ _ checked3345.1 (.cons _ _ _ _ _ checked3346.1 (.cons _ _ _ _ _ checked3347.1 (.cons _ _ _ _ _ checked3348.1 (.cons _ _ _ _ _ checked3349.1 (.cons _ _ _ _ _ checked3350.1 (.cons _ _ _ _ _ checked3351.1 (.cons _ _ _ _ _ checked3352.1 (.cons _ _ _ _ _ checked3353.1 (.cons _ _ _ _ _ checked3354.1 (.cons _ _ _ _ _ checked3355.1 (.cons _ _ _ _ _ checked3356.1 (.cons _ _ _ _ _ checked3357.1 (.cons _ _ _ _ _ checked3358.1 (.cons _ _ _ _ _ checked3359.1 (.cons _ _ _ _ _ checked3360.1 (.cons _ _ _ _ _ checked3361.1 (.cons _ _ _ _ _ checked3362.1 (.cons _ _ _ _ _ checked3363.1 (.cons _ _ _ _ _ checked3364.1 (.cons _ _ _ _ _ checked3365.1 (.cons _ _ _ _ _ checked3366.1 (.cons _ _ _ _ _ checked3367.1 (.cons _ _ _ _ _ checked3368.1 (.cons _ _ _ _ _ checked3369.1 (.cons _ _ _ _ _ checked3370.1 (.cons _ _ _ _ _ checked3371.1 (.cons _ _ _ _ _ checked3372.1 (.cons _ _ _ _ _ checked3373.1 (.cons _ _ _ _ _ checked3374.1 (.cons _ _ _ _ _ checked3375.1 (.cons _ _ _ _ _ checked3376.1 (.cons _ _ _ _ _ checked3377.1 (.cons _ _ _ _ _ checked3378.1 (.cons _ _ _ _ _ checked3379.1 (.cons _ _ _ _ _ checked3380.1 (.cons _ _ _ _ _ checked3381.1 (.cons _ _ _ _ _ checked3382.1 (.cons _ _ _ _ _ checked3383.1 (.cons _ _ _ _ _ checked3384.1 (.cons _ _ _ _ _ checked3385.1 (.cons _ _ _ _ _ checked3386.1 (.cons _ _ _ _ _ checked3387.1 (.cons _ _ _ _ _ checked3388.1 (.cons _ _ _ _ _ checked3389.1 (.cons _ _ _ _ _ checked3390.1 (.cons _ _ _ _ _ checked3391.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3446 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3328.2,checked3329.2,checked3330.2,checked3331.2,checked3332.2,checked3333.2,checked3334.2,checked3335.2,checked3336.2,checked3337.2,checked3338.2,checked3339.2,checked3340.2,checked3341.2,checked3342.2,checked3343.2,checked3344.2,checked3345.2,checked3346.2,checked3347.2,checked3348.2,checked3349.2,checked3350.2,checked3351.2,checked3352.2,checked3353.2,checked3354.2,checked3355.2,checked3356.2,checked3357.2,checked3358.2,checked3359.2,checked3360.2,checked3361.2,checked3362.2,checked3363.2,checked3364.2,checked3365.2,checked3366.2,checked3367.2,checked3368.2,checked3369.2,checked3370.2,checked3371.2,checked3372.2,checked3373.2,checked3374.2,checked3375.2,checked3376.2,checked3377.2,checked3378.2,checked3379.2,checked3380.2,checked3381.2,checked3382.2,checked3383.2,checked3384.2,checked3385.2,checked3386.2,checked3387.2,checked3388.2,checked3389.2,checked3390.2,checked3391.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup52
