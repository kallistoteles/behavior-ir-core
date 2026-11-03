import ActualAddressIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAddressGroup4
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op256 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes256 : Bytes := ("    let r00000109: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked256 : bytes256=statementBytes 265 (op256.map lower) ∧ bytes256.length=41 := by core033_kernel_decide
def op257 : List WordIR.Op := [.band 264 265]
def bytes257 : Bytes := ("    let r0000010a: u32 = r00000108 & r00000109;\n" : String).toByteArray.data.toList
theorem checked257 : bytes257=statementBytes 266 (op257.map lower) ∧ bytes257.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op256,op257]
def chunks : List Bytes := [bytes256,bytes257]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 265 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked256.1 (.cons _ _ _ _ _ checked257.1 (.empty _)))
theorem partChecked : partBytes=statementBytes 265 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=2 := rfl
theorem partSize : partBytes.length=89 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked256.2,checked257.2]
  decide
end ArtifactAddressGroup4
