import ArtifactNodeCountGroup0
import ArtifactNodeCountGroup1
import ArtifactNodeCountGroup2
namespace ArtifactNodeCountBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactNodeCountGroup0.partOps,ArtifactNodeCountGroup1.partOps,ArtifactNodeCountGroup2.partOps]
def actualBody : List Bytes := [ArtifactNodeCountGroup0.partBytes,ArtifactNodeCountGroup1.partBytes,ArtifactNodeCountGroup2.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n) -> [u32; 0x00000003_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000004, r0000000d, r0000008a]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualNodeCountIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 4 3 ∧ actualHeader.length=132 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualNodeCountIR.program.outputs ∧ actualFooter.length=40 := by core033_kernel_decide
theorem body_checked : BlockChain 4 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactNodeCountGroup0.partChecked (.cons _ _ _ _ _ ArtifactNodeCountGroup1.partChecked (.cons _ _ _ _ _ ArtifactNodeCountGroup2.partChecked (.empty _))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactNodeCountGroup0.partSize,ArtifactNodeCountGroup1.partSize,ArtifactNodeCountGroup2.partSize]
  decide
theorem actual_validated : validate ActualNodeCountIR.program actualBytes=true :=
  validate_from_facts ActualNodeCountIR.program actualBytes ActualNodeCountIR.safe_checked
    (assembled_bytes_exact ActualNodeCountIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (NodeCountProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualNodeCountIR.program actualBytes actual_validated inputs
  rw [ActualNodeCountIR.ir_exact] at result
  exact result
end ArtifactNodeCountBlocks
