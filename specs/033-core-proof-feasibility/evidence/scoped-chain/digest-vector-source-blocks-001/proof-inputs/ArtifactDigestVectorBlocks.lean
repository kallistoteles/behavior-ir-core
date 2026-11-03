import ArtifactDigestVectorGroup0
namespace ArtifactDigestVectorBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactDigestVectorGroup0.partOps]
def actualBody : List Bytes := [ArtifactDigestVectorGroup0.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n) -> [u32; 0x00000001_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000047]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualDigestVectorIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 16 1 ∧ actualHeader.length=372 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualDigestVectorIR.program.outputs ∧ actualFooter.length=18 := by core033_kernel_decide
theorem body_checked : BlockChain 16 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactDigestVectorGroup0.partChecked (.empty _))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactDigestVectorGroup0.partSize]
  decide
theorem actual_validated : validate ActualDigestVectorIR.program actualBytes=true :=
  validate_from_facts ActualDigestVectorIR.program actualBytes ActualDigestVectorIR.safe_checked
    (assembled_bytes_exact ActualDigestVectorIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (WordVectorEquality.digestProgram.eval inputs) := by
  have result:=actual_bytes_sound ActualDigestVectorIR.program actualBytes actual_validated inputs
  rw [ActualDigestVectorIR.ir_exact] at result
  exact result
end ArtifactDigestVectorBlocks
