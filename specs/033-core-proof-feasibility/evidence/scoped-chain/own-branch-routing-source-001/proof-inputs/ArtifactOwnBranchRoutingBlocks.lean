import ArtifactOwnBranchRoutingFooter
import Core033.OwnBranchRouting
import ArtifactOwnBranchRoutingHeader
import ArtifactOwnBranchRoutingGroup0
namespace ArtifactOwnBranchRoutingBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def partOps0 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295),.badd 0 33,.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 1),.literal (BitVec.ofNat 32 1),.literal (BitVec.ofNat 32 0),.bnot 45,.band 0 46,.literal (BitVec.ofNat 32 0),.bnot 48,.bxor 0 49,.literal (BitVec.ofNat 32 0),.bnot 51,.badd 0 52,.bnot 53,.band 50 54,.bxor 47 55,.shr 56 31,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 59,.band 58 60,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 63,.bxor 62 64,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 67,.badd 66 68,.bnot 69,.band 65 70,.bxor 61 71,.shr 72 31,.literal (BitVec.ofNat 32 1),.bxor 73 74]
theorem partPartition0 : partOps0=ArtifactOwnBranchRoutingGroup0.partOps := rfl
theorem partChecked0 : ArtifactOwnBranchRoutingGroup0.partBytes=statementBytes 33 (partOps0.map lower) := by
  rw [partPartition0]
  exact ArtifactOwnBranchRoutingGroup0.partChecked
theorem partLength0 : partOps0.length=43 := rfl
def blocks : List (List WordIR.Op) := [partOps0]
def actualBody : List Bytes := [ArtifactOwnBranchRoutingGroup0.partBytes]
def actualHeader : Bytes := ArtifactOwnBranchRoutingHeader.actualHeader
def actualFooter : Bytes := ArtifactOwnBranchRoutingFooter.actualFooter
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualOwnBranchRoutingIR.program.operations=blocks.flatten := by
  change ActualOwnBranchRoutingIR.operationChunks.flatten=blocks.flatten
  apply congrArg List.flatten
  rfl
theorem header_checked : actualHeader=headerBytes 33 45 ∧ actualHeader.length=712 := ArtifactOwnBranchRoutingHeader.checked
theorem footer_checked : actualFooter=suffix ActualOwnBranchRoutingIR.program.outputs ∧ actualFooter.length=502 := ArtifactOwnBranchRoutingFooter.checked
theorem body_checked : BlockChain 33 blocks actualBody := by
  unfold blocks actualBody
  apply BlockChain.cons _ _ _ _ _ partChecked0
  simp only [partLength0]
  exact .empty _
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactOwnBranchRoutingGroup0.partSize]
  decide
theorem actual_validated : validate ActualOwnBranchRoutingIR.program actualBytes=true :=
  validate_from_facts ActualOwnBranchRoutingIR.program actualBytes ActualOwnBranchRoutingIR.safe_checked
    (assembled_bytes_exact ActualOwnBranchRoutingIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (OwnBranchRouting.program.eval inputs) := by
  have result:=actual_bytes_sound ActualOwnBranchRoutingIR.program actualBytes actual_validated inputs
  rw [ActualOwnBranchRoutingIR.ir_exact] at result
  exact result
end ArtifactOwnBranchRoutingBlocks
