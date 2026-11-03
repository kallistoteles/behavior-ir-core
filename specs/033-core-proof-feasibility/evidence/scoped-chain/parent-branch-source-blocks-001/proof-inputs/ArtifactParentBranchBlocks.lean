import ArtifactParentBranchGroup0
import ArtifactParentBranchGroup1
import ArtifactParentBranchGroup2
import ArtifactParentBranchGroup3
import ArtifactParentBranchGroup4
import ArtifactParentBranchGroup5
import ArtifactParentBranchGroup6
import ArtifactParentBranchGroup7
import ArtifactParentBranchGroup8
import ArtifactParentBranchGroup9
import ArtifactParentBranchGroup10
import ArtifactParentBranchGroup11
import ArtifactParentBranchGroup12
namespace ArtifactParentBranchBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactParentBranchGroup0.partOps,ArtifactParentBranchGroup1.partOps,ArtifactParentBranchGroup2.partOps,ArtifactParentBranchGroup3.partOps,ArtifactParentBranchGroup4.partOps,ArtifactParentBranchGroup5.partOps,ArtifactParentBranchGroup6.partOps,ArtifactParentBranchGroup7.partOps,ArtifactParentBranchGroup8.partOps,ArtifactParentBranchGroup9.partOps,ArtifactParentBranchGroup10.partOps,ArtifactParentBranchGroup11.partOps,ArtifactParentBranchGroup12.partOps]
def actualBody : List Bytes := [ArtifactParentBranchGroup0.partBytes,ArtifactParentBranchGroup1.partBytes,ArtifactParentBranchGroup2.partBytes,ArtifactParentBranchGroup3.partBytes,ArtifactParentBranchGroup4.partBytes,ArtifactParentBranchGroup5.partBytes,ArtifactParentBranchGroup6.partBytes,ArtifactParentBranchGroup7.partBytes,ArtifactParentBranchGroup8.partBytes,ArtifactParentBranchGroup9.partBytes,ArtifactParentBranchGroup10.partBytes,ArtifactParentBranchGroup11.partBytes,ArtifactParentBranchGroup12.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n    r00000018: u32,\n    r00000019: u32,\n) -> [u32; 0x0000007f_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r000000eb, r000000ec, r000000ed, r000000ee, r000000ef, r000000f0, r000000f1, r000000f2, r000000f3, r000000f4, r000000f5, r000000f6, r000000f7, r000000f8, r000000f9, r000000fa, r000000fb, r000000fc, r000000fd, r000000fe, r000000ff, r00000100, r00000103, r00000106, r00000109, r0000010c, r0000010f, r00000112, r00000115, r00000118, r0000011b, r0000011e, r00000121, r00000124, r00000127, r0000012a, r0000012d, r00000130, r00000133, r00000136, r00000139, r0000013c, r0000013f, r00000142, r00000145, r00000148, r0000014b, r0000014e, r00000151, r00000154, r00000157, r0000015a, r0000015d, r00000160, r00000163, r00000166, r00000169, r0000016c, r0000016f, r00000172, r00000175, r00000178, r0000017b, r0000017e, r00000181, r00000184, r00000187, r0000018a, r0000018d, r00000190, r00000193, r00000196, r00000199, r0000019c, r0000019f, r000001a2, r000001a5, r000001a8, r000001ab, r000001ae, r000001b1, r000001b4, r000001b7, r000001ba, r000001bd, r000001c0, r000001c3, r000001c6, r000001c9, r000001cc, r000001cf, r000001d2, r000001d5, r000001d8, r000001db, r000001de, r000001e1, r000001e4, r000001e7, r000001ea, r000001ed, r000001f0, r000001f3, r000001f6, r000001f9, r000001fc, r000001ff, r00000202, r00000205, r00000208, r0000020b, r0000020e, r00000211, r00000214, r00000217, r00000232, r00000244, r00000256, r00000268, r0000027d, r000002aa, r00000327, r000000a0, r000000b4, r000000c6, r000000d8, r000000ea]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualParentBranchIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 26 127 ∧ actualHeader.length=572 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualParentBranchIR.program.outputs ∧ actualFooter.length=1404 := by core033_kernel_decide
theorem body_checked : BlockChain 26 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactParentBranchGroup0.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup1.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup2.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup3.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup4.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup5.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup6.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup7.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup8.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup9.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup10.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup11.partChecked (.cons _ _ _ _ _ ArtifactParentBranchGroup12.partChecked (.empty _))))))))))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactParentBranchGroup0.partSize,ArtifactParentBranchGroup1.partSize,ArtifactParentBranchGroup2.partSize,ArtifactParentBranchGroup3.partSize,ArtifactParentBranchGroup4.partSize,ArtifactParentBranchGroup5.partSize,ArtifactParentBranchGroup6.partSize,ArtifactParentBranchGroup7.partSize,ArtifactParentBranchGroup8.partSize,ArtifactParentBranchGroup9.partSize,ArtifactParentBranchGroup10.partSize,ArtifactParentBranchGroup11.partSize,ArtifactParentBranchGroup12.partSize]
  decide
theorem actual_validated : validate ActualParentBranchIR.program actualBytes=true :=
  validate_from_facts ActualParentBranchIR.program actualBytes ActualParentBranchIR.safe_checked
    (assembled_bytes_exact ActualParentBranchIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (ParentBranchProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualParentBranchIR.program actualBytes actual_validated inputs
  rw [ActualParentBranchIR.ir_exact] at result
  exact result
end ArtifactParentBranchBlocks
