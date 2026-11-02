import ActualNodeCountIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactNodeCountGroup2
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op128 : List WordIR.Op := [.band 126 131]
def bytes128 : Bytes := ("    let r00000084: u32 = r0000007e & r00000083;\n" : String).toByteArray.data.toList
theorem checked128 : bytes128=statementBytes 132 (op128.map lower) ∧ bytes128.length=48 := by core033_kernel_decide
def op129 : List WordIR.Op := [.bxor 122 132]
def bytes129 : Bytes := ("    let r00000085: u32 = r0000007a ^ r00000084;\n" : String).toByteArray.data.toList
theorem checked129 : bytes129=statementBytes 133 (op129.map lower) ∧ bytes129.length=48 := by core033_kernel_decide
def op130 : List WordIR.Op := [.shr 133 31]
def bytes130 : Bytes := ("    let r00000086: u32 = r00000085 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked130 : bytes130=statementBytes 134 (op130.map lower) ∧ bytes130.length=54 := by core033_kernel_decide
def op131 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes131 : Bytes := ("    let r00000087: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked131 : bytes131=statementBytes 135 (op131.map lower) ∧ bytes131.length=41 := by core033_kernel_decide
def op132 : List WordIR.Op := [.bxor 134 135]
def bytes132 : Bytes := ("    let r00000088: u32 = r00000086 ^ r00000087;\n" : String).toByteArray.data.toList
theorem checked132 : bytes132=statementBytes 136 (op132.map lower) ∧ bytes132.length=48 := by core033_kernel_decide
def op133 : List WordIR.Op := [.band 118 136]
def bytes133 : Bytes := ("    let r00000089: u32 = r00000076 & r00000088;\n" : String).toByteArray.data.toList
theorem checked133 : bytes133=statementBytes 137 (op133.map lower) ∧ bytes133.length=48 := by core033_kernel_decide
def op134 : List WordIR.Op := [.band 76 137]
def bytes134 : Bytes := ("    let r0000008a: u32 = r0000004c & r00000089;\n" : String).toByteArray.data.toList
theorem checked134 : bytes134=statementBytes 138 (op134.map lower) ∧ bytes134.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op128,op129,op130,op131,op132,op133,op134]
def chunks : List Bytes := [bytes128,bytes129,bytes130,bytes131,bytes132,bytes133,bytes134]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 132 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked128.1 (.cons _ _ _ _ _ checked129.1 (.cons _ _ _ _ _ checked130.1 (.cons _ _ _ _ _ checked131.1 (.cons _ _ _ _ _ checked132.1 (.cons _ _ _ _ _ checked133.1 (.cons _ _ _ _ _ checked134.1 (.empty _))))))))
theorem partChecked : partBytes=statementBytes 132 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=7 := rfl
theorem partSize : partBytes.length=335 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked128.2,checked129.2,checked130.2,checked131.2,checked132.2,checked133.2,checked134.2]
  decide
end ArtifactNodeCountGroup2
