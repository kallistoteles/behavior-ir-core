import ArtifactCheckedBranchGroup0
import ArtifactCheckedBranchGroup1
import ArtifactCheckedBranchGroup2
import ArtifactCheckedBranchGroup3
import ArtifactCheckedBranchGroup4
import ArtifactCheckedBranchGroup5
import ArtifactCheckedBranchGroup6
import ArtifactCheckedBranchGroup7
import ArtifactCheckedBranchGroup8
namespace ArtifactCheckedBranchBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactCheckedBranchGroup0.partOps,ArtifactCheckedBranchGroup1.partOps,ArtifactCheckedBranchGroup2.partOps,ArtifactCheckedBranchGroup3.partOps,ArtifactCheckedBranchGroup4.partOps,ArtifactCheckedBranchGroup5.partOps,ArtifactCheckedBranchGroup6.partOps,ArtifactCheckedBranchGroup7.partOps,ArtifactCheckedBranchGroup8.partOps]
def actualBody : List Bytes := [ArtifactCheckedBranchGroup0.partBytes,ArtifactCheckedBranchGroup1.partBytes,ArtifactCheckedBranchGroup2.partBytes,ArtifactCheckedBranchGroup3.partBytes,ArtifactCheckedBranchGroup4.partBytes,ArtifactCheckedBranchGroup5.partBytes,ArtifactCheckedBranchGroup6.partBytes,ArtifactCheckedBranchGroup7.partBytes,ArtifactCheckedBranchGroup8.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n    r00000018: u32,\n    r00000019: u32,\n) -> [u32; 0x0000007a_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r0000001a, r0000001b, r0000001c, r0000001d, r0000001e, r0000001f, r00000020, r00000021, r00000022, r00000023, r00000024, r00000025, r00000026, r00000027, r00000028, r00000029, r0000002a, r0000002b, r0000002c, r0000002d, r0000002e, r0000002f, r00000032, r00000035, r00000038, r0000003b, r0000003e, r00000041, r00000044, r00000047, r0000004a, r0000004d, r00000050, r00000053, r00000056, r00000059, r0000005c, r0000005f, r00000062, r00000065, r00000068, r0000006b, r0000006e, r00000071, r00000074, r00000077, r0000007a, r0000007d, r00000080, r00000083, r00000086, r00000089, r0000008c, r0000008f, r00000092, r00000095, r00000098, r0000009b, r0000009e, r000000a1, r000000a4, r000000a7, r000000aa, r000000ad, r000000b0, r000000b3, r000000b6, r000000b9, r000000bc, r000000bf, r000000c2, r000000c5, r000000c8, r000000cb, r000000ce, r000000d1, r000000d4, r000000d7, r000000da, r000000dd, r000000e0, r000000e3, r000000e6, r000000e9, r000000ec, r000000ef, r000000f2, r000000f5, r000000f8, r000000fb, r000000fe, r00000101, r00000104, r00000107, r0000010a, r0000010d, r00000110, r00000113, r00000116, r00000119, r0000011c, r0000011f, r00000122, r00000125, r00000128, r0000012b, r0000012e, r00000131, r00000134, r00000137, r0000013a, r0000013d, r00000140, r00000143, r00000146, r00000161, r00000173, r00000185, r00000197, r000001ac, r000001d9, r00000256]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualCheckedBranchIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 26 122 ∧ actualHeader.length=572 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualCheckedBranchIR.program.outputs ∧ actualFooter.length=1349 := by core033_kernel_decide
theorem body_checked : BlockChain 26 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactCheckedBranchGroup0.partChecked (.cons _ _ _ _ _ ArtifactCheckedBranchGroup1.partChecked (.cons _ _ _ _ _ ArtifactCheckedBranchGroup2.partChecked (.cons _ _ _ _ _ ArtifactCheckedBranchGroup3.partChecked (.cons _ _ _ _ _ ArtifactCheckedBranchGroup4.partChecked (.cons _ _ _ _ _ ArtifactCheckedBranchGroup5.partChecked (.cons _ _ _ _ _ ArtifactCheckedBranchGroup6.partChecked (.cons _ _ _ _ _ ArtifactCheckedBranchGroup7.partChecked (.cons _ _ _ _ _ ArtifactCheckedBranchGroup8.partChecked (.empty _))))))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactCheckedBranchGroup0.partSize,ArtifactCheckedBranchGroup1.partSize,ArtifactCheckedBranchGroup2.partSize,ArtifactCheckedBranchGroup3.partSize,ArtifactCheckedBranchGroup4.partSize,ArtifactCheckedBranchGroup5.partSize,ArtifactCheckedBranchGroup6.partSize,ArtifactCheckedBranchGroup7.partSize,ArtifactCheckedBranchGroup8.partSize]
  decide
theorem actual_validated : validate ActualCheckedBranchIR.program actualBytes=true :=
  validate_from_facts ActualCheckedBranchIR.program actualBytes ActualCheckedBranchIR.safe_checked
    (assembled_bytes_exact ActualCheckedBranchIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (BranchCheckedProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualCheckedBranchIR.program actualBytes actual_validated inputs
  rw [ActualCheckedBranchIR.ir_exact] at result
  exact result
end ArtifactCheckedBranchBlocks
