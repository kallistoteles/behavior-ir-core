import ArtifactRangeGroup0
namespace ArtifactRangeBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactRangeGroup0.partOps]
def actualBody : List Bytes := [ArtifactRangeGroup0.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n) -> [u32; 0x00000003_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000012, r00000024, r00000036]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualRangeIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 1 3 ∧ actualHeader.length=72 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualRangeIR.program.outputs ∧ actualFooter.length=40 := by core033_kernel_decide
theorem body_checked : BlockChain 1 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactRangeGroup0.partChecked (.empty _))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactRangeGroup0.partSize]
  decide
theorem actual_validated : validate ActualRangeIR.program actualBytes=true :=
  validate_from_facts ActualRangeIR.program actualBytes ActualRangeIR.safe_checked
    (assembled_bytes_exact ActualRangeIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (ScalarRanges.program.eval inputs) := by
  have result:=actual_bytes_sound ActualRangeIR.program actualBytes actual_validated inputs
  rw [ActualRangeIR.ir_exact] at result
  exact result
end ArtifactRangeBlocks
