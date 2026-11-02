import ActualLengthIR
namespace ActualLengthBytes
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op0 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes0 : Bytes := ("    let r00000001: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked0 : bytes0=statementBytes 1 (op0.map lower) ∧ bytes0.length=41 := by core033_kernel_decide
def op1 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1 : Bytes := ("    let r00000002: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1 : bytes1=statementBytes 2 (op1.map lower) ∧ bytes1.length=41 := by core033_kernel_decide
def op2 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2 : Bytes := ("    let r00000003: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2 : bytes2=statementBytes 3 (op2.map lower) ∧ bytes2.length=41 := by core033_kernel_decide
def op3 : List WordIR.Op := [.shr 0 29]
def bytes3 : Bytes := ("    let r00000004: u32 = r00000000 >> 0x0000001d_u32;\n" : String).toByteArray.data.toList
theorem checked3 : bytes3=statementBytes 4 (op3.map lower) ∧ bytes3.length=54 := by core033_kernel_decide
def op4 : List WordIR.Op := [.shr 0 21]
def bytes4 : Bytes := ("    let r00000005: u32 = r00000000 >> 0x00000015_u32;\n" : String).toByteArray.data.toList
theorem checked4 : bytes4=statementBytes 5 (op4.map lower) ∧ bytes4.length=54 := by core033_kernel_decide
def op5 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes5 : Bytes := ("    let r00000006: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked5 : bytes5=statementBytes 6 (op5.map lower) ∧ bytes5.length=41 := by core033_kernel_decide
def op6 : List WordIR.Op := [.band 5 6]
def bytes6 : Bytes := ("    let r00000007: u32 = r00000005 & r00000006;\n" : String).toByteArray.data.toList
theorem checked6 : bytes6=statementBytes 7 (op6.map lower) ∧ bytes6.length=48 := by core033_kernel_decide
def op7 : List WordIR.Op := [.shr 0 13]
def bytes7 : Bytes := ("    let r00000008: u32 = r00000000 >> 0x0000000d_u32;\n" : String).toByteArray.data.toList
theorem checked7 : bytes7=statementBytes 8 (op7.map lower) ∧ bytes7.length=54 := by core033_kernel_decide
def op8 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes8 : Bytes := ("    let r00000009: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked8 : bytes8=statementBytes 9 (op8.map lower) ∧ bytes8.length=41 := by core033_kernel_decide
def op9 : List WordIR.Op := [.band 8 9]
def bytes9 : Bytes := ("    let r0000000a: u32 = r00000008 & r00000009;\n" : String).toByteArray.data.toList
theorem checked9 : bytes9=statementBytes 10 (op9.map lower) ∧ bytes9.length=48 := by core033_kernel_decide
def op10 : List WordIR.Op := [.shr 0 5]
def bytes10 : Bytes := ("    let r0000000b: u32 = r00000000 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked10 : bytes10=statementBytes 11 (op10.map lower) ∧ bytes10.length=54 := by core033_kernel_decide
def op11 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes11 : Bytes := ("    let r0000000c: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked11 : bytes11=statementBytes 12 (op11.map lower) ∧ bytes11.length=41 := by core033_kernel_decide
def op12 : List WordIR.Op := [.band 11 12]
def bytes12 : Bytes := ("    let r0000000d: u32 = r0000000b & r0000000c;\n" : String).toByteArray.data.toList
theorem checked12 : bytes12=statementBytes 13 (op12.map lower) ∧ bytes12.length=48 := by core033_kernel_decide
def op13 : List WordIR.Op := [.rotr 0 29]
def bytes13 : Bytes := ("    let r0000000e: u32 = r00000000.rotate_right(0x0000001d_u32);\n" : String).toByteArray.data.toList
theorem checked13 : bytes13=statementBytes 14 (op13.map lower) ∧ bytes13.length=65 := by core033_kernel_decide
def op14 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967288)]
def bytes14 : Bytes := ("    let r0000000f: u32 = 0xfffffff8_u32;\n" : String).toByteArray.data.toList
theorem checked14 : bytes14=statementBytes 15 (op14.map lower) ∧ bytes14.length=41 := by core033_kernel_decide
def op15 : List WordIR.Op := [.band 14 15]
def bytes15 : Bytes := ("    let r00000010: u32 = r0000000e & r0000000f;\n" : String).toByteArray.data.toList
theorem checked15 : bytes15=statementBytes 16 (op15.map lower) ∧ bytes15.length=48 := by core033_kernel_decide
def op16 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes16 : Bytes := ("    let r00000011: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked16 : bytes16=statementBytes 17 (op16.map lower) ∧ bytes16.length=41 := by core033_kernel_decide
def op17 : List WordIR.Op := [.band 16 17]
def bytes17 : Bytes := ("    let r00000012: u32 = r00000010 & r00000011;\n" : String).toByteArray.data.toList
theorem checked17 : bytes17=statementBytes 18 (op17.map lower) ∧ bytes17.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op0,op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16,op17]
def actualBody : List Bytes := [bytes0,bytes1,bytes2,bytes3,bytes4,bytes5,bytes6,bytes7,bytes8,bytes9,bytes10,bytes11,bytes12,bytes13,bytes14,bytes15,bytes16,bytes17]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n) -> [u32; 0x00000008_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000001, r00000002, r00000003, r00000004, r00000007, r0000000a, r0000000d, r00000012]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem header_checked : actualHeader=headerBytes 1 8 ∧ actualHeader.length=72 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualLengthIR.program.outputs ∧ actualFooter.length=95 := by core033_kernel_decide
theorem partition_checked : ActualLengthIR.program.operations=blocks.flatten := rfl
theorem body_checked : BlockChain 1 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ checked0.1 (.cons _ _ _ _ _ checked1.1 (.cons _ _ _ _ _ checked2.1 (.cons _ _ _ _ _ checked3.1 (.cons _ _ _ _ _ checked4.1 (.cons _ _ _ _ _ checked5.1 (.cons _ _ _ _ _ checked6.1 (.cons _ _ _ _ _ checked7.1 (.cons _ _ _ _ _ checked8.1 (.cons _ _ _ _ _ checked9.1 (.cons _ _ _ _ _ checked10.1 (.cons _ _ _ _ _ checked11.1 (.cons _ _ _ _ _ checked12.1 (.cons _ _ _ _ _ checked13.1 (.cons _ _ _ _ _ checked14.1 (.cons _ _ _ _ _ checked15.1 (.cons _ _ _ _ _ checked16.1 (.cons _ _ _ _ _ checked17.1 (.empty _)))))))))))))))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2,checked9.2,checked10.2,checked11.2,checked12.2,checked13.2,checked14.2,checked15.2,checked16.2,checked17.2]
  decide
theorem actual_validated : validate ActualLengthIR.program actualBytes=true := by
  exact validate_from_facts ActualLengthIR.program actualBytes ActualLengthIR.safe_checked
    (assembled_bytes_exact ActualLengthIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (LengthBytes.words (inputs 0)) := by
  have result:=actual_bytes_sound ActualLengthIR.program actualBytes actual_validated inputs
  rw [ActualLengthIR.ir_exact,LengthBytes.program_meaning] at result
  exact result
end ActualLengthBytes
