import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup56
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3584 : List WordIR.Op := [.bnot 3701]
def bytes3584 : Bytes := ("    let r00000e76: u32 = !r00000e75;\n" : String).toByteArray.data.toList
theorem checked3584 : bytes3584=statementBytes 3702 (op3584.map lower) ∧ bytes3584.length=37 := by core033_kernel_decide
def op3585 : List WordIR.Op := [.band 3700 3702]
def bytes3585 : Bytes := ("    let r00000e77: u32 = r00000e74 & r00000e76;\n" : String).toByteArray.data.toList
theorem checked3585 : bytes3585=statementBytes 3703 (op3585.map lower) ∧ bytes3585.length=48 := by core033_kernel_decide
def op3586 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3586 : Bytes := ("    let r00000e78: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3586 : bytes3586=statementBytes 3704 (op3586.map lower) ∧ bytes3586.length=41 := by core033_kernel_decide
def op3587 : List WordIR.Op := [.bxor 1299 3704]
def bytes3587 : Bytes := ("    let r00000e79: u32 = r00000513 ^ r00000e78;\n" : String).toByteArray.data.toList
theorem checked3587 : bytes3587=statementBytes 3705 (op3587.map lower) ∧ bytes3587.length=48 := by core033_kernel_decide
def op3588 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3588 : Bytes := ("    let r00000e7a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3588 : bytes3588=statementBytes 3706 (op3588.map lower) ∧ bytes3588.length=41 := by core033_kernel_decide
def op3589 : List WordIR.Op := [.bnot 3706]
def bytes3589 : Bytes := ("    let r00000e7b: u32 = !r00000e7a;\n" : String).toByteArray.data.toList
theorem checked3589 : bytes3589=statementBytes 3707 (op3589.map lower) ∧ bytes3589.length=37 := by core033_kernel_decide
def op3590 : List WordIR.Op := [.bxor 3705 3707]
def bytes3590 : Bytes := ("    let r00000e7c: u32 = r00000e79 ^ r00000e7b;\n" : String).toByteArray.data.toList
theorem checked3590 : bytes3590=statementBytes 3708 (op3590.map lower) ∧ bytes3590.length=48 := by core033_kernel_decide
def op3591 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3591 : Bytes := ("    let r00000e7d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3591 : bytes3591=statementBytes 3709 (op3591.map lower) ∧ bytes3591.length=41 := by core033_kernel_decide
def op3592 : List WordIR.Op := [.bxor 1299 3709]
def bytes3592 : Bytes := ("    let r00000e7e: u32 = r00000513 ^ r00000e7d;\n" : String).toByteArray.data.toList
theorem checked3592 : bytes3592=statementBytes 3710 (op3592.map lower) ∧ bytes3592.length=48 := by core033_kernel_decide
def op3593 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3593 : Bytes := ("    let r00000e7f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3593 : bytes3593=statementBytes 3711 (op3593.map lower) ∧ bytes3593.length=41 := by core033_kernel_decide
def op3594 : List WordIR.Op := [.bnot 3711]
def bytes3594 : Bytes := ("    let r00000e80: u32 = !r00000e7f;\n" : String).toByteArray.data.toList
theorem checked3594 : bytes3594=statementBytes 3712 (op3594.map lower) ∧ bytes3594.length=37 := by core033_kernel_decide
def op3595 : List WordIR.Op := [.badd 3710 3712]
def bytes3595 : Bytes := ("    let r00000e81: u32 = r00000e7e.wrapping_add(r00000e80);\n" : String).toByteArray.data.toList
theorem checked3595 : bytes3595=statementBytes 3713 (op3595.map lower) ∧ bytes3595.length=60 := by core033_kernel_decide
def op3596 : List WordIR.Op := [.bnot 3713]
def bytes3596 : Bytes := ("    let r00000e82: u32 = !r00000e81;\n" : String).toByteArray.data.toList
theorem checked3596 : bytes3596=statementBytes 3714 (op3596.map lower) ∧ bytes3596.length=37 := by core033_kernel_decide
def op3597 : List WordIR.Op := [.band 3708 3714]
def bytes3597 : Bytes := ("    let r00000e83: u32 = r00000e7c & r00000e82;\n" : String).toByteArray.data.toList
theorem checked3597 : bytes3597=statementBytes 3715 (op3597.map lower) ∧ bytes3597.length=48 := by core033_kernel_decide
def op3598 : List WordIR.Op := [.bxor 3703 3715]
def bytes3598 : Bytes := ("    let r00000e84: u32 = r00000e77 ^ r00000e83;\n" : String).toByteArray.data.toList
theorem checked3598 : bytes3598=statementBytes 3716 (op3598.map lower) ∧ bytes3598.length=48 := by core033_kernel_decide
def op3599 : List WordIR.Op := [.shr 3716 31]
def bytes3599 : Bytes := ("    let r00000e85: u32 = r00000e84 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3599 : bytes3599=statementBytes 3717 (op3599.map lower) ∧ bytes3599.length=54 := by core033_kernel_decide
def op3600 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3600 : Bytes := ("    let r00000e86: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3600 : bytes3600=statementBytes 3718 (op3600.map lower) ∧ bytes3600.length=41 := by core033_kernel_decide
def op3601 : List WordIR.Op := [.bxor 3717 3718]
def bytes3601 : Bytes := ("    let r00000e87: u32 = r00000e85 ^ r00000e86;\n" : String).toByteArray.data.toList
theorem checked3601 : bytes3601=statementBytes 3719 (op3601.map lower) ∧ bytes3601.length=48 := by core033_kernel_decide
def op3602 : List WordIR.Op := [.bnot 3719]
def bytes3602 : Bytes := ("    let r00000e88: u32 = !r00000e87;\n" : String).toByteArray.data.toList
theorem checked3602 : bytes3602=statementBytes 3720 (op3602.map lower) ∧ bytes3602.length=37 := by core033_kernel_decide
def op3603 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3603 : Bytes := ("    let r00000e89: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3603 : bytes3603=statementBytes 3721 (op3603.map lower) ∧ bytes3603.length=41 := by core033_kernel_decide
def op3604 : List WordIR.Op := [.badd 3720 3721]
def bytes3604 : Bytes := ("    let r00000e8a: u32 = r00000e88.wrapping_add(r00000e89);\n" : String).toByteArray.data.toList
theorem checked3604 : bytes3604=statementBytes 3722 (op3604.map lower) ∧ bytes3604.length=60 := by core033_kernel_decide
def op3605 : List WordIR.Op := [.band 3722 2705]
def bytes3605 : Bytes := ("    let r00000e8b: u32 = r00000e8a & r00000a91;\n" : String).toByteArray.data.toList
theorem checked3605 : bytes3605=statementBytes 3723 (op3605.map lower) ∧ bytes3605.length=48 := by core033_kernel_decide
def op3606 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3606 : Bytes := ("    let r00000e8c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3606 : bytes3606=statementBytes 3724 (op3606.map lower) ∧ bytes3606.length=41 := by core033_kernel_decide
def op3607 : List WordIR.Op := [.bxor 1299 3724]
def bytes3607 : Bytes := ("    let r00000e8d: u32 = r00000513 ^ r00000e8c;\n" : String).toByteArray.data.toList
theorem checked3607 : bytes3607=statementBytes 3725 (op3607.map lower) ∧ bytes3607.length=48 := by core033_kernel_decide
def op3608 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3608 : Bytes := ("    let r00000e8e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3608 : bytes3608=statementBytes 3726 (op3608.map lower) ∧ bytes3608.length=41 := by core033_kernel_decide
def op3609 : List WordIR.Op := [.bnot 3726]
def bytes3609 : Bytes := ("    let r00000e8f: u32 = !r00000e8e;\n" : String).toByteArray.data.toList
theorem checked3609 : bytes3609=statementBytes 3727 (op3609.map lower) ∧ bytes3609.length=37 := by core033_kernel_decide
def op3610 : List WordIR.Op := [.band 3725 3727]
def bytes3610 : Bytes := ("    let r00000e90: u32 = r00000e8d & r00000e8f;\n" : String).toByteArray.data.toList
theorem checked3610 : bytes3610=statementBytes 3728 (op3610.map lower) ∧ bytes3610.length=48 := by core033_kernel_decide
def op3611 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3611 : Bytes := ("    let r00000e91: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3611 : bytes3611=statementBytes 3729 (op3611.map lower) ∧ bytes3611.length=41 := by core033_kernel_decide
def op3612 : List WordIR.Op := [.bxor 1299 3729]
def bytes3612 : Bytes := ("    let r00000e92: u32 = r00000513 ^ r00000e91;\n" : String).toByteArray.data.toList
theorem checked3612 : bytes3612=statementBytes 3730 (op3612.map lower) ∧ bytes3612.length=48 := by core033_kernel_decide
def op3613 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3613 : Bytes := ("    let r00000e93: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3613 : bytes3613=statementBytes 3731 (op3613.map lower) ∧ bytes3613.length=41 := by core033_kernel_decide
def op3614 : List WordIR.Op := [.bnot 3731]
def bytes3614 : Bytes := ("    let r00000e94: u32 = !r00000e93;\n" : String).toByteArray.data.toList
theorem checked3614 : bytes3614=statementBytes 3732 (op3614.map lower) ∧ bytes3614.length=37 := by core033_kernel_decide
def op3615 : List WordIR.Op := [.bxor 3730 3732]
def bytes3615 : Bytes := ("    let r00000e95: u32 = r00000e92 ^ r00000e94;\n" : String).toByteArray.data.toList
theorem checked3615 : bytes3615=statementBytes 3733 (op3615.map lower) ∧ bytes3615.length=48 := by core033_kernel_decide
def op3616 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3616 : Bytes := ("    let r00000e96: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3616 : bytes3616=statementBytes 3734 (op3616.map lower) ∧ bytes3616.length=41 := by core033_kernel_decide
def op3617 : List WordIR.Op := [.bxor 1299 3734]
def bytes3617 : Bytes := ("    let r00000e97: u32 = r00000513 ^ r00000e96;\n" : String).toByteArray.data.toList
theorem checked3617 : bytes3617=statementBytes 3735 (op3617.map lower) ∧ bytes3617.length=48 := by core033_kernel_decide
def op3618 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3618 : Bytes := ("    let r00000e98: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3618 : bytes3618=statementBytes 3736 (op3618.map lower) ∧ bytes3618.length=41 := by core033_kernel_decide
def op3619 : List WordIR.Op := [.bnot 3736]
def bytes3619 : Bytes := ("    let r00000e99: u32 = !r00000e98;\n" : String).toByteArray.data.toList
theorem checked3619 : bytes3619=statementBytes 3737 (op3619.map lower) ∧ bytes3619.length=37 := by core033_kernel_decide
def op3620 : List WordIR.Op := [.badd 3735 3737]
def bytes3620 : Bytes := ("    let r00000e9a: u32 = r00000e97.wrapping_add(r00000e99);\n" : String).toByteArray.data.toList
theorem checked3620 : bytes3620=statementBytes 3738 (op3620.map lower) ∧ bytes3620.length=60 := by core033_kernel_decide
def op3621 : List WordIR.Op := [.bnot 3738]
def bytes3621 : Bytes := ("    let r00000e9b: u32 = !r00000e9a;\n" : String).toByteArray.data.toList
theorem checked3621 : bytes3621=statementBytes 3739 (op3621.map lower) ∧ bytes3621.length=37 := by core033_kernel_decide
def op3622 : List WordIR.Op := [.band 3733 3739]
def bytes3622 : Bytes := ("    let r00000e9c: u32 = r00000e95 & r00000e9b;\n" : String).toByteArray.data.toList
theorem checked3622 : bytes3622=statementBytes 3740 (op3622.map lower) ∧ bytes3622.length=48 := by core033_kernel_decide
def op3623 : List WordIR.Op := [.bxor 3728 3740]
def bytes3623 : Bytes := ("    let r00000e9d: u32 = r00000e90 ^ r00000e9c;\n" : String).toByteArray.data.toList
theorem checked3623 : bytes3623=statementBytes 3741 (op3623.map lower) ∧ bytes3623.length=48 := by core033_kernel_decide
def op3624 : List WordIR.Op := [.shr 3741 31]
def bytes3624 : Bytes := ("    let r00000e9e: u32 = r00000e9d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked3624 : bytes3624=statementBytes 3742 (op3624.map lower) ∧ bytes3624.length=54 := by core033_kernel_decide
def op3625 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3625 : Bytes := ("    let r00000e9f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3625 : bytes3625=statementBytes 3743 (op3625.map lower) ∧ bytes3625.length=41 := by core033_kernel_decide
def op3626 : List WordIR.Op := [.bxor 3742 3743]
def bytes3626 : Bytes := ("    let r00000ea0: u32 = r00000e9e ^ r00000e9f;\n" : String).toByteArray.data.toList
theorem checked3626 : bytes3626=statementBytes 3744 (op3626.map lower) ∧ bytes3626.length=48 := by core033_kernel_decide
def op3627 : List WordIR.Op := [.bnot 3744]
def bytes3627 : Bytes := ("    let r00000ea1: u32 = !r00000ea0;\n" : String).toByteArray.data.toList
theorem checked3627 : bytes3627=statementBytes 3745 (op3627.map lower) ∧ bytes3627.length=37 := by core033_kernel_decide
def op3628 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes3628 : Bytes := ("    let r00000ea2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked3628 : bytes3628=statementBytes 3746 (op3628.map lower) ∧ bytes3628.length=41 := by core033_kernel_decide
def op3629 : List WordIR.Op := [.badd 3745 3746]
def bytes3629 : Bytes := ("    let r00000ea3: u32 = r00000ea1.wrapping_add(r00000ea2);\n" : String).toByteArray.data.toList
theorem checked3629 : bytes3629=statementBytes 3747 (op3629.map lower) ∧ bytes3629.length=60 := by core033_kernel_decide
def op3630 : List WordIR.Op := [.bnot 3747]
def bytes3630 : Bytes := ("    let r00000ea4: u32 = !r00000ea3;\n" : String).toByteArray.data.toList
theorem checked3630 : bytes3630=statementBytes 3748 (op3630.map lower) ∧ bytes3630.length=37 := by core033_kernel_decide
def op3631 : List WordIR.Op := [.band 3748 2549]
def bytes3631 : Bytes := ("    let r00000ea5: u32 = r00000ea4 & r000009f5;\n" : String).toByteArray.data.toList
theorem checked3631 : bytes3631=statementBytes 3749 (op3631.map lower) ∧ bytes3631.length=48 := by core033_kernel_decide
def op3632 : List WordIR.Op := [.bxor 3723 3749]
def bytes3632 : Bytes := ("    let r00000ea6: u32 = r00000e8b ^ r00000ea5;\n" : String).toByteArray.data.toList
theorem checked3632 : bytes3632=statementBytes 3750 (op3632.map lower) ∧ bytes3632.length=48 := by core033_kernel_decide
def op3633 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3633 : Bytes := ("    let r00000ea7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3633 : bytes3633=statementBytes 3751 (op3633.map lower) ∧ bytes3633.length=41 := by core033_kernel_decide
def op3634 : List WordIR.Op := [.bxor 1299 3751]
def bytes3634 : Bytes := ("    let r00000ea8: u32 = r00000513 ^ r00000ea7;\n" : String).toByteArray.data.toList
theorem checked3634 : bytes3634=statementBytes 3752 (op3634.map lower) ∧ bytes3634.length=48 := by core033_kernel_decide
def op3635 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3635 : Bytes := ("    let r00000ea9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3635 : bytes3635=statementBytes 3753 (op3635.map lower) ∧ bytes3635.length=41 := by core033_kernel_decide
def op3636 : List WordIR.Op := [.bnot 3753]
def bytes3636 : Bytes := ("    let r00000eaa: u32 = !r00000ea9;\n" : String).toByteArray.data.toList
theorem checked3636 : bytes3636=statementBytes 3754 (op3636.map lower) ∧ bytes3636.length=37 := by core033_kernel_decide
def op3637 : List WordIR.Op := [.band 3752 3754]
def bytes3637 : Bytes := ("    let r00000eab: u32 = r00000ea8 & r00000eaa;\n" : String).toByteArray.data.toList
theorem checked3637 : bytes3637=statementBytes 3755 (op3637.map lower) ∧ bytes3637.length=48 := by core033_kernel_decide
def op3638 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3638 : Bytes := ("    let r00000eac: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3638 : bytes3638=statementBytes 3756 (op3638.map lower) ∧ bytes3638.length=41 := by core033_kernel_decide
def op3639 : List WordIR.Op := [.bxor 1299 3756]
def bytes3639 : Bytes := ("    let r00000ead: u32 = r00000513 ^ r00000eac;\n" : String).toByteArray.data.toList
theorem checked3639 : bytes3639=statementBytes 3757 (op3639.map lower) ∧ bytes3639.length=48 := by core033_kernel_decide
def op3640 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3640 : Bytes := ("    let r00000eae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3640 : bytes3640=statementBytes 3758 (op3640.map lower) ∧ bytes3640.length=41 := by core033_kernel_decide
def op3641 : List WordIR.Op := [.bnot 3758]
def bytes3641 : Bytes := ("    let r00000eaf: u32 = !r00000eae;\n" : String).toByteArray.data.toList
theorem checked3641 : bytes3641=statementBytes 3759 (op3641.map lower) ∧ bytes3641.length=37 := by core033_kernel_decide
def op3642 : List WordIR.Op := [.bxor 3757 3759]
def bytes3642 : Bytes := ("    let r00000eb0: u32 = r00000ead ^ r00000eaf;\n" : String).toByteArray.data.toList
theorem checked3642 : bytes3642=statementBytes 3760 (op3642.map lower) ∧ bytes3642.length=48 := by core033_kernel_decide
def op3643 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes3643 : Bytes := ("    let r00000eb1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked3643 : bytes3643=statementBytes 3761 (op3643.map lower) ∧ bytes3643.length=41 := by core033_kernel_decide
def op3644 : List WordIR.Op := [.bxor 1299 3761]
def bytes3644 : Bytes := ("    let r00000eb2: u32 = r00000513 ^ r00000eb1;\n" : String).toByteArray.data.toList
theorem checked3644 : bytes3644=statementBytes 3762 (op3644.map lower) ∧ bytes3644.length=48 := by core033_kernel_decide
def op3645 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3645 : Bytes := ("    let r00000eb3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3645 : bytes3645=statementBytes 3763 (op3645.map lower) ∧ bytes3645.length=41 := by core033_kernel_decide
def op3646 : List WordIR.Op := [.bnot 3763]
def bytes3646 : Bytes := ("    let r00000eb4: u32 = !r00000eb3;\n" : String).toByteArray.data.toList
theorem checked3646 : bytes3646=statementBytes 3764 (op3646.map lower) ∧ bytes3646.length=37 := by core033_kernel_decide
def op3647 : List WordIR.Op := [.badd 3762 3764]
def bytes3647 : Bytes := ("    let r00000eb5: u32 = r00000eb2.wrapping_add(r00000eb4);\n" : String).toByteArray.data.toList
theorem checked3647 : bytes3647=statementBytes 3765 (op3647.map lower) ∧ bytes3647.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3584,op3585,op3586,op3587,op3588,op3589,op3590,op3591,op3592,op3593,op3594,op3595,op3596,op3597,op3598,op3599,op3600,op3601,op3602,op3603,op3604,op3605,op3606,op3607,op3608,op3609,op3610,op3611,op3612,op3613,op3614,op3615,op3616,op3617,op3618,op3619,op3620,op3621,op3622,op3623,op3624,op3625,op3626,op3627,op3628,op3629,op3630,op3631,op3632,op3633,op3634,op3635,op3636,op3637,op3638,op3639,op3640,op3641,op3642,op3643,op3644,op3645,op3646,op3647]
def chunks : List Bytes := [bytes3584,bytes3585,bytes3586,bytes3587,bytes3588,bytes3589,bytes3590,bytes3591,bytes3592,bytes3593,bytes3594,bytes3595,bytes3596,bytes3597,bytes3598,bytes3599,bytes3600,bytes3601,bytes3602,bytes3603,bytes3604,bytes3605,bytes3606,bytes3607,bytes3608,bytes3609,bytes3610,bytes3611,bytes3612,bytes3613,bytes3614,bytes3615,bytes3616,bytes3617,bytes3618,bytes3619,bytes3620,bytes3621,bytes3622,bytes3623,bytes3624,bytes3625,bytes3626,bytes3627,bytes3628,bytes3629,bytes3630,bytes3631,bytes3632,bytes3633,bytes3634,bytes3635,bytes3636,bytes3637,bytes3638,bytes3639,bytes3640,bytes3641,bytes3642,bytes3643,bytes3644,bytes3645,bytes3646,bytes3647]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3702 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3584.1 (.cons _ _ _ _ _ checked3585.1 (.cons _ _ _ _ _ checked3586.1 (.cons _ _ _ _ _ checked3587.1 (.cons _ _ _ _ _ checked3588.1 (.cons _ _ _ _ _ checked3589.1 (.cons _ _ _ _ _ checked3590.1 (.cons _ _ _ _ _ checked3591.1 (.cons _ _ _ _ _ checked3592.1 (.cons _ _ _ _ _ checked3593.1 (.cons _ _ _ _ _ checked3594.1 (.cons _ _ _ _ _ checked3595.1 (.cons _ _ _ _ _ checked3596.1 (.cons _ _ _ _ _ checked3597.1 (.cons _ _ _ _ _ checked3598.1 (.cons _ _ _ _ _ checked3599.1 (.cons _ _ _ _ _ checked3600.1 (.cons _ _ _ _ _ checked3601.1 (.cons _ _ _ _ _ checked3602.1 (.cons _ _ _ _ _ checked3603.1 (.cons _ _ _ _ _ checked3604.1 (.cons _ _ _ _ _ checked3605.1 (.cons _ _ _ _ _ checked3606.1 (.cons _ _ _ _ _ checked3607.1 (.cons _ _ _ _ _ checked3608.1 (.cons _ _ _ _ _ checked3609.1 (.cons _ _ _ _ _ checked3610.1 (.cons _ _ _ _ _ checked3611.1 (.cons _ _ _ _ _ checked3612.1 (.cons _ _ _ _ _ checked3613.1 (.cons _ _ _ _ _ checked3614.1 (.cons _ _ _ _ _ checked3615.1 (.cons _ _ _ _ _ checked3616.1 (.cons _ _ _ _ _ checked3617.1 (.cons _ _ _ _ _ checked3618.1 (.cons _ _ _ _ _ checked3619.1 (.cons _ _ _ _ _ checked3620.1 (.cons _ _ _ _ _ checked3621.1 (.cons _ _ _ _ _ checked3622.1 (.cons _ _ _ _ _ checked3623.1 (.cons _ _ _ _ _ checked3624.1 (.cons _ _ _ _ _ checked3625.1 (.cons _ _ _ _ _ checked3626.1 (.cons _ _ _ _ _ checked3627.1 (.cons _ _ _ _ _ checked3628.1 (.cons _ _ _ _ _ checked3629.1 (.cons _ _ _ _ _ checked3630.1 (.cons _ _ _ _ _ checked3631.1 (.cons _ _ _ _ _ checked3632.1 (.cons _ _ _ _ _ checked3633.1 (.cons _ _ _ _ _ checked3634.1 (.cons _ _ _ _ _ checked3635.1 (.cons _ _ _ _ _ checked3636.1 (.cons _ _ _ _ _ checked3637.1 (.cons _ _ _ _ _ checked3638.1 (.cons _ _ _ _ _ checked3639.1 (.cons _ _ _ _ _ checked3640.1 (.cons _ _ _ _ _ checked3641.1 (.cons _ _ _ _ _ checked3642.1 (.cons _ _ _ _ _ checked3643.1 (.cons _ _ _ _ _ checked3644.1 (.cons _ _ _ _ _ checked3645.1 (.cons _ _ _ _ _ checked3646.1 (.cons _ _ _ _ _ checked3647.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3702 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3584.2,checked3585.2,checked3586.2,checked3587.2,checked3588.2,checked3589.2,checked3590.2,checked3591.2,checked3592.2,checked3593.2,checked3594.2,checked3595.2,checked3596.2,checked3597.2,checked3598.2,checked3599.2,checked3600.2,checked3601.2,checked3602.2,checked3603.2,checked3604.2,checked3605.2,checked3606.2,checked3607.2,checked3608.2,checked3609.2,checked3610.2,checked3611.2,checked3612.2,checked3613.2,checked3614.2,checked3615.2,checked3616.2,checked3617.2,checked3618.2,checked3619.2,checked3620.2,checked3621.2,checked3622.2,checked3623.2,checked3624.2,checked3625.2,checked3626.2,checked3627.2,checked3628.2,checked3629.2,checked3630.2,checked3631.2,checked3632.2,checked3633.2,checked3634.2,checked3635.2,checked3636.2,checked3637.2,checked3638.2,checked3639.2,checked3640.2,checked3641.2,checked3642.2,checked3643.2,checked3644.2,checked3645.2,checked3646.2,checked3647.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup56
