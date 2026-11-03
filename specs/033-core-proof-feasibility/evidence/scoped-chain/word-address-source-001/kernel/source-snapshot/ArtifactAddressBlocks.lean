import ArtifactAddressGroup0
import ArtifactAddressGroup1
import ArtifactAddressGroup2
import ArtifactAddressGroup3
import ArtifactAddressGroup4
namespace ArtifactAddressBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactAddressGroup0.partOps,ArtifactAddressGroup1.partOps,ArtifactAddressGroup2.partOps,ArtifactAddressGroup3.partOps,ArtifactAddressGroup4.partOps]
def actualBody : List Bytes := [ArtifactAddressGroup0.partBytes,ArtifactAddressGroup1.partBytes,ArtifactAddressGroup2.partBytes,ArtifactAddressGroup3.partBytes,ArtifactAddressGroup4.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n) -> [u32; 0x00000004_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r0000010a, r0000001e, r000000a0, r00000107]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualAddressIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 9 4 ∧ actualHeader.length=232 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualAddressIR.program.outputs ∧ actualFooter.length=51 := by core033_kernel_decide
theorem body_checked : BlockChain 9 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactAddressGroup0.partChecked (.cons _ _ _ _ _ ArtifactAddressGroup1.partChecked (.cons _ _ _ _ _ ArtifactAddressGroup2.partChecked (.cons _ _ _ _ _ ArtifactAddressGroup3.partChecked (.cons _ _ _ _ _ ArtifactAddressGroup4.partChecked (.empty _))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactAddressGroup0.partSize,ArtifactAddressGroup1.partSize,ArtifactAddressGroup2.partSize,ArtifactAddressGroup3.partSize,ArtifactAddressGroup4.partSize]
  decide
theorem actual_validated : validate ActualAddressIR.program actualBytes=true :=
  validate_from_facts ActualAddressIR.program actualBytes ActualAddressIR.safe_checked
    (assembled_bytes_exact ActualAddressIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (WordAddressProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualAddressIR.program actualBytes actual_validated inputs
  rw [ActualAddressIR.ir_exact] at result
  exact result
end ArtifactAddressBlocks
