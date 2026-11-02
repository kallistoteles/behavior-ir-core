import ArtifactPadByteGroup0
import ArtifactPadByteGroup1
import ArtifactPadByteGroup2
import ArtifactPadByteGroup3
import ArtifactPadByteGroup4
import ArtifactPadByteGroup5
import ArtifactPadByteGroup6
import ArtifactPadByteGroup7
import ArtifactPadByteGroup8
import ArtifactPadByteGroup9
import ArtifactPadByteGroup10
import ArtifactPadByteGroup11
import ArtifactPadByteGroup12
namespace ArtifactPadByteBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactPadByteGroup0.partOps,ArtifactPadByteGroup1.partOps,ArtifactPadByteGroup2.partOps,ArtifactPadByteGroup3.partOps,ArtifactPadByteGroup4.partOps,ArtifactPadByteGroup5.partOps,ArtifactPadByteGroup6.partOps,ArtifactPadByteGroup7.partOps,ArtifactPadByteGroup8.partOps,ArtifactPadByteGroup9.partOps,ArtifactPadByteGroup10.partOps,ArtifactPadByteGroup11.partOps,ArtifactPadByteGroup12.partOps]
def actualBody : List Bytes := [ArtifactPadByteGroup0.partBytes,ArtifactPadByteGroup1.partBytes,ArtifactPadByteGroup2.partBytes,ArtifactPadByteGroup3.partBytes,ArtifactPadByteGroup4.partBytes,ArtifactPadByteGroup5.partBytes,ArtifactPadByteGroup6.partBytes,ArtifactPadByteGroup7.partBytes,ArtifactPadByteGroup8.partBytes,ArtifactPadByteGroup9.partBytes,ArtifactPadByteGroup10.partBytes,ArtifactPadByteGroup11.partBytes,ArtifactPadByteGroup12.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n) -> [u32; 0x00000004_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r000002e9, r000002f6, r00000324, r00000336]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualPadByteIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 3 4 ∧ actualHeader.length=112 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualPadByteIR.program.outputs ∧ actualFooter.length=51 := by core033_kernel_decide
theorem body_checked : BlockChain 3 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactPadByteGroup0.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup1.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup2.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup3.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup4.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup5.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup6.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup7.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup8.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup9.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup10.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup11.partChecked (.cons _ _ _ _ _ ArtifactPadByteGroup12.partChecked (.empty _))))))))))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactPadByteGroup0.partSize,ArtifactPadByteGroup1.partSize,ArtifactPadByteGroup2.partSize,ArtifactPadByteGroup3.partSize,ArtifactPadByteGroup4.partSize,ArtifactPadByteGroup5.partSize,ArtifactPadByteGroup6.partSize,ArtifactPadByteGroup7.partSize,ArtifactPadByteGroup8.partSize,ArtifactPadByteGroup9.partSize,ArtifactPadByteGroup10.partSize,ArtifactPadByteGroup11.partSize,ArtifactPadByteGroup12.partSize]
  decide
theorem actual_validated : validate ActualPadByteIR.program actualBytes=true :=
  validate_from_facts ActualPadByteIR.program actualBytes ActualPadByteIR.safe_checked
    (assembled_bytes_exact ActualPadByteIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (PaddingByteProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualPadByteIR.program actualBytes actual_validated inputs
  rw [ActualPadByteIR.ir_exact] at result
  exact result
end ArtifactPadByteBlocks
