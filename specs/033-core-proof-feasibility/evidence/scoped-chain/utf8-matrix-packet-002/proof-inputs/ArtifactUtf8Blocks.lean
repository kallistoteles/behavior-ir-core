import ArtifactUtf8Group0
import ArtifactUtf8Group1
import ArtifactUtf8Group2
import ArtifactUtf8Group3
import ArtifactUtf8Group4
import ArtifactUtf8Group5
import ArtifactUtf8Group6
import ArtifactUtf8Group7
import ArtifactUtf8Group8
namespace ArtifactUtf8Blocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactUtf8Group0.partOps,ArtifactUtf8Group1.partOps,ArtifactUtf8Group2.partOps,ArtifactUtf8Group3.partOps,ArtifactUtf8Group4.partOps,ArtifactUtf8Group5.partOps,ArtifactUtf8Group6.partOps,ArtifactUtf8Group7.partOps,ArtifactUtf8Group8.partOps]
def actualBody : List Bytes := [ArtifactUtf8Group0.partBytes,ArtifactUtf8Group1.partBytes,ArtifactUtf8Group2.partBytes,ArtifactUtf8Group3.partBytes,ArtifactUtf8Group4.partBytes,ArtifactUtf8Group5.partBytes,ArtifactUtf8Group6.partBytes,ArtifactUtf8Group7.partBytes,ArtifactUtf8Group8.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n) -> [u32; 0x00000006_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r0000007b, r000000f7, r0000014a, r00000174, r000001e4, r0000020f]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualUtf8IR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 1 6 ∧ actualHeader.length=72 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualUtf8IR.program.outputs ∧ actualFooter.length=73 := by core033_kernel_decide
theorem body_checked : BlockChain 1 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactUtf8Group0.partChecked (.cons _ _ _ _ _ ArtifactUtf8Group1.partChecked (.cons _ _ _ _ _ ArtifactUtf8Group2.partChecked (.cons _ _ _ _ _ ArtifactUtf8Group3.partChecked (.cons _ _ _ _ _ ArtifactUtf8Group4.partChecked (.cons _ _ _ _ _ ArtifactUtf8Group5.partChecked (.cons _ _ _ _ _ ArtifactUtf8Group6.partChecked (.cons _ _ _ _ _ ArtifactUtf8Group7.partChecked (.cons _ _ _ _ _ ArtifactUtf8Group8.partChecked (.empty _))))))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactUtf8Group0.partSize,ArtifactUtf8Group1.partSize,ArtifactUtf8Group2.partSize,ArtifactUtf8Group3.partSize,ArtifactUtf8Group4.partSize,ArtifactUtf8Group5.partSize,ArtifactUtf8Group6.partSize,ArtifactUtf8Group7.partSize,ArtifactUtf8Group8.partSize]
  decide
theorem actual_validated : validate ActualUtf8IR.program actualBytes=true :=
  validate_from_facts ActualUtf8IR.program actualBytes ActualUtf8IR.safe_checked
    (assembled_bytes_exact ActualUtf8IR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (Utf8Program.program.eval inputs) := by
  have result:=actual_bytes_sound ActualUtf8IR.program actualBytes actual_validated inputs
  rw [ActualUtf8IR.ir_exact] at result
  exact result
end ArtifactUtf8Blocks
