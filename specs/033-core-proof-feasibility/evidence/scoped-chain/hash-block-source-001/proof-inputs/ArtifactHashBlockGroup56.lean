import ActualHashBlockIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactHashBlockGroup56
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3584 : List WordIR.Op := [.literal (BitVec.ofNat 32 3329325298)]
def bytes3584 : Bytes := ("    let r00000e48: u32 = 0xc67178f2_u32;\n" : String).toByteArray.data.toList
theorem checked3584 : bytes3584=statementBytes 3656 (op3584.map lower) ∧ bytes3584.length=41 := by core033_kernel_decide
def op3585 : List WordIR.Op := [.badd 3655 3656]
def bytes3585 : Bytes := ("    let r00000e49: u32 = r00000e47.wrapping_add(r00000e48);\n" : String).toByteArray.data.toList
theorem checked3585 : bytes3585=statementBytes 3657 (op3585.map lower) ∧ bytes3585.length=60 := by core033_kernel_decide
def op3586 : List WordIR.Op := [.badd 3657 1943]
def bytes3586 : Bytes := ("    let r00000e4a: u32 = r00000e49.wrapping_add(r00000797);\n" : String).toByteArray.data.toList
theorem checked3586 : bytes3586=statementBytes 3658 (op3586.map lower) ∧ bytes3586.length=60 := by core033_kernel_decide
def op3587 : List WordIR.Op := [.rotr 3643 2]
def bytes3587 : Bytes := ("    let r00000e4b: u32 = r00000e3b.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked3587 : bytes3587=statementBytes 3659 (op3587.map lower) ∧ bytes3587.length=65 := by core033_kernel_decide
def op3588 : List WordIR.Op := [.rotr 3643 13]
def bytes3588 : Bytes := ("    let r00000e4c: u32 = r00000e3b.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked3588 : bytes3588=statementBytes 3660 (op3588.map lower) ∧ bytes3588.length=65 := by core033_kernel_decide
def op3589 : List WordIR.Op := [.bxor 3659 3660]
def bytes3589 : Bytes := ("    let r00000e4d: u32 = r00000e4b ^ r00000e4c;\n" : String).toByteArray.data.toList
theorem checked3589 : bytes3589=statementBytes 3661 (op3589.map lower) ∧ bytes3589.length=48 := by core033_kernel_decide
def op3590 : List WordIR.Op := [.rotr 3643 22]
def bytes3590 : Bytes := ("    let r00000e4e: u32 = r00000e3b.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked3590 : bytes3590=statementBytes 3662 (op3590.map lower) ∧ bytes3590.length=65 := by core033_kernel_decide
def op3591 : List WordIR.Op := [.bxor 3661 3662]
def bytes3591 : Bytes := ("    let r00000e4f: u32 = r00000e4d ^ r00000e4e;\n" : String).toByteArray.data.toList
theorem checked3591 : bytes3591=statementBytes 3663 (op3591.map lower) ∧ bytes3591.length=48 := by core033_kernel_decide
def op3592 : List WordIR.Op := [.band 3643 3616]
def bytes3592 : Bytes := ("    let r00000e50: u32 = r00000e3b & r00000e20;\n" : String).toByteArray.data.toList
theorem checked3592 : bytes3592=statementBytes 3664 (op3592.map lower) ∧ bytes3592.length=48 := by core033_kernel_decide
def op3593 : List WordIR.Op := [.band 3643 3589]
def bytes3593 : Bytes := ("    let r00000e51: u32 = r00000e3b & r00000e05;\n" : String).toByteArray.data.toList
theorem checked3593 : bytes3593=statementBytes 3665 (op3593.map lower) ∧ bytes3593.length=48 := by core033_kernel_decide
def op3594 : List WordIR.Op := [.bxor 3664 3665]
def bytes3594 : Bytes := ("    let r00000e52: u32 = r00000e50 ^ r00000e51;\n" : String).toByteArray.data.toList
theorem checked3594 : bytes3594=statementBytes 3666 (op3594.map lower) ∧ bytes3594.length=48 := by core033_kernel_decide
def op3595 : List WordIR.Op := [.band 3616 3589]
def bytes3595 : Bytes := ("    let r00000e53: u32 = r00000e20 & r00000e05;\n" : String).toByteArray.data.toList
theorem checked3595 : bytes3595=statementBytes 3667 (op3595.map lower) ∧ bytes3595.length=48 := by core033_kernel_decide
def op3596 : List WordIR.Op := [.bxor 3666 3667]
def bytes3596 : Bytes := ("    let r00000e54: u32 = r00000e52 ^ r00000e53;\n" : String).toByteArray.data.toList
theorem checked3596 : bytes3596=statementBytes 3668 (op3596.map lower) ∧ bytes3596.length=48 := by core033_kernel_decide
def op3597 : List WordIR.Op := [.badd 3663 3668]
def bytes3597 : Bytes := ("    let r00000e55: u32 = r00000e4f.wrapping_add(r00000e54);\n" : String).toByteArray.data.toList
theorem checked3597 : bytes3597=statementBytes 3669 (op3597.map lower) ∧ bytes3597.length=60 := by core033_kernel_decide
def op3598 : List WordIR.Op := [.badd 3658 3669]
def bytes3598 : Bytes := ("    let r00000e56: u32 = r00000e4a.wrapping_add(r00000e55);\n" : String).toByteArray.data.toList
theorem checked3598 : bytes3598=statementBytes 3670 (op3598.map lower) ∧ bytes3598.length=60 := by core033_kernel_decide
def op3599 : List WordIR.Op := [.badd 3562 3658]
def bytes3599 : Bytes := ("    let r00000e57: u32 = r00000dea.wrapping_add(r00000e4a);\n" : String).toByteArray.data.toList
theorem checked3599 : bytes3599=statementBytes 3671 (op3599.map lower) ∧ bytes3599.length=60 := by core033_kernel_decide
def op3600 : List WordIR.Op := [.badd 0 3670]
def bytes3600 : Bytes := ("    let r00000e58: u32 = r00000000.wrapping_add(r00000e56);\n" : String).toByteArray.data.toList
theorem checked3600 : bytes3600=statementBytes 3672 (op3600.map lower) ∧ bytes3600.length=60 := by core033_kernel_decide
def op3601 : List WordIR.Op := [.badd 1 3643]
def bytes3601 : Bytes := ("    let r00000e59: u32 = r00000001.wrapping_add(r00000e3b);\n" : String).toByteArray.data.toList
theorem checked3601 : bytes3601=statementBytes 3673 (op3601.map lower) ∧ bytes3601.length=60 := by core033_kernel_decide
def op3602 : List WordIR.Op := [.badd 2 3616]
def bytes3602 : Bytes := ("    let r00000e5a: u32 = r00000002.wrapping_add(r00000e20);\n" : String).toByteArray.data.toList
theorem checked3602 : bytes3602=statementBytes 3674 (op3602.map lower) ∧ bytes3602.length=60 := by core033_kernel_decide
def op3603 : List WordIR.Op := [.badd 3 3589]
def bytes3603 : Bytes := ("    let r00000e5b: u32 = r00000003.wrapping_add(r00000e05);\n" : String).toByteArray.data.toList
theorem checked3603 : bytes3603=statementBytes 3675 (op3603.map lower) ∧ bytes3603.length=60 := by core033_kernel_decide
def op3604 : List WordIR.Op := [.badd 4 3671]
def bytes3604 : Bytes := ("    let r00000e5c: u32 = r00000004.wrapping_add(r00000e57);\n" : String).toByteArray.data.toList
theorem checked3604 : bytes3604=statementBytes 3676 (op3604.map lower) ∧ bytes3604.length=60 := by core033_kernel_decide
def op3605 : List WordIR.Op := [.badd 5 3644]
def bytes3605 : Bytes := ("    let r00000e5d: u32 = r00000005.wrapping_add(r00000e3c);\n" : String).toByteArray.data.toList
theorem checked3605 : bytes3605=statementBytes 3677 (op3605.map lower) ∧ bytes3605.length=60 := by core033_kernel_decide
def op3606 : List WordIR.Op := [.badd 6 3617]
def bytes3606 : Bytes := ("    let r00000e5e: u32 = r00000006.wrapping_add(r00000e21);\n" : String).toByteArray.data.toList
theorem checked3606 : bytes3606=statementBytes 3678 (op3606.map lower) ∧ bytes3606.length=60 := by core033_kernel_decide
def op3607 : List WordIR.Op := [.badd 7 3590]
def bytes3607 : Bytes := ("    let r00000e5f: u32 = r00000007.wrapping_add(r00000e06);\n" : String).toByteArray.data.toList
theorem checked3607 : bytes3607=statementBytes 3679 (op3607.map lower) ∧ bytes3607.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3584,op3585,op3586,op3587,op3588,op3589,op3590,op3591,op3592,op3593,op3594,op3595,op3596,op3597,op3598,op3599,op3600,op3601,op3602,op3603,op3604,op3605,op3606,op3607]
def chunks : List Bytes := [bytes3584,bytes3585,bytes3586,bytes3587,bytes3588,bytes3589,bytes3590,bytes3591,bytes3592,bytes3593,bytes3594,bytes3595,bytes3596,bytes3597,bytes3598,bytes3599,bytes3600,bytes3601,bytes3602,bytes3603,bytes3604,bytes3605,bytes3606,bytes3607]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3656 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3584.1 (.cons _ _ _ _ _ checked3585.1 (.cons _ _ _ _ _ checked3586.1 (.cons _ _ _ _ _ checked3587.1 (.cons _ _ _ _ _ checked3588.1 (.cons _ _ _ _ _ checked3589.1 (.cons _ _ _ _ _ checked3590.1 (.cons _ _ _ _ _ checked3591.1 (.cons _ _ _ _ _ checked3592.1 (.cons _ _ _ _ _ checked3593.1 (.cons _ _ _ _ _ checked3594.1 (.cons _ _ _ _ _ checked3595.1 (.cons _ _ _ _ _ checked3596.1 (.cons _ _ _ _ _ checked3597.1 (.cons _ _ _ _ _ checked3598.1 (.cons _ _ _ _ _ checked3599.1 (.cons _ _ _ _ _ checked3600.1 (.cons _ _ _ _ _ checked3601.1 (.cons _ _ _ _ _ checked3602.1 (.cons _ _ _ _ _ checked3603.1 (.cons _ _ _ _ _ checked3604.1 (.cons _ _ _ _ _ checked3605.1 (.cons _ _ _ _ _ checked3606.1 (.cons _ _ _ _ _ checked3607.1 (.empty _)))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3656 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=24 := rfl
theorem partSize : partBytes.length=1352 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3584.2,checked3585.2,checked3586.2,checked3587.2,checked3588.2,checked3589.2,checked3590.2,checked3591.2,checked3592.2,checked3593.2,checked3594.2,checked3595.2,checked3596.2,checked3597.2,checked3598.2,checked3599.2,checked3600.2,checked3601.2,checked3602.2,checked3603.2,checked3604.2,checked3605.2,checked3606.2,checked3607.2]
  decide
end ArtifactHashBlockGroup56
