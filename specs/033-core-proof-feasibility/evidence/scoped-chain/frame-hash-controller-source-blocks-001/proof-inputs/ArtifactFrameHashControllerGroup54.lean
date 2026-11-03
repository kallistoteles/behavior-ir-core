import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup54
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3456 : List WordIR.Op := [.bxor 0 3498]
def bytes3456 : Bytes := ("    let r00000dab: u32 = r00000000 ^ r00000daa;\n" : String).toByteArray.data.toList
theorem checked3456 : bytes3456=statementBytes 3499 (op3456.map lower) ∧ bytes3456.length=48 := by core033_kernel_decide
def op3457 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3457 : Bytes := ("    let r00000dac: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3457 : bytes3457=statementBytes 3500 (op3457.map lower) ∧ bytes3457.length=41 := by core033_kernel_decide
def op3458 : List WordIR.Op := [.bnot 3500]
def bytes3458 : Bytes := ("    let r00000dad: u32 = !r00000dac;\n" : String).toByteArray.data.toList
theorem checked3458 : bytes3458=statementBytes 3501 (op3458.map lower) ∧ bytes3458.length=37 := by core033_kernel_decide
def op3459 : List WordIR.Op := [.badd 3499 3501]
def bytes3459 : Bytes := ("    let r00000dae: u32 = r00000dab.wrapping_add(r00000dad);\n" : String).toByteArray.data.toList
theorem checked3459 : bytes3459=statementBytes 3502 (op3459.map lower) ∧ bytes3459.length=60 := by core033_kernel_decide
def op3460 : List WordIR.Op := [.bnot 3502]
def bytes3460 : Bytes := ("    let r00000daf: u32 = !r00000dae;\n" : String).toByteArray.data.toList
theorem checked3460 : bytes3460=statementBytes 3503 (op3460.map lower) ∧ bytes3460.length=37 := by core033_kernel_decide
def op3461 : List WordIR.Op := [.band 3497 3503]
def bytes3461 : Bytes := ("    let r00000db0: u32 = r00000da9 & r00000daf;\n" : String).toByteArray.data.toList
theorem checked3461 : bytes3461=statementBytes 3504 (op3461.map lower) ∧ bytes3461.length=48 := by core033_kernel_decide
def op3462 : List WordIR.Op := [.bxor 3492 3504]
def bytes3462 : Bytes := ("    let r00000db1: u32 = r00000da4 ^ r00000db0;\n" : String).toByteArray.data.toList
theorem checked3462 : bytes3462=statementBytes 3505 (op3462.map lower) ∧ bytes3462.length=48 := by core033_kernel_decide
def op3463 : List WordIR.Op := [.shr 3505 31]
def bytes3463 : Bytes := ("    let r00000db2: u32 = r00000db1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3463 : bytes3463=statementBytes 3506 (op3463.map lower) ∧ bytes3463.length=54 := by core033_kernel_decide
def op3464 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3464 : Bytes := ("    let r00000db3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3464 : bytes3464=statementBytes 3507 (op3464.map lower) ∧ bytes3464.length=41 := by core033_kernel_decide
def op3465 : List WordIR.Op := [.bxor 3506 3507]
def bytes3465 : Bytes := ("    let r00000db4: u32 = r00000db2 ^ r00000db3;\n" : String).toByteArray.data.toList
theorem checked3465 : bytes3465=statementBytes 3508 (op3465.map lower) ∧ bytes3465.length=48 := by core033_kernel_decide
def op3466 : List WordIR.Op := [.bnot 3508]
def bytes3466 : Bytes := ("    let r00000db5: u32 = !r00000db4;\n" : String).toByteArray.data.toList
theorem checked3466 : bytes3466=statementBytes 3509 (op3466.map lower) ∧ bytes3466.length=37 := by core033_kernel_decide
def op3467 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3467 : Bytes := ("    let r00000db6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3467 : bytes3467=statementBytes 3510 (op3467.map lower) ∧ bytes3467.length=41 := by core033_kernel_decide
def op3468 : List WordIR.Op := [.badd 3509 3510]
def bytes3468 : Bytes := ("    let r00000db7: u32 = r00000db5.wrapping_add(r00000db6);\n" : String).toByteArray.data.toList
theorem checked3468 : bytes3468=statementBytes 3511 (op3468.map lower) ∧ bytes3468.length=60 := by core033_kernel_decide
def op3469 : List WordIR.Op := [.band 3511 1073]
def bytes3469 : Bytes := ("    let r00000db8: u32 = r00000db7 & r00000431;\n" : String).toByteArray.data.toList
theorem checked3469 : bytes3469=statementBytes 3512 (op3469.map lower) ∧ bytes3469.length=48 := by core033_kernel_decide
def op3470 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3470 : Bytes := ("    let r00000db9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3470 : bytes3470=statementBytes 3513 (op3470.map lower) ∧ bytes3470.length=41 := by core033_kernel_decide
def op3471 : List WordIR.Op := [.bxor 0 3513]
def bytes3471 : Bytes := ("    let r00000dba: u32 = r00000000 ^ r00000db9;\n" : String).toByteArray.data.toList
theorem checked3471 : bytes3471=statementBytes 3514 (op3471.map lower) ∧ bytes3471.length=48 := by core033_kernel_decide
def op3472 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3472 : Bytes := ("    let r00000dbb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3472 : bytes3472=statementBytes 3515 (op3472.map lower) ∧ bytes3472.length=41 := by core033_kernel_decide
def op3473 : List WordIR.Op := [.bnot 3515]
def bytes3473 : Bytes := ("    let r00000dbc: u32 = !r00000dbb;\n" : String).toByteArray.data.toList
theorem checked3473 : bytes3473=statementBytes 3516 (op3473.map lower) ∧ bytes3473.length=37 := by core033_kernel_decide
def op3474 : List WordIR.Op := [.band 3514 3516]
def bytes3474 : Bytes := ("    let r00000dbd: u32 = r00000dba & r00000dbc;\n" : String).toByteArray.data.toList
theorem checked3474 : bytes3474=statementBytes 3517 (op3474.map lower) ∧ bytes3474.length=48 := by core033_kernel_decide
def op3475 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3475 : Bytes := ("    let r00000dbe: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3475 : bytes3475=statementBytes 3518 (op3475.map lower) ∧ bytes3475.length=41 := by core033_kernel_decide
def op3476 : List WordIR.Op := [.bxor 0 3518]
def bytes3476 : Bytes := ("    let r00000dbf: u32 = r00000000 ^ r00000dbe;\n" : String).toByteArray.data.toList
theorem checked3476 : bytes3476=statementBytes 3519 (op3476.map lower) ∧ bytes3476.length=48 := by core033_kernel_decide
def op3477 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3477 : Bytes := ("    let r00000dc0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3477 : bytes3477=statementBytes 3520 (op3477.map lower) ∧ bytes3477.length=41 := by core033_kernel_decide
def op3478 : List WordIR.Op := [.bnot 3520]
def bytes3478 : Bytes := ("    let r00000dc1: u32 = !r00000dc0;\n" : String).toByteArray.data.toList
theorem checked3478 : bytes3478=statementBytes 3521 (op3478.map lower) ∧ bytes3478.length=37 := by core033_kernel_decide
def op3479 : List WordIR.Op := [.bxor 3519 3521]
def bytes3479 : Bytes := ("    let r00000dc2: u32 = r00000dbf ^ r00000dc1;\n" : String).toByteArray.data.toList
theorem checked3479 : bytes3479=statementBytes 3522 (op3479.map lower) ∧ bytes3479.length=48 := by core033_kernel_decide
def op3480 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3480 : Bytes := ("    let r00000dc3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3480 : bytes3480=statementBytes 3523 (op3480.map lower) ∧ bytes3480.length=41 := by core033_kernel_decide
def op3481 : List WordIR.Op := [.bxor 0 3523]
def bytes3481 : Bytes := ("    let r00000dc4: u32 = r00000000 ^ r00000dc3;\n" : String).toByteArray.data.toList
theorem checked3481 : bytes3481=statementBytes 3524 (op3481.map lower) ∧ bytes3481.length=48 := by core033_kernel_decide
def op3482 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3482 : Bytes := ("    let r00000dc5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3482 : bytes3482=statementBytes 3525 (op3482.map lower) ∧ bytes3482.length=41 := by core033_kernel_decide
def op3483 : List WordIR.Op := [.bnot 3525]
def bytes3483 : Bytes := ("    let r00000dc6: u32 = !r00000dc5;\n" : String).toByteArray.data.toList
theorem checked3483 : bytes3483=statementBytes 3526 (op3483.map lower) ∧ bytes3483.length=37 := by core033_kernel_decide
def op3484 : List WordIR.Op := [.badd 3524 3526]
def bytes3484 : Bytes := ("    let r00000dc7: u32 = r00000dc4.wrapping_add(r00000dc6);\n" : String).toByteArray.data.toList
theorem checked3484 : bytes3484=statementBytes 3527 (op3484.map lower) ∧ bytes3484.length=60 := by core033_kernel_decide
def op3485 : List WordIR.Op := [.bnot 3527]
def bytes3485 : Bytes := ("    let r00000dc8: u32 = !r00000dc7;\n" : String).toByteArray.data.toList
theorem checked3485 : bytes3485=statementBytes 3528 (op3485.map lower) ∧ bytes3485.length=37 := by core033_kernel_decide
def op3486 : List WordIR.Op := [.band 3522 3528]
def bytes3486 : Bytes := ("    let r00000dc9: u32 = r00000dc2 & r00000dc8;\n" : String).toByteArray.data.toList
theorem checked3486 : bytes3486=statementBytes 3529 (op3486.map lower) ∧ bytes3486.length=48 := by core033_kernel_decide
def op3487 : List WordIR.Op := [.bxor 3517 3529]
def bytes3487 : Bytes := ("    let r00000dca: u32 = r00000dbd ^ r00000dc9;\n" : String).toByteArray.data.toList
theorem checked3487 : bytes3487=statementBytes 3530 (op3487.map lower) ∧ bytes3487.length=48 := by core033_kernel_decide
def op3488 : List WordIR.Op := [.shr 3530 31]
def bytes3488 : Bytes := ("    let r00000dcb: u32 = r00000dca >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3488 : bytes3488=statementBytes 3531 (op3488.map lower) ∧ bytes3488.length=54 := by core033_kernel_decide
def op3489 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3489 : Bytes := ("    let r00000dcc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3489 : bytes3489=statementBytes 3532 (op3489.map lower) ∧ bytes3489.length=41 := by core033_kernel_decide
def op3490 : List WordIR.Op := [.bxor 3531 3532]
def bytes3490 : Bytes := ("    let r00000dcd: u32 = r00000dcb ^ r00000dcc;\n" : String).toByteArray.data.toList
theorem checked3490 : bytes3490=statementBytes 3533 (op3490.map lower) ∧ bytes3490.length=48 := by core033_kernel_decide
def op3491 : List WordIR.Op := [.bnot 3533]
def bytes3491 : Bytes := ("    let r00000dce: u32 = !r00000dcd;\n" : String).toByteArray.data.toList
theorem checked3491 : bytes3491=statementBytes 3534 (op3491.map lower) ∧ bytes3491.length=37 := by core033_kernel_decide
def op3492 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3492 : Bytes := ("    let r00000dcf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3492 : bytes3492=statementBytes 3535 (op3492.map lower) ∧ bytes3492.length=41 := by core033_kernel_decide
def op3493 : List WordIR.Op := [.badd 3534 3535]
def bytes3493 : Bytes := ("    let r00000dd0: u32 = r00000dce.wrapping_add(r00000dcf);\n" : String).toByteArray.data.toList
theorem checked3493 : bytes3493=statementBytes 3536 (op3493.map lower) ∧ bytes3493.length=60 := by core033_kernel_decide
def op3494 : List WordIR.Op := [.bnot 3536]
def bytes3494 : Bytes := ("    let r00000dd1: u32 = !r00000dd0;\n" : String).toByteArray.data.toList
theorem checked3494 : bytes3494=statementBytes 3537 (op3494.map lower) ∧ bytes3494.length=37 := by core033_kernel_decide
def op3495 : List WordIR.Op := [.band 3537 881]
def bytes3495 : Bytes := ("    let r00000dd2: u32 = r00000dd1 & r00000371;\n" : String).toByteArray.data.toList
theorem checked3495 : bytes3495=statementBytes 3538 (op3495.map lower) ∧ bytes3495.length=48 := by core033_kernel_decide
def op3496 : List WordIR.Op := [.bxor 3512 3538]
def bytes3496 : Bytes := ("    let r00000dd3: u32 = r00000db8 ^ r00000dd2;\n" : String).toByteArray.data.toList
theorem checked3496 : bytes3496=statementBytes 3539 (op3496.map lower) ∧ bytes3496.length=48 := by core033_kernel_decide
def op3497 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3497 : Bytes := ("    let r00000dd4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3497 : bytes3497=statementBytes 3540 (op3497.map lower) ∧ bytes3497.length=41 := by core033_kernel_decide
def op3498 : List WordIR.Op := [.bxor 0 3540]
def bytes3498 : Bytes := ("    let r00000dd5: u32 = r00000000 ^ r00000dd4;\n" : String).toByteArray.data.toList
theorem checked3498 : bytes3498=statementBytes 3541 (op3498.map lower) ∧ bytes3498.length=48 := by core033_kernel_decide
def op3499 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3499 : Bytes := ("    let r00000dd6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3499 : bytes3499=statementBytes 3542 (op3499.map lower) ∧ bytes3499.length=41 := by core033_kernel_decide
def op3500 : List WordIR.Op := [.bnot 3542]
def bytes3500 : Bytes := ("    let r00000dd7: u32 = !r00000dd6;\n" : String).toByteArray.data.toList
theorem checked3500 : bytes3500=statementBytes 3543 (op3500.map lower) ∧ bytes3500.length=37 := by core033_kernel_decide
def op3501 : List WordIR.Op := [.band 3541 3543]
def bytes3501 : Bytes := ("    let r00000dd8: u32 = r00000dd5 & r00000dd7;\n" : String).toByteArray.data.toList
theorem checked3501 : bytes3501=statementBytes 3544 (op3501.map lower) ∧ bytes3501.length=48 := by core033_kernel_decide
def op3502 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3502 : Bytes := ("    let r00000dd9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3502 : bytes3502=statementBytes 3545 (op3502.map lower) ∧ bytes3502.length=41 := by core033_kernel_decide
def op3503 : List WordIR.Op := [.bxor 0 3545]
def bytes3503 : Bytes := ("    let r00000dda: u32 = r00000000 ^ r00000dd9;\n" : String).toByteArray.data.toList
theorem checked3503 : bytes3503=statementBytes 3546 (op3503.map lower) ∧ bytes3503.length=48 := by core033_kernel_decide
def op3504 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3504 : Bytes := ("    let r00000ddb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3504 : bytes3504=statementBytes 3547 (op3504.map lower) ∧ bytes3504.length=41 := by core033_kernel_decide
def op3505 : List WordIR.Op := [.bnot 3547]
def bytes3505 : Bytes := ("    let r00000ddc: u32 = !r00000ddb;\n" : String).toByteArray.data.toList
theorem checked3505 : bytes3505=statementBytes 3548 (op3505.map lower) ∧ bytes3505.length=37 := by core033_kernel_decide
def op3506 : List WordIR.Op := [.bxor 3546 3548]
def bytes3506 : Bytes := ("    let r00000ddd: u32 = r00000dda ^ r00000ddc;\n" : String).toByteArray.data.toList
theorem checked3506 : bytes3506=statementBytes 3549 (op3506.map lower) ∧ bytes3506.length=48 := by core033_kernel_decide
def op3507 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3507 : Bytes := ("    let r00000dde: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3507 : bytes3507=statementBytes 3550 (op3507.map lower) ∧ bytes3507.length=41 := by core033_kernel_decide
def op3508 : List WordIR.Op := [.bxor 0 3550]
def bytes3508 : Bytes := ("    let r00000ddf: u32 = r00000000 ^ r00000dde;\n" : String).toByteArray.data.toList
theorem checked3508 : bytes3508=statementBytes 3551 (op3508.map lower) ∧ bytes3508.length=48 := by core033_kernel_decide
def op3509 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3509 : Bytes := ("    let r00000de0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3509 : bytes3509=statementBytes 3552 (op3509.map lower) ∧ bytes3509.length=41 := by core033_kernel_decide
def op3510 : List WordIR.Op := [.bnot 3552]
def bytes3510 : Bytes := ("    let r00000de1: u32 = !r00000de0;\n" : String).toByteArray.data.toList
theorem checked3510 : bytes3510=statementBytes 3553 (op3510.map lower) ∧ bytes3510.length=37 := by core033_kernel_decide
def op3511 : List WordIR.Op := [.badd 3551 3553]
def bytes3511 : Bytes := ("    let r00000de2: u32 = r00000ddf.wrapping_add(r00000de1);\n" : String).toByteArray.data.toList
theorem checked3511 : bytes3511=statementBytes 3554 (op3511.map lower) ∧ bytes3511.length=60 := by core033_kernel_decide
def op3512 : List WordIR.Op := [.bnot 3554]
def bytes3512 : Bytes := ("    let r00000de3: u32 = !r00000de2;\n" : String).toByteArray.data.toList
theorem checked3512 : bytes3512=statementBytes 3555 (op3512.map lower) ∧ bytes3512.length=37 := by core033_kernel_decide
def op3513 : List WordIR.Op := [.band 3549 3555]
def bytes3513 : Bytes := ("    let r00000de4: u32 = r00000ddd & r00000de3;\n" : String).toByteArray.data.toList
theorem checked3513 : bytes3513=statementBytes 3556 (op3513.map lower) ∧ bytes3513.length=48 := by core033_kernel_decide
def op3514 : List WordIR.Op := [.bxor 3544 3556]
def bytes3514 : Bytes := ("    let r00000de5: u32 = r00000dd8 ^ r00000de4;\n" : String).toByteArray.data.toList
theorem checked3514 : bytes3514=statementBytes 3557 (op3514.map lower) ∧ bytes3514.length=48 := by core033_kernel_decide
def op3515 : List WordIR.Op := [.shr 3557 31]
def bytes3515 : Bytes := ("    let r00000de6: u32 = r00000de5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3515 : bytes3515=statementBytes 3558 (op3515.map lower) ∧ bytes3515.length=54 := by core033_kernel_decide
def op3516 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3516 : Bytes := ("    let r00000de7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3516 : bytes3516=statementBytes 3559 (op3516.map lower) ∧ bytes3516.length=41 := by core033_kernel_decide
def op3517 : List WordIR.Op := [.bxor 3558 3559]
def bytes3517 : Bytes := ("    let r00000de8: u32 = r00000de6 ^ r00000de7;\n" : String).toByteArray.data.toList
theorem checked3517 : bytes3517=statementBytes 3560 (op3517.map lower) ∧ bytes3517.length=48 := by core033_kernel_decide
def op3518 : List WordIR.Op := [.bnot 3560]
def bytes3518 : Bytes := ("    let r00000de9: u32 = !r00000de8;\n" : String).toByteArray.data.toList
theorem checked3518 : bytes3518=statementBytes 3561 (op3518.map lower) ∧ bytes3518.length=37 := by core033_kernel_decide
def op3519 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3519 : Bytes := ("    let r00000dea: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3519 : bytes3519=statementBytes 3562 (op3519.map lower) ∧ bytes3519.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3456,op3457,op3458,op3459,op3460,op3461,op3462,op3463,op3464,op3465,op3466,op3467,op3468,op3469,op3470,op3471,op3472,op3473,op3474,op3475,op3476,op3477,op3478,op3479,op3480,op3481,op3482,op3483,op3484,op3485,op3486,op3487,op3488,op3489,op3490,op3491,op3492,op3493,op3494,op3495,op3496,op3497,op3498,op3499,op3500,op3501,op3502,op3503,op3504,op3505,op3506,op3507,op3508,op3509,op3510,op3511,op3512,op3513,op3514,op3515,op3516,op3517,op3518,op3519]
def chunks : List Bytes := [bytes3456,bytes3457,bytes3458,bytes3459,bytes3460,bytes3461,bytes3462,bytes3463,bytes3464,bytes3465,bytes3466,bytes3467,bytes3468,bytes3469,bytes3470,bytes3471,bytes3472,bytes3473,bytes3474,bytes3475,bytes3476,bytes3477,bytes3478,bytes3479,bytes3480,bytes3481,bytes3482,bytes3483,bytes3484,bytes3485,bytes3486,bytes3487,bytes3488,bytes3489,bytes3490,bytes3491,bytes3492,bytes3493,bytes3494,bytes3495,bytes3496,bytes3497,bytes3498,bytes3499,bytes3500,bytes3501,bytes3502,bytes3503,bytes3504,bytes3505,bytes3506,bytes3507,bytes3508,bytes3509,bytes3510,bytes3511,bytes3512,bytes3513,bytes3514,bytes3515,bytes3516,bytes3517,bytes3518,bytes3519]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3499 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3456.1 (.cons _ _ _ _ _ checked3457.1 (.cons _ _ _ _ _ checked3458.1 (.cons _ _ _ _ _ checked3459.1 (.cons _ _ _ _ _ checked3460.1 (.cons _ _ _ _ _ checked3461.1 (.cons _ _ _ _ _ checked3462.1 (.cons _ _ _ _ _ checked3463.1 (.cons _ _ _ _ _ checked3464.1 (.cons _ _ _ _ _ checked3465.1 (.cons _ _ _ _ _ checked3466.1 (.cons _ _ _ _ _ checked3467.1 (.cons _ _ _ _ _ checked3468.1 (.cons _ _ _ _ _ checked3469.1 (.cons _ _ _ _ _ checked3470.1 (.cons _ _ _ _ _ checked3471.1 (.cons _ _ _ _ _ checked3472.1 (.cons _ _ _ _ _ checked3473.1 (.cons _ _ _ _ _ checked3474.1 (.cons _ _ _ _ _ checked3475.1 (.cons _ _ _ _ _ checked3476.1 (.cons _ _ _ _ _ checked3477.1 (.cons _ _ _ _ _ checked3478.1 (.cons _ _ _ _ _ checked3479.1 (.cons _ _ _ _ _ checked3480.1 (.cons _ _ _ _ _ checked3481.1 (.cons _ _ _ _ _ checked3482.1 (.cons _ _ _ _ _ checked3483.1 (.cons _ _ _ _ _ checked3484.1 (.cons _ _ _ _ _ checked3485.1 (.cons _ _ _ _ _ checked3486.1 (.cons _ _ _ _ _ checked3487.1 (.cons _ _ _ _ _ checked3488.1 (.cons _ _ _ _ _ checked3489.1 (.cons _ _ _ _ _ checked3490.1 (.cons _ _ _ _ _ checked3491.1 (.cons _ _ _ _ _ checked3492.1 (.cons _ _ _ _ _ checked3493.1 (.cons _ _ _ _ _ checked3494.1 (.cons _ _ _ _ _ checked3495.1 (.cons _ _ _ _ _ checked3496.1 (.cons _ _ _ _ _ checked3497.1 (.cons _ _ _ _ _ checked3498.1 (.cons _ _ _ _ _ checked3499.1 (.cons _ _ _ _ _ checked3500.1 (.cons _ _ _ _ _ checked3501.1 (.cons _ _ _ _ _ checked3502.1 (.cons _ _ _ _ _ checked3503.1 (.cons _ _ _ _ _ checked3504.1 (.cons _ _ _ _ _ checked3505.1 (.cons _ _ _ _ _ checked3506.1 (.cons _ _ _ _ _ checked3507.1 (.cons _ _ _ _ _ checked3508.1 (.cons _ _ _ _ _ checked3509.1 (.cons _ _ _ _ _ checked3510.1 (.cons _ _ _ _ _ checked3511.1 (.cons _ _ _ _ _ checked3512.1 (.cons _ _ _ _ _ checked3513.1 (.cons _ _ _ _ _ checked3514.1 (.cons _ _ _ _ _ checked3515.1 (.cons _ _ _ _ _ checked3516.1 (.cons _ _ _ _ _ checked3517.1 (.cons _ _ _ _ _ checked3518.1 (.cons _ _ _ _ _ checked3519.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3499 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3456.2,checked3457.2,checked3458.2,checked3459.2,checked3460.2,checked3461.2,checked3462.2,checked3463.2,checked3464.2,checked3465.2,checked3466.2,checked3467.2,checked3468.2,checked3469.2,checked3470.2,checked3471.2,checked3472.2,checked3473.2,checked3474.2,checked3475.2,checked3476.2,checked3477.2,checked3478.2,checked3479.2,checked3480.2,checked3481.2,checked3482.2,checked3483.2,checked3484.2,checked3485.2,checked3486.2,checked3487.2,checked3488.2,checked3489.2,checked3490.2,checked3491.2,checked3492.2,checked3493.2,checked3494.2,checked3495.2,checked3496.2,checked3497.2,checked3498.2,checked3499.2,checked3500.2,checked3501.2,checked3502.2,checked3503.2,checked3504.2,checked3505.2,checked3506.2,checked3507.2,checked3508.2,checked3509.2,checked3510.2,checked3511.2,checked3512.2,checked3513.2,checked3514.2,checked3515.2,checked3516.2,checked3517.2,checked3518.2,checked3519.2]
  decide
end ArtifactFrameHashControllerGroup54
