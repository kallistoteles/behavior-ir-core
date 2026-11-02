import ArtifactBranchAdmissionGroup0
import ArtifactBranchAdmissionGroup1
import ArtifactBranchAdmissionGroup2
import ArtifactBranchAdmissionGroup3
import ArtifactBranchAdmissionGroup4
namespace ArtifactBranchAdmissionBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactBranchAdmissionGroup0.partOps,ArtifactBranchAdmissionGroup1.partOps,ArtifactBranchAdmissionGroup2.partOps,ArtifactBranchAdmissionGroup3.partOps,ArtifactBranchAdmissionGroup4.partOps]
def actualBody : List Bytes := [ArtifactBranchAdmissionGroup0.partBytes,ArtifactBranchAdmissionGroup1.partBytes,ArtifactBranchAdmissionGroup2.partBytes,ArtifactBranchAdmissionGroup3.partBytes,ArtifactBranchAdmissionGroup4.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n    r00000018: u32,\n    r00000019: u32,\n) -> [u32; 0x00000007_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000034, r00000046, r00000058, r0000006a, r0000007f, r000000ac, r00000129]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualBranchAdmissionIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 26 7 ∧ actualHeader.length=572 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualBranchAdmissionIR.program.outputs ∧ actualFooter.length=84 := by core033_kernel_decide
theorem body_checked : BlockChain 26 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactBranchAdmissionGroup0.partChecked (.cons _ _ _ _ _ ArtifactBranchAdmissionGroup1.partChecked (.cons _ _ _ _ _ ArtifactBranchAdmissionGroup2.partChecked (.cons _ _ _ _ _ ArtifactBranchAdmissionGroup3.partChecked (.cons _ _ _ _ _ ArtifactBranchAdmissionGroup4.partChecked (.empty _))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactBranchAdmissionGroup0.partSize,ArtifactBranchAdmissionGroup1.partSize,ArtifactBranchAdmissionGroup2.partSize,ArtifactBranchAdmissionGroup3.partSize,ArtifactBranchAdmissionGroup4.partSize]
  decide
theorem actual_validated : validate ActualBranchAdmissionIR.program actualBytes=true :=
  validate_from_facts ActualBranchAdmissionIR.program actualBytes ActualBranchAdmissionIR.safe_checked
    (assembled_bytes_exact ActualBranchAdmissionIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (BranchAdmissionProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualBranchAdmissionIR.program actualBytes actual_validated inputs
  rw [ActualBranchAdmissionIR.ir_exact] at result
  exact result
end ArtifactBranchAdmissionBlocks
