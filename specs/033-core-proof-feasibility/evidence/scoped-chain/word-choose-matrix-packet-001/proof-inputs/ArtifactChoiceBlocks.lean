import ArtifactChoiceGroup0
import ArtifactChoiceGroup1
import ArtifactChoiceGroup2
namespace ArtifactChoiceBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactChoiceGroup0.partOps,ArtifactChoiceGroup1.partOps,ArtifactChoiceGroup2.partOps]
def actualBody : List Bytes := [ArtifactChoiceGroup0.partBytes,ArtifactChoiceGroup1.partBytes,ArtifactChoiceGroup2.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n) -> [u32; 0x00000002_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000078, r0000008a]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualChoiceIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 9 2 ∧ actualHeader.length=232 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualChoiceIR.program.outputs ∧ actualFooter.length=29 := by core033_kernel_decide
theorem body_checked : BlockChain 9 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactChoiceGroup0.partChecked (.cons _ _ _ _ _ ArtifactChoiceGroup1.partChecked (.cons _ _ _ _ _ ArtifactChoiceGroup2.partChecked (.empty _))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactChoiceGroup0.partSize,ArtifactChoiceGroup1.partSize,ArtifactChoiceGroup2.partSize]
  decide
theorem actual_validated : validate ActualChoiceIR.program actualBytes=true :=
  validate_from_facts ActualChoiceIR.program actualBytes ActualChoiceIR.safe_checked
    (assembled_bytes_exact ActualChoiceIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (WordChooseProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualChoiceIR.program actualBytes actual_validated inputs
  rw [ActualChoiceIR.ir_exact] at result
  exact result
end ArtifactChoiceBlocks
