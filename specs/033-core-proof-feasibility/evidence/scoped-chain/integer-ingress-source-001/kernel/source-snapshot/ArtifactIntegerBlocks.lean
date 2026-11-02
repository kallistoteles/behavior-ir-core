import ArtifactIntegerGroup0
import ArtifactIntegerGroup1
import ArtifactIntegerGroup2
namespace ArtifactIntegerBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactIntegerGroup0.partOps,ArtifactIntegerGroup1.partOps,ArtifactIntegerGroup2.partOps]
def actualBody : List Bytes := [ArtifactIntegerGroup0.partBytes,ArtifactIntegerGroup1.partBytes,ArtifactIntegerGroup2.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n) -> [u32; 0x0000000a_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r0000000d, r00000013, r00000025, r00000037, r00000049, r0000005b, r0000006d, r0000007f, r00000091, r000000a3]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualIntegerIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 8 10 ∧ actualHeader.length=212 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualIntegerIR.program.outputs ∧ actualFooter.length=117 := by core033_kernel_decide
theorem body_checked : BlockChain 8 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactIntegerGroup0.partChecked (.cons _ _ _ _ _ ArtifactIntegerGroup1.partChecked (.cons _ _ _ _ _ ArtifactIntegerGroup2.partChecked (.empty _))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactIntegerGroup0.partSize,ArtifactIntegerGroup1.partSize,ArtifactIntegerGroup2.partSize]
  decide
theorem actual_validated : validate ActualIntegerIR.program actualBytes=true :=
  validate_from_facts ActualIntegerIR.program actualBytes ActualIntegerIR.safe_checked
    (assembled_bytes_exact ActualIntegerIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (IntegerIngress.program.eval inputs) := by
  have result:=actual_bytes_sound ActualIntegerIR.program actualBytes actual_validated inputs
  rw [ActualIntegerIR.ir_exact] at result
  exact result
end ArtifactIntegerBlocks
