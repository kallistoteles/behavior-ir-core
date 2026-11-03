import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup56
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3584 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3584 : Bytes := ("    let r00000e2b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3584 : bytes3584=statementBytes 3627 (op3584.map lower) ∧ bytes3584.length=41 := by core033_kernel_decide
def op3585 : List WordIR.Op := [.bxor 0 3627]
def bytes3585 : Bytes := ("    let r00000e2c: u32 = r00000000 ^ r00000e2b;\n" : String).toByteArray.data.toList
theorem checked3585 : bytes3585=statementBytes 3628 (op3585.map lower) ∧ bytes3585.length=48 := by core033_kernel_decide
def op3586 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3586 : Bytes := ("    let r00000e2d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3586 : bytes3586=statementBytes 3629 (op3586.map lower) ∧ bytes3586.length=41 := by core033_kernel_decide
def op3587 : List WordIR.Op := [.bnot 3629]
def bytes3587 : Bytes := ("    let r00000e2e: u32 = !r00000e2d;\n" : String).toByteArray.data.toList
theorem checked3587 : bytes3587=statementBytes 3630 (op3587.map lower) ∧ bytes3587.length=37 := by core033_kernel_decide
def op3588 : List WordIR.Op := [.badd 3628 3630]
def bytes3588 : Bytes := ("    let r00000e2f: u32 = r00000e2c.wrapping_add(r00000e2e);\n" : String).toByteArray.data.toList
theorem checked3588 : bytes3588=statementBytes 3631 (op3588.map lower) ∧ bytes3588.length=60 := by core033_kernel_decide
def op3589 : List WordIR.Op := [.bnot 3631]
def bytes3589 : Bytes := ("    let r00000e30: u32 = !r00000e2f;\n" : String).toByteArray.data.toList
theorem checked3589 : bytes3589=statementBytes 3632 (op3589.map lower) ∧ bytes3589.length=37 := by core033_kernel_decide
def op3590 : List WordIR.Op := [.band 3626 3632]
def bytes3590 : Bytes := ("    let r00000e31: u32 = r00000e2a & r00000e30;\n" : String).toByteArray.data.toList
theorem checked3590 : bytes3590=statementBytes 3633 (op3590.map lower) ∧ bytes3590.length=48 := by core033_kernel_decide
def op3591 : List WordIR.Op := [.bxor 3621 3633]
def bytes3591 : Bytes := ("    let r00000e32: u32 = r00000e25 ^ r00000e31;\n" : String).toByteArray.data.toList
theorem checked3591 : bytes3591=statementBytes 3634 (op3591.map lower) ∧ bytes3591.length=48 := by core033_kernel_decide
def op3592 : List WordIR.Op := [.shr 3634 31]
def bytes3592 : Bytes := ("    let r00000e33: u32 = r00000e32 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3592 : bytes3592=statementBytes 3635 (op3592.map lower) ∧ bytes3592.length=54 := by core033_kernel_decide
def op3593 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3593 : Bytes := ("    let r00000e34: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3593 : bytes3593=statementBytes 3636 (op3593.map lower) ∧ bytes3593.length=41 := by core033_kernel_decide
def op3594 : List WordIR.Op := [.bxor 3635 3636]
def bytes3594 : Bytes := ("    let r00000e35: u32 = r00000e33 ^ r00000e34;\n" : String).toByteArray.data.toList
theorem checked3594 : bytes3594=statementBytes 3637 (op3594.map lower) ∧ bytes3594.length=48 := by core033_kernel_decide
def op3595 : List WordIR.Op := [.bnot 3637]
def bytes3595 : Bytes := ("    let r00000e36: u32 = !r00000e35;\n" : String).toByteArray.data.toList
theorem checked3595 : bytes3595=statementBytes 3638 (op3595.map lower) ∧ bytes3595.length=37 := by core033_kernel_decide
def op3596 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3596 : Bytes := ("    let r00000e37: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3596 : bytes3596=statementBytes 3639 (op3596.map lower) ∧ bytes3596.length=41 := by core033_kernel_decide
def op3597 : List WordIR.Op := [.badd 3638 3639]
def bytes3597 : Bytes := ("    let r00000e38: u32 = r00000e36.wrapping_add(r00000e37);\n" : String).toByteArray.data.toList
theorem checked3597 : bytes3597=statementBytes 3640 (op3597.map lower) ∧ bytes3597.length=60 := by core033_kernel_decide
def op3598 : List WordIR.Op := [.bnot 3640]
def bytes3598 : Bytes := ("    let r00000e39: u32 = !r00000e38;\n" : String).toByteArray.data.toList
theorem checked3598 : bytes3598=statementBytes 3641 (op3598.map lower) ∧ bytes3598.length=37 := by core033_kernel_decide
def op3599 : List WordIR.Op := [.band 3641 887]
def bytes3599 : Bytes := ("    let r00000e3a: u32 = r00000e39 & r00000377;\n" : String).toByteArray.data.toList
theorem checked3599 : bytes3599=statementBytes 3642 (op3599.map lower) ∧ bytes3599.length=48 := by core033_kernel_decide
def op3600 : List WordIR.Op := [.bxor 3616 3642]
def bytes3600 : Bytes := ("    let r00000e3b: u32 = r00000e20 ^ r00000e3a;\n" : String).toByteArray.data.toList
theorem checked3600 : bytes3600=statementBytes 3643 (op3600.map lower) ∧ bytes3600.length=48 := by core033_kernel_decide
def op3601 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3601 : Bytes := ("    let r00000e3c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3601 : bytes3601=statementBytes 3644 (op3601.map lower) ∧ bytes3601.length=41 := by core033_kernel_decide
def op3602 : List WordIR.Op := [.bxor 0 3644]
def bytes3602 : Bytes := ("    let r00000e3d: u32 = r00000000 ^ r00000e3c;\n" : String).toByteArray.data.toList
theorem checked3602 : bytes3602=statementBytes 3645 (op3602.map lower) ∧ bytes3602.length=48 := by core033_kernel_decide
def op3603 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3603 : Bytes := ("    let r00000e3e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3603 : bytes3603=statementBytes 3646 (op3603.map lower) ∧ bytes3603.length=41 := by core033_kernel_decide
def op3604 : List WordIR.Op := [.bnot 3646]
def bytes3604 : Bytes := ("    let r00000e3f: u32 = !r00000e3e;\n" : String).toByteArray.data.toList
theorem checked3604 : bytes3604=statementBytes 3647 (op3604.map lower) ∧ bytes3604.length=37 := by core033_kernel_decide
def op3605 : List WordIR.Op := [.band 3645 3647]
def bytes3605 : Bytes := ("    let r00000e40: u32 = r00000e3d & r00000e3f;\n" : String).toByteArray.data.toList
theorem checked3605 : bytes3605=statementBytes 3648 (op3605.map lower) ∧ bytes3605.length=48 := by core033_kernel_decide
def op3606 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3606 : Bytes := ("    let r00000e41: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3606 : bytes3606=statementBytes 3649 (op3606.map lower) ∧ bytes3606.length=41 := by core033_kernel_decide
def op3607 : List WordIR.Op := [.bxor 0 3649]
def bytes3607 : Bytes := ("    let r00000e42: u32 = r00000000 ^ r00000e41;\n" : String).toByteArray.data.toList
theorem checked3607 : bytes3607=statementBytes 3650 (op3607.map lower) ∧ bytes3607.length=48 := by core033_kernel_decide
def op3608 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3608 : Bytes := ("    let r00000e43: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3608 : bytes3608=statementBytes 3651 (op3608.map lower) ∧ bytes3608.length=41 := by core033_kernel_decide
def op3609 : List WordIR.Op := [.bnot 3651]
def bytes3609 : Bytes := ("    let r00000e44: u32 = !r00000e43;\n" : String).toByteArray.data.toList
theorem checked3609 : bytes3609=statementBytes 3652 (op3609.map lower) ∧ bytes3609.length=37 := by core033_kernel_decide
def op3610 : List WordIR.Op := [.bxor 3650 3652]
def bytes3610 : Bytes := ("    let r00000e45: u32 = r00000e42 ^ r00000e44;\n" : String).toByteArray.data.toList
theorem checked3610 : bytes3610=statementBytes 3653 (op3610.map lower) ∧ bytes3610.length=48 := by core033_kernel_decide
def op3611 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3611 : Bytes := ("    let r00000e46: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3611 : bytes3611=statementBytes 3654 (op3611.map lower) ∧ bytes3611.length=41 := by core033_kernel_decide
def op3612 : List WordIR.Op := [.bxor 0 3654]
def bytes3612 : Bytes := ("    let r00000e47: u32 = r00000000 ^ r00000e46;\n" : String).toByteArray.data.toList
theorem checked3612 : bytes3612=statementBytes 3655 (op3612.map lower) ∧ bytes3612.length=48 := by core033_kernel_decide
def op3613 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3613 : Bytes := ("    let r00000e48: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3613 : bytes3613=statementBytes 3656 (op3613.map lower) ∧ bytes3613.length=41 := by core033_kernel_decide
def op3614 : List WordIR.Op := [.bnot 3656]
def bytes3614 : Bytes := ("    let r00000e49: u32 = !r00000e48;\n" : String).toByteArray.data.toList
theorem checked3614 : bytes3614=statementBytes 3657 (op3614.map lower) ∧ bytes3614.length=37 := by core033_kernel_decide
def op3615 : List WordIR.Op := [.badd 3655 3657]
def bytes3615 : Bytes := ("    let r00000e4a: u32 = r00000e47.wrapping_add(r00000e49);\n" : String).toByteArray.data.toList
theorem checked3615 : bytes3615=statementBytes 3658 (op3615.map lower) ∧ bytes3615.length=60 := by core033_kernel_decide
def op3616 : List WordIR.Op := [.bnot 3658]
def bytes3616 : Bytes := ("    let r00000e4b: u32 = !r00000e4a;\n" : String).toByteArray.data.toList
theorem checked3616 : bytes3616=statementBytes 3659 (op3616.map lower) ∧ bytes3616.length=37 := by core033_kernel_decide
def op3617 : List WordIR.Op := [.band 3653 3659]
def bytes3617 : Bytes := ("    let r00000e4c: u32 = r00000e45 & r00000e4b;\n" : String).toByteArray.data.toList
theorem checked3617 : bytes3617=statementBytes 3660 (op3617.map lower) ∧ bytes3617.length=48 := by core033_kernel_decide
def op3618 : List WordIR.Op := [.bxor 3648 3660]
def bytes3618 : Bytes := ("    let r00000e4d: u32 = r00000e40 ^ r00000e4c;\n" : String).toByteArray.data.toList
theorem checked3618 : bytes3618=statementBytes 3661 (op3618.map lower) ∧ bytes3618.length=48 := by core033_kernel_decide
def op3619 : List WordIR.Op := [.shr 3661 31]
def bytes3619 : Bytes := ("    let r00000e4e: u32 = r00000e4d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3619 : bytes3619=statementBytes 3662 (op3619.map lower) ∧ bytes3619.length=54 := by core033_kernel_decide
def op3620 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3620 : Bytes := ("    let r00000e4f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3620 : bytes3620=statementBytes 3663 (op3620.map lower) ∧ bytes3620.length=41 := by core033_kernel_decide
def op3621 : List WordIR.Op := [.bxor 3662 3663]
def bytes3621 : Bytes := ("    let r00000e50: u32 = r00000e4e ^ r00000e4f;\n" : String).toByteArray.data.toList
theorem checked3621 : bytes3621=statementBytes 3664 (op3621.map lower) ∧ bytes3621.length=48 := by core033_kernel_decide
def op3622 : List WordIR.Op := [.bnot 3664]
def bytes3622 : Bytes := ("    let r00000e51: u32 = !r00000e50;\n" : String).toByteArray.data.toList
theorem checked3622 : bytes3622=statementBytes 3665 (op3622.map lower) ∧ bytes3622.length=37 := by core033_kernel_decide
def op3623 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3623 : Bytes := ("    let r00000e52: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3623 : bytes3623=statementBytes 3666 (op3623.map lower) ∧ bytes3623.length=41 := by core033_kernel_decide
def op3624 : List WordIR.Op := [.badd 3665 3666]
def bytes3624 : Bytes := ("    let r00000e53: u32 = r00000e51.wrapping_add(r00000e52);\n" : String).toByteArray.data.toList
theorem checked3624 : bytes3624=statementBytes 3667 (op3624.map lower) ∧ bytes3624.length=60 := by core033_kernel_decide
def op3625 : List WordIR.Op := [.band 3667 1082]
def bytes3625 : Bytes := ("    let r00000e54: u32 = r00000e53 & r0000043a;\n" : String).toByteArray.data.toList
theorem checked3625 : bytes3625=statementBytes 3668 (op3625.map lower) ∧ bytes3625.length=48 := by core033_kernel_decide
def op3626 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3626 : Bytes := ("    let r00000e55: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3626 : bytes3626=statementBytes 3669 (op3626.map lower) ∧ bytes3626.length=41 := by core033_kernel_decide
def op3627 : List WordIR.Op := [.bxor 0 3669]
def bytes3627 : Bytes := ("    let r00000e56: u32 = r00000000 ^ r00000e55;\n" : String).toByteArray.data.toList
theorem checked3627 : bytes3627=statementBytes 3670 (op3627.map lower) ∧ bytes3627.length=48 := by core033_kernel_decide
def op3628 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3628 : Bytes := ("    let r00000e57: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3628 : bytes3628=statementBytes 3671 (op3628.map lower) ∧ bytes3628.length=41 := by core033_kernel_decide
def op3629 : List WordIR.Op := [.bnot 3671]
def bytes3629 : Bytes := ("    let r00000e58: u32 = !r00000e57;\n" : String).toByteArray.data.toList
theorem checked3629 : bytes3629=statementBytes 3672 (op3629.map lower) ∧ bytes3629.length=37 := by core033_kernel_decide
def op3630 : List WordIR.Op := [.band 3670 3672]
def bytes3630 : Bytes := ("    let r00000e59: u32 = r00000e56 & r00000e58;\n" : String).toByteArray.data.toList
theorem checked3630 : bytes3630=statementBytes 3673 (op3630.map lower) ∧ bytes3630.length=48 := by core033_kernel_decide
def op3631 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3631 : Bytes := ("    let r00000e5a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3631 : bytes3631=statementBytes 3674 (op3631.map lower) ∧ bytes3631.length=41 := by core033_kernel_decide
def op3632 : List WordIR.Op := [.bxor 0 3674]
def bytes3632 : Bytes := ("    let r00000e5b: u32 = r00000000 ^ r00000e5a;\n" : String).toByteArray.data.toList
theorem checked3632 : bytes3632=statementBytes 3675 (op3632.map lower) ∧ bytes3632.length=48 := by core033_kernel_decide
def op3633 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3633 : Bytes := ("    let r00000e5c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3633 : bytes3633=statementBytes 3676 (op3633.map lower) ∧ bytes3633.length=41 := by core033_kernel_decide
def op3634 : List WordIR.Op := [.bnot 3676]
def bytes3634 : Bytes := ("    let r00000e5d: u32 = !r00000e5c;\n" : String).toByteArray.data.toList
theorem checked3634 : bytes3634=statementBytes 3677 (op3634.map lower) ∧ bytes3634.length=37 := by core033_kernel_decide
def op3635 : List WordIR.Op := [.bxor 3675 3677]
def bytes3635 : Bytes := ("    let r00000e5e: u32 = r00000e5b ^ r00000e5d;\n" : String).toByteArray.data.toList
theorem checked3635 : bytes3635=statementBytes 3678 (op3635.map lower) ∧ bytes3635.length=48 := by core033_kernel_decide
def op3636 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3636 : Bytes := ("    let r00000e5f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3636 : bytes3636=statementBytes 3679 (op3636.map lower) ∧ bytes3636.length=41 := by core033_kernel_decide
def op3637 : List WordIR.Op := [.bxor 0 3679]
def bytes3637 : Bytes := ("    let r00000e60: u32 = r00000000 ^ r00000e5f;\n" : String).toByteArray.data.toList
theorem checked3637 : bytes3637=statementBytes 3680 (op3637.map lower) ∧ bytes3637.length=48 := by core033_kernel_decide
def op3638 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3638 : Bytes := ("    let r00000e61: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3638 : bytes3638=statementBytes 3681 (op3638.map lower) ∧ bytes3638.length=41 := by core033_kernel_decide
def op3639 : List WordIR.Op := [.bnot 3681]
def bytes3639 : Bytes := ("    let r00000e62: u32 = !r00000e61;\n" : String).toByteArray.data.toList
theorem checked3639 : bytes3639=statementBytes 3682 (op3639.map lower) ∧ bytes3639.length=37 := by core033_kernel_decide
def op3640 : List WordIR.Op := [.badd 3680 3682]
def bytes3640 : Bytes := ("    let r00000e63: u32 = r00000e60.wrapping_add(r00000e62);\n" : String).toByteArray.data.toList
theorem checked3640 : bytes3640=statementBytes 3683 (op3640.map lower) ∧ bytes3640.length=60 := by core033_kernel_decide
def op3641 : List WordIR.Op := [.bnot 3683]
def bytes3641 : Bytes := ("    let r00000e64: u32 = !r00000e63;\n" : String).toByteArray.data.toList
theorem checked3641 : bytes3641=statementBytes 3684 (op3641.map lower) ∧ bytes3641.length=37 := by core033_kernel_decide
def op3642 : List WordIR.Op := [.band 3678 3684]
def bytes3642 : Bytes := ("    let r00000e65: u32 = r00000e5e & r00000e64;\n" : String).toByteArray.data.toList
theorem checked3642 : bytes3642=statementBytes 3685 (op3642.map lower) ∧ bytes3642.length=48 := by core033_kernel_decide
def op3643 : List WordIR.Op := [.bxor 3673 3685]
def bytes3643 : Bytes := ("    let r00000e66: u32 = r00000e59 ^ r00000e65;\n" : String).toByteArray.data.toList
theorem checked3643 : bytes3643=statementBytes 3686 (op3643.map lower) ∧ bytes3643.length=48 := by core033_kernel_decide
def op3644 : List WordIR.Op := [.shr 3686 31]
def bytes3644 : Bytes := ("    let r00000e67: u32 = r00000e66 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3644 : bytes3644=statementBytes 3687 (op3644.map lower) ∧ bytes3644.length=54 := by core033_kernel_decide
def op3645 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3645 : Bytes := ("    let r00000e68: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3645 : bytes3645=statementBytes 3688 (op3645.map lower) ∧ bytes3645.length=41 := by core033_kernel_decide
def op3646 : List WordIR.Op := [.bxor 3687 3688]
def bytes3646 : Bytes := ("    let r00000e69: u32 = r00000e67 ^ r00000e68;\n" : String).toByteArray.data.toList
theorem checked3646 : bytes3646=statementBytes 3689 (op3646.map lower) ∧ bytes3646.length=48 := by core033_kernel_decide
def op3647 : List WordIR.Op := [.bnot 3689]
def bytes3647 : Bytes := ("    let r00000e6a: u32 = !r00000e69;\n" : String).toByteArray.data.toList
theorem checked3647 : bytes3647=statementBytes 3690 (op3647.map lower) ∧ bytes3647.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3584,op3585,op3586,op3587,op3588,op3589,op3590,op3591,op3592,op3593,op3594,op3595,op3596,op3597,op3598,op3599,op3600,op3601,op3602,op3603,op3604,op3605,op3606,op3607,op3608,op3609,op3610,op3611,op3612,op3613,op3614,op3615,op3616,op3617,op3618,op3619,op3620,op3621,op3622,op3623,op3624,op3625,op3626,op3627,op3628,op3629,op3630,op3631,op3632,op3633,op3634,op3635,op3636,op3637,op3638,op3639,op3640,op3641,op3642,op3643,op3644,op3645,op3646,op3647]
def chunks : List Bytes := [bytes3584,bytes3585,bytes3586,bytes3587,bytes3588,bytes3589,bytes3590,bytes3591,bytes3592,bytes3593,bytes3594,bytes3595,bytes3596,bytes3597,bytes3598,bytes3599,bytes3600,bytes3601,bytes3602,bytes3603,bytes3604,bytes3605,bytes3606,bytes3607,bytes3608,bytes3609,bytes3610,bytes3611,bytes3612,bytes3613,bytes3614,bytes3615,bytes3616,bytes3617,bytes3618,bytes3619,bytes3620,bytes3621,bytes3622,bytes3623,bytes3624,bytes3625,bytes3626,bytes3627,bytes3628,bytes3629,bytes3630,bytes3631,bytes3632,bytes3633,bytes3634,bytes3635,bytes3636,bytes3637,bytes3638,bytes3639,bytes3640,bytes3641,bytes3642,bytes3643,bytes3644,bytes3645,bytes3646,bytes3647]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3627 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3584.1 (.cons _ _ _ _ _ checked3585.1 (.cons _ _ _ _ _ checked3586.1 (.cons _ _ _ _ _ checked3587.1 (.cons _ _ _ _ _ checked3588.1 (.cons _ _ _ _ _ checked3589.1 (.cons _ _ _ _ _ checked3590.1 (.cons _ _ _ _ _ checked3591.1 (.cons _ _ _ _ _ checked3592.1 (.cons _ _ _ _ _ checked3593.1 (.cons _ _ _ _ _ checked3594.1 (.cons _ _ _ _ _ checked3595.1 (.cons _ _ _ _ _ checked3596.1 (.cons _ _ _ _ _ checked3597.1 (.cons _ _ _ _ _ checked3598.1 (.cons _ _ _ _ _ checked3599.1 (.cons _ _ _ _ _ checked3600.1 (.cons _ _ _ _ _ checked3601.1 (.cons _ _ _ _ _ checked3602.1 (.cons _ _ _ _ _ checked3603.1 (.cons _ _ _ _ _ checked3604.1 (.cons _ _ _ _ _ checked3605.1 (.cons _ _ _ _ _ checked3606.1 (.cons _ _ _ _ _ checked3607.1 (.cons _ _ _ _ _ checked3608.1 (.cons _ _ _ _ _ checked3609.1 (.cons _ _ _ _ _ checked3610.1 (.cons _ _ _ _ _ checked3611.1 (.cons _ _ _ _ _ checked3612.1 (.cons _ _ _ _ _ checked3613.1 (.cons _ _ _ _ _ checked3614.1 (.cons _ _ _ _ _ checked3615.1 (.cons _ _ _ _ _ checked3616.1 (.cons _ _ _ _ _ checked3617.1 (.cons _ _ _ _ _ checked3618.1 (.cons _ _ _ _ _ checked3619.1 (.cons _ _ _ _ _ checked3620.1 (.cons _ _ _ _ _ checked3621.1 (.cons _ _ _ _ _ checked3622.1 (.cons _ _ _ _ _ checked3623.1 (.cons _ _ _ _ _ checked3624.1 (.cons _ _ _ _ _ checked3625.1 (.cons _ _ _ _ _ checked3626.1 (.cons _ _ _ _ _ checked3627.1 (.cons _ _ _ _ _ checked3628.1 (.cons _ _ _ _ _ checked3629.1 (.cons _ _ _ _ _ checked3630.1 (.cons _ _ _ _ _ checked3631.1 (.cons _ _ _ _ _ checked3632.1 (.cons _ _ _ _ _ checked3633.1 (.cons _ _ _ _ _ checked3634.1 (.cons _ _ _ _ _ checked3635.1 (.cons _ _ _ _ _ checked3636.1 (.cons _ _ _ _ _ checked3637.1 (.cons _ _ _ _ _ checked3638.1 (.cons _ _ _ _ _ checked3639.1 (.cons _ _ _ _ _ checked3640.1 (.cons _ _ _ _ _ checked3641.1 (.cons _ _ _ _ _ checked3642.1 (.cons _ _ _ _ _ checked3643.1 (.cons _ _ _ _ _ checked3644.1 (.cons _ _ _ _ _ checked3645.1 (.cons _ _ _ _ _ checked3646.1 (.cons _ _ _ _ _ checked3647.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3627 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3584.2,checked3585.2,checked3586.2,checked3587.2,checked3588.2,checked3589.2,checked3590.2,checked3591.2,checked3592.2,checked3593.2,checked3594.2,checked3595.2,checked3596.2,checked3597.2,checked3598.2,checked3599.2,checked3600.2,checked3601.2,checked3602.2,checked3603.2,checked3604.2,checked3605.2,checked3606.2,checked3607.2,checked3608.2,checked3609.2,checked3610.2,checked3611.2,checked3612.2,checked3613.2,checked3614.2,checked3615.2,checked3616.2,checked3617.2,checked3618.2,checked3619.2,checked3620.2,checked3621.2,checked3622.2,checked3623.2,checked3624.2,checked3625.2,checked3626.2,checked3627.2,checked3628.2,checked3629.2,checked3630.2,checked3631.2,checked3632.2,checked3633.2,checked3634.2,checked3635.2,checked3636.2,checked3637.2,checked3638.2,checked3639.2,checked3640.2,checked3641.2,checked3642.2,checked3643.2,checked3644.2,checked3645.2,checked3646.2,checked3647.2]
  decide
end ArtifactFrameHashControllerGroup56
