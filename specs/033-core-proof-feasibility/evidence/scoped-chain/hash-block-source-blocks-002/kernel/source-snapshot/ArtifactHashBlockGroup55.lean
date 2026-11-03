import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup55
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3520 : List WordIR.Op := [.rotr 3590 11]
def bytes3520 : Bytes := ("    let r00000e08: u32 = r00000e06.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked3520 : bytes3520=statementBytes 3592 (op3520.map lower) ∧ bytes3520.length=65 := by core033_kernel_decide
def op3521 : List WordIR.Op := [.bxor 3591 3592]
def bytes3521 : Bytes := ("    let r00000e09: u32 = r00000e07 ^ r00000e08;\n" : String).toByteArray.data.toList
theorem checked3521 : bytes3521=statementBytes 3593 (op3521.map lower) ∧ bytes3521.length=48 := by core033_kernel_decide
def op3522 : List WordIR.Op := [.rotr 3590 25]
def bytes3522 : Bytes := ("    let r00000e0a: u32 = r00000e06.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked3522 : bytes3522=statementBytes 3594 (op3522.map lower) ∧ bytes3522.length=65 := by core033_kernel_decide
def op3523 : List WordIR.Op := [.bxor 3593 3594]
def bytes3523 : Bytes := ("    let r00000e0b: u32 = r00000e09 ^ r00000e0a;\n" : String).toByteArray.data.toList
theorem checked3523 : bytes3523=statementBytes 3595 (op3523.map lower) ∧ bytes3523.length=48 := by core033_kernel_decide
def op3524 : List WordIR.Op := [.badd 3509 3595]
def bytes3524 : Bytes := ("    let r00000e0c: u32 = r00000db5.wrapping_add(r00000e0b);\n" : String).toByteArray.data.toList
theorem checked3524 : bytes3524=statementBytes 3596 (op3524.map lower) ∧ bytes3524.length=60 := by core033_kernel_decide
def op3525 : List WordIR.Op := [.band 3590 3563]
def bytes3525 : Bytes := ("    let r00000e0d: u32 = r00000e06 & r00000deb;\n" : String).toByteArray.data.toList
theorem checked3525 : bytes3525=statementBytes 3597 (op3525.map lower) ∧ bytes3525.length=48 := by core033_kernel_decide
def op3526 : List WordIR.Op := [.bnot 3590]
def bytes3526 : Bytes := ("    let r00000e0e: u32 = !r00000e06;\n" : String).toByteArray.data.toList
theorem checked3526 : bytes3526=statementBytes 3598 (op3526.map lower) ∧ bytes3526.length=37 := by core033_kernel_decide
def op3527 : List WordIR.Op := [.band 3598 3536]
def bytes3527 : Bytes := ("    let r00000e0f: u32 = r00000e0e & r00000dd0;\n" : String).toByteArray.data.toList
theorem checked3527 : bytes3527=statementBytes 3599 (op3527.map lower) ∧ bytes3527.length=48 := by core033_kernel_decide
def op3528 : List WordIR.Op := [.bxor 3597 3599]
def bytes3528 : Bytes := ("    let r00000e10: u32 = r00000e0d ^ r00000e0f;\n" : String).toByteArray.data.toList
theorem checked3528 : bytes3528=statementBytes 3600 (op3528.map lower) ∧ bytes3528.length=48 := by core033_kernel_decide
def op3529 : List WordIR.Op := [.badd 3596 3600]
def bytes3529 : Bytes := ("    let r00000e11: u32 = r00000e0c.wrapping_add(r00000e10);\n" : String).toByteArray.data.toList
theorem checked3529 : bytes3529=statementBytes 3601 (op3529.map lower) ∧ bytes3529.length=60 := by core033_kernel_decide
def op3530 : List WordIR.Op := [.literal (BitVec.ofNat 32 2756734187)]
def bytes3530 : Bytes := ("    let r00000e12: u32 = 0xa4506ceb_u32;\n" : String).toByteArray.data.toList
theorem checked3530 : bytes3530=statementBytes 3602 (op3530.map lower) ∧ bytes3530.length=41 := by core033_kernel_decide
def op3531 : List WordIR.Op := [.badd 3601 3602]
def bytes3531 : Bytes := ("    let r00000e13: u32 = r00000e11.wrapping_add(r00000e12);\n" : String).toByteArray.data.toList
theorem checked3531 : bytes3531=statementBytes 3603 (op3531.map lower) ∧ bytes3531.length=60 := by core033_kernel_decide
def op3532 : List WordIR.Op := [.badd 3603 1917]
def bytes3532 : Bytes := ("    let r00000e14: u32 = r00000e13.wrapping_add(r0000077d);\n" : String).toByteArray.data.toList
theorem checked3532 : bytes3532=statementBytes 3604 (op3532.map lower) ∧ bytes3532.length=60 := by core033_kernel_decide
def op3533 : List WordIR.Op := [.rotr 3589 2]
def bytes3533 : Bytes := ("    let r00000e15: u32 = r00000e05.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked3533 : bytes3533=statementBytes 3605 (op3533.map lower) ∧ bytes3533.length=65 := by core033_kernel_decide
def op3534 : List WordIR.Op := [.rotr 3589 13]
def bytes3534 : Bytes := ("    let r00000e16: u32 = r00000e05.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked3534 : bytes3534=statementBytes 3606 (op3534.map lower) ∧ bytes3534.length=65 := by core033_kernel_decide
def op3535 : List WordIR.Op := [.bxor 3605 3606]
def bytes3535 : Bytes := ("    let r00000e17: u32 = r00000e15 ^ r00000e16;\n" : String).toByteArray.data.toList
theorem checked3535 : bytes3535=statementBytes 3607 (op3535.map lower) ∧ bytes3535.length=48 := by core033_kernel_decide
def op3536 : List WordIR.Op := [.rotr 3589 22]
def bytes3536 : Bytes := ("    let r00000e18: u32 = r00000e05.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked3536 : bytes3536=statementBytes 3608 (op3536.map lower) ∧ bytes3536.length=65 := by core033_kernel_decide
def op3537 : List WordIR.Op := [.bxor 3607 3608]
def bytes3537 : Bytes := ("    let r00000e19: u32 = r00000e17 ^ r00000e18;\n" : String).toByteArray.data.toList
theorem checked3537 : bytes3537=statementBytes 3609 (op3537.map lower) ∧ bytes3537.length=48 := by core033_kernel_decide
def op3538 : List WordIR.Op := [.band 3589 3562]
def bytes3538 : Bytes := ("    let r00000e1a: u32 = r00000e05 & r00000dea;\n" : String).toByteArray.data.toList
theorem checked3538 : bytes3538=statementBytes 3610 (op3538.map lower) ∧ bytes3538.length=48 := by core033_kernel_decide
def op3539 : List WordIR.Op := [.band 3589 3535]
def bytes3539 : Bytes := ("    let r00000e1b: u32 = r00000e05 & r00000dcf;\n" : String).toByteArray.data.toList
theorem checked3539 : bytes3539=statementBytes 3611 (op3539.map lower) ∧ bytes3539.length=48 := by core033_kernel_decide
def op3540 : List WordIR.Op := [.bxor 3610 3611]
def bytes3540 : Bytes := ("    let r00000e1c: u32 = r00000e1a ^ r00000e1b;\n" : String).toByteArray.data.toList
theorem checked3540 : bytes3540=statementBytes 3612 (op3540.map lower) ∧ bytes3540.length=48 := by core033_kernel_decide
def op3541 : List WordIR.Op := [.band 3562 3535]
def bytes3541 : Bytes := ("    let r00000e1d: u32 = r00000dea & r00000dcf;\n" : String).toByteArray.data.toList
theorem checked3541 : bytes3541=statementBytes 3613 (op3541.map lower) ∧ bytes3541.length=48 := by core033_kernel_decide
def op3542 : List WordIR.Op := [.bxor 3612 3613]
def bytes3542 : Bytes := ("    let r00000e1e: u32 = r00000e1c ^ r00000e1d;\n" : String).toByteArray.data.toList
theorem checked3542 : bytes3542=statementBytes 3614 (op3542.map lower) ∧ bytes3542.length=48 := by core033_kernel_decide
def op3543 : List WordIR.Op := [.badd 3609 3614]
def bytes3543 : Bytes := ("    let r00000e1f: u32 = r00000e19.wrapping_add(r00000e1e);\n" : String).toByteArray.data.toList
theorem checked3543 : bytes3543=statementBytes 3615 (op3543.map lower) ∧ bytes3543.length=60 := by core033_kernel_decide
def op3544 : List WordIR.Op := [.badd 3604 3615]
def bytes3544 : Bytes := ("    let r00000e20: u32 = r00000e14.wrapping_add(r00000e1f);\n" : String).toByteArray.data.toList
theorem checked3544 : bytes3544=statementBytes 3616 (op3544.map lower) ∧ bytes3544.length=60 := by core033_kernel_decide
def op3545 : List WordIR.Op := [.badd 3508 3604]
def bytes3545 : Bytes := ("    let r00000e21: u32 = r00000db4.wrapping_add(r00000e14);\n" : String).toByteArray.data.toList
theorem checked3545 : bytes3545=statementBytes 3617 (op3545.map lower) ∧ bytes3545.length=60 := by core033_kernel_decide
def op3546 : List WordIR.Op := [.rotr 3617 6]
def bytes3546 : Bytes := ("    let r00000e22: u32 = r00000e21.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked3546 : bytes3546=statementBytes 3618 (op3546.map lower) ∧ bytes3546.length=65 := by core033_kernel_decide
def op3547 : List WordIR.Op := [.rotr 3617 11]
def bytes3547 : Bytes := ("    let r00000e23: u32 = r00000e21.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked3547 : bytes3547=statementBytes 3619 (op3547.map lower) ∧ bytes3547.length=65 := by core033_kernel_decide
def op3548 : List WordIR.Op := [.bxor 3618 3619]
def bytes3548 : Bytes := ("    let r00000e24: u32 = r00000e22 ^ r00000e23;\n" : String).toByteArray.data.toList
theorem checked3548 : bytes3548=statementBytes 3620 (op3548.map lower) ∧ bytes3548.length=48 := by core033_kernel_decide
def op3549 : List WordIR.Op := [.rotr 3617 25]
def bytes3549 : Bytes := ("    let r00000e25: u32 = r00000e21.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked3549 : bytes3549=statementBytes 3621 (op3549.map lower) ∧ bytes3549.length=65 := by core033_kernel_decide
def op3550 : List WordIR.Op := [.bxor 3620 3621]
def bytes3550 : Bytes := ("    let r00000e26: u32 = r00000e24 ^ r00000e25;\n" : String).toByteArray.data.toList
theorem checked3550 : bytes3550=statementBytes 3622 (op3550.map lower) ∧ bytes3550.length=48 := by core033_kernel_decide
def op3551 : List WordIR.Op := [.badd 3536 3622]
def bytes3551 : Bytes := ("    let r00000e27: u32 = r00000dd0.wrapping_add(r00000e26);\n" : String).toByteArray.data.toList
theorem checked3551 : bytes3551=statementBytes 3623 (op3551.map lower) ∧ bytes3551.length=60 := by core033_kernel_decide
def op3552 : List WordIR.Op := [.band 3617 3590]
def bytes3552 : Bytes := ("    let r00000e28: u32 = r00000e21 & r00000e06;\n" : String).toByteArray.data.toList
theorem checked3552 : bytes3552=statementBytes 3624 (op3552.map lower) ∧ bytes3552.length=48 := by core033_kernel_decide
def op3553 : List WordIR.Op := [.bnot 3617]
def bytes3553 : Bytes := ("    let r00000e29: u32 = !r00000e21;\n" : String).toByteArray.data.toList
theorem checked3553 : bytes3553=statementBytes 3625 (op3553.map lower) ∧ bytes3553.length=37 := by core033_kernel_decide
def op3554 : List WordIR.Op := [.band 3625 3563]
def bytes3554 : Bytes := ("    let r00000e2a: u32 = r00000e29 & r00000deb;\n" : String).toByteArray.data.toList
theorem checked3554 : bytes3554=statementBytes 3626 (op3554.map lower) ∧ bytes3554.length=48 := by core033_kernel_decide
def op3555 : List WordIR.Op := [.bxor 3624 3626]
def bytes3555 : Bytes := ("    let r00000e2b: u32 = r00000e28 ^ r00000e2a;\n" : String).toByteArray.data.toList
theorem checked3555 : bytes3555=statementBytes 3627 (op3555.map lower) ∧ bytes3555.length=48 := by core033_kernel_decide
def op3556 : List WordIR.Op := [.badd 3623 3627]
def bytes3556 : Bytes := ("    let r00000e2c: u32 = r00000e27.wrapping_add(r00000e2b);\n" : String).toByteArray.data.toList
theorem checked3556 : bytes3556=statementBytes 3628 (op3556.map lower) ∧ bytes3556.length=60 := by core033_kernel_decide
def op3557 : List WordIR.Op := [.literal (BitVec.ofNat 32 3204031479)]
def bytes3557 : Bytes := ("    let r00000e2d: u32 = 0xbef9a3f7_u32;\n" : String).toByteArray.data.toList
theorem checked3557 : bytes3557=statementBytes 3629 (op3557.map lower) ∧ bytes3557.length=41 := by core033_kernel_decide
def op3558 : List WordIR.Op := [.badd 3628 3629]
def bytes3558 : Bytes := ("    let r00000e2e: u32 = r00000e2c.wrapping_add(r00000e2d);\n" : String).toByteArray.data.toList
theorem checked3558 : bytes3558=statementBytes 3630 (op3558.map lower) ∧ bytes3558.length=60 := by core033_kernel_decide
def op3559 : List WordIR.Op := [.badd 3630 1930]
def bytes3559 : Bytes := ("    let r00000e2f: u32 = r00000e2e.wrapping_add(r0000078a);\n" : String).toByteArray.data.toList
theorem checked3559 : bytes3559=statementBytes 3631 (op3559.map lower) ∧ bytes3559.length=60 := by core033_kernel_decide
def op3560 : List WordIR.Op := [.rotr 3616 2]
def bytes3560 : Bytes := ("    let r00000e30: u32 = r00000e20.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked3560 : bytes3560=statementBytes 3632 (op3560.map lower) ∧ bytes3560.length=65 := by core033_kernel_decide
def op3561 : List WordIR.Op := [.rotr 3616 13]
def bytes3561 : Bytes := ("    let r00000e31: u32 = r00000e20.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked3561 : bytes3561=statementBytes 3633 (op3561.map lower) ∧ bytes3561.length=65 := by core033_kernel_decide
def op3562 : List WordIR.Op := [.bxor 3632 3633]
def bytes3562 : Bytes := ("    let r00000e32: u32 = r00000e30 ^ r00000e31;\n" : String).toByteArray.data.toList
theorem checked3562 : bytes3562=statementBytes 3634 (op3562.map lower) ∧ bytes3562.length=48 := by core033_kernel_decide
def op3563 : List WordIR.Op := [.rotr 3616 22]
def bytes3563 : Bytes := ("    let r00000e33: u32 = r00000e20.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked3563 : bytes3563=statementBytes 3635 (op3563.map lower) ∧ bytes3563.length=65 := by core033_kernel_decide
def op3564 : List WordIR.Op := [.bxor 3634 3635]
def bytes3564 : Bytes := ("    let r00000e34: u32 = r00000e32 ^ r00000e33;\n" : String).toByteArray.data.toList
theorem checked3564 : bytes3564=statementBytes 3636 (op3564.map lower) ∧ bytes3564.length=48 := by core033_kernel_decide
def op3565 : List WordIR.Op := [.band 3616 3589]
def bytes3565 : Bytes := ("    let r00000e35: u32 = r00000e20 & r00000e05;\n" : String).toByteArray.data.toList
theorem checked3565 : bytes3565=statementBytes 3637 (op3565.map lower) ∧ bytes3565.length=48 := by core033_kernel_decide
def op3566 : List WordIR.Op := [.band 3616 3562]
def bytes3566 : Bytes := ("    let r00000e36: u32 = r00000e20 & r00000dea;\n" : String).toByteArray.data.toList
theorem checked3566 : bytes3566=statementBytes 3638 (op3566.map lower) ∧ bytes3566.length=48 := by core033_kernel_decide
def op3567 : List WordIR.Op := [.bxor 3637 3638]
def bytes3567 : Bytes := ("    let r00000e37: u32 = r00000e35 ^ r00000e36;\n" : String).toByteArray.data.toList
theorem checked3567 : bytes3567=statementBytes 3639 (op3567.map lower) ∧ bytes3567.length=48 := by core033_kernel_decide
def op3568 : List WordIR.Op := [.band 3589 3562]
def bytes3568 : Bytes := ("    let r00000e38: u32 = r00000e05 & r00000dea;\n" : String).toByteArray.data.toList
theorem checked3568 : bytes3568=statementBytes 3640 (op3568.map lower) ∧ bytes3568.length=48 := by core033_kernel_decide
def op3569 : List WordIR.Op := [.bxor 3639 3640]
def bytes3569 : Bytes := ("    let r00000e39: u32 = r00000e37 ^ r00000e38;\n" : String).toByteArray.data.toList
theorem checked3569 : bytes3569=statementBytes 3641 (op3569.map lower) ∧ bytes3569.length=48 := by core033_kernel_decide
def op3570 : List WordIR.Op := [.badd 3636 3641]
def bytes3570 : Bytes := ("    let r00000e3a: u32 = r00000e34.wrapping_add(r00000e39);\n" : String).toByteArray.data.toList
theorem checked3570 : bytes3570=statementBytes 3642 (op3570.map lower) ∧ bytes3570.length=60 := by core033_kernel_decide
def op3571 : List WordIR.Op := [.badd 3631 3642]
def bytes3571 : Bytes := ("    let r00000e3b: u32 = r00000e2f.wrapping_add(r00000e3a);\n" : String).toByteArray.data.toList
theorem checked3571 : bytes3571=statementBytes 3643 (op3571.map lower) ∧ bytes3571.length=60 := by core033_kernel_decide
def op3572 : List WordIR.Op := [.badd 3535 3631]
def bytes3572 : Bytes := ("    let r00000e3c: u32 = r00000dcf.wrapping_add(r00000e2f);\n" : String).toByteArray.data.toList
theorem checked3572 : bytes3572=statementBytes 3644 (op3572.map lower) ∧ bytes3572.length=60 := by core033_kernel_decide
def op3573 : List WordIR.Op := [.rotr 3644 6]
def bytes3573 : Bytes := ("    let r00000e3d: u32 = r00000e3c.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked3573 : bytes3573=statementBytes 3645 (op3573.map lower) ∧ bytes3573.length=65 := by core033_kernel_decide
def op3574 : List WordIR.Op := [.rotr 3644 11]
def bytes3574 : Bytes := ("    let r00000e3e: u32 = r00000e3c.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked3574 : bytes3574=statementBytes 3646 (op3574.map lower) ∧ bytes3574.length=65 := by core033_kernel_decide
def op3575 : List WordIR.Op := [.bxor 3645 3646]
def bytes3575 : Bytes := ("    let r00000e3f: u32 = r00000e3d ^ r00000e3e;\n" : String).toByteArray.data.toList
theorem checked3575 : bytes3575=statementBytes 3647 (op3575.map lower) ∧ bytes3575.length=48 := by core033_kernel_decide
def op3576 : List WordIR.Op := [.rotr 3644 25]
def bytes3576 : Bytes := ("    let r00000e40: u32 = r00000e3c.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked3576 : bytes3576=statementBytes 3648 (op3576.map lower) ∧ bytes3576.length=65 := by core033_kernel_decide
def op3577 : List WordIR.Op := [.bxor 3647 3648]
def bytes3577 : Bytes := ("    let r00000e41: u32 = r00000e3f ^ r00000e40;\n" : String).toByteArray.data.toList
theorem checked3577 : bytes3577=statementBytes 3649 (op3577.map lower) ∧ bytes3577.length=48 := by core033_kernel_decide
def op3578 : List WordIR.Op := [.badd 3563 3649]
def bytes3578 : Bytes := ("    let r00000e42: u32 = r00000deb.wrapping_add(r00000e41);\n" : String).toByteArray.data.toList
theorem checked3578 : bytes3578=statementBytes 3650 (op3578.map lower) ∧ bytes3578.length=60 := by core033_kernel_decide
def op3579 : List WordIR.Op := [.band 3644 3617]
def bytes3579 : Bytes := ("    let r00000e43: u32 = r00000e3c & r00000e21;\n" : String).toByteArray.data.toList
theorem checked3579 : bytes3579=statementBytes 3651 (op3579.map lower) ∧ bytes3579.length=48 := by core033_kernel_decide
def op3580 : List WordIR.Op := [.bnot 3644]
def bytes3580 : Bytes := ("    let r00000e44: u32 = !r00000e3c;\n" : String).toByteArray.data.toList
theorem checked3580 : bytes3580=statementBytes 3652 (op3580.map lower) ∧ bytes3580.length=37 := by core033_kernel_decide
def op3581 : List WordIR.Op := [.band 3652 3590]
def bytes3581 : Bytes := ("    let r00000e45: u32 = r00000e44 & r00000e06;\n" : String).toByteArray.data.toList
theorem checked3581 : bytes3581=statementBytes 3653 (op3581.map lower) ∧ bytes3581.length=48 := by core033_kernel_decide
def op3582 : List WordIR.Op := [.bxor 3651 3653]
def bytes3582 : Bytes := ("    let r00000e46: u32 = r00000e43 ^ r00000e45;\n" : String).toByteArray.data.toList
theorem checked3582 : bytes3582=statementBytes 3654 (op3582.map lower) ∧ bytes3582.length=48 := by core033_kernel_decide
def op3583 : List WordIR.Op := [.badd 3650 3654]
def bytes3583 : Bytes := ("    let r00000e47: u32 = r00000e42.wrapping_add(r00000e46);\n" : String).toByteArray.data.toList
theorem checked3583 : bytes3583=statementBytes 3655 (op3583.map lower) ∧ bytes3583.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3520,op3521,op3522,op3523,op3524,op3525,op3526,op3527,op3528,op3529,op3530,op3531,op3532,op3533,op3534,op3535,op3536,op3537,op3538,op3539,op3540,op3541,op3542,op3543,op3544,op3545,op3546,op3547,op3548,op3549,op3550,op3551,op3552,op3553,op3554,op3555,op3556,op3557,op3558,op3559,op3560,op3561,op3562,op3563,op3564,op3565,op3566,op3567,op3568,op3569,op3570,op3571,op3572,op3573,op3574,op3575,op3576,op3577,op3578,op3579,op3580,op3581,op3582,op3583]
def chunks : List Bytes := [bytes3520,bytes3521,bytes3522,bytes3523,bytes3524,bytes3525,bytes3526,bytes3527,bytes3528,bytes3529,bytes3530,bytes3531,bytes3532,bytes3533,bytes3534,bytes3535,bytes3536,bytes3537,bytes3538,bytes3539,bytes3540,bytes3541,bytes3542,bytes3543,bytes3544,bytes3545,bytes3546,bytes3547,bytes3548,bytes3549,bytes3550,bytes3551,bytes3552,bytes3553,bytes3554,bytes3555,bytes3556,bytes3557,bytes3558,bytes3559,bytes3560,bytes3561,bytes3562,bytes3563,bytes3564,bytes3565,bytes3566,bytes3567,bytes3568,bytes3569,bytes3570,bytes3571,bytes3572,bytes3573,bytes3574,bytes3575,bytes3576,bytes3577,bytes3578,bytes3579,bytes3580,bytes3581,bytes3582,bytes3583]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3592 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3520.1 (.cons _ _ _ _ _ checked3521.1 (.cons _ _ _ _ _ checked3522.1 (.cons _ _ _ _ _ checked3523.1 (.cons _ _ _ _ _ checked3524.1 (.cons _ _ _ _ _ checked3525.1 (.cons _ _ _ _ _ checked3526.1 (.cons _ _ _ _ _ checked3527.1 (.cons _ _ _ _ _ checked3528.1 (.cons _ _ _ _ _ checked3529.1 (.cons _ _ _ _ _ checked3530.1 (.cons _ _ _ _ _ checked3531.1 (.cons _ _ _ _ _ checked3532.1 (.cons _ _ _ _ _ checked3533.1 (.cons _ _ _ _ _ checked3534.1 (.cons _ _ _ _ _ checked3535.1 (.cons _ _ _ _ _ checked3536.1 (.cons _ _ _ _ _ checked3537.1 (.cons _ _ _ _ _ checked3538.1 (.cons _ _ _ _ _ checked3539.1 (.cons _ _ _ _ _ checked3540.1 (.cons _ _ _ _ _ checked3541.1 (.cons _ _ _ _ _ checked3542.1 (.cons _ _ _ _ _ checked3543.1 (.cons _ _ _ _ _ checked3544.1 (.cons _ _ _ _ _ checked3545.1 (.cons _ _ _ _ _ checked3546.1 (.cons _ _ _ _ _ checked3547.1 (.cons _ _ _ _ _ checked3548.1 (.cons _ _ _ _ _ checked3549.1 (.cons _ _ _ _ _ checked3550.1 (.cons _ _ _ _ _ checked3551.1 (.cons _ _ _ _ _ checked3552.1 (.cons _ _ _ _ _ checked3553.1 (.cons _ _ _ _ _ checked3554.1 (.cons _ _ _ _ _ checked3555.1 (.cons _ _ _ _ _ checked3556.1 (.cons _ _ _ _ _ checked3557.1 (.cons _ _ _ _ _ checked3558.1 (.cons _ _ _ _ _ checked3559.1 (.cons _ _ _ _ _ checked3560.1 (.cons _ _ _ _ _ checked3561.1 (.cons _ _ _ _ _ checked3562.1 (.cons _ _ _ _ _ checked3563.1 (.cons _ _ _ _ _ checked3564.1 (.cons _ _ _ _ _ checked3565.1 (.cons _ _ _ _ _ checked3566.1 (.cons _ _ _ _ _ checked3567.1 (.cons _ _ _ _ _ checked3568.1 (.cons _ _ _ _ _ checked3569.1 (.cons _ _ _ _ _ checked3570.1 (.cons _ _ _ _ _ checked3571.1 (.cons _ _ _ _ _ checked3572.1 (.cons _ _ _ _ _ checked3573.1 (.cons _ _ _ _ _ checked3574.1 (.cons _ _ _ _ _ checked3575.1 (.cons _ _ _ _ _ checked3576.1 (.cons _ _ _ _ _ checked3577.1 (.cons _ _ _ _ _ checked3578.1 (.cons _ _ _ _ _ checked3579.1 (.cons _ _ _ _ _ checked3580.1 (.cons _ _ _ _ _ checked3581.1 (.cons _ _ _ _ _ checked3582.1 (.cons _ _ _ _ _ checked3583.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3592 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3455 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3520.2,checked3521.2,checked3522.2,checked3523.2,checked3524.2,checked3525.2,checked3526.2,checked3527.2,checked3528.2,checked3529.2,checked3530.2,checked3531.2,checked3532.2,checked3533.2,checked3534.2,checked3535.2,checked3536.2,checked3537.2,checked3538.2,checked3539.2,checked3540.2,checked3541.2,checked3542.2,checked3543.2,checked3544.2,checked3545.2,checked3546.2,checked3547.2,checked3548.2,checked3549.2,checked3550.2,checked3551.2,checked3552.2,checked3553.2,checked3554.2,checked3555.2,checked3556.2,checked3557.2,checked3558.2,checked3559.2,checked3560.2,checked3561.2,checked3562.2,checked3563.2,checked3564.2,checked3565.2,checked3566.2,checked3567.2,checked3568.2,checked3569.2,checked3570.2,checked3571.2,checked3572.2,checked3573.2,checked3574.2,checked3575.2,checked3576.2,checked3577.2,checked3578.2,checked3579.2,checked3580.2,checked3581.2,checked3582.2,checked3583.2]
  decide
end ArtifactHashBlockGroup55
