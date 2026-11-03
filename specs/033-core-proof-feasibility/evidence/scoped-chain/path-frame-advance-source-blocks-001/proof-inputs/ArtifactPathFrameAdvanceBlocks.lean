import ArtifactPathFrameAdvanceGroup0
import ArtifactPathFrameAdvanceGroup1
import ArtifactPathFrameAdvanceGroup2
import ArtifactPathFrameAdvanceGroup3
import ArtifactPathFrameAdvanceGroup4
import ArtifactPathFrameAdvanceGroup5
namespace ArtifactPathFrameAdvanceBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactPathFrameAdvanceGroup0.partOps,ArtifactPathFrameAdvanceGroup1.partOps,ArtifactPathFrameAdvanceGroup2.partOps,ArtifactPathFrameAdvanceGroup3.partOps,ArtifactPathFrameAdvanceGroup4.partOps,ArtifactPathFrameAdvanceGroup5.partOps]
def actualBody : List Bytes := [ArtifactPathFrameAdvanceGroup0.partBytes,ArtifactPathFrameAdvanceGroup1.partBytes,ArtifactPathFrameAdvanceGroup2.partBytes,ArtifactPathFrameAdvanceGroup3.partBytes,ArtifactPathFrameAdvanceGroup4.partBytes,ArtifactPathFrameAdvanceGroup5.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n    r00000018: u32,\n    r00000019: u32,\n    r0000001a: u32,\n    r0000001b: u32,\n    r0000001c: u32,\n    r0000001d: u32,\n    r0000001e: u32,\n    r0000001f: u32,\n    r00000020: u32,\n    r00000021: u32,\n    r00000022: u32,\n    r00000023: u32,\n    r00000024: u32,\n    r00000025: u32,\n    r00000026: u32,\n    r00000027: u32,\n    r00000028: u32,\n    r00000029: u32,\n    r0000002a: u32,\n) -> [u32; 0x00000032_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r0000016f, r00000001, r00000135, r00000003, r00000004, r00000005, r00000006, r00000007, r00000008, r00000009, r0000000a, r00000031, r00000038, r0000003f, r00000046, r0000004d, r00000054, r0000005b, r00000062, r00000013, r00000014, r00000015, r00000016, r00000017, r00000018, r00000019, r0000001a, r00000063, r0000006c, r0000001d, r0000001e, r000000ea, r00000020, r000000eb, r00000022, r00000023, r00000024, r00000025, r00000026, r00000027, r00000028, r00000029, r0000002a, r000000e9, r000000fd, r0000010f, r00000121, r00000133, r0000014a, r00000184]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualPathFrameAdvanceIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 43 50 ∧ actualHeader.length=912 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualPathFrameAdvanceIR.program.outputs ∧ actualFooter.length=557 := by core033_kernel_decide
theorem body_checked : BlockChain 43 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactPathFrameAdvanceGroup0.partChecked (.cons _ _ _ _ _ ArtifactPathFrameAdvanceGroup1.partChecked (.cons _ _ _ _ _ ArtifactPathFrameAdvanceGroup2.partChecked (.cons _ _ _ _ _ ArtifactPathFrameAdvanceGroup3.partChecked (.cons _ _ _ _ _ ArtifactPathFrameAdvanceGroup4.partChecked (.cons _ _ _ _ _ ArtifactPathFrameAdvanceGroup5.partChecked (.empty _)))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactPathFrameAdvanceGroup0.partSize,ArtifactPathFrameAdvanceGroup1.partSize,ArtifactPathFrameAdvanceGroup2.partSize,ArtifactPathFrameAdvanceGroup3.partSize,ArtifactPathFrameAdvanceGroup4.partSize,ArtifactPathFrameAdvanceGroup5.partSize]
  decide
theorem actual_validated : validate ActualPathFrameAdvanceIR.program actualBytes=true :=
  validate_from_facts ActualPathFrameAdvanceIR.program actualBytes ActualPathFrameAdvanceIR.safe_checked
    (assembled_bytes_exact ActualPathFrameAdvanceIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (PathFrameAdvance.program.eval inputs) := by
  have result:=actual_bytes_sound ActualPathFrameAdvanceIR.program actualBytes actual_validated inputs
  rw [ActualPathFrameAdvanceIR.ir_exact] at result
  exact result
end ArtifactPathFrameAdvanceBlocks
