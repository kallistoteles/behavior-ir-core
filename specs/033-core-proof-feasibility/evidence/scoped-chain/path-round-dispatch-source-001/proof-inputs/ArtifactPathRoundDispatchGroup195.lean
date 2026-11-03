import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup195
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12480 : List WordIR.Op := [.shr 12522 31]
def bytes12480 : Bytes := ("    let r000030eb: u32 = r000030ea >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12480 : bytes12480=statementBytes 12523 (op12480.map lower) ∧ bytes12480.length=54 := by core033_kernel_decide
def op12481 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12481 : Bytes := ("    let r000030ec: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12481 : bytes12481=statementBytes 12524 (op12481.map lower) ∧ bytes12481.length=41 := by core033_kernel_decide
def op12482 : List WordIR.Op := [.bxor 12523 12524]
def bytes12482 : Bytes := ("    let r000030ed: u32 = r000030eb ^ r000030ec;\n" : String).toByteArray.data.toList
theorem checked12482 : bytes12482=statementBytes 12525 (op12482.map lower) ∧ bytes12482.length=48 := by core033_kernel_decide
def op12483 : List WordIR.Op := [.bxor 12504 12525]
def bytes12483 : Bytes := ("    let r000030ee: u32 = r000030d8 ^ r000030ed;\n" : String).toByteArray.data.toList
theorem checked12483 : bytes12483=statementBytes 12526 (op12483.map lower) ∧ bytes12483.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12480,op12481,op12482,op12483]
def chunks : List Bytes := [bytes12480,bytes12481,bytes12482,bytes12483]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12523 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12480.1 (.cons _ _ _ _ _ checked12481.1 (.cons _ _ _ _ _ checked12482.1 (.cons _ _ _ _ _ checked12483.1 (.empty _)))))
theorem partChecked : partBytes=statementBytes 12523 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=4 := rfl
theorem partSize : partBytes.length=191 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12480.2,checked12481.2,checked12482.2,checked12483.2]
  decide
end ArtifactPathRoundDispatchGroup195
