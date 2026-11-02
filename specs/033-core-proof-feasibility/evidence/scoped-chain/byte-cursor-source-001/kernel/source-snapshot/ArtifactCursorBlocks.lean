import ArtifactCursorGroup0
import ArtifactCursorGroup1
namespace ArtifactCursorBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactCursorGroup0.partOps,ArtifactCursorGroup1.partOps]
def actualBody : List Bytes := [ArtifactCursorGroup0.partBytes,ArtifactCursorGroup1.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n) -> [u32; 0x00000004_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000003, r00000008, r0000003d, r0000005b]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualCursorIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 3 4 ∧ actualHeader.length=112 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualCursorIR.program.outputs ∧ actualFooter.length=51 := by core033_kernel_decide
theorem body_checked : BlockChain 3 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactCursorGroup0.partChecked (.cons _ _ _ _ _ ArtifactCursorGroup1.partChecked (.empty _)))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactCursorGroup0.partSize,ArtifactCursorGroup1.partSize]
  decide
theorem actual_validated : validate ActualCursorIR.program actualBytes=true :=
  validate_from_facts ActualCursorIR.program actualBytes ActualCursorIR.safe_checked
    (assembled_bytes_exact ActualCursorIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (ByteCursorProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualCursorIR.program actualBytes actual_validated inputs
  rw [ActualCursorIR.ir_exact] at result
  exact result
end ArtifactCursorBlocks
