import ArtifactShiftGroup0
import ArtifactShiftGroup1
namespace ArtifactShiftBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactShiftGroup0.partOps,ArtifactShiftGroup1.partOps]
def actualBody : List Bytes := [ArtifactShiftGroup0.partBytes,ArtifactShiftGroup1.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n) -> [u32; 0x00000002_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000056, r00000068]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualShiftIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 2 2 ∧ actualHeader.length=92 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualShiftIR.program.outputs ∧ actualFooter.length=29 := by core033_kernel_decide
theorem body_checked : BlockChain 2 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactShiftGroup0.partChecked (.cons _ _ _ _ _ ArtifactShiftGroup1.partChecked (.empty _)))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactShiftGroup0.partSize,ArtifactShiftGroup1.partSize]
  decide
theorem actual_validated : validate ActualShiftIR.program actualBytes=true :=
  validate_from_facts ActualShiftIR.program actualBytes ActualShiftIR.safe_checked
    (assembled_bytes_exact ActualShiftIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (WordShiftProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualShiftIR.program actualBytes actual_validated inputs
  rw [ActualShiftIR.ir_exact] at result
  exact result
end ArtifactShiftBlocks
