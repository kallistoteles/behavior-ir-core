import ArtifactDigestVectorFooter
import Core033.WordVectorEquality
import ArtifactDigestVectorHeader
import ArtifactDigestVectorGroup0
namespace ArtifactDigestVectorBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def partOps0 : List WordIR.Op := [.bxor 0 8,.bnot 16,.bxor 1 9,.bnot 18,.bxor 2 10,.bnot 20,.bxor 3 11,.bnot 22,.bxor 4 12,.bnot 24,.bxor 5 13,.bnot 26,.bxor 6 14,.bnot 28,.bxor 7 15,.bnot 30,.literal (BitVec.ofNat 32 0),.bnot 32,.band 31 33,.bnot 34,.bnot 35,.band 29 36,.bnot 37,.bnot 38,.band 27 39,.bnot 40,.bnot 41,.band 25 42,.bnot 43,.bnot 44,.band 23 45,.bnot 46,.bnot 47,.band 21 48,.bnot 49,.bnot 50,.band 19 51,.bnot 52,.bnot 53,.band 17 54,.bnot 55,.literal (BitVec.ofNat 32 0),.bnot 57,.band 56 58,.literal (BitVec.ofNat 32 0),.bnot 60,.bxor 56 61,.literal (BitVec.ofNat 32 0),.bnot 63,.badd 56 64,.bnot 65,.band 62 66,.bxor 59 67,.shr 68 31,.literal (BitVec.ofNat 32 1),.bxor 69 70]
theorem partPartition0 : partOps0=ArtifactDigestVectorGroup0.partOps := rfl
theorem partChecked0 : ArtifactDigestVectorGroup0.partBytes=statementBytes 16 (partOps0.map lower) := by
  rw [partPartition0]
  exact ArtifactDigestVectorGroup0.partChecked
theorem partLength0 : partOps0.length=56 := rfl
def blocks : List (List WordIR.Op) := [partOps0]
def actualBody : List Bytes := [ArtifactDigestVectorGroup0.partBytes]
def actualHeader : Bytes := ArtifactDigestVectorHeader.actualHeader
def actualFooter : Bytes := ArtifactDigestVectorFooter.actualFooter
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualDigestVectorIR.program.operations=blocks.flatten := by
  change ActualDigestVectorIR.operationChunks.flatten=blocks.flatten
  apply congrArg List.flatten
  rfl
theorem header_checked : actualHeader=headerBytes 16 1 ∧ actualHeader.length=372 := ArtifactDigestVectorHeader.checked
theorem footer_checked : actualFooter=suffix ActualDigestVectorIR.program.outputs ∧ actualFooter.length=18 := ArtifactDigestVectorFooter.checked
theorem body_checked : BlockChain 16 blocks actualBody := by
  unfold blocks actualBody
  apply BlockChain.cons _ _ _ _ _ partChecked0
  simp only [partLength0]
  exact .empty _
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactDigestVectorGroup0.partSize]
  decide
theorem actual_validated : validate ActualDigestVectorIR.program actualBytes=true :=
  validate_from_facts ActualDigestVectorIR.program actualBytes ActualDigestVectorIR.safe_checked
    (assembled_bytes_exact ActualDigestVectorIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (WordVectorEquality.digestProgram.eval inputs) := by
  have result:=actual_bytes_sound ActualDigestVectorIR.program actualBytes actual_validated inputs
  rw [ActualDigestVectorIR.ir_exact] at result
  exact result
end ArtifactDigestVectorBlocks
