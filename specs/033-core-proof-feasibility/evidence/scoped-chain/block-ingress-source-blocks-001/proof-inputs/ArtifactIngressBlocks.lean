import ArtifactIngressGroup0
import ArtifactIngressGroup1
import ArtifactIngressGroup2
import ArtifactIngressGroup3
import ArtifactIngressGroup4
import ArtifactIngressGroup5
import ArtifactIngressGroup6
import ArtifactIngressGroup7
import ArtifactIngressGroup8
import ArtifactIngressGroup9
import ArtifactIngressGroup10
import ArtifactIngressGroup11
import ArtifactIngressGroup12
import ArtifactIngressGroup13
import ArtifactIngressGroup14
import ArtifactIngressGroup15
import ArtifactIngressGroup16
import ArtifactIngressGroup17
import ArtifactIngressGroup18
import ArtifactIngressGroup19
namespace ArtifactIngressBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactIngressGroup0.partOps,ArtifactIngressGroup1.partOps,ArtifactIngressGroup2.partOps,ArtifactIngressGroup3.partOps,ArtifactIngressGroup4.partOps,ArtifactIngressGroup5.partOps,ArtifactIngressGroup6.partOps,ArtifactIngressGroup7.partOps,ArtifactIngressGroup8.partOps,ArtifactIngressGroup9.partOps,ArtifactIngressGroup10.partOps,ArtifactIngressGroup11.partOps,ArtifactIngressGroup12.partOps,ArtifactIngressGroup13.partOps,ArtifactIngressGroup14.partOps,ArtifactIngressGroup15.partOps,ArtifactIngressGroup16.partOps,ArtifactIngressGroup17.partOps,ArtifactIngressGroup18.partOps,ArtifactIngressGroup19.partOps]
def actualBody : List Bytes := [ArtifactIngressGroup0.partBytes,ArtifactIngressGroup1.partBytes,ArtifactIngressGroup2.partBytes,ArtifactIngressGroup3.partBytes,ArtifactIngressGroup4.partBytes,ArtifactIngressGroup5.partBytes,ArtifactIngressGroup6.partBytes,ArtifactIngressGroup7.partBytes,ArtifactIngressGroup8.partBytes,ArtifactIngressGroup9.partBytes,ArtifactIngressGroup10.partBytes,ArtifactIngressGroup11.partBytes,ArtifactIngressGroup12.partBytes,ArtifactIngressGroup13.partBytes,ArtifactIngressGroup14.partBytes,ArtifactIngressGroup15.partBytes,ArtifactIngressGroup16.partBytes,ArtifactIngressGroup17.partBytes,ArtifactIngressGroup18.partBytes,ArtifactIngressGroup19.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n    r00000018: u32,\n    r00000019: u32,\n    r0000001a: u32,\n    r0000001b: u32,\n    r0000001c: u32,\n    r0000001d: u32,\n    r0000001e: u32,\n    r0000001f: u32,\n    r00000020: u32,\n    r00000021: u32,\n    r00000022: u32,\n    r00000023: u32,\n    r00000024: u32,\n    r00000025: u32,\n    r00000026: u32,\n    r00000027: u32,\n    r00000028: u32,\n    r00000029: u32,\n    r0000002a: u32,\n    r0000002b: u32,\n    r0000002c: u32,\n    r0000002d: u32,\n    r0000002e: u32,\n    r0000002f: u32,\n    r00000030: u32,\n    r00000031: u32,\n    r00000032: u32,\n    r00000033: u32,\n    r00000034: u32,\n    r00000035: u32,\n    r00000036: u32,\n    r00000037: u32,\n    r00000038: u32,\n    r00000039: u32,\n    r0000003a: u32,\n    r0000003b: u32,\n    r0000003c: u32,\n    r0000003d: u32,\n    r0000003e: u32,\n    r0000003f: u32,\n) -> [u32; 0x00000050_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000045, r0000004b, r00000051, r00000057, r0000005d, r00000063, r00000069, r0000006f, r00000075, r0000007b, r00000081, r00000087, r0000008d, r00000093, r00000099, r0000009f, r000000b1, r000000c3, r000000d5, r000000e7, r000000f9, r0000010b, r0000011d, r0000012f, r00000141, r00000153, r00000165, r00000177, r00000189, r0000019b, r000001ad, r000001bf, r000001d1, r000001e3, r000001f5, r00000207, r00000219, r0000022b, r0000023d, r0000024f, r00000261, r00000273, r00000285, r00000297, r000002a9, r000002bb, r000002cd, r000002df, r000002f1, r00000303, r00000315, r00000327, r00000339, r0000034b, r0000035d, r0000036f, r00000381, r00000393, r000003a5, r000003b7, r000003c9, r000003db, r000003ed, r000003ff, r00000411, r00000423, r00000435, r00000447, r00000459, r0000046b, r0000047d, r0000048f, r000004a1, r000004b3, r000004c5, r000004d7, r000004e9, r000004fb, r0000050d, r0000051f]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualIngressIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 64 80 ∧ actualHeader.length=1332 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualIngressIR.program.outputs ∧ actualFooter.length=887 := by core033_kernel_decide
theorem body_checked : BlockChain 64 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactIngressGroup0.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup1.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup2.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup3.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup4.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup5.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup6.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup7.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup8.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup9.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup10.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup11.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup12.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup13.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup14.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup15.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup16.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup17.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup18.partChecked (.cons _ _ _ _ _ ArtifactIngressGroup19.partChecked (.empty _)))))))))))))))))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactIngressGroup0.partSize,ArtifactIngressGroup1.partSize,ArtifactIngressGroup2.partSize,ArtifactIngressGroup3.partSize,ArtifactIngressGroup4.partSize,ArtifactIngressGroup5.partSize,ArtifactIngressGroup6.partSize,ArtifactIngressGroup7.partSize,ArtifactIngressGroup8.partSize,ArtifactIngressGroup9.partSize,ArtifactIngressGroup10.partSize,ArtifactIngressGroup11.partSize,ArtifactIngressGroup12.partSize,ArtifactIngressGroup13.partSize,ArtifactIngressGroup14.partSize,ArtifactIngressGroup15.partSize,ArtifactIngressGroup16.partSize,ArtifactIngressGroup17.partSize,ArtifactIngressGroup18.partSize,ArtifactIngressGroup19.partSize]
  decide
theorem actual_validated : validate ActualIngressIR.program actualBytes=true :=
  validate_from_facts ActualIngressIR.program actualBytes ActualIngressIR.safe_checked
    (assembled_bytes_exact ActualIngressIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (BlockIngress.program.eval inputs) := by
  have result:=actual_bytes_sound ActualIngressIR.program actualBytes actual_validated inputs
  rw [ActualIngressIR.ir_exact] at result
  exact result
end ArtifactIngressBlocks
