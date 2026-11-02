import ActualShiftIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactShiftGroup0
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op0 : List WordIR.Op := [.shr 1 0]
def bytes0 : Bytes := ("    let r00000002: u32 = r00000001 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked0 : bytes0=statementBytes 2 (op0.map lower) ∧ bytes0.length=54 := by core033_kernel_decide
def op1 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1 : Bytes := ("    let r00000003: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1 : bytes1=statementBytes 3 (op1.map lower) ∧ bytes1.length=41 := by core033_kernel_decide
def op2 : List WordIR.Op := [.band 2 3]
def bytes2 : Bytes := ("    let r00000004: u32 = r00000002 & r00000003;\n" : String).toByteArray.data.toList
theorem checked2 : bytes2=statementBytes 4 (op2.map lower) ∧ bytes2.length=48 := by core033_kernel_decide
def op3 : List WordIR.Op := [.bnot 4]
def bytes3 : Bytes := ("    let r00000005: u32 = !r00000004;\n" : String).toByteArray.data.toList
theorem checked3 : bytes3=statementBytes 5 (op3.map lower) ∧ bytes3.length=37 := by core033_kernel_decide
def op4 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4 : Bytes := ("    let r00000006: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4 : bytes4=statementBytes 6 (op4.map lower) ∧ bytes4.length=41 := by core033_kernel_decide
def op5 : List WordIR.Op := [.badd 5 6]
def bytes5 : Bytes := ("    let r00000007: u32 = r00000005.wrapping_add(r00000006);\n" : String).toByteArray.data.toList
theorem checked5 : bytes5=statementBytes 7 (op5.map lower) ∧ bytes5.length=60 := by core033_kernel_decide
def op6 : List WordIR.Op := [.shr 0 1]
def bytes6 : Bytes := ("    let r00000008: u32 = r00000000 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6 : bytes6=statementBytes 8 (op6.map lower) ∧ bytes6.length=54 := by core033_kernel_decide
def op7 : List WordIR.Op := [.band 7 8]
def bytes7 : Bytes := ("    let r00000009: u32 = r00000007 & r00000008;\n" : String).toByteArray.data.toList
theorem checked7 : bytes7=statementBytes 9 (op7.map lower) ∧ bytes7.length=48 := by core033_kernel_decide
def op8 : List WordIR.Op := [.shr 1 0]
def bytes8 : Bytes := ("    let r0000000a: u32 = r00000001 >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8 : bytes8=statementBytes 10 (op8.map lower) ∧ bytes8.length=54 := by core033_kernel_decide
def op9 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9 : Bytes := ("    let r0000000b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9 : bytes9=statementBytes 11 (op9.map lower) ∧ bytes9.length=41 := by core033_kernel_decide
def op10 : List WordIR.Op := [.band 10 11]
def bytes10 : Bytes := ("    let r0000000c: u32 = r0000000a & r0000000b;\n" : String).toByteArray.data.toList
theorem checked10 : bytes10=statementBytes 12 (op10.map lower) ∧ bytes10.length=48 := by core033_kernel_decide
def op11 : List WordIR.Op := [.bnot 12]
def bytes11 : Bytes := ("    let r0000000d: u32 = !r0000000c;\n" : String).toByteArray.data.toList
theorem checked11 : bytes11=statementBytes 13 (op11.map lower) ∧ bytes11.length=37 := by core033_kernel_decide
def op12 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12 : Bytes := ("    let r0000000e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12 : bytes12=statementBytes 14 (op12.map lower) ∧ bytes12.length=41 := by core033_kernel_decide
def op13 : List WordIR.Op := [.badd 13 14]
def bytes13 : Bytes := ("    let r0000000f: u32 = r0000000d.wrapping_add(r0000000e);\n" : String).toByteArray.data.toList
theorem checked13 : bytes13=statementBytes 15 (op13.map lower) ∧ bytes13.length=60 := by core033_kernel_decide
def op14 : List WordIR.Op := [.bnot 15]
def bytes14 : Bytes := ("    let r00000010: u32 = !r0000000f;\n" : String).toByteArray.data.toList
theorem checked14 : bytes14=statementBytes 16 (op14.map lower) ∧ bytes14.length=37 := by core033_kernel_decide
def op15 : List WordIR.Op := [.band 16 0]
def bytes15 : Bytes := ("    let r00000011: u32 = r00000010 & r00000000;\n" : String).toByteArray.data.toList
theorem checked15 : bytes15=statementBytes 17 (op15.map lower) ∧ bytes15.length=48 := by core033_kernel_decide
def op16 : List WordIR.Op := [.bxor 9 17]
def bytes16 : Bytes := ("    let r00000012: u32 = r00000009 ^ r00000011;\n" : String).toByteArray.data.toList
theorem checked16 : bytes16=statementBytes 18 (op16.map lower) ∧ bytes16.length=48 := by core033_kernel_decide
def op17 : List WordIR.Op := [.shr 1 1]
def bytes17 : Bytes := ("    let r00000013: u32 = r00000001 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked17 : bytes17=statementBytes 19 (op17.map lower) ∧ bytes17.length=54 := by core033_kernel_decide
def op18 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes18 : Bytes := ("    let r00000014: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked18 : bytes18=statementBytes 20 (op18.map lower) ∧ bytes18.length=41 := by core033_kernel_decide
def op19 : List WordIR.Op := [.band 19 20]
def bytes19 : Bytes := ("    let r00000015: u32 = r00000013 & r00000014;\n" : String).toByteArray.data.toList
theorem checked19 : bytes19=statementBytes 21 (op19.map lower) ∧ bytes19.length=48 := by core033_kernel_decide
def op20 : List WordIR.Op := [.bnot 21]
def bytes20 : Bytes := ("    let r00000016: u32 = !r00000015;\n" : String).toByteArray.data.toList
theorem checked20 : bytes20=statementBytes 22 (op20.map lower) ∧ bytes20.length=37 := by core033_kernel_decide
def op21 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes21 : Bytes := ("    let r00000017: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked21 : bytes21=statementBytes 23 (op21.map lower) ∧ bytes21.length=41 := by core033_kernel_decide
def op22 : List WordIR.Op := [.badd 22 23]
def bytes22 : Bytes := ("    let r00000018: u32 = r00000016.wrapping_add(r00000017);\n" : String).toByteArray.data.toList
theorem checked22 : bytes22=statementBytes 24 (op22.map lower) ∧ bytes22.length=60 := by core033_kernel_decide
def op23 : List WordIR.Op := [.shr 18 2]
def bytes23 : Bytes := ("    let r00000019: u32 = r00000012 >> 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked23 : bytes23=statementBytes 25 (op23.map lower) ∧ bytes23.length=54 := by core033_kernel_decide
def op24 : List WordIR.Op := [.band 24 25]
def bytes24 : Bytes := ("    let r0000001a: u32 = r00000018 & r00000019;\n" : String).toByteArray.data.toList
theorem checked24 : bytes24=statementBytes 26 (op24.map lower) ∧ bytes24.length=48 := by core033_kernel_decide
def op25 : List WordIR.Op := [.shr 1 1]
def bytes25 : Bytes := ("    let r0000001b: u32 = r00000001 >> 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked25 : bytes25=statementBytes 27 (op25.map lower) ∧ bytes25.length=54 := by core033_kernel_decide
def op26 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes26 : Bytes := ("    let r0000001c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked26 : bytes26=statementBytes 28 (op26.map lower) ∧ bytes26.length=41 := by core033_kernel_decide
def op27 : List WordIR.Op := [.band 27 28]
def bytes27 : Bytes := ("    let r0000001d: u32 = r0000001b & r0000001c;\n" : String).toByteArray.data.toList
theorem checked27 : bytes27=statementBytes 29 (op27.map lower) ∧ bytes27.length=48 := by core033_kernel_decide
def op28 : List WordIR.Op := [.bnot 29]
def bytes28 : Bytes := ("    let r0000001e: u32 = !r0000001d;\n" : String).toByteArray.data.toList
theorem checked28 : bytes28=statementBytes 30 (op28.map lower) ∧ bytes28.length=37 := by core033_kernel_decide
def op29 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes29 : Bytes := ("    let r0000001f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked29 : bytes29=statementBytes 31 (op29.map lower) ∧ bytes29.length=41 := by core033_kernel_decide
def op30 : List WordIR.Op := [.badd 30 31]
def bytes30 : Bytes := ("    let r00000020: u32 = r0000001e.wrapping_add(r0000001f);\n" : String).toByteArray.data.toList
theorem checked30 : bytes30=statementBytes 32 (op30.map lower) ∧ bytes30.length=60 := by core033_kernel_decide
def op31 : List WordIR.Op := [.bnot 32]
def bytes31 : Bytes := ("    let r00000021: u32 = !r00000020;\n" : String).toByteArray.data.toList
theorem checked31 : bytes31=statementBytes 33 (op31.map lower) ∧ bytes31.length=37 := by core033_kernel_decide
def op32 : List WordIR.Op := [.band 33 18]
def bytes32 : Bytes := ("    let r00000022: u32 = r00000021 & r00000012;\n" : String).toByteArray.data.toList
theorem checked32 : bytes32=statementBytes 34 (op32.map lower) ∧ bytes32.length=48 := by core033_kernel_decide
def op33 : List WordIR.Op := [.bxor 26 34]
def bytes33 : Bytes := ("    let r00000023: u32 = r0000001a ^ r00000022;\n" : String).toByteArray.data.toList
theorem checked33 : bytes33=statementBytes 35 (op33.map lower) ∧ bytes33.length=48 := by core033_kernel_decide
def op34 : List WordIR.Op := [.shr 1 2]
def bytes34 : Bytes := ("    let r00000024: u32 = r00000001 >> 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked34 : bytes34=statementBytes 36 (op34.map lower) ∧ bytes34.length=54 := by core033_kernel_decide
def op35 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes35 : Bytes := ("    let r00000025: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked35 : bytes35=statementBytes 37 (op35.map lower) ∧ bytes35.length=41 := by core033_kernel_decide
def op36 : List WordIR.Op := [.band 36 37]
def bytes36 : Bytes := ("    let r00000026: u32 = r00000024 & r00000025;\n" : String).toByteArray.data.toList
theorem checked36 : bytes36=statementBytes 38 (op36.map lower) ∧ bytes36.length=48 := by core033_kernel_decide
def op37 : List WordIR.Op := [.bnot 38]
def bytes37 : Bytes := ("    let r00000027: u32 = !r00000026;\n" : String).toByteArray.data.toList
theorem checked37 : bytes37=statementBytes 39 (op37.map lower) ∧ bytes37.length=37 := by core033_kernel_decide
def op38 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes38 : Bytes := ("    let r00000028: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked38 : bytes38=statementBytes 40 (op38.map lower) ∧ bytes38.length=41 := by core033_kernel_decide
def op39 : List WordIR.Op := [.badd 39 40]
def bytes39 : Bytes := ("    let r00000029: u32 = r00000027.wrapping_add(r00000028);\n" : String).toByteArray.data.toList
theorem checked39 : bytes39=statementBytes 41 (op39.map lower) ∧ bytes39.length=60 := by core033_kernel_decide
def op40 : List WordIR.Op := [.shr 35 4]
def bytes40 : Bytes := ("    let r0000002a: u32 = r00000023 >> 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked40 : bytes40=statementBytes 42 (op40.map lower) ∧ bytes40.length=54 := by core033_kernel_decide
def op41 : List WordIR.Op := [.band 41 42]
def bytes41 : Bytes := ("    let r0000002b: u32 = r00000029 & r0000002a;\n" : String).toByteArray.data.toList
theorem checked41 : bytes41=statementBytes 43 (op41.map lower) ∧ bytes41.length=48 := by core033_kernel_decide
def op42 : List WordIR.Op := [.shr 1 2]
def bytes42 : Bytes := ("    let r0000002c: u32 = r00000001 >> 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked42 : bytes42=statementBytes 44 (op42.map lower) ∧ bytes42.length=54 := by core033_kernel_decide
def op43 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes43 : Bytes := ("    let r0000002d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked43 : bytes43=statementBytes 45 (op43.map lower) ∧ bytes43.length=41 := by core033_kernel_decide
def op44 : List WordIR.Op := [.band 44 45]
def bytes44 : Bytes := ("    let r0000002e: u32 = r0000002c & r0000002d;\n" : String).toByteArray.data.toList
theorem checked44 : bytes44=statementBytes 46 (op44.map lower) ∧ bytes44.length=48 := by core033_kernel_decide
def op45 : List WordIR.Op := [.bnot 46]
def bytes45 : Bytes := ("    let r0000002f: u32 = !r0000002e;\n" : String).toByteArray.data.toList
theorem checked45 : bytes45=statementBytes 47 (op45.map lower) ∧ bytes45.length=37 := by core033_kernel_decide
def op46 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes46 : Bytes := ("    let r00000030: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked46 : bytes46=statementBytes 48 (op46.map lower) ∧ bytes46.length=41 := by core033_kernel_decide
def op47 : List WordIR.Op := [.badd 47 48]
def bytes47 : Bytes := ("    let r00000031: u32 = r0000002f.wrapping_add(r00000030);\n" : String).toByteArray.data.toList
theorem checked47 : bytes47=statementBytes 49 (op47.map lower) ∧ bytes47.length=60 := by core033_kernel_decide
def op48 : List WordIR.Op := [.bnot 49]
def bytes48 : Bytes := ("    let r00000032: u32 = !r00000031;\n" : String).toByteArray.data.toList
theorem checked48 : bytes48=statementBytes 50 (op48.map lower) ∧ bytes48.length=37 := by core033_kernel_decide
def op49 : List WordIR.Op := [.band 50 35]
def bytes49 : Bytes := ("    let r00000033: u32 = r00000032 & r00000023;\n" : String).toByteArray.data.toList
theorem checked49 : bytes49=statementBytes 51 (op49.map lower) ∧ bytes49.length=48 := by core033_kernel_decide
def op50 : List WordIR.Op := [.bxor 43 51]
def bytes50 : Bytes := ("    let r00000034: u32 = r0000002b ^ r00000033;\n" : String).toByteArray.data.toList
theorem checked50 : bytes50=statementBytes 52 (op50.map lower) ∧ bytes50.length=48 := by core033_kernel_decide
def op51 : List WordIR.Op := [.shr 1 3]
def bytes51 : Bytes := ("    let r00000035: u32 = r00000001 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked51 : bytes51=statementBytes 53 (op51.map lower) ∧ bytes51.length=54 := by core033_kernel_decide
def op52 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes52 : Bytes := ("    let r00000036: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked52 : bytes52=statementBytes 54 (op52.map lower) ∧ bytes52.length=41 := by core033_kernel_decide
def op53 : List WordIR.Op := [.band 53 54]
def bytes53 : Bytes := ("    let r00000037: u32 = r00000035 & r00000036;\n" : String).toByteArray.data.toList
theorem checked53 : bytes53=statementBytes 55 (op53.map lower) ∧ bytes53.length=48 := by core033_kernel_decide
def op54 : List WordIR.Op := [.bnot 55]
def bytes54 : Bytes := ("    let r00000038: u32 = !r00000037;\n" : String).toByteArray.data.toList
theorem checked54 : bytes54=statementBytes 56 (op54.map lower) ∧ bytes54.length=37 := by core033_kernel_decide
def op55 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes55 : Bytes := ("    let r00000039: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked55 : bytes55=statementBytes 57 (op55.map lower) ∧ bytes55.length=41 := by core033_kernel_decide
def op56 : List WordIR.Op := [.badd 56 57]
def bytes56 : Bytes := ("    let r0000003a: u32 = r00000038.wrapping_add(r00000039);\n" : String).toByteArray.data.toList
theorem checked56 : bytes56=statementBytes 58 (op56.map lower) ∧ bytes56.length=60 := by core033_kernel_decide
def op57 : List WordIR.Op := [.shr 52 8]
def bytes57 : Bytes := ("    let r0000003b: u32 = r00000034 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked57 : bytes57=statementBytes 59 (op57.map lower) ∧ bytes57.length=54 := by core033_kernel_decide
def op58 : List WordIR.Op := [.band 58 59]
def bytes58 : Bytes := ("    let r0000003c: u32 = r0000003a & r0000003b;\n" : String).toByteArray.data.toList
theorem checked58 : bytes58=statementBytes 60 (op58.map lower) ∧ bytes58.length=48 := by core033_kernel_decide
def op59 : List WordIR.Op := [.shr 1 3]
def bytes59 : Bytes := ("    let r0000003d: u32 = r00000001 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked59 : bytes59=statementBytes 61 (op59.map lower) ∧ bytes59.length=54 := by core033_kernel_decide
def op60 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes60 : Bytes := ("    let r0000003e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked60 : bytes60=statementBytes 62 (op60.map lower) ∧ bytes60.length=41 := by core033_kernel_decide
def op61 : List WordIR.Op := [.band 61 62]
def bytes61 : Bytes := ("    let r0000003f: u32 = r0000003d & r0000003e;\n" : String).toByteArray.data.toList
theorem checked61 : bytes61=statementBytes 63 (op61.map lower) ∧ bytes61.length=48 := by core033_kernel_decide
def op62 : List WordIR.Op := [.bnot 63]
def bytes62 : Bytes := ("    let r00000040: u32 = !r0000003f;\n" : String).toByteArray.data.toList
theorem checked62 : bytes62=statementBytes 64 (op62.map lower) ∧ bytes62.length=37 := by core033_kernel_decide
def op63 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes63 : Bytes := ("    let r00000041: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked63 : bytes63=statementBytes 65 (op63.map lower) ∧ bytes63.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op0,op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16,op17,op18,op19,op20,op21,op22,op23,op24,op25,op26,op27,op28,op29,op30,op31,op32,op33,op34,op35,op36,op37,op38,op39,op40,op41,op42,op43,op44,op45,op46,op47,op48,op49,op50,op51,op52,op53,op54,op55,op56,op57,op58,op59,op60,op61,op62,op63]
def chunks : List Bytes := [bytes0,bytes1,bytes2,bytes3,bytes4,bytes5,bytes6,bytes7,bytes8,bytes9,bytes10,bytes11,bytes12,bytes13,bytes14,bytes15,bytes16,bytes17,bytes18,bytes19,bytes20,bytes21,bytes22,bytes23,bytes24,bytes25,bytes26,bytes27,bytes28,bytes29,bytes30,bytes31,bytes32,bytes33,bytes34,bytes35,bytes36,bytes37,bytes38,bytes39,bytes40,bytes41,bytes42,bytes43,bytes44,bytes45,bytes46,bytes47,bytes48,bytes49,bytes50,bytes51,bytes52,bytes53,bytes54,bytes55,bytes56,bytes57,bytes58,bytes59,bytes60,bytes61,bytes62,bytes63]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked0.1 (.cons _ _ _ _ _ checked1.1 (.cons _ _ _ _ _ checked2.1 (.cons _ _ _ _ _ checked3.1 (.cons _ _ _ _ _ checked4.1 (.cons _ _ _ _ _ checked5.1 (.cons _ _ _ _ _ checked6.1 (.cons _ _ _ _ _ checked7.1 (.cons _ _ _ _ _ checked8.1 (.cons _ _ _ _ _ checked9.1 (.cons _ _ _ _ _ checked10.1 (.cons _ _ _ _ _ checked11.1 (.cons _ _ _ _ _ checked12.1 (.cons _ _ _ _ _ checked13.1 (.cons _ _ _ _ _ checked14.1 (.cons _ _ _ _ _ checked15.1 (.cons _ _ _ _ _ checked16.1 (.cons _ _ _ _ _ checked17.1 (.cons _ _ _ _ _ checked18.1 (.cons _ _ _ _ _ checked19.1 (.cons _ _ _ _ _ checked20.1 (.cons _ _ _ _ _ checked21.1 (.cons _ _ _ _ _ checked22.1 (.cons _ _ _ _ _ checked23.1 (.cons _ _ _ _ _ checked24.1 (.cons _ _ _ _ _ checked25.1 (.cons _ _ _ _ _ checked26.1 (.cons _ _ _ _ _ checked27.1 (.cons _ _ _ _ _ checked28.1 (.cons _ _ _ _ _ checked29.1 (.cons _ _ _ _ _ checked30.1 (.cons _ _ _ _ _ checked31.1 (.cons _ _ _ _ _ checked32.1 (.cons _ _ _ _ _ checked33.1 (.cons _ _ _ _ _ checked34.1 (.cons _ _ _ _ _ checked35.1 (.cons _ _ _ _ _ checked36.1 (.cons _ _ _ _ _ checked37.1 (.cons _ _ _ _ _ checked38.1 (.cons _ _ _ _ _ checked39.1 (.cons _ _ _ _ _ checked40.1 (.cons _ _ _ _ _ checked41.1 (.cons _ _ _ _ _ checked42.1 (.cons _ _ _ _ _ checked43.1 (.cons _ _ _ _ _ checked44.1 (.cons _ _ _ _ _ checked45.1 (.cons _ _ _ _ _ checked46.1 (.cons _ _ _ _ _ checked47.1 (.cons _ _ _ _ _ checked48.1 (.cons _ _ _ _ _ checked49.1 (.cons _ _ _ _ _ checked50.1 (.cons _ _ _ _ _ checked51.1 (.cons _ _ _ _ _ checked52.1 (.cons _ _ _ _ _ checked53.1 (.cons _ _ _ _ _ checked54.1 (.cons _ _ _ _ _ checked55.1 (.cons _ _ _ _ _ checked56.1 (.cons _ _ _ _ _ checked57.1 (.cons _ _ _ _ _ checked58.1 (.cons _ _ _ _ _ checked59.1 (.cons _ _ _ _ _ checked60.1 (.cons _ _ _ _ _ checked61.1 (.cons _ _ _ _ _ checked62.1 (.cons _ _ _ _ _ checked63.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2995 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2,checked9.2,checked10.2,checked11.2,checked12.2,checked13.2,checked14.2,checked15.2,checked16.2,checked17.2,checked18.2,checked19.2,checked20.2,checked21.2,checked22.2,checked23.2,checked24.2,checked25.2,checked26.2,checked27.2,checked28.2,checked29.2,checked30.2,checked31.2,checked32.2,checked33.2,checked34.2,checked35.2,checked36.2,checked37.2,checked38.2,checked39.2,checked40.2,checked41.2,checked42.2,checked43.2,checked44.2,checked45.2,checked46.2,checked47.2,checked48.2,checked49.2,checked50.2,checked51.2,checked52.2,checked53.2,checked54.2,checked55.2,checked56.2,checked57.2,checked58.2,checked59.2,checked60.2,checked61.2,checked62.2,checked63.2]
  decide
end ArtifactShiftGroup0
