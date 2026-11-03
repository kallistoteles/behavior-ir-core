import ActualOwnBranchRoutingIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactOwnBranchRoutingGroup0
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op0 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes0 : Bytes := ("    let r00000021: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked0 : bytes0=statementBytes 33 (op0.map lower) ∧ bytes0.length=41 := by core033_kernel_decide
def op1 : List WordIR.Op := [.badd 0 33]
def bytes1 : Bytes := ("    let r00000022: u32 = r00000000.wrapping_add(r00000021);\n" : String).toByteArray.data.toList
theorem checked1 : bytes1=statementBytes 34 (op1.map lower) ∧ bytes1.length=60 := by core033_kernel_decide
def op2 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2 : Bytes := ("    let r00000023: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2 : bytes2=statementBytes 35 (op2.map lower) ∧ bytes2.length=41 := by core033_kernel_decide
def op3 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes3 : Bytes := ("    let r00000024: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked3 : bytes3=statementBytes 36 (op3.map lower) ∧ bytes3.length=41 := by core033_kernel_decide
def op4 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4 : Bytes := ("    let r00000025: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4 : bytes4=statementBytes 37 (op4.map lower) ∧ bytes4.length=41 := by core033_kernel_decide
def op5 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5 : Bytes := ("    let r00000026: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5 : bytes5=statementBytes 38 (op5.map lower) ∧ bytes5.length=41 := by core033_kernel_decide
def op6 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6 : Bytes := ("    let r00000027: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6 : bytes6=statementBytes 39 (op6.map lower) ∧ bytes6.length=41 := by core033_kernel_decide
def op7 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7 : Bytes := ("    let r00000028: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7 : bytes7=statementBytes 40 (op7.map lower) ∧ bytes7.length=41 := by core033_kernel_decide
def op8 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8 : Bytes := ("    let r00000029: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8 : bytes8=statementBytes 41 (op8.map lower) ∧ bytes8.length=41 := by core033_kernel_decide
def op9 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9 : Bytes := ("    let r0000002a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9 : bytes9=statementBytes 42 (op9.map lower) ∧ bytes9.length=41 := by core033_kernel_decide
def op10 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10 : Bytes := ("    let r0000002b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10 : bytes10=statementBytes 43 (op10.map lower) ∧ bytes10.length=41 := by core033_kernel_decide
def op11 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11 : Bytes := ("    let r0000002c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11 : bytes11=statementBytes 44 (op11.map lower) ∧ bytes11.length=41 := by core033_kernel_decide
def op12 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12 : Bytes := ("    let r0000002d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12 : bytes12=statementBytes 45 (op12.map lower) ∧ bytes12.length=41 := by core033_kernel_decide
def op13 : List WordIR.Op := [.bnot 45]
def bytes13 : Bytes := ("    let r0000002e: u32 = !r0000002d;\n" : String).toByteArray.data.toList
theorem checked13 : bytes13=statementBytes 46 (op13.map lower) ∧ bytes13.length=37 := by core033_kernel_decide
def op14 : List WordIR.Op := [.band 0 46]
def bytes14 : Bytes := ("    let r0000002f: u32 = r00000000 & r0000002e;\n" : String).toByteArray.data.toList
theorem checked14 : bytes14=statementBytes 47 (op14.map lower) ∧ bytes14.length=48 := by core033_kernel_decide
def op15 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes15 : Bytes := ("    let r00000030: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked15 : bytes15=statementBytes 48 (op15.map lower) ∧ bytes15.length=41 := by core033_kernel_decide
def op16 : List WordIR.Op := [.bnot 48]
def bytes16 : Bytes := ("    let r00000031: u32 = !r00000030;\n" : String).toByteArray.data.toList
theorem checked16 : bytes16=statementBytes 49 (op16.map lower) ∧ bytes16.length=37 := by core033_kernel_decide
def op17 : List WordIR.Op := [.bxor 0 49]
def bytes17 : Bytes := ("    let r00000032: u32 = r00000000 ^ r00000031;\n" : String).toByteArray.data.toList
theorem checked17 : bytes17=statementBytes 50 (op17.map lower) ∧ bytes17.length=48 := by core033_kernel_decide
def op18 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes18 : Bytes := ("    let r00000033: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked18 : bytes18=statementBytes 51 (op18.map lower) ∧ bytes18.length=41 := by core033_kernel_decide
def op19 : List WordIR.Op := [.bnot 51]
def bytes19 : Bytes := ("    let r00000034: u32 = !r00000033;\n" : String).toByteArray.data.toList
theorem checked19 : bytes19=statementBytes 52 (op19.map lower) ∧ bytes19.length=37 := by core033_kernel_decide
def op20 : List WordIR.Op := [.badd 0 52]
def bytes20 : Bytes := ("    let r00000035: u32 = r00000000.wrapping_add(r00000034);\n" : String).toByteArray.data.toList
theorem checked20 : bytes20=statementBytes 53 (op20.map lower) ∧ bytes20.length=60 := by core033_kernel_decide
def op21 : List WordIR.Op := [.bnot 53]
def bytes21 : Bytes := ("    let r00000036: u32 = !r00000035;\n" : String).toByteArray.data.toList
theorem checked21 : bytes21=statementBytes 54 (op21.map lower) ∧ bytes21.length=37 := by core033_kernel_decide
def op22 : List WordIR.Op := [.band 50 54]
def bytes22 : Bytes := ("    let r00000037: u32 = r00000032 & r00000036;\n" : String).toByteArray.data.toList
theorem checked22 : bytes22=statementBytes 55 (op22.map lower) ∧ bytes22.length=48 := by core033_kernel_decide
def op23 : List WordIR.Op := [.bxor 47 55]
def bytes23 : Bytes := ("    let r00000038: u32 = r0000002f ^ r00000037;\n" : String).toByteArray.data.toList
theorem checked23 : bytes23=statementBytes 56 (op23.map lower) ∧ bytes23.length=48 := by core033_kernel_decide
def op24 : List WordIR.Op := [.shr 56 31]
def bytes24 : Bytes := ("    let r00000039: u32 = r00000038 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked24 : bytes24=statementBytes 57 (op24.map lower) ∧ bytes24.length=54 := by core033_kernel_decide
def op25 : List WordIR.Op := [.shr 0 8]
def bytes25 : Bytes := ("    let r0000003a: u32 = r00000000 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked25 : bytes25=statementBytes 58 (op25.map lower) ∧ bytes25.length=54 := by core033_kernel_decide
def op26 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes26 : Bytes := ("    let r0000003b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked26 : bytes26=statementBytes 59 (op26.map lower) ∧ bytes26.length=41 := by core033_kernel_decide
def op27 : List WordIR.Op := [.bnot 59]
def bytes27 : Bytes := ("    let r0000003c: u32 = !r0000003b;\n" : String).toByteArray.data.toList
theorem checked27 : bytes27=statementBytes 60 (op27.map lower) ∧ bytes27.length=37 := by core033_kernel_decide
def op28 : List WordIR.Op := [.band 58 60]
def bytes28 : Bytes := ("    let r0000003d: u32 = r0000003a & r0000003c;\n" : String).toByteArray.data.toList
theorem checked28 : bytes28=statementBytes 61 (op28.map lower) ∧ bytes28.length=48 := by core033_kernel_decide
def op29 : List WordIR.Op := [.shr 0 8]
def bytes29 : Bytes := ("    let r0000003e: u32 = r00000000 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked29 : bytes29=statementBytes 62 (op29.map lower) ∧ bytes29.length=54 := by core033_kernel_decide
def op30 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes30 : Bytes := ("    let r0000003f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked30 : bytes30=statementBytes 63 (op30.map lower) ∧ bytes30.length=41 := by core033_kernel_decide
def op31 : List WordIR.Op := [.bnot 63]
def bytes31 : Bytes := ("    let r00000040: u32 = !r0000003f;\n" : String).toByteArray.data.toList
theorem checked31 : bytes31=statementBytes 64 (op31.map lower) ∧ bytes31.length=37 := by core033_kernel_decide
def op32 : List WordIR.Op := [.bxor 62 64]
def bytes32 : Bytes := ("    let r00000041: u32 = r0000003e ^ r00000040;\n" : String).toByteArray.data.toList
theorem checked32 : bytes32=statementBytes 65 (op32.map lower) ∧ bytes32.length=48 := by core033_kernel_decide
def op33 : List WordIR.Op := [.shr 0 8]
def bytes33 : Bytes := ("    let r00000042: u32 = r00000000 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked33 : bytes33=statementBytes 66 (op33.map lower) ∧ bytes33.length=54 := by core033_kernel_decide
def op34 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes34 : Bytes := ("    let r00000043: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked34 : bytes34=statementBytes 67 (op34.map lower) ∧ bytes34.length=41 := by core033_kernel_decide
def op35 : List WordIR.Op := [.bnot 67]
def bytes35 : Bytes := ("    let r00000044: u32 = !r00000043;\n" : String).toByteArray.data.toList
theorem checked35 : bytes35=statementBytes 68 (op35.map lower) ∧ bytes35.length=37 := by core033_kernel_decide
def op36 : List WordIR.Op := [.badd 66 68]
def bytes36 : Bytes := ("    let r00000045: u32 = r00000042.wrapping_add(r00000044);\n" : String).toByteArray.data.toList
theorem checked36 : bytes36=statementBytes 69 (op36.map lower) ∧ bytes36.length=60 := by core033_kernel_decide
def op37 : List WordIR.Op := [.bnot 69]
def bytes37 : Bytes := ("    let r00000046: u32 = !r00000045;\n" : String).toByteArray.data.toList
theorem checked37 : bytes37=statementBytes 70 (op37.map lower) ∧ bytes37.length=37 := by core033_kernel_decide
def op38 : List WordIR.Op := [.band 65 70]
def bytes38 : Bytes := ("    let r00000047: u32 = r00000041 & r00000046;\n" : String).toByteArray.data.toList
theorem checked38 : bytes38=statementBytes 71 (op38.map lower) ∧ bytes38.length=48 := by core033_kernel_decide
def op39 : List WordIR.Op := [.bxor 61 71]
def bytes39 : Bytes := ("    let r00000048: u32 = r0000003d ^ r00000047;\n" : String).toByteArray.data.toList
theorem checked39 : bytes39=statementBytes 72 (op39.map lower) ∧ bytes39.length=48 := by core033_kernel_decide
def op40 : List WordIR.Op := [.shr 72 31]
def bytes40 : Bytes := ("    let r00000049: u32 = r00000048 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked40 : bytes40=statementBytes 73 (op40.map lower) ∧ bytes40.length=54 := by core033_kernel_decide
def op41 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes41 : Bytes := ("    let r0000004a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked41 : bytes41=statementBytes 74 (op41.map lower) ∧ bytes41.length=41 := by core033_kernel_decide
def op42 : List WordIR.Op := [.bxor 73 74]
def bytes42 : Bytes := ("    let r0000004b: u32 = r00000049 ^ r0000004a;\n" : String).toByteArray.data.toList
theorem checked42 : bytes42=statementBytes 75 (op42.map lower) ∧ bytes42.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op0,op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16,op17,op18,op19,op20,op21,op22,op23,op24,op25,op26,op27,op28,op29,op30,op31,op32,op33,op34,op35,op36,op37,op38,op39,op40,op41,op42]
def chunks : List Bytes := [bytes0,bytes1,bytes2,bytes3,bytes4,bytes5,bytes6,bytes7,bytes8,bytes9,bytes10,bytes11,bytes12,bytes13,bytes14,bytes15,bytes16,bytes17,bytes18,bytes19,bytes20,bytes21,bytes22,bytes23,bytes24,bytes25,bytes26,bytes27,bytes28,bytes29,bytes30,bytes31,bytes32,bytes33,bytes34,bytes35,bytes36,bytes37,bytes38,bytes39,bytes40,bytes41,bytes42]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 33 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked0.1 (.cons _ _ _ _ _ checked1.1 (.cons _ _ _ _ _ checked2.1 (.cons _ _ _ _ _ checked3.1 (.cons _ _ _ _ _ checked4.1 (.cons _ _ _ _ _ checked5.1 (.cons _ _ _ _ _ checked6.1 (.cons _ _ _ _ _ checked7.1 (.cons _ _ _ _ _ checked8.1 (.cons _ _ _ _ _ checked9.1 (.cons _ _ _ _ _ checked10.1 (.cons _ _ _ _ _ checked11.1 (.cons _ _ _ _ _ checked12.1 (.cons _ _ _ _ _ checked13.1 (.cons _ _ _ _ _ checked14.1 (.cons _ _ _ _ _ checked15.1 (.cons _ _ _ _ _ checked16.1 (.cons _ _ _ _ _ checked17.1 (.cons _ _ _ _ _ checked18.1 (.cons _ _ _ _ _ checked19.1 (.cons _ _ _ _ _ checked20.1 (.cons _ _ _ _ _ checked21.1 (.cons _ _ _ _ _ checked22.1 (.cons _ _ _ _ _ checked23.1 (.cons _ _ _ _ _ checked24.1 (.cons _ _ _ _ _ checked25.1 (.cons _ _ _ _ _ checked26.1 (.cons _ _ _ _ _ checked27.1 (.cons _ _ _ _ _ checked28.1 (.cons _ _ _ _ _ checked29.1 (.cons _ _ _ _ _ checked30.1 (.cons _ _ _ _ _ checked31.1 (.cons _ _ _ _ _ checked32.1 (.cons _ _ _ _ _ checked33.1 (.cons _ _ _ _ _ checked34.1 (.cons _ _ _ _ _ checked35.1 (.cons _ _ _ _ _ checked36.1 (.cons _ _ _ _ _ checked37.1 (.cons _ _ _ _ _ checked38.1 (.cons _ _ _ _ _ checked39.1 (.cons _ _ _ _ _ checked40.1 (.cons _ _ _ _ _ checked41.1 (.cons _ _ _ _ _ checked42.1 (.empty _))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 33 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=43 := rfl
theorem partSize : partBytes.length=1916 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2,checked9.2,checked10.2,checked11.2,checked12.2,checked13.2,checked14.2,checked15.2,checked16.2,checked17.2,checked18.2,checked19.2,checked20.2,checked21.2,checked22.2,checked23.2,checked24.2,checked25.2,checked26.2,checked27.2,checked28.2,checked29.2,checked30.2,checked31.2,checked32.2,checked33.2,checked34.2,checked35.2,checked36.2,checked37.2,checked38.2,checked39.2,checked40.2,checked41.2,checked42.2]
  decide
end ArtifactOwnBranchRoutingGroup0
