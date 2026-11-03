import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup55
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3520 : List WordIR.Op := [.shr 3637 31]
def bytes3520 : Bytes := ("    let r00000e36: u32 = r00000e35 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3520 : bytes3520=statementBytes 3638 (op3520.map lower) ∧ bytes3520.length=54 := by core033_kernel_decide
def op3521 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3521 : Bytes := ("    let r00000e37: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3521 : bytes3521=statementBytes 3639 (op3521.map lower) ∧ bytes3521.length=41 := by core033_kernel_decide
def op3522 : List WordIR.Op := [.bxor 3638 3639]
def bytes3522 : Bytes := ("    let r00000e38: u32 = r00000e36 ^ r00000e37;\n" : String).toByteArray.data.toList
theorem checked3522 : bytes3522=statementBytes 3640 (op3522.map lower) ∧ bytes3522.length=48 := by core033_kernel_decide
def op3523 : List WordIR.Op := [.bnot 3640]
def bytes3523 : Bytes := ("    let r00000e39: u32 = !r00000e38;\n" : String).toByteArray.data.toList
theorem checked3523 : bytes3523=statementBytes 3641 (op3523.map lower) ∧ bytes3523.length=37 := by core033_kernel_decide
def op3524 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3524 : Bytes := ("    let r00000e3a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3524 : bytes3524=statementBytes 3642 (op3524.map lower) ∧ bytes3524.length=41 := by core033_kernel_decide
def op3525 : List WordIR.Op := [.badd 3641 3642]
def bytes3525 : Bytes := ("    let r00000e3b: u32 = r00000e39.wrapping_add(r00000e3a);\n" : String).toByteArray.data.toList
theorem checked3525 : bytes3525=statementBytes 3643 (op3525.map lower) ∧ bytes3525.length=60 := by core033_kernel_decide
def op3526 : List WordIR.Op := [.bnot 3643]
def bytes3526 : Bytes := ("    let r00000e3c: u32 = !r00000e3b;\n" : String).toByteArray.data.toList
theorem checked3526 : bytes3526=statementBytes 3644 (op3526.map lower) ∧ bytes3526.length=37 := by core033_kernel_decide
def op3527 : List WordIR.Op := [.band 3644 2547]
def bytes3527 : Bytes := ("    let r00000e3d: u32 = r00000e3c & r000009f3;\n" : String).toByteArray.data.toList
theorem checked3527 : bytes3527=statementBytes 3645 (op3527.map lower) ∧ bytes3527.length=48 := by core033_kernel_decide
def op3528 : List WordIR.Op := [.bxor 3619 3645]
def bytes3528 : Bytes := ("    let r00000e3e: u32 = r00000e23 ^ r00000e3d;\n" : String).toByteArray.data.toList
theorem checked3528 : bytes3528=statementBytes 3646 (op3528.map lower) ∧ bytes3528.length=48 := by core033_kernel_decide
def op3529 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3529 : Bytes := ("    let r00000e3f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3529 : bytes3529=statementBytes 3647 (op3529.map lower) ∧ bytes3529.length=41 := by core033_kernel_decide
def op3530 : List WordIR.Op := [.bxor 1299 3647]
def bytes3530 : Bytes := ("    let r00000e40: u32 = r00000513 ^ r00000e3f;\n" : String).toByteArray.data.toList
theorem checked3530 : bytes3530=statementBytes 3648 (op3530.map lower) ∧ bytes3530.length=48 := by core033_kernel_decide
def op3531 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3531 : Bytes := ("    let r00000e41: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3531 : bytes3531=statementBytes 3649 (op3531.map lower) ∧ bytes3531.length=41 := by core033_kernel_decide
def op3532 : List WordIR.Op := [.bnot 3649]
def bytes3532 : Bytes := ("    let r00000e42: u32 = !r00000e41;\n" : String).toByteArray.data.toList
theorem checked3532 : bytes3532=statementBytes 3650 (op3532.map lower) ∧ bytes3532.length=37 := by core033_kernel_decide
def op3533 : List WordIR.Op := [.band 3648 3650]
def bytes3533 : Bytes := ("    let r00000e43: u32 = r00000e40 & r00000e42;\n" : String).toByteArray.data.toList
theorem checked3533 : bytes3533=statementBytes 3651 (op3533.map lower) ∧ bytes3533.length=48 := by core033_kernel_decide
def op3534 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3534 : Bytes := ("    let r00000e44: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3534 : bytes3534=statementBytes 3652 (op3534.map lower) ∧ bytes3534.length=41 := by core033_kernel_decide
def op3535 : List WordIR.Op := [.bxor 1299 3652]
def bytes3535 : Bytes := ("    let r00000e45: u32 = r00000513 ^ r00000e44;\n" : String).toByteArray.data.toList
theorem checked3535 : bytes3535=statementBytes 3653 (op3535.map lower) ∧ bytes3535.length=48 := by core033_kernel_decide
def op3536 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3536 : Bytes := ("    let r00000e46: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3536 : bytes3536=statementBytes 3654 (op3536.map lower) ∧ bytes3536.length=41 := by core033_kernel_decide
def op3537 : List WordIR.Op := [.bnot 3654]
def bytes3537 : Bytes := ("    let r00000e47: u32 = !r00000e46;\n" : String).toByteArray.data.toList
theorem checked3537 : bytes3537=statementBytes 3655 (op3537.map lower) ∧ bytes3537.length=37 := by core033_kernel_decide
def op3538 : List WordIR.Op := [.bxor 3653 3655]
def bytes3538 : Bytes := ("    let r00000e48: u32 = r00000e45 ^ r00000e47;\n" : String).toByteArray.data.toList
theorem checked3538 : bytes3538=statementBytes 3656 (op3538.map lower) ∧ bytes3538.length=48 := by core033_kernel_decide
def op3539 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3539 : Bytes := ("    let r00000e49: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3539 : bytes3539=statementBytes 3657 (op3539.map lower) ∧ bytes3539.length=41 := by core033_kernel_decide
def op3540 : List WordIR.Op := [.bxor 1299 3657]
def bytes3540 : Bytes := ("    let r00000e4a: u32 = r00000513 ^ r00000e49;\n" : String).toByteArray.data.toList
theorem checked3540 : bytes3540=statementBytes 3658 (op3540.map lower) ∧ bytes3540.length=48 := by core033_kernel_decide
def op3541 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3541 : Bytes := ("    let r00000e4b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3541 : bytes3541=statementBytes 3659 (op3541.map lower) ∧ bytes3541.length=41 := by core033_kernel_decide
def op3542 : List WordIR.Op := [.bnot 3659]
def bytes3542 : Bytes := ("    let r00000e4c: u32 = !r00000e4b;\n" : String).toByteArray.data.toList
theorem checked3542 : bytes3542=statementBytes 3660 (op3542.map lower) ∧ bytes3542.length=37 := by core033_kernel_decide
def op3543 : List WordIR.Op := [.badd 3658 3660]
def bytes3543 : Bytes := ("    let r00000e4d: u32 = r00000e4a.wrapping_add(r00000e4c);\n" : String).toByteArray.data.toList
theorem checked3543 : bytes3543=statementBytes 3661 (op3543.map lower) ∧ bytes3543.length=60 := by core033_kernel_decide
def op3544 : List WordIR.Op := [.bnot 3661]
def bytes3544 : Bytes := ("    let r00000e4e: u32 = !r00000e4d;\n" : String).toByteArray.data.toList
theorem checked3544 : bytes3544=statementBytes 3662 (op3544.map lower) ∧ bytes3544.length=37 := by core033_kernel_decide
def op3545 : List WordIR.Op := [.band 3656 3662]
def bytes3545 : Bytes := ("    let r00000e4f: u32 = r00000e48 & r00000e4e;\n" : String).toByteArray.data.toList
theorem checked3545 : bytes3545=statementBytes 3663 (op3545.map lower) ∧ bytes3545.length=48 := by core033_kernel_decide
def op3546 : List WordIR.Op := [.bxor 3651 3663]
def bytes3546 : Bytes := ("    let r00000e50: u32 = r00000e43 ^ r00000e4f;\n" : String).toByteArray.data.toList
theorem checked3546 : bytes3546=statementBytes 3664 (op3546.map lower) ∧ bytes3546.length=48 := by core033_kernel_decide
def op3547 : List WordIR.Op := [.shr 3664 31]
def bytes3547 : Bytes := ("    let r00000e51: u32 = r00000e50 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3547 : bytes3547=statementBytes 3665 (op3547.map lower) ∧ bytes3547.length=54 := by core033_kernel_decide
def op3548 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3548 : Bytes := ("    let r00000e52: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3548 : bytes3548=statementBytes 3666 (op3548.map lower) ∧ bytes3548.length=41 := by core033_kernel_decide
def op3549 : List WordIR.Op := [.bxor 3665 3666]
def bytes3549 : Bytes := ("    let r00000e53: u32 = r00000e51 ^ r00000e52;\n" : String).toByteArray.data.toList
theorem checked3549 : bytes3549=statementBytes 3667 (op3549.map lower) ∧ bytes3549.length=48 := by core033_kernel_decide
def op3550 : List WordIR.Op := [.bnot 3667]
def bytes3550 : Bytes := ("    let r00000e54: u32 = !r00000e53;\n" : String).toByteArray.data.toList
theorem checked3550 : bytes3550=statementBytes 3668 (op3550.map lower) ∧ bytes3550.length=37 := by core033_kernel_decide
def op3551 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3551 : Bytes := ("    let r00000e55: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3551 : bytes3551=statementBytes 3669 (op3551.map lower) ∧ bytes3551.length=41 := by core033_kernel_decide
def op3552 : List WordIR.Op := [.badd 3668 3669]
def bytes3552 : Bytes := ("    let r00000e56: u32 = r00000e54.wrapping_add(r00000e55);\n" : String).toByteArray.data.toList
theorem checked3552 : bytes3552=statementBytes 3670 (op3552.map lower) ∧ bytes3552.length=60 := by core033_kernel_decide
def op3553 : List WordIR.Op := [.band 3670 2702]
def bytes3553 : Bytes := ("    let r00000e57: u32 = r00000e56 & r00000a8e;\n" : String).toByteArray.data.toList
theorem checked3553 : bytes3553=statementBytes 3671 (op3553.map lower) ∧ bytes3553.length=48 := by core033_kernel_decide
def op3554 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3554 : Bytes := ("    let r00000e58: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3554 : bytes3554=statementBytes 3672 (op3554.map lower) ∧ bytes3554.length=41 := by core033_kernel_decide
def op3555 : List WordIR.Op := [.bxor 1299 3672]
def bytes3555 : Bytes := ("    let r00000e59: u32 = r00000513 ^ r00000e58;\n" : String).toByteArray.data.toList
theorem checked3555 : bytes3555=statementBytes 3673 (op3555.map lower) ∧ bytes3555.length=48 := by core033_kernel_decide
def op3556 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3556 : Bytes := ("    let r00000e5a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3556 : bytes3556=statementBytes 3674 (op3556.map lower) ∧ bytes3556.length=41 := by core033_kernel_decide
def op3557 : List WordIR.Op := [.bnot 3674]
def bytes3557 : Bytes := ("    let r00000e5b: u32 = !r00000e5a;\n" : String).toByteArray.data.toList
theorem checked3557 : bytes3557=statementBytes 3675 (op3557.map lower) ∧ bytes3557.length=37 := by core033_kernel_decide
def op3558 : List WordIR.Op := [.band 3673 3675]
def bytes3558 : Bytes := ("    let r00000e5c: u32 = r00000e59 & r00000e5b;\n" : String).toByteArray.data.toList
theorem checked3558 : bytes3558=statementBytes 3676 (op3558.map lower) ∧ bytes3558.length=48 := by core033_kernel_decide
def op3559 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3559 : Bytes := ("    let r00000e5d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3559 : bytes3559=statementBytes 3677 (op3559.map lower) ∧ bytes3559.length=41 := by core033_kernel_decide
def op3560 : List WordIR.Op := [.bxor 1299 3677]
def bytes3560 : Bytes := ("    let r00000e5e: u32 = r00000513 ^ r00000e5d;\n" : String).toByteArray.data.toList
theorem checked3560 : bytes3560=statementBytes 3678 (op3560.map lower) ∧ bytes3560.length=48 := by core033_kernel_decide
def op3561 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3561 : Bytes := ("    let r00000e5f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3561 : bytes3561=statementBytes 3679 (op3561.map lower) ∧ bytes3561.length=41 := by core033_kernel_decide
def op3562 : List WordIR.Op := [.bnot 3679]
def bytes3562 : Bytes := ("    let r00000e60: u32 = !r00000e5f;\n" : String).toByteArray.data.toList
theorem checked3562 : bytes3562=statementBytes 3680 (op3562.map lower) ∧ bytes3562.length=37 := by core033_kernel_decide
def op3563 : List WordIR.Op := [.bxor 3678 3680]
def bytes3563 : Bytes := ("    let r00000e61: u32 = r00000e5e ^ r00000e60;\n" : String).toByteArray.data.toList
theorem checked3563 : bytes3563=statementBytes 3681 (op3563.map lower) ∧ bytes3563.length=48 := by core033_kernel_decide
def op3564 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3564 : Bytes := ("    let r00000e62: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3564 : bytes3564=statementBytes 3682 (op3564.map lower) ∧ bytes3564.length=41 := by core033_kernel_decide
def op3565 : List WordIR.Op := [.bxor 1299 3682]
def bytes3565 : Bytes := ("    let r00000e63: u32 = r00000513 ^ r00000e62;\n" : String).toByteArray.data.toList
theorem checked3565 : bytes3565=statementBytes 3683 (op3565.map lower) ∧ bytes3565.length=48 := by core033_kernel_decide
def op3566 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3566 : Bytes := ("    let r00000e64: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3566 : bytes3566=statementBytes 3684 (op3566.map lower) ∧ bytes3566.length=41 := by core033_kernel_decide
def op3567 : List WordIR.Op := [.bnot 3684]
def bytes3567 : Bytes := ("    let r00000e65: u32 = !r00000e64;\n" : String).toByteArray.data.toList
theorem checked3567 : bytes3567=statementBytes 3685 (op3567.map lower) ∧ bytes3567.length=37 := by core033_kernel_decide
def op3568 : List WordIR.Op := [.badd 3683 3685]
def bytes3568 : Bytes := ("    let r00000e66: u32 = r00000e63.wrapping_add(r00000e65);\n" : String).toByteArray.data.toList
theorem checked3568 : bytes3568=statementBytes 3686 (op3568.map lower) ∧ bytes3568.length=60 := by core033_kernel_decide
def op3569 : List WordIR.Op := [.bnot 3686]
def bytes3569 : Bytes := ("    let r00000e67: u32 = !r00000e66;\n" : String).toByteArray.data.toList
theorem checked3569 : bytes3569=statementBytes 3687 (op3569.map lower) ∧ bytes3569.length=37 := by core033_kernel_decide
def op3570 : List WordIR.Op := [.band 3681 3687]
def bytes3570 : Bytes := ("    let r00000e68: u32 = r00000e61 & r00000e67;\n" : String).toByteArray.data.toList
theorem checked3570 : bytes3570=statementBytes 3688 (op3570.map lower) ∧ bytes3570.length=48 := by core033_kernel_decide
def op3571 : List WordIR.Op := [.bxor 3676 3688]
def bytes3571 : Bytes := ("    let r00000e69: u32 = r00000e5c ^ r00000e68;\n" : String).toByteArray.data.toList
theorem checked3571 : bytes3571=statementBytes 3689 (op3571.map lower) ∧ bytes3571.length=48 := by core033_kernel_decide
def op3572 : List WordIR.Op := [.shr 3689 31]
def bytes3572 : Bytes := ("    let r00000e6a: u32 = r00000e69 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3572 : bytes3572=statementBytes 3690 (op3572.map lower) ∧ bytes3572.length=54 := by core033_kernel_decide
def op3573 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3573 : Bytes := ("    let r00000e6b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3573 : bytes3573=statementBytes 3691 (op3573.map lower) ∧ bytes3573.length=41 := by core033_kernel_decide
def op3574 : List WordIR.Op := [.bxor 3690 3691]
def bytes3574 : Bytes := ("    let r00000e6c: u32 = r00000e6a ^ r00000e6b;\n" : String).toByteArray.data.toList
theorem checked3574 : bytes3574=statementBytes 3692 (op3574.map lower) ∧ bytes3574.length=48 := by core033_kernel_decide
def op3575 : List WordIR.Op := [.bnot 3692]
def bytes3575 : Bytes := ("    let r00000e6d: u32 = !r00000e6c;\n" : String).toByteArray.data.toList
theorem checked3575 : bytes3575=statementBytes 3693 (op3575.map lower) ∧ bytes3575.length=37 := by core033_kernel_decide
def op3576 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3576 : Bytes := ("    let r00000e6e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3576 : bytes3576=statementBytes 3694 (op3576.map lower) ∧ bytes3576.length=41 := by core033_kernel_decide
def op3577 : List WordIR.Op := [.badd 3693 3694]
def bytes3577 : Bytes := ("    let r00000e6f: u32 = r00000e6d.wrapping_add(r00000e6e);\n" : String).toByteArray.data.toList
theorem checked3577 : bytes3577=statementBytes 3695 (op3577.map lower) ∧ bytes3577.length=60 := by core033_kernel_decide
def op3578 : List WordIR.Op := [.bnot 3695]
def bytes3578 : Bytes := ("    let r00000e70: u32 = !r00000e6f;\n" : String).toByteArray.data.toList
theorem checked3578 : bytes3578=statementBytes 3696 (op3578.map lower) ∧ bytes3578.length=37 := by core033_kernel_decide
def op3579 : List WordIR.Op := [.band 3696 2548]
def bytes3579 : Bytes := ("    let r00000e71: u32 = r00000e70 & r000009f4;\n" : String).toByteArray.data.toList
theorem checked3579 : bytes3579=statementBytes 3697 (op3579.map lower) ∧ bytes3579.length=48 := by core033_kernel_decide
def op3580 : List WordIR.Op := [.bxor 3671 3697]
def bytes3580 : Bytes := ("    let r00000e72: u32 = r00000e57 ^ r00000e71;\n" : String).toByteArray.data.toList
theorem checked3580 : bytes3580=statementBytes 3698 (op3580.map lower) ∧ bytes3580.length=48 := by core033_kernel_decide
def op3581 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3581 : Bytes := ("    let r00000e73: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3581 : bytes3581=statementBytes 3699 (op3581.map lower) ∧ bytes3581.length=41 := by core033_kernel_decide
def op3582 : List WordIR.Op := [.bxor 1299 3699]
def bytes3582 : Bytes := ("    let r00000e74: u32 = r00000513 ^ r00000e73;\n" : String).toByteArray.data.toList
theorem checked3582 : bytes3582=statementBytes 3700 (op3582.map lower) ∧ bytes3582.length=48 := by core033_kernel_decide
def op3583 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3583 : Bytes := ("    let r00000e75: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3583 : bytes3583=statementBytes 3701 (op3583.map lower) ∧ bytes3583.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3520,op3521,op3522,op3523,op3524,op3525,op3526,op3527,op3528,op3529,op3530,op3531,op3532,op3533,op3534,op3535,op3536,op3537,op3538,op3539,op3540,op3541,op3542,op3543,op3544,op3545,op3546,op3547,op3548,op3549,op3550,op3551,op3552,op3553,op3554,op3555,op3556,op3557,op3558,op3559,op3560,op3561,op3562,op3563,op3564,op3565,op3566,op3567,op3568,op3569,op3570,op3571,op3572,op3573,op3574,op3575,op3576,op3577,op3578,op3579,op3580,op3581,op3582,op3583]
def chunks : List Bytes := [bytes3520,bytes3521,bytes3522,bytes3523,bytes3524,bytes3525,bytes3526,bytes3527,bytes3528,bytes3529,bytes3530,bytes3531,bytes3532,bytes3533,bytes3534,bytes3535,bytes3536,bytes3537,bytes3538,bytes3539,bytes3540,bytes3541,bytes3542,bytes3543,bytes3544,bytes3545,bytes3546,bytes3547,bytes3548,bytes3549,bytes3550,bytes3551,bytes3552,bytes3553,bytes3554,bytes3555,bytes3556,bytes3557,bytes3558,bytes3559,bytes3560,bytes3561,bytes3562,bytes3563,bytes3564,bytes3565,bytes3566,bytes3567,bytes3568,bytes3569,bytes3570,bytes3571,bytes3572,bytes3573,bytes3574,bytes3575,bytes3576,bytes3577,bytes3578,bytes3579,bytes3580,bytes3581,bytes3582,bytes3583]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3638 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3520.1 (.cons _ _ _ _ _ checked3521.1 (.cons _ _ _ _ _ checked3522.1 (.cons _ _ _ _ _ checked3523.1 (.cons _ _ _ _ _ checked3524.1 (.cons _ _ _ _ _ checked3525.1 (.cons _ _ _ _ _ checked3526.1 (.cons _ _ _ _ _ checked3527.1 (.cons _ _ _ _ _ checked3528.1 (.cons _ _ _ _ _ checked3529.1 (.cons _ _ _ _ _ checked3530.1 (.cons _ _ _ _ _ checked3531.1 (.cons _ _ _ _ _ checked3532.1 (.cons _ _ _ _ _ checked3533.1 (.cons _ _ _ _ _ checked3534.1 (.cons _ _ _ _ _ checked3535.1 (.cons _ _ _ _ _ checked3536.1 (.cons _ _ _ _ _ checked3537.1 (.cons _ _ _ _ _ checked3538.1 (.cons _ _ _ _ _ checked3539.1 (.cons _ _ _ _ _ checked3540.1 (.cons _ _ _ _ _ checked3541.1 (.cons _ _ _ _ _ checked3542.1 (.cons _ _ _ _ _ checked3543.1 (.cons _ _ _ _ _ checked3544.1 (.cons _ _ _ _ _ checked3545.1 (.cons _ _ _ _ _ checked3546.1 (.cons _ _ _ _ _ checked3547.1 (.cons _ _ _ _ _ checked3548.1 (.cons _ _ _ _ _ checked3549.1 (.cons _ _ _ _ _ checked3550.1 (.cons _ _ _ _ _ checked3551.1 (.cons _ _ _ _ _ checked3552.1 (.cons _ _ _ _ _ checked3553.1 (.cons _ _ _ _ _ checked3554.1 (.cons _ _ _ _ _ checked3555.1 (.cons _ _ _ _ _ checked3556.1 (.cons _ _ _ _ _ checked3557.1 (.cons _ _ _ _ _ checked3558.1 (.cons _ _ _ _ _ checked3559.1 (.cons _ _ _ _ _ checked3560.1 (.cons _ _ _ _ _ checked3561.1 (.cons _ _ _ _ _ checked3562.1 (.cons _ _ _ _ _ checked3563.1 (.cons _ _ _ _ _ checked3564.1 (.cons _ _ _ _ _ checked3565.1 (.cons _ _ _ _ _ checked3566.1 (.cons _ _ _ _ _ checked3567.1 (.cons _ _ _ _ _ checked3568.1 (.cons _ _ _ _ _ checked3569.1 (.cons _ _ _ _ _ checked3570.1 (.cons _ _ _ _ _ checked3571.1 (.cons _ _ _ _ _ checked3572.1 (.cons _ _ _ _ _ checked3573.1 (.cons _ _ _ _ _ checked3574.1 (.cons _ _ _ _ _ checked3575.1 (.cons _ _ _ _ _ checked3576.1 (.cons _ _ _ _ _ checked3577.1 (.cons _ _ _ _ _ checked3578.1 (.cons _ _ _ _ _ checked3579.1 (.cons _ _ _ _ _ checked3580.1 (.cons _ _ _ _ _ checked3581.1 (.cons _ _ _ _ _ checked3582.1 (.cons _ _ _ _ _ checked3583.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3638 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3520.2,checked3521.2,checked3522.2,checked3523.2,checked3524.2,checked3525.2,checked3526.2,checked3527.2,checked3528.2,checked3529.2,checked3530.2,checked3531.2,checked3532.2,checked3533.2,checked3534.2,checked3535.2,checked3536.2,checked3537.2,checked3538.2,checked3539.2,checked3540.2,checked3541.2,checked3542.2,checked3543.2,checked3544.2,checked3545.2,checked3546.2,checked3547.2,checked3548.2,checked3549.2,checked3550.2,checked3551.2,checked3552.2,checked3553.2,checked3554.2,checked3555.2,checked3556.2,checked3557.2,checked3558.2,checked3559.2,checked3560.2,checked3561.2,checked3562.2,checked3563.2,checked3564.2,checked3565.2,checked3566.2,checked3567.2,checked3568.2,checked3569.2,checked3570.2,checked3571.2,checked3572.2,checked3573.2,checked3574.2,checked3575.2,checked3576.2,checked3577.2,checked3578.2,checked3579.2,checked3580.2,checked3581.2,checked3582.2,checked3583.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup55
