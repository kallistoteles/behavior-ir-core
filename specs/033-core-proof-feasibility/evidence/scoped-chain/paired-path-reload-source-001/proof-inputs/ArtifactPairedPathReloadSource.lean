import ActualPairedPathReloadIR
import Core033.SourceLiteralBytes
import Core033.KernelDecide
import ArtifactPairedPathReloadSourceHeader
import ArtifactPairedPathReloadSourceFooter
import ArtifactPairedPathReloadSourceGroup0
namespace ArtifactPairedPathReloadSource
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactPairedPathReloadSourceGroup0.partOps]
def actualBody : List Bytes := [ArtifactPairedPathReloadSourceGroup0.partBytes]
def actualHeader : Bytes := ArtifactPairedPathReloadSourceHeader.actualHeader
def actualFooter : Bytes := ArtifactPairedPathReloadSourceFooter.actualFooter
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualPairedPathReloadIR.program.operations=blocks.flatten := rfl
theorem body_checked : BlockChain 108 blocks actualBody := by
  unfold blocks actualBody
  apply BlockChain.cons _ _ _ _ _ ArtifactPairedPathReloadSourceGroup0.partChecked
  simp only [ArtifactPairedPathReloadSourceGroup0.partLength]
  exact .empty _
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,ArtifactPairedPathReloadSourceHeader.checked.2,ArtifactPairedPathReloadSourceFooter.checked.2,ArtifactPairedPathReloadSourceGroup0.partSize]
  decide
theorem actual_validated : validate ActualPairedPathReloadIR.program actualBytes=true :=
  validate_from_facts ActualPairedPathReloadIR.program actualBytes ActualPairedPathReloadIR.safe_checked
    (assembled_bytes_exact ActualPairedPathReloadIR.program blocks partition_checked actualHeader actualFooter actualBody ArtifactPairedPathReloadSourceHeader.checked.1 ArtifactPairedPathReloadSourceFooter.checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (ActualPairedPathReloadIR.program.eval inputs) :=
  actual_bytes_sound ActualPairedPathReloadIR.program actualBytes actual_validated inputs
end ArtifactPairedPathReloadSource
