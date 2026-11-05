import ActualPairedPathFinalizeIR
import Core033.SourceLiteralBytes
import Core033.KernelDecide
import ArtifactPairedPathFinalizeSourceHeader
import ArtifactPairedPathFinalizeSourceFooter
import ArtifactPairedPathFinalizeSourceGroup0
import ArtifactPairedPathFinalizeSourceGroup1
import ArtifactPairedPathFinalizeSourceGroup2
import ArtifactPairedPathFinalizeSourceGroup3
import ArtifactPairedPathFinalizeSourceGroup4
namespace ArtifactPairedPathFinalizeSource
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactPairedPathFinalizeSourceGroup0.partOps,ArtifactPairedPathFinalizeSourceGroup1.partOps,ArtifactPairedPathFinalizeSourceGroup2.partOps,ArtifactPairedPathFinalizeSourceGroup3.partOps,ArtifactPairedPathFinalizeSourceGroup4.partOps]
def actualBody : List Bytes := [ArtifactPairedPathFinalizeSourceGroup0.partBytes,ArtifactPairedPathFinalizeSourceGroup1.partBytes,ArtifactPairedPathFinalizeSourceGroup2.partBytes,ArtifactPairedPathFinalizeSourceGroup3.partBytes,ArtifactPairedPathFinalizeSourceGroup4.partBytes]
def actualHeader : Bytes := ArtifactPairedPathFinalizeSourceHeader.actualHeader
def actualFooter : Bytes := ArtifactPairedPathFinalizeSourceFooter.actualFooter
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem header_checked : actualHeader=headerBytes 96 112 ∧ actualHeader.length=1972 := ArtifactPairedPathFinalizeSourceHeader.checked
theorem footer_checked : actualFooter=suffix ActualPairedPathFinalizeIR.program.outputs ∧ actualFooter.length=1239 := ArtifactPairedPathFinalizeSourceFooter.checked
theorem partition_checked : ActualPairedPathFinalizeIR.program.operations=blocks.flatten := rfl
theorem body_checked : BlockChain 96 blocks actualBody := by
  unfold blocks actualBody
  apply BlockChain.cons _ _ _ _ _ ArtifactPairedPathFinalizeSourceGroup0.partChecked
  simp only [ArtifactPairedPathFinalizeSourceGroup0.partLength]
  apply BlockChain.cons _ _ _ _ _ ArtifactPairedPathFinalizeSourceGroup1.partChecked
  simp only [ArtifactPairedPathFinalizeSourceGroup1.partLength]
  apply BlockChain.cons _ _ _ _ _ ArtifactPairedPathFinalizeSourceGroup2.partChecked
  simp only [ArtifactPairedPathFinalizeSourceGroup2.partLength]
  apply BlockChain.cons _ _ _ _ _ ArtifactPairedPathFinalizeSourceGroup3.partChecked
  simp only [ArtifactPairedPathFinalizeSourceGroup3.partLength]
  apply BlockChain.cons _ _ _ _ _ ArtifactPairedPathFinalizeSourceGroup4.partChecked
  simp only [ArtifactPairedPathFinalizeSourceGroup4.partLength]
  exact .empty _
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactPairedPathFinalizeSourceGroup0.partSize,ArtifactPairedPathFinalizeSourceGroup1.partSize,ArtifactPairedPathFinalizeSourceGroup2.partSize,ArtifactPairedPathFinalizeSourceGroup3.partSize,ArtifactPairedPathFinalizeSourceGroup4.partSize]
  decide
theorem actual_validated : validate ActualPairedPathFinalizeIR.program actualBytes=true :=
  validate_from_facts ActualPairedPathFinalizeIR.program actualBytes ActualPairedPathFinalizeIR.safe_checked
    (assembled_bytes_exact ActualPairedPathFinalizeIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (ActualPairedPathFinalizeIR.program.eval inputs) :=
  actual_bytes_sound ActualPairedPathFinalizeIR.program actualBytes actual_validated inputs
end ArtifactPairedPathFinalizeSource
