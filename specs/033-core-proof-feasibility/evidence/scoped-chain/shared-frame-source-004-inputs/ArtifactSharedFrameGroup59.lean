import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup59
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op3776 : List WordIR.Op := [.badd 652 3790]
def bytes3776 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000eeb: u32 = r0000028c.wrapping_add(r00000ece);\n" : String)
theorem checked3776 : bytes3776=statementBytes 3819 (op3776.map lower) ∧ bytes3776.length=60 := by core033_kernel_decide
def op3777 : List WordIR.Op := [.badd 656 3764]
def bytes3777 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000eec: u32 = r00000290.wrapping_add(r00000eb4);\n" : String)
theorem checked3777 : bytes3777=statementBytes 3820 (op3777.map lower) ∧ bytes3777.length=60 := by core033_kernel_decide
def op3778 : List WordIR.Op := [.badd 660 3738]
def bytes3778 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000eed: u32 = r00000294.wrapping_add(r00000e9a);\n" : String)
theorem checked3778 : bytes3778=statementBytes 3821 (op3778.map lower) ∧ bytes3778.length=60 := by core033_kernel_decide
def op3779 : List WordIR.Op := [.badd 664 3817]
def bytes3779 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000eee: u32 = r00000298.wrapping_add(r00000ee9);\n" : String)
theorem checked3779 : bytes3779=statementBytes 3822 (op3779.map lower) ∧ bytes3779.length=60 := by core033_kernel_decide
def op3780 : List WordIR.Op := [.badd 668 3791]
def bytes3780 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000eef: u32 = r0000029c.wrapping_add(r00000ecf);\n" : String)
theorem checked3780 : bytes3780=statementBytes 3823 (op3780.map lower) ∧ bytes3780.length=60 := by core033_kernel_decide
def op3781 : List WordIR.Op := [.badd 672 3765]
def bytes3781 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef0: u32 = r000002a0.wrapping_add(r00000eb5);\n" : String)
theorem checked3781 : bytes3781=statementBytes 3824 (op3781.map lower) ∧ bytes3781.length=60 := by core033_kernel_decide
def op3782 : List WordIR.Op := [.badd 676 3739]
def bytes3782 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef1: u32 = r000002a4.wrapping_add(r00000e9b);\n" : String)
theorem checked3782 : bytes3782=statementBytes 3825 (op3782.map lower) ∧ bytes3782.length=60 := by core033_kernel_decide
def op3783 : List WordIR.Op := [.band 645 632]
def bytes3783 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef2: u32 = r00000285 & r00000278;\n" : String)
theorem checked3783 : bytes3783=statementBytes 3826 (op3783.map lower) ∧ bytes3783.length=48 := by core033_kernel_decide
def op3784 : List WordIR.Op := [.bxor 850 3826]
def bytes3784 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef3: u32 = r00000352 ^ r00000ef2;\n" : String)
theorem checked3784 : bytes3784=statementBytes 3827 (op3784.map lower) ∧ bytes3784.length=48 := by core033_kernel_decide
def op3785 : List WordIR.Op := [.bxor 0 43]
def bytes3785 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef4: u32 = r00000000 ^ r0000002b;\n" : String)
theorem checked3785 : bytes3785=statementBytes 3828 (op3785.map lower) ∧ bytes3785.length=48 := by core033_kernel_decide
def op3786 : List WordIR.Op := [.band 3828 50]
def bytes3786 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef5: u32 = r00000ef4 & r00000032;\n" : String)
theorem checked3786 : bytes3786=statementBytes 3829 (op3786.map lower) ∧ bytes3786.length=48 := by core033_kernel_decide
def op3787 : List WordIR.Op := [.bxor 3828 50]
def bytes3787 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef6: u32 = r00000ef4 ^ r00000032;\n" : String)
theorem checked3787 : bytes3787=statementBytes 3830 (op3787.map lower) ∧ bytes3787.length=48 := by core033_kernel_decide
def op3788 : List WordIR.Op := [.badd 3828 50]
def bytes3788 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef7: u32 = r00000ef4.wrapping_add(r00000032);\n" : String)
theorem checked3788 : bytes3788=statementBytes 3831 (op3788.map lower) ∧ bytes3788.length=60 := by core033_kernel_decide
def op3789 : List WordIR.Op := [.bnot 3831]
def bytes3789 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef8: u32 = !r00000ef7;\n" : String)
theorem checked3789 : bytes3789=statementBytes 3832 (op3789.map lower) ∧ bytes3789.length=37 := by core033_kernel_decide
def op3790 : List WordIR.Op := [.band 3830 3832]
def bytes3790 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000ef9: u32 = r00000ef6 & r00000ef8;\n" : String)
theorem checked3790 : bytes3790=statementBytes 3833 (op3790.map lower) ∧ bytes3790.length=48 := by core033_kernel_decide
def op3791 : List WordIR.Op := [.bxor 3829 3833]
def bytes3791 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000efa: u32 = r00000ef5 ^ r00000ef9;\n" : String)
theorem checked3791 : bytes3791=statementBytes 3834 (op3791.map lower) ∧ bytes3791.length=48 := by core033_kernel_decide
def op3792 : List WordIR.Op := [.shr 3834 31]
def bytes3792 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000efb: u32 = r00000efa >> 0x0000001f_u32;\n" : String)
theorem checked3792 : bytes3792=statementBytes 3835 (op3792.map lower) ∧ bytes3792.length=54 := by core033_kernel_decide
def op3793 : List WordIR.Op := [.bxor 3835 43]
def bytes3793 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000efc: u32 = r00000efb ^ r0000002b;\n" : String)
theorem checked3793 : bytes3793=statementBytes 3836 (op3793.map lower) ∧ bytes3793.length=48 := by core033_kernel_decide
def op3794 : List WordIR.Op := [.bxor 3836 641]
def bytes3794 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000efd: u32 = r00000efc ^ r00000281;\n" : String)
theorem checked3794 : bytes3794=statementBytes 3837 (op3794.map lower) ∧ bytes3794.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op3776,op3777,op3778,op3779,op3780,op3781,op3782,op3783,op3784,op3785,op3786,op3787,op3788,op3789,op3790,op3791,op3792,op3793,op3794]
def chunks : List Bytes := [bytes3776,bytes3777,bytes3778,bytes3779,bytes3780,bytes3781,bytes3782,bytes3783,bytes3784,bytes3785,bytes3786,bytes3787,bytes3788,bytes3789,bytes3790,bytes3791,bytes3792,bytes3793,bytes3794]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 3819 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked3776.1 (.cons _ _ _ _ _ checked3777.1 (.cons _ _ _ _ _ checked3778.1 (.cons _ _ _ _ _ checked3779.1 (.cons _ _ _ _ _ checked3780.1 (.cons _ _ _ _ _ checked3781.1 (.cons _ _ _ _ _ checked3782.1 (.cons _ _ _ _ _ checked3783.1 (.cons _ _ _ _ _ checked3784.1 (.cons _ _ _ _ _ checked3785.1 (.cons _ _ _ _ _ checked3786.1 (.cons _ _ _ _ _ checked3787.1 (.cons _ _ _ _ _ checked3788.1 (.cons _ _ _ _ _ checked3789.1 (.cons _ _ _ _ _ checked3790.1 (.cons _ _ _ _ _ checked3791.1 (.cons _ _ _ _ _ checked3792.1 (.cons _ _ _ _ _ checked3793.1 (.cons _ _ _ _ _ checked3794.1 (.empty _))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 3819 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=19 := rfl
theorem partSize : partBytes.length=1003 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked3776.2,checked3777.2,checked3778.2,checked3779.2,checked3780.2,checked3781.2,checked3782.2,checked3783.2,checked3784.2,checked3785.2,checked3786.2,checked3787.2,checked3788.2,checked3789.2,checked3790.2,checked3791.2,checked3792.2,checked3793.2,checked3794.2]
  decide
end ArtifactSharedFrameGroup59
