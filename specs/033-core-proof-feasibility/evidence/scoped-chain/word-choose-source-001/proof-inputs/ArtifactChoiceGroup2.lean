import ActualChoiceIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactChoiceGroup2
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op128 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes128 : Bytes := ("    let r00000089: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked128 : bytes128=statementBytes 137 (op128.map lower) ∧ bytes128.length=41 := by core033_kernel_decide
def op129 : List WordIR.Op := [.bxor 136 137]
def bytes129 : Bytes := ("    let r0000008a: u32 = r00000088 ^ r00000089;\n" : String).toByteArray.data.toList
theorem checked129 : bytes129=statementBytes 138 (op129.map lower) ∧ bytes129.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op128,op129]
def chunks : List Bytes := [bytes128,bytes129]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 137 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked128.1 (.cons _ _ _ _ _ checked129.1 (.empty _)))
theorem partChecked : partBytes=statementBytes 137 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=2 := rfl
theorem partSize : partBytes.length=89 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked128.2,checked129.2]
  decide
end ArtifactChoiceGroup2
