import ArtifactOwnBranchRoutingGroup0
namespace ArtifactOwnBranchRoutingBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactOwnBranchRoutingGroup0.partOps]
def actualBody : List Bytes := [ArtifactOwnBranchRoutingGroup0.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n    r00000018: u32,\n    r00000019: u32,\n    r0000001a: u32,\n    r0000001b: u32,\n    r0000001c: u32,\n    r0000001d: u32,\n    r0000001e: u32,\n    r0000001f: u32,\n    r00000020: u32,\n) -> [u32; 0x0000002d_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000018, r00000001, r00000022, r00000023, r00000024, r00000025, r00000026, r00000027, r00000028, r00000029, r0000002a, r00000002, r00000003, r00000004, r00000005, r00000006, r00000007, r00000008, r00000009, r0000000a, r0000000b, r0000000c, r0000000d, r0000000e, r0000000f, r00000010, r00000011, r00000012, r00000013, r00000014, r00000015, r00000016, r0000002b, r00000017, r0000002c, r00000019, r0000001a, r0000001b, r0000001c, r0000001d, r0000001e, r0000001f, r00000020, r00000039, r0000004b]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualOwnBranchRoutingIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 33 45 ∧ actualHeader.length=712 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualOwnBranchRoutingIR.program.outputs ∧ actualFooter.length=502 := by core033_kernel_decide
theorem body_checked : BlockChain 33 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactOwnBranchRoutingGroup0.partChecked (.empty _))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactOwnBranchRoutingGroup0.partSize]
  decide
theorem actual_validated : validate ActualOwnBranchRoutingIR.program actualBytes=true :=
  validate_from_facts ActualOwnBranchRoutingIR.program actualBytes ActualOwnBranchRoutingIR.safe_checked
    (assembled_bytes_exact ActualOwnBranchRoutingIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (OwnBranchRouting.program.eval inputs) := by
  have result:=actual_bytes_sound ActualOwnBranchRoutingIR.program actualBytes actual_validated inputs
  rw [ActualOwnBranchRoutingIR.ir_exact] at result
  exact result
end ArtifactOwnBranchRoutingBlocks
