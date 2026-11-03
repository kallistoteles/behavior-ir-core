import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup53
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3392 : List WordIR.Op := [.bxor 3508 3509]
def bytes3392 : Bytes := ("    let r00000db6: u32 = r00000db4 ^ r00000db5;\n" : String).toByteArray.data.toList
theorem checked3392 : bytes3392=statementBytes 3510 (op3392.map lower) ∧ bytes3392.length=48 := by core033_kernel_decide
def op3393 : List WordIR.Op := [.bnot 3510]
def bytes3393 : Bytes := ("    let r00000db7: u32 = !r00000db6;\n" : String).toByteArray.data.toList
theorem checked3393 : bytes3393=statementBytes 3511 (op3393.map lower) ∧ bytes3393.length=37 := by core033_kernel_decide
def op3394 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3394 : Bytes := ("    let r00000db8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3394 : bytes3394=statementBytes 3512 (op3394.map lower) ∧ bytes3394.length=41 := by core033_kernel_decide
def op3395 : List WordIR.Op := [.badd 3511 3512]
def bytes3395 : Bytes := ("    let r00000db9: u32 = r00000db7.wrapping_add(r00000db8);\n" : String).toByteArray.data.toList
theorem checked3395 : bytes3395=statementBytes 3513 (op3395.map lower) ∧ bytes3395.length=60 := by core033_kernel_decide
def op3396 : List WordIR.Op := [.band 3513 1761]
def bytes3396 : Bytes := ("    let r00000dba: u32 = r00000db9 & r000006e1;\n" : String).toByteArray.data.toList
theorem checked3396 : bytes3396=statementBytes 3514 (op3396.map lower) ∧ bytes3396.length=48 := by core033_kernel_decide
def op3397 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3397 : Bytes := ("    let r00000dbb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3397 : bytes3397=statementBytes 3515 (op3397.map lower) ∧ bytes3397.length=41 := by core033_kernel_decide
def op3398 : List WordIR.Op := [.bxor 1299 3515]
def bytes3398 : Bytes := ("    let r00000dbc: u32 = r00000513 ^ r00000dbb;\n" : String).toByteArray.data.toList
theorem checked3398 : bytes3398=statementBytes 3516 (op3398.map lower) ∧ bytes3398.length=48 := by core033_kernel_decide
def op3399 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3399 : Bytes := ("    let r00000dbd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3399 : bytes3399=statementBytes 3517 (op3399.map lower) ∧ bytes3399.length=41 := by core033_kernel_decide
def op3400 : List WordIR.Op := [.bnot 3517]
def bytes3400 : Bytes := ("    let r00000dbe: u32 = !r00000dbd;\n" : String).toByteArray.data.toList
theorem checked3400 : bytes3400=statementBytes 3518 (op3400.map lower) ∧ bytes3400.length=37 := by core033_kernel_decide
def op3401 : List WordIR.Op := [.band 3516 3518]
def bytes3401 : Bytes := ("    let r00000dbf: u32 = r00000dbc & r00000dbe;\n" : String).toByteArray.data.toList
theorem checked3401 : bytes3401=statementBytes 3519 (op3401.map lower) ∧ bytes3401.length=48 := by core033_kernel_decide
def op3402 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3402 : Bytes := ("    let r00000dc0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3402 : bytes3402=statementBytes 3520 (op3402.map lower) ∧ bytes3402.length=41 := by core033_kernel_decide
def op3403 : List WordIR.Op := [.bxor 1299 3520]
def bytes3403 : Bytes := ("    let r00000dc1: u32 = r00000513 ^ r00000dc0;\n" : String).toByteArray.data.toList
theorem checked3403 : bytes3403=statementBytes 3521 (op3403.map lower) ∧ bytes3403.length=48 := by core033_kernel_decide
def op3404 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3404 : Bytes := ("    let r00000dc2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3404 : bytes3404=statementBytes 3522 (op3404.map lower) ∧ bytes3404.length=41 := by core033_kernel_decide
def op3405 : List WordIR.Op := [.bnot 3522]
def bytes3405 : Bytes := ("    let r00000dc3: u32 = !r00000dc2;\n" : String).toByteArray.data.toList
theorem checked3405 : bytes3405=statementBytes 3523 (op3405.map lower) ∧ bytes3405.length=37 := by core033_kernel_decide
def op3406 : List WordIR.Op := [.bxor 3521 3523]
def bytes3406 : Bytes := ("    let r00000dc4: u32 = r00000dc1 ^ r00000dc3;\n" : String).toByteArray.data.toList
theorem checked3406 : bytes3406=statementBytes 3524 (op3406.map lower) ∧ bytes3406.length=48 := by core033_kernel_decide
def op3407 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3407 : Bytes := ("    let r00000dc5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3407 : bytes3407=statementBytes 3525 (op3407.map lower) ∧ bytes3407.length=41 := by core033_kernel_decide
def op3408 : List WordIR.Op := [.bxor 1299 3525]
def bytes3408 : Bytes := ("    let r00000dc6: u32 = r00000513 ^ r00000dc5;\n" : String).toByteArray.data.toList
theorem checked3408 : bytes3408=statementBytes 3526 (op3408.map lower) ∧ bytes3408.length=48 := by core033_kernel_decide
def op3409 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3409 : Bytes := ("    let r00000dc7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3409 : bytes3409=statementBytes 3527 (op3409.map lower) ∧ bytes3409.length=41 := by core033_kernel_decide
def op3410 : List WordIR.Op := [.bnot 3527]
def bytes3410 : Bytes := ("    let r00000dc8: u32 = !r00000dc7;\n" : String).toByteArray.data.toList
theorem checked3410 : bytes3410=statementBytes 3528 (op3410.map lower) ∧ bytes3410.length=37 := by core033_kernel_decide
def op3411 : List WordIR.Op := [.badd 3526 3528]
def bytes3411 : Bytes := ("    let r00000dc9: u32 = r00000dc6.wrapping_add(r00000dc8);\n" : String).toByteArray.data.toList
theorem checked3411 : bytes3411=statementBytes 3529 (op3411.map lower) ∧ bytes3411.length=60 := by core033_kernel_decide
def op3412 : List WordIR.Op := [.bnot 3529]
def bytes3412 : Bytes := ("    let r00000dca: u32 = !r00000dc9;\n" : String).toByteArray.data.toList
theorem checked3412 : bytes3412=statementBytes 3530 (op3412.map lower) ∧ bytes3412.length=37 := by core033_kernel_decide
def op3413 : List WordIR.Op := [.band 3524 3530]
def bytes3413 : Bytes := ("    let r00000dcb: u32 = r00000dc4 & r00000dca;\n" : String).toByteArray.data.toList
theorem checked3413 : bytes3413=statementBytes 3531 (op3413.map lower) ∧ bytes3413.length=48 := by core033_kernel_decide
def op3414 : List WordIR.Op := [.bxor 3519 3531]
def bytes3414 : Bytes := ("    let r00000dcc: u32 = r00000dbf ^ r00000dcb;\n" : String).toByteArray.data.toList
theorem checked3414 : bytes3414=statementBytes 3532 (op3414.map lower) ∧ bytes3414.length=48 := by core033_kernel_decide
def op3415 : List WordIR.Op := [.shr 3532 31]
def bytes3415 : Bytes := ("    let r00000dcd: u32 = r00000dcc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3415 : bytes3415=statementBytes 3533 (op3415.map lower) ∧ bytes3415.length=54 := by core033_kernel_decide
def op3416 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3416 : Bytes := ("    let r00000dce: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3416 : bytes3416=statementBytes 3534 (op3416.map lower) ∧ bytes3416.length=41 := by core033_kernel_decide
def op3417 : List WordIR.Op := [.bxor 3533 3534]
def bytes3417 : Bytes := ("    let r00000dcf: u32 = r00000dcd ^ r00000dce;\n" : String).toByteArray.data.toList
theorem checked3417 : bytes3417=statementBytes 3535 (op3417.map lower) ∧ bytes3417.length=48 := by core033_kernel_decide
def op3418 : List WordIR.Op := [.bnot 3535]
def bytes3418 : Bytes := ("    let r00000dd0: u32 = !r00000dcf;\n" : String).toByteArray.data.toList
theorem checked3418 : bytes3418=statementBytes 3536 (op3418.map lower) ∧ bytes3418.length=37 := by core033_kernel_decide
def op3419 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3419 : Bytes := ("    let r00000dd1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3419 : bytes3419=statementBytes 3537 (op3419.map lower) ∧ bytes3419.length=41 := by core033_kernel_decide
def op3420 : List WordIR.Op := [.badd 3536 3537]
def bytes3420 : Bytes := ("    let r00000dd2: u32 = r00000dd0.wrapping_add(r00000dd1);\n" : String).toByteArray.data.toList
theorem checked3420 : bytes3420=statementBytes 3538 (op3420.map lower) ∧ bytes3420.length=60 := by core033_kernel_decide
def op3421 : List WordIR.Op := [.bnot 3538]
def bytes3421 : Bytes := ("    let r00000dd3: u32 = !r00000dd2;\n" : String).toByteArray.data.toList
theorem checked3421 : bytes3421=statementBytes 3539 (op3421.map lower) ∧ bytes3421.length=37 := by core033_kernel_decide
def op3422 : List WordIR.Op := [.literal (BitVec.ofNat 32 1541459225)]
def bytes3422 : Bytes := ("    let r00000dd4: u32 = 0x5be0cd19_u32;\n" : String).toByteArray.data.toList
theorem checked3422 : bytes3422=statementBytes 3540 (op3422.map lower) ∧ bytes3422.length=41 := by core033_kernel_decide
def op3423 : List WordIR.Op := [.band 3539 3540]
def bytes3423 : Bytes := ("    let r00000dd5: u32 = r00000dd3 & r00000dd4;\n" : String).toByteArray.data.toList
theorem checked3423 : bytes3423=statementBytes 3541 (op3423.map lower) ∧ bytes3423.length=48 := by core033_kernel_decide
def op3424 : List WordIR.Op := [.bxor 3514 3541]
def bytes3424 : Bytes := ("    let r00000dd6: u32 = r00000dba ^ r00000dd5;\n" : String).toByteArray.data.toList
theorem checked3424 : bytes3424=statementBytes 3542 (op3424.map lower) ∧ bytes3424.length=48 := by core033_kernel_decide
def op3425 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3425 : Bytes := ("    let r00000dd7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3425 : bytes3425=statementBytes 3543 (op3425.map lower) ∧ bytes3425.length=41 := by core033_kernel_decide
def op3426 : List WordIR.Op := [.bxor 1299 3543]
def bytes3426 : Bytes := ("    let r00000dd8: u32 = r00000513 ^ r00000dd7;\n" : String).toByteArray.data.toList
theorem checked3426 : bytes3426=statementBytes 3544 (op3426.map lower) ∧ bytes3426.length=48 := by core033_kernel_decide
def op3427 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3427 : Bytes := ("    let r00000dd9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3427 : bytes3427=statementBytes 3545 (op3427.map lower) ∧ bytes3427.length=41 := by core033_kernel_decide
def op3428 : List WordIR.Op := [.bnot 3545]
def bytes3428 : Bytes := ("    let r00000dda: u32 = !r00000dd9;\n" : String).toByteArray.data.toList
theorem checked3428 : bytes3428=statementBytes 3546 (op3428.map lower) ∧ bytes3428.length=37 := by core033_kernel_decide
def op3429 : List WordIR.Op := [.band 3544 3546]
def bytes3429 : Bytes := ("    let r00000ddb: u32 = r00000dd8 & r00000dda;\n" : String).toByteArray.data.toList
theorem checked3429 : bytes3429=statementBytes 3547 (op3429.map lower) ∧ bytes3429.length=48 := by core033_kernel_decide
def op3430 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3430 : Bytes := ("    let r00000ddc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3430 : bytes3430=statementBytes 3548 (op3430.map lower) ∧ bytes3430.length=41 := by core033_kernel_decide
def op3431 : List WordIR.Op := [.bxor 1299 3548]
def bytes3431 : Bytes := ("    let r00000ddd: u32 = r00000513 ^ r00000ddc;\n" : String).toByteArray.data.toList
theorem checked3431 : bytes3431=statementBytes 3549 (op3431.map lower) ∧ bytes3431.length=48 := by core033_kernel_decide
def op3432 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3432 : Bytes := ("    let r00000dde: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3432 : bytes3432=statementBytes 3550 (op3432.map lower) ∧ bytes3432.length=41 := by core033_kernel_decide
def op3433 : List WordIR.Op := [.bnot 3550]
def bytes3433 : Bytes := ("    let r00000ddf: u32 = !r00000dde;\n" : String).toByteArray.data.toList
theorem checked3433 : bytes3433=statementBytes 3551 (op3433.map lower) ∧ bytes3433.length=37 := by core033_kernel_decide
def op3434 : List WordIR.Op := [.bxor 3549 3551]
def bytes3434 : Bytes := ("    let r00000de0: u32 = r00000ddd ^ r00000ddf;\n" : String).toByteArray.data.toList
theorem checked3434 : bytes3434=statementBytes 3552 (op3434.map lower) ∧ bytes3434.length=48 := by core033_kernel_decide
def op3435 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3435 : Bytes := ("    let r00000de1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3435 : bytes3435=statementBytes 3553 (op3435.map lower) ∧ bytes3435.length=41 := by core033_kernel_decide
def op3436 : List WordIR.Op := [.bxor 1299 3553]
def bytes3436 : Bytes := ("    let r00000de2: u32 = r00000513 ^ r00000de1;\n" : String).toByteArray.data.toList
theorem checked3436 : bytes3436=statementBytes 3554 (op3436.map lower) ∧ bytes3436.length=48 := by core033_kernel_decide
def op3437 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3437 : Bytes := ("    let r00000de3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3437 : bytes3437=statementBytes 3555 (op3437.map lower) ∧ bytes3437.length=41 := by core033_kernel_decide
def op3438 : List WordIR.Op := [.bnot 3555]
def bytes3438 : Bytes := ("    let r00000de4: u32 = !r00000de3;\n" : String).toByteArray.data.toList
theorem checked3438 : bytes3438=statementBytes 3556 (op3438.map lower) ∧ bytes3438.length=37 := by core033_kernel_decide
def op3439 : List WordIR.Op := [.badd 3554 3556]
def bytes3439 : Bytes := ("    let r00000de5: u32 = r00000de2.wrapping_add(r00000de4);\n" : String).toByteArray.data.toList
theorem checked3439 : bytes3439=statementBytes 3557 (op3439.map lower) ∧ bytes3439.length=60 := by core033_kernel_decide
def op3440 : List WordIR.Op := [.bnot 3557]
def bytes3440 : Bytes := ("    let r00000de6: u32 = !r00000de5;\n" : String).toByteArray.data.toList
theorem checked3440 : bytes3440=statementBytes 3558 (op3440.map lower) ∧ bytes3440.length=37 := by core033_kernel_decide
def op3441 : List WordIR.Op := [.band 3552 3558]
def bytes3441 : Bytes := ("    let r00000de7: u32 = r00000de0 & r00000de6;\n" : String).toByteArray.data.toList
theorem checked3441 : bytes3441=statementBytes 3559 (op3441.map lower) ∧ bytes3441.length=48 := by core033_kernel_decide
def op3442 : List WordIR.Op := [.bxor 3547 3559]
def bytes3442 : Bytes := ("    let r00000de8: u32 = r00000ddb ^ r00000de7;\n" : String).toByteArray.data.toList
theorem checked3442 : bytes3442=statementBytes 3560 (op3442.map lower) ∧ bytes3442.length=48 := by core033_kernel_decide
def op3443 : List WordIR.Op := [.shr 3560 31]
def bytes3443 : Bytes := ("    let r00000de9: u32 = r00000de8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3443 : bytes3443=statementBytes 3561 (op3443.map lower) ∧ bytes3443.length=54 := by core033_kernel_decide
def op3444 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3444 : Bytes := ("    let r00000dea: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3444 : bytes3444=statementBytes 3562 (op3444.map lower) ∧ bytes3444.length=41 := by core033_kernel_decide
def op3445 : List WordIR.Op := [.bxor 3561 3562]
def bytes3445 : Bytes := ("    let r00000deb: u32 = r00000de9 ^ r00000dea;\n" : String).toByteArray.data.toList
theorem checked3445 : bytes3445=statementBytes 3563 (op3445.map lower) ∧ bytes3445.length=48 := by core033_kernel_decide
def op3446 : List WordIR.Op := [.bnot 3563]
def bytes3446 : Bytes := ("    let r00000dec: u32 = !r00000deb;\n" : String).toByteArray.data.toList
theorem checked3446 : bytes3446=statementBytes 3564 (op3446.map lower) ∧ bytes3446.length=37 := by core033_kernel_decide
def op3447 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3447 : Bytes := ("    let r00000ded: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3447 : bytes3447=statementBytes 3565 (op3447.map lower) ∧ bytes3447.length=41 := by core033_kernel_decide
def op3448 : List WordIR.Op := [.badd 3564 3565]
def bytes3448 : Bytes := ("    let r00000dee: u32 = r00000dec.wrapping_add(r00000ded);\n" : String).toByteArray.data.toList
theorem checked3448 : bytes3448=statementBytes 3566 (op3448.map lower) ∧ bytes3448.length=60 := by core033_kernel_decide
def op3449 : List WordIR.Op := [.band 3566 2696]
def bytes3449 : Bytes := ("    let r00000def: u32 = r00000dee & r00000a88;\n" : String).toByteArray.data.toList
theorem checked3449 : bytes3449=statementBytes 3567 (op3449.map lower) ∧ bytes3449.length=48 := by core033_kernel_decide
def op3450 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3450 : Bytes := ("    let r00000df0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3450 : bytes3450=statementBytes 3568 (op3450.map lower) ∧ bytes3450.length=41 := by core033_kernel_decide
def op3451 : List WordIR.Op := [.bxor 1299 3568]
def bytes3451 : Bytes := ("    let r00000df1: u32 = r00000513 ^ r00000df0;\n" : String).toByteArray.data.toList
theorem checked3451 : bytes3451=statementBytes 3569 (op3451.map lower) ∧ bytes3451.length=48 := by core033_kernel_decide
def op3452 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3452 : Bytes := ("    let r00000df2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3452 : bytes3452=statementBytes 3570 (op3452.map lower) ∧ bytes3452.length=41 := by core033_kernel_decide
def op3453 : List WordIR.Op := [.bnot 3570]
def bytes3453 : Bytes := ("    let r00000df3: u32 = !r00000df2;\n" : String).toByteArray.data.toList
theorem checked3453 : bytes3453=statementBytes 3571 (op3453.map lower) ∧ bytes3453.length=37 := by core033_kernel_decide
def op3454 : List WordIR.Op := [.band 3569 3571]
def bytes3454 : Bytes := ("    let r00000df4: u32 = r00000df1 & r00000df3;\n" : String).toByteArray.data.toList
theorem checked3454 : bytes3454=statementBytes 3572 (op3454.map lower) ∧ bytes3454.length=48 := by core033_kernel_decide
def op3455 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3455 : Bytes := ("    let r00000df5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3455 : bytes3455=statementBytes 3573 (op3455.map lower) ∧ bytes3455.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3392,op3393,op3394,op3395,op3396,op3397,op3398,op3399,op3400,op3401,op3402,op3403,op3404,op3405,op3406,op3407,op3408,op3409,op3410,op3411,op3412,op3413,op3414,op3415,op3416,op3417,op3418,op3419,op3420,op3421,op3422,op3423,op3424,op3425,op3426,op3427,op3428,op3429,op3430,op3431,op3432,op3433,op3434,op3435,op3436,op3437,op3438,op3439,op3440,op3441,op3442,op3443,op3444,op3445,op3446,op3447,op3448,op3449,op3450,op3451,op3452,op3453,op3454,op3455]
def chunks : List Bytes := [bytes3392,bytes3393,bytes3394,bytes3395,bytes3396,bytes3397,bytes3398,bytes3399,bytes3400,bytes3401,bytes3402,bytes3403,bytes3404,bytes3405,bytes3406,bytes3407,bytes3408,bytes3409,bytes3410,bytes3411,bytes3412,bytes3413,bytes3414,bytes3415,bytes3416,bytes3417,bytes3418,bytes3419,bytes3420,bytes3421,bytes3422,bytes3423,bytes3424,bytes3425,bytes3426,bytes3427,bytes3428,bytes3429,bytes3430,bytes3431,bytes3432,bytes3433,bytes3434,bytes3435,bytes3436,bytes3437,bytes3438,bytes3439,bytes3440,bytes3441,bytes3442,bytes3443,bytes3444,bytes3445,bytes3446,bytes3447,bytes3448,bytes3449,bytes3450,bytes3451,bytes3452,bytes3453,bytes3454,bytes3455]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3510 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3392.1 (.cons _ _ _ _ _ checked3393.1 (.cons _ _ _ _ _ checked3394.1 (.cons _ _ _ _ _ checked3395.1 (.cons _ _ _ _ _ checked3396.1 (.cons _ _ _ _ _ checked3397.1 (.cons _ _ _ _ _ checked3398.1 (.cons _ _ _ _ _ checked3399.1 (.cons _ _ _ _ _ checked3400.1 (.cons _ _ _ _ _ checked3401.1 (.cons _ _ _ _ _ checked3402.1 (.cons _ _ _ _ _ checked3403.1 (.cons _ _ _ _ _ checked3404.1 (.cons _ _ _ _ _ checked3405.1 (.cons _ _ _ _ _ checked3406.1 (.cons _ _ _ _ _ checked3407.1 (.cons _ _ _ _ _ checked3408.1 (.cons _ _ _ _ _ checked3409.1 (.cons _ _ _ _ _ checked3410.1 (.cons _ _ _ _ _ checked3411.1 (.cons _ _ _ _ _ checked3412.1 (.cons _ _ _ _ _ checked3413.1 (.cons _ _ _ _ _ checked3414.1 (.cons _ _ _ _ _ checked3415.1 (.cons _ _ _ _ _ checked3416.1 (.cons _ _ _ _ _ checked3417.1 (.cons _ _ _ _ _ checked3418.1 (.cons _ _ _ _ _ checked3419.1 (.cons _ _ _ _ _ checked3420.1 (.cons _ _ _ _ _ checked3421.1 (.cons _ _ _ _ _ checked3422.1 (.cons _ _ _ _ _ checked3423.1 (.cons _ _ _ _ _ checked3424.1 (.cons _ _ _ _ _ checked3425.1 (.cons _ _ _ _ _ checked3426.1 (.cons _ _ _ _ _ checked3427.1 (.cons _ _ _ _ _ checked3428.1 (.cons _ _ _ _ _ checked3429.1 (.cons _ _ _ _ _ checked3430.1 (.cons _ _ _ _ _ checked3431.1 (.cons _ _ _ _ _ checked3432.1 (.cons _ _ _ _ _ checked3433.1 (.cons _ _ _ _ _ checked3434.1 (.cons _ _ _ _ _ checked3435.1 (.cons _ _ _ _ _ checked3436.1 (.cons _ _ _ _ _ checked3437.1 (.cons _ _ _ _ _ checked3438.1 (.cons _ _ _ _ _ checked3439.1 (.cons _ _ _ _ _ checked3440.1 (.cons _ _ _ _ _ checked3441.1 (.cons _ _ _ _ _ checked3442.1 (.cons _ _ _ _ _ checked3443.1 (.cons _ _ _ _ _ checked3444.1 (.cons _ _ _ _ _ checked3445.1 (.cons _ _ _ _ _ checked3446.1 (.cons _ _ _ _ _ checked3447.1 (.cons _ _ _ _ _ checked3448.1 (.cons _ _ _ _ _ checked3449.1 (.cons _ _ _ _ _ checked3450.1 (.cons _ _ _ _ _ checked3451.1 (.cons _ _ _ _ _ checked3452.1 (.cons _ _ _ _ _ checked3453.1 (.cons _ _ _ _ _ checked3454.1 (.cons _ _ _ _ _ checked3455.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3510 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2854 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3392.2,checked3393.2,checked3394.2,checked3395.2,checked3396.2,checked3397.2,checked3398.2,checked3399.2,checked3400.2,checked3401.2,checked3402.2,checked3403.2,checked3404.2,checked3405.2,checked3406.2,checked3407.2,checked3408.2,checked3409.2,checked3410.2,checked3411.2,checked3412.2,checked3413.2,checked3414.2,checked3415.2,checked3416.2,checked3417.2,checked3418.2,checked3419.2,checked3420.2,checked3421.2,checked3422.2,checked3423.2,checked3424.2,checked3425.2,checked3426.2,checked3427.2,checked3428.2,checked3429.2,checked3430.2,checked3431.2,checked3432.2,checked3433.2,checked3434.2,checked3435.2,checked3436.2,checked3437.2,checked3438.2,checked3439.2,checked3440.2,checked3441.2,checked3442.2,checked3443.2,checked3444.2,checked3445.2,checked3446.2,checked3447.2,checked3448.2,checked3449.2,checked3450.2,checked3451.2,checked3452.2,checked3453.2,checked3454.2,checked3455.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup53
