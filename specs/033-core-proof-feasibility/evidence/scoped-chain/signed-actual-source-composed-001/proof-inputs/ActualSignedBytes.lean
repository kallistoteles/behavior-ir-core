import ActualSignedIR
namespace ActualSignedBytes
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op0 : List WordIR.Op := [.shr 1 31]
def bytes0 : Bytes := ("    let r00000002: u32 = r00000001 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked0 : bytes0=statementBytes 2 (op0.map lower) ∧ bytes0.length=54 := by core033_kernel_decide
def op1 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1 : Bytes := ("    let r00000003: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1 : bytes1=statementBytes 3 (op1.map lower) ∧ bytes1.length=41 := by core033_kernel_decide
def op2 : List WordIR.Op := [.bxor 2 3]
def bytes2 : Bytes := ("    let r00000004: u32 = r00000002 ^ r00000003;\n" : String).toByteArray.data.toList
theorem checked2 : bytes2=statementBytes 4 (op2.map lower) ∧ bytes2.length=48 := by core033_kernel_decide
def op3 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3 : Bytes := ("    let r00000005: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3 : bytes3=statementBytes 5 (op3.map lower) ∧ bytes3.length=41 := by core033_kernel_decide
def op4 : List WordIR.Op := [.bnot 5]
def bytes4 : Bytes := ("    let r00000006: u32 = !r00000005;\n" : String).toByteArray.data.toList
theorem checked4 : bytes4=statementBytes 6 (op4.map lower) ∧ bytes4.length=37 := by core033_kernel_decide
def op5 : List WordIR.Op := [.band 0 6]
def bytes5 : Bytes := ("    let r00000007: u32 = r00000000 & r00000006;\n" : String).toByteArray.data.toList
theorem checked5 : bytes5=statementBytes 7 (op5.map lower) ∧ bytes5.length=48 := by core033_kernel_decide
def op6 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6 : Bytes := ("    let r00000008: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6 : bytes6=statementBytes 8 (op6.map lower) ∧ bytes6.length=41 := by core033_kernel_decide
def op7 : List WordIR.Op := [.bnot 8]
def bytes7 : Bytes := ("    let r00000009: u32 = !r00000008;\n" : String).toByteArray.data.toList
theorem checked7 : bytes7=statementBytes 9 (op7.map lower) ∧ bytes7.length=37 := by core033_kernel_decide
def op8 : List WordIR.Op := [.bxor 0 9]
def bytes8 : Bytes := ("    let r0000000a: u32 = r00000000 ^ r00000009;\n" : String).toByteArray.data.toList
theorem checked8 : bytes8=statementBytes 10 (op8.map lower) ∧ bytes8.length=48 := by core033_kernel_decide
def op9 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9 : Bytes := ("    let r0000000b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9 : bytes9=statementBytes 11 (op9.map lower) ∧ bytes9.length=41 := by core033_kernel_decide
def op10 : List WordIR.Op := [.bnot 11]
def bytes10 : Bytes := ("    let r0000000c: u32 = !r0000000b;\n" : String).toByteArray.data.toList
theorem checked10 : bytes10=statementBytes 12 (op10.map lower) ∧ bytes10.length=37 := by core033_kernel_decide
def op11 : List WordIR.Op := [.badd 0 12]
def bytes11 : Bytes := ("    let r0000000d: u32 = r00000000.wrapping_add(r0000000c);\n" : String).toByteArray.data.toList
theorem checked11 : bytes11=statementBytes 13 (op11.map lower) ∧ bytes11.length=60 := by core033_kernel_decide
def op12 : List WordIR.Op := [.bnot 13]
def bytes12 : Bytes := ("    let r0000000e: u32 = !r0000000d;\n" : String).toByteArray.data.toList
theorem checked12 : bytes12=statementBytes 14 (op12.map lower) ∧ bytes12.length=37 := by core033_kernel_decide
def op13 : List WordIR.Op := [.band 10 14]
def bytes13 : Bytes := ("    let r0000000f: u32 = r0000000a & r0000000e;\n" : String).toByteArray.data.toList
theorem checked13 : bytes13=statementBytes 15 (op13.map lower) ∧ bytes13.length=48 := by core033_kernel_decide
def op14 : List WordIR.Op := [.bxor 7 15]
def bytes14 : Bytes := ("    let r00000010: u32 = r00000007 ^ r0000000f;\n" : String).toByteArray.data.toList
theorem checked14 : bytes14=statementBytes 16 (op14.map lower) ∧ bytes14.length=48 := by core033_kernel_decide
def op15 : List WordIR.Op := [.shr 16 31]
def bytes15 : Bytes := ("    let r00000011: u32 = r00000010 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked15 : bytes15=statementBytes 17 (op15.map lower) ∧ bytes15.length=54 := by core033_kernel_decide
def op16 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes16 : Bytes := ("    let r00000012: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked16 : bytes16=statementBytes 18 (op16.map lower) ∧ bytes16.length=41 := by core033_kernel_decide
def op17 : List WordIR.Op := [.bxor 17 18]
def bytes17 : Bytes := ("    let r00000013: u32 = r00000011 ^ r00000012;\n" : String).toByteArray.data.toList
theorem checked17 : bytes17=statementBytes 19 (op17.map lower) ∧ bytes17.length=48 := by core033_kernel_decide
def op18 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes18 : Bytes := ("    let r00000014: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked18 : bytes18=statementBytes 20 (op18.map lower) ∧ bytes18.length=41 := by core033_kernel_decide
def op19 : List WordIR.Op := [.bnot 20]
def bytes19 : Bytes := ("    let r00000015: u32 = !r00000014;\n" : String).toByteArray.data.toList
theorem checked19 : bytes19=statementBytes 21 (op19.map lower) ∧ bytes19.length=37 := by core033_kernel_decide
def op20 : List WordIR.Op := [.band 1 21]
def bytes20 : Bytes := ("    let r00000016: u32 = r00000001 & r00000015;\n" : String).toByteArray.data.toList
theorem checked20 : bytes20=statementBytes 22 (op20.map lower) ∧ bytes20.length=48 := by core033_kernel_decide
def op21 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes21 : Bytes := ("    let r00000017: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked21 : bytes21=statementBytes 23 (op21.map lower) ∧ bytes21.length=41 := by core033_kernel_decide
def op22 : List WordIR.Op := [.bnot 23]
def bytes22 : Bytes := ("    let r00000018: u32 = !r00000017;\n" : String).toByteArray.data.toList
theorem checked22 : bytes22=statementBytes 24 (op22.map lower) ∧ bytes22.length=37 := by core033_kernel_decide
def op23 : List WordIR.Op := [.bxor 1 24]
def bytes23 : Bytes := ("    let r00000019: u32 = r00000001 ^ r00000018;\n" : String).toByteArray.data.toList
theorem checked23 : bytes23=statementBytes 25 (op23.map lower) ∧ bytes23.length=48 := by core033_kernel_decide
def op24 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes24 : Bytes := ("    let r0000001a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked24 : bytes24=statementBytes 26 (op24.map lower) ∧ bytes24.length=41 := by core033_kernel_decide
def op25 : List WordIR.Op := [.bnot 26]
def bytes25 : Bytes := ("    let r0000001b: u32 = !r0000001a;\n" : String).toByteArray.data.toList
theorem checked25 : bytes25=statementBytes 27 (op25.map lower) ∧ bytes25.length=37 := by core033_kernel_decide
def op26 : List WordIR.Op := [.badd 1 27]
def bytes26 : Bytes := ("    let r0000001c: u32 = r00000001.wrapping_add(r0000001b);\n" : String).toByteArray.data.toList
theorem checked26 : bytes26=statementBytes 28 (op26.map lower) ∧ bytes26.length=60 := by core033_kernel_decide
def op27 : List WordIR.Op := [.bnot 28]
def bytes27 : Bytes := ("    let r0000001d: u32 = !r0000001c;\n" : String).toByteArray.data.toList
theorem checked27 : bytes27=statementBytes 29 (op27.map lower) ∧ bytes27.length=37 := by core033_kernel_decide
def op28 : List WordIR.Op := [.band 25 29]
def bytes28 : Bytes := ("    let r0000001e: u32 = r00000019 & r0000001d;\n" : String).toByteArray.data.toList
theorem checked28 : bytes28=statementBytes 30 (op28.map lower) ∧ bytes28.length=48 := by core033_kernel_decide
def op29 : List WordIR.Op := [.bxor 22 30]
def bytes29 : Bytes := ("    let r0000001f: u32 = r00000016 ^ r0000001e;\n" : String).toByteArray.data.toList
theorem checked29 : bytes29=statementBytes 31 (op29.map lower) ∧ bytes29.length=48 := by core033_kernel_decide
def op30 : List WordIR.Op := [.shr 31 31]
def bytes30 : Bytes := ("    let r00000020: u32 = r0000001f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked30 : bytes30=statementBytes 32 (op30.map lower) ∧ bytes30.length=54 := by core033_kernel_decide
def op31 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes31 : Bytes := ("    let r00000021: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked31 : bytes31=statementBytes 33 (op31.map lower) ∧ bytes31.length=41 := by core033_kernel_decide
def op32 : List WordIR.Op := [.bxor 32 33]
def bytes32 : Bytes := ("    let r00000022: u32 = r00000020 ^ r00000021;\n" : String).toByteArray.data.toList
theorem checked32 : bytes32=statementBytes 34 (op32.map lower) ∧ bytes32.length=48 := by core033_kernel_decide
def op33 : List WordIR.Op := [.band 19 34]
def bytes33 : Bytes := ("    let r00000023: u32 = r00000013 & r00000022;\n" : String).toByteArray.data.toList
theorem checked33 : bytes33=statementBytes 35 (op33.map lower) ∧ bytes33.length=48 := by core033_kernel_decide
def op34 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes34 : Bytes := ("    let r00000024: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked34 : bytes34=statementBytes 36 (op34.map lower) ∧ bytes34.length=41 := by core033_kernel_decide
def op35 : List WordIR.Op := [.bxor 35 36]
def bytes35 : Bytes := ("    let r00000025: u32 = r00000023 ^ r00000024;\n" : String).toByteArray.data.toList
theorem checked35 : bytes35=statementBytes 37 (op35.map lower) ∧ bytes35.length=48 := by core033_kernel_decide
def op36 : List WordIR.Op := [.band 4 37]
def bytes36 : Bytes := ("    let r00000026: u32 = r00000004 & r00000025;\n" : String).toByteArray.data.toList
theorem checked36 : bytes36=statementBytes 38 (op36.map lower) ∧ bytes36.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op0,op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16,op17,op18,op19,op20,op21,op22,op23,op24,op25,op26,op27,op28,op29,op30,op31,op32,op33,op34,op35,op36]
def actualBody : List Bytes := [bytes0,bytes1,bytes2,bytes3,bytes4,bytes5,bytes6,bytes7,bytes8,bytes9,bytes10,bytes11,bytes12,bytes13,bytes14,bytes15,bytes16,bytes17,bytes18,bytes19,bytes20,bytes21,bytes22,bytes23,bytes24,bytes25,bytes26,bytes27,bytes28,bytes29,bytes30,bytes31,bytes32,bytes33,bytes34,bytes35,bytes36]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n) -> [u32; 0x00000001_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000026]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem header_checked : actualHeader=headerBytes 2 1 ∧ actualHeader.length=92 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualSignedIR.program.outputs ∧ actualFooter.length=18 := by core033_kernel_decide
theorem partition_checked : ActualSignedIR.program.operations=blocks.flatten := rfl
theorem body_checked : BlockChain 2 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ checked0.1 (.cons _ _ _ _ _ checked1.1 (.cons _ _ _ _ _ checked2.1 (.cons _ _ _ _ _ checked3.1 (.cons _ _ _ _ _ checked4.1 (.cons _ _ _ _ _ checked5.1 (.cons _ _ _ _ _ checked6.1 (.cons _ _ _ _ _ checked7.1 (.cons _ _ _ _ _ checked8.1 (.cons _ _ _ _ _ checked9.1 (.cons _ _ _ _ _ checked10.1 (.cons _ _ _ _ _ checked11.1 (.cons _ _ _ _ _ checked12.1 (.cons _ _ _ _ _ checked13.1 (.cons _ _ _ _ _ checked14.1 (.cons _ _ _ _ _ checked15.1 (.cons _ _ _ _ _ checked16.1 (.cons _ _ _ _ _ checked17.1 (.cons _ _ _ _ _ checked18.1 (.cons _ _ _ _ _ checked19.1 (.cons _ _ _ _ _ checked20.1 (.cons _ _ _ _ _ checked21.1 (.cons _ _ _ _ _ checked22.1 (.cons _ _ _ _ _ checked23.1 (.cons _ _ _ _ _ checked24.1 (.cons _ _ _ _ _ checked25.1 (.cons _ _ _ _ _ checked26.1 (.cons _ _ _ _ _ checked27.1 (.cons _ _ _ _ _ checked28.1 (.cons _ _ _ _ _ checked29.1 (.cons _ _ _ _ _ checked30.1 (.cons _ _ _ _ _ checked31.1 (.cons _ _ _ _ _ checked32.1 (.cons _ _ _ _ _ checked33.1 (.cons _ _ _ _ _ checked34.1 (.cons _ _ _ _ _ checked35.1 (.cons _ _ _ _ _ checked36.1 (.empty _))))))))))))))))))))))))))))))))))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2,checked9.2,checked10.2,checked11.2,checked12.2,checked13.2,checked14.2,checked15.2,checked16.2,checked17.2,checked18.2,checked19.2,checked20.2,checked21.2,checked22.2,checked23.2,checked24.2,checked25.2,checked26.2,checked27.2,checked28.2,checked29.2,checked30.2,checked31.2,checked32.2,checked33.2,checked34.2,checked35.2,checked36.2]
  decide
theorem actual_validated : validate ActualSignedIR.program actualBytes=true := by
  exact validate_from_facts ActualSignedIR.program actualBytes ActualSignedIR.safe_checked
    (assembled_bytes_exact ActualSignedIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (SignedProgram.expected inputs) := by
  have result:=actual_bytes_sound ActualSignedIR.program actualBytes actual_validated inputs
  rw [ActualSignedIR.ir_exact,SignedProgram.program_meaning] at result
  exact result
end ActualSignedBytes
