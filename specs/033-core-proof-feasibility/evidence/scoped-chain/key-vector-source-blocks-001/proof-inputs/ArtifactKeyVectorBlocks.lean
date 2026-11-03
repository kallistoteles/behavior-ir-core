import ArtifactKeyVectorGroup0
import ArtifactKeyVectorGroup1
import ArtifactKeyVectorGroup2
import ArtifactKeyVectorGroup3
namespace ArtifactKeyVectorBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactKeyVectorGroup0.partOps,ArtifactKeyVectorGroup1.partOps,ArtifactKeyVectorGroup2.partOps,ArtifactKeyVectorGroup3.partOps]
def actualBody : List Bytes := [ArtifactKeyVectorGroup0.partBytes,ArtifactKeyVectorGroup1.partBytes,ArtifactKeyVectorGroup2.partBytes,ArtifactKeyVectorGroup3.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n    r00000018: u32,\n    r00000019: u32,\n    r0000001a: u32,\n    r0000001b: u32,\n    r0000001c: u32,\n    r0000001d: u32,\n    r0000001e: u32,\n    r0000001f: u32,\n    r00000020: u32,\n    r00000021: u32,\n    r00000022: u32,\n    r00000023: u32,\n    r00000024: u32,\n    r00000025: u32,\n    r00000026: u32,\n    r00000027: u32,\n    r00000028: u32,\n    r00000029: u32,\n    r0000002a: u32,\n    r0000002b: u32,\n    r0000002c: u32,\n    r0000002d: u32,\n    r0000002e: u32,\n    r0000002f: u32,\n    r00000030: u32,\n    r00000031: u32,\n    r00000032: u32,\n    r00000033: u32,\n    r00000034: u32,\n    r00000035: u32,\n    r00000036: u32,\n    r00000037: u32,\n    r00000038: u32,\n    r00000039: u32,\n    r0000003a: u32,\n    r0000003b: u32,\n    r0000003c: u32,\n    r0000003d: u32,\n    r0000003e: u32,\n    r0000003f: u32,\n    r00000040: u32,\n    r00000041: u32,\n    r00000042: u32,\n    r00000043: u32,\n    r00000044: u32,\n    r00000045: u32,\n    r00000046: u32,\n    r00000047: u32,\n    r00000048: u32,\n    r00000049: u32,\n    r0000004a: u32,\n    r0000004b: u32,\n    r0000004c: u32,\n    r0000004d: u32,\n    r0000004e: u32,\n    r0000004f: u32,\n    r00000050: u32,\n    r00000051: u32,\n    r00000052: u32,\n    r00000053: u32,\n    r00000054: u32,\n    r00000055: u32,\n    r00000056: u32,\n    r00000057: u32,\n    r00000058: u32,\n    r00000059: u32,\n    r0000005a: u32,\n    r0000005b: u32,\n    r0000005c: u32,\n    r0000005d: u32,\n    r0000005e: u32,\n    r0000005f: u32,\n) -> [u32; 0x00000001_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r0000015f]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualKeyVectorIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 96 1 ∧ actualHeader.length=1972 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualKeyVectorIR.program.outputs ∧ actualFooter.length=18 := by core033_kernel_decide
theorem body_checked : BlockChain 96 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactKeyVectorGroup0.partChecked (.cons _ _ _ _ _ ArtifactKeyVectorGroup1.partChecked (.cons _ _ _ _ _ ArtifactKeyVectorGroup2.partChecked (.cons _ _ _ _ _ ArtifactKeyVectorGroup3.partChecked (.empty _)))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactKeyVectorGroup0.partSize,ArtifactKeyVectorGroup1.partSize,ArtifactKeyVectorGroup2.partSize,ArtifactKeyVectorGroup3.partSize]
  decide
theorem actual_validated : validate ActualKeyVectorIR.program actualBytes=true :=
  validate_from_facts ActualKeyVectorIR.program actualBytes ActualKeyVectorIR.safe_checked
    (assembled_bytes_exact ActualKeyVectorIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (WordVectorEquality.keyProgram.eval inputs) := by
  have result:=actual_bytes_sound ActualKeyVectorIR.program actualBytes actual_validated inputs
  rw [ActualKeyVectorIR.ir_exact] at result
  exact result
end ArtifactKeyVectorBlocks
