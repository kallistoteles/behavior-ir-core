import ArtifactPathFrameGroup0
import ArtifactPathFrameGroup1
import ArtifactPathFrameGroup2
import ArtifactPathFrameGroup3
import ArtifactPathFrameGroup4
import ArtifactPathFrameGroup5
import ArtifactPathFrameGroup6
import ArtifactPathFrameGroup7
import ArtifactPathFrameGroup8
import ArtifactPathFrameGroup9
import ArtifactPathFrameGroup10
import ArtifactPathFrameGroup11
import ArtifactPathFrameGroup12
import ArtifactPathFrameGroup13
import ArtifactPathFrameGroup14
import ArtifactPathFrameGroup15
import ArtifactPathFrameGroup16
import ArtifactPathFrameGroup17
import ArtifactPathFrameGroup18
import ArtifactPathFrameGroup19
import ArtifactPathFrameGroup20
import ArtifactPathFrameGroup21
namespace ArtifactPathFrameBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def blocks : List (List WordIR.Op) := [ArtifactPathFrameGroup0.partOps,ArtifactPathFrameGroup1.partOps,ArtifactPathFrameGroup2.partOps,ArtifactPathFrameGroup3.partOps,ArtifactPathFrameGroup4.partOps,ArtifactPathFrameGroup5.partOps,ArtifactPathFrameGroup6.partOps,ArtifactPathFrameGroup7.partOps,ArtifactPathFrameGroup8.partOps,ArtifactPathFrameGroup9.partOps,ArtifactPathFrameGroup10.partOps,ArtifactPathFrameGroup11.partOps,ArtifactPathFrameGroup12.partOps,ArtifactPathFrameGroup13.partOps,ArtifactPathFrameGroup14.partOps,ArtifactPathFrameGroup15.partOps,ArtifactPathFrameGroup16.partOps,ArtifactPathFrameGroup17.partOps,ArtifactPathFrameGroup18.partOps,ArtifactPathFrameGroup19.partOps,ArtifactPathFrameGroup20.partOps,ArtifactPathFrameGroup21.partOps]
def actualBody : List Bytes := [ArtifactPathFrameGroup0.partBytes,ArtifactPathFrameGroup1.partBytes,ArtifactPathFrameGroup2.partBytes,ArtifactPathFrameGroup3.partBytes,ArtifactPathFrameGroup4.partBytes,ArtifactPathFrameGroup5.partBytes,ArtifactPathFrameGroup6.partBytes,ArtifactPathFrameGroup7.partBytes,ArtifactPathFrameGroup8.partBytes,ArtifactPathFrameGroup9.partBytes,ArtifactPathFrameGroup10.partBytes,ArtifactPathFrameGroup11.partBytes,ArtifactPathFrameGroup12.partBytes,ArtifactPathFrameGroup13.partBytes,ArtifactPathFrameGroup14.partBytes,ArtifactPathFrameGroup15.partBytes,ArtifactPathFrameGroup16.partBytes,ArtifactPathFrameGroup17.partBytes,ArtifactPathFrameGroup18.partBytes,ArtifactPathFrameGroup19.partBytes,ArtifactPathFrameGroup20.partBytes,ArtifactPathFrameGroup21.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n    r00000018: u32,\n    r00000019: u32,\n    r0000001a: u32,\n    r0000001b: u32,\n    r0000001c: u32,\n    r0000001d: u32,\n    r0000001e: u32,\n    r0000001f: u32,\n    r00000020: u32,\n    r00000021: u32,\n) -> [u32; 0x00000085_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000332, r00000333, r00000334, r00000335, r00000336, r00000337, r00000338, r00000339, r0000033a, r0000033b, r0000033c, r0000033d, r0000033e, r0000033f, r00000340, r00000341, r00000342, r00000343, r00000344, r00000345, r00000346, r00000347, r0000034a, r0000034d, r00000350, r00000353, r00000356, r00000359, r0000035c, r0000035f, r00000362, r00000365, r00000368, r0000036b, r0000036e, r00000371, r00000374, r00000377, r0000037a, r0000037d, r00000380, r00000383, r00000386, r00000389, r0000038c, r0000038f, r00000392, r00000395, r00000398, r0000039b, r0000039e, r000003a1, r000003a4, r000003a7, r000003aa, r000003ad, r000003b0, r000003b3, r000003b6, r000003b9, r000003bc, r000003bf, r000003c2, r000003c5, r000003c8, r000003cb, r000003ce, r000003d1, r000003d4, r000003d7, r000003da, r000003dd, r000003e0, r000003e3, r000003e6, r000003e9, r000003ec, r000003ef, r000003f2, r000003f5, r000003f8, r000003fb, r000003fe, r00000401, r00000404, r00000407, r0000040a, r0000040d, r00000410, r00000413, r00000416, r00000419, r0000041c, r0000041f, r00000422, r00000425, r00000428, r0000042b, r0000042e, r00000431, r00000434, r00000437, r0000043a, r0000043d, r00000440, r00000443, r00000446, r00000449, r0000044c, r0000044f, r00000452, r00000455, r00000458, r0000045b, r0000045e, r00000479, r0000048b, r0000049d, r000004af, r000004c4, r000004f1, r0000056e, r000002e7, r000002fb, r0000030d, r0000031f, r00000331, r00000038, r00000072, r000000f4, r0000015b, r00000260, r00000023]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualPathFrameIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 34 133 ∧ actualHeader.length=732 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualPathFrameIR.program.outputs ∧ actualFooter.length=1470 := by core033_kernel_decide
theorem body_checked : BlockChain 34 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ ArtifactPathFrameGroup0.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup1.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup2.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup3.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup4.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup5.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup6.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup7.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup8.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup9.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup10.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup11.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup12.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup13.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup14.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup15.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup16.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup17.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup18.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup19.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup20.partChecked (.cons _ _ _ _ _ ArtifactPathFrameGroup21.partChecked (.empty _)))))))))))))))))))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactPathFrameGroup0.partSize,ArtifactPathFrameGroup1.partSize,ArtifactPathFrameGroup2.partSize,ArtifactPathFrameGroup3.partSize,ArtifactPathFrameGroup4.partSize,ArtifactPathFrameGroup5.partSize,ArtifactPathFrameGroup6.partSize,ArtifactPathFrameGroup7.partSize,ArtifactPathFrameGroup8.partSize,ArtifactPathFrameGroup9.partSize,ArtifactPathFrameGroup10.partSize,ArtifactPathFrameGroup11.partSize,ArtifactPathFrameGroup12.partSize,ArtifactPathFrameGroup13.partSize,ArtifactPathFrameGroup14.partSize,ArtifactPathFrameGroup15.partSize,ArtifactPathFrameGroup16.partSize,ArtifactPathFrameGroup17.partSize,ArtifactPathFrameGroup18.partSize,ArtifactPathFrameGroup19.partSize,ArtifactPathFrameGroup20.partSize,ArtifactPathFrameGroup21.partSize]
  decide
theorem actual_validated : validate ActualPathFrameIR.program actualBytes=true :=
  validate_from_facts ActualPathFrameIR.program actualBytes ActualPathFrameIR.safe_checked
    (assembled_bytes_exact ActualPathFrameIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (PathFrameProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualPathFrameIR.program actualBytes actual_validated inputs
  rw [ActualPathFrameIR.ir_exact] at result
  exact result
end ArtifactPathFrameBlocks
