import ActualCounterIR
namespace ActualCounterBytes
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op0 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes0 : Bytes := ("    let r00000004: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked0 : bytes0=statementBytes 4 (op0.map lower) ∧ bytes0.length=41 := by core033_kernel_decide
def op1 : List WordIR.Op := [.badd 0 4]
def bytes1 : Bytes := ("    let r00000005: u32 = r00000000.wrapping_add(r00000004);\n" : String).toByteArray.data.toList
theorem checked1 : bytes1=statementBytes 5 (op1.map lower) ∧ bytes1.length=60 := by core033_kernel_decide
def op2 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2 : Bytes := ("    let r00000006: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2 : bytes2=statementBytes 6 (op2.map lower) ∧ bytes2.length=41 := by core033_kernel_decide
def op3 : List WordIR.Op := [.badd 1 6]
def bytes3 : Bytes := ("    let r00000007: u32 = r00000001.wrapping_add(r00000006);\n" : String).toByteArray.data.toList
theorem checked3 : bytes3=statementBytes 7 (op3.map lower) ∧ bytes3.length=60 := by core033_kernel_decide
def op4 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4 : Bytes := ("    let r00000008: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4 : bytes4=statementBytes 8 (op4.map lower) ∧ bytes4.length=41 := by core033_kernel_decide
def op5 : List WordIR.Op := [.band 0 8]
def bytes5 : Bytes := ("    let r00000009: u32 = r00000000 & r00000008;\n" : String).toByteArray.data.toList
theorem checked5 : bytes5=statementBytes 9 (op5.map lower) ∧ bytes5.length=48 := by core033_kernel_decide
def op6 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6 : Bytes := ("    let r0000000a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6 : bytes6=statementBytes 10 (op6.map lower) ∧ bytes6.length=41 := by core033_kernel_decide
def op7 : List WordIR.Op := [.bxor 0 10]
def bytes7 : Bytes := ("    let r0000000b: u32 = r00000000 ^ r0000000a;\n" : String).toByteArray.data.toList
theorem checked7 : bytes7=statementBytes 11 (op7.map lower) ∧ bytes7.length=48 := by core033_kernel_decide
def op8 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes8 : Bytes := ("    let r0000000c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked8 : bytes8=statementBytes 12 (op8.map lower) ∧ bytes8.length=41 := by core033_kernel_decide
def op9 : List WordIR.Op := [.badd 0 12]
def bytes9 : Bytes := ("    let r0000000d: u32 = r00000000.wrapping_add(r0000000c);\n" : String).toByteArray.data.toList
theorem checked9 : bytes9=statementBytes 13 (op9.map lower) ∧ bytes9.length=60 := by core033_kernel_decide
def op10 : List WordIR.Op := [.bnot 13]
def bytes10 : Bytes := ("    let r0000000e: u32 = !r0000000d;\n" : String).toByteArray.data.toList
theorem checked10 : bytes10=statementBytes 14 (op10.map lower) ∧ bytes10.length=37 := by core033_kernel_decide
def op11 : List WordIR.Op := [.band 11 14]
def bytes11 : Bytes := ("    let r0000000f: u32 = r0000000b & r0000000e;\n" : String).toByteArray.data.toList
theorem checked11 : bytes11=statementBytes 15 (op11.map lower) ∧ bytes11.length=48 := by core033_kernel_decide
def op12 : List WordIR.Op := [.bxor 9 15]
def bytes12 : Bytes := ("    let r00000010: u32 = r00000009 ^ r0000000f;\n" : String).toByteArray.data.toList
theorem checked12 : bytes12=statementBytes 16 (op12.map lower) ∧ bytes12.length=48 := by core033_kernel_decide
def op13 : List WordIR.Op := [.shr 16 31]
def bytes13 : Bytes := ("    let r00000011: u32 = r00000010 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13 : bytes13=statementBytes 17 (op13.map lower) ∧ bytes13.length=54 := by core033_kernel_decide
def op14 : List WordIR.Op := [.badd 7 17]
def bytes14 : Bytes := ("    let r00000012: u32 = r00000007.wrapping_add(r00000011);\n" : String).toByteArray.data.toList
theorem checked14 : bytes14=statementBytes 18 (op14.map lower) ∧ bytes14.length=60 := by core033_kernel_decide
def op15 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes15 : Bytes := ("    let r00000013: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked15 : bytes15=statementBytes 19 (op15.map lower) ∧ bytes15.length=41 := by core033_kernel_decide
def op16 : List WordIR.Op := [.badd 0 19]
def bytes16 : Bytes := ("    let r00000014: u32 = r00000000.wrapping_add(r00000013);\n" : String).toByteArray.data.toList
theorem checked16 : bytes16=statementBytes 20 (op16.map lower) ∧ bytes16.length=60 := by core033_kernel_decide
def op17 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes17 : Bytes := ("    let r00000015: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked17 : bytes17=statementBytes 21 (op17.map lower) ∧ bytes17.length=41 := by core033_kernel_decide
def op18 : List WordIR.Op := [.bnot 21]
def bytes18 : Bytes := ("    let r00000016: u32 = !r00000015;\n" : String).toByteArray.data.toList
theorem checked18 : bytes18=statementBytes 22 (op18.map lower) ∧ bytes18.length=37 := by core033_kernel_decide
def op19 : List WordIR.Op := [.band 20 22]
def bytes19 : Bytes := ("    let r00000017: u32 = r00000014 & r00000016;\n" : String).toByteArray.data.toList
theorem checked19 : bytes19=statementBytes 23 (op19.map lower) ∧ bytes19.length=48 := by core033_kernel_decide
def op20 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes20 : Bytes := ("    let r00000018: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked20 : bytes20=statementBytes 24 (op20.map lower) ∧ bytes20.length=41 := by core033_kernel_decide
def op21 : List WordIR.Op := [.badd 0 24]
def bytes21 : Bytes := ("    let r00000019: u32 = r00000000.wrapping_add(r00000018);\n" : String).toByteArray.data.toList
theorem checked21 : bytes21=statementBytes 25 (op21.map lower) ∧ bytes21.length=60 := by core033_kernel_decide
def op22 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes22 : Bytes := ("    let r0000001a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked22 : bytes22=statementBytes 26 (op22.map lower) ∧ bytes22.length=41 := by core033_kernel_decide
def op23 : List WordIR.Op := [.bnot 26]
def bytes23 : Bytes := ("    let r0000001b: u32 = !r0000001a;\n" : String).toByteArray.data.toList
theorem checked23 : bytes23=statementBytes 27 (op23.map lower) ∧ bytes23.length=37 := by core033_kernel_decide
def op24 : List WordIR.Op := [.bxor 25 27]
def bytes24 : Bytes := ("    let r0000001c: u32 = r00000019 ^ r0000001b;\n" : String).toByteArray.data.toList
theorem checked24 : bytes24=statementBytes 28 (op24.map lower) ∧ bytes24.length=48 := by core033_kernel_decide
def op25 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes25 : Bytes := ("    let r0000001d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked25 : bytes25=statementBytes 29 (op25.map lower) ∧ bytes25.length=41 := by core033_kernel_decide
def op26 : List WordIR.Op := [.badd 0 29]
def bytes26 : Bytes := ("    let r0000001e: u32 = r00000000.wrapping_add(r0000001d);\n" : String).toByteArray.data.toList
theorem checked26 : bytes26=statementBytes 30 (op26.map lower) ∧ bytes26.length=60 := by core033_kernel_decide
def op27 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes27 : Bytes := ("    let r0000001f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked27 : bytes27=statementBytes 31 (op27.map lower) ∧ bytes27.length=41 := by core033_kernel_decide
def op28 : List WordIR.Op := [.bnot 31]
def bytes28 : Bytes := ("    let r00000020: u32 = !r0000001f;\n" : String).toByteArray.data.toList
theorem checked28 : bytes28=statementBytes 32 (op28.map lower) ∧ bytes28.length=37 := by core033_kernel_decide
def op29 : List WordIR.Op := [.badd 30 32]
def bytes29 : Bytes := ("    let r00000021: u32 = r0000001e.wrapping_add(r00000020);\n" : String).toByteArray.data.toList
theorem checked29 : bytes29=statementBytes 33 (op29.map lower) ∧ bytes29.length=60 := by core033_kernel_decide
def op30 : List WordIR.Op := [.bnot 33]
def bytes30 : Bytes := ("    let r00000022: u32 = !r00000021;\n" : String).toByteArray.data.toList
theorem checked30 : bytes30=statementBytes 34 (op30.map lower) ∧ bytes30.length=37 := by core033_kernel_decide
def op31 : List WordIR.Op := [.band 28 34]
def bytes31 : Bytes := ("    let r00000023: u32 = r0000001c & r00000022;\n" : String).toByteArray.data.toList
theorem checked31 : bytes31=statementBytes 35 (op31.map lower) ∧ bytes31.length=48 := by core033_kernel_decide
def op32 : List WordIR.Op := [.bxor 23 35]
def bytes32 : Bytes := ("    let r00000024: u32 = r00000017 ^ r00000023;\n" : String).toByteArray.data.toList
theorem checked32 : bytes32=statementBytes 36 (op32.map lower) ∧ bytes32.length=48 := by core033_kernel_decide
def op33 : List WordIR.Op := [.shr 36 31]
def bytes33 : Bytes := ("    let r00000025: u32 = r00000024 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked33 : bytes33=statementBytes 37 (op33.map lower) ∧ bytes33.length=54 := by core033_kernel_decide
def op34 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes34 : Bytes := ("    let r00000026: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked34 : bytes34=statementBytes 38 (op34.map lower) ∧ bytes34.length=41 := by core033_kernel_decide
def op35 : List WordIR.Op := [.bxor 37 38]
def bytes35 : Bytes := ("    let r00000027: u32 = r00000025 ^ r00000026;\n" : String).toByteArray.data.toList
theorem checked35 : bytes35=statementBytes 39 (op35.map lower) ∧ bytes35.length=48 := by core033_kernel_decide
def op36 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes36 : Bytes := ("    let r00000028: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked36 : bytes36=statementBytes 40 (op36.map lower) ∧ bytes36.length=41 := by core033_kernel_decide
def op37 : List WordIR.Op := [.badd 1 40]
def bytes37 : Bytes := ("    let r00000029: u32 = r00000001.wrapping_add(r00000028);\n" : String).toByteArray.data.toList
theorem checked37 : bytes37=statementBytes 41 (op37.map lower) ∧ bytes37.length=60 := by core033_kernel_decide
def op38 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes38 : Bytes := ("    let r0000002a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked38 : bytes38=statementBytes 42 (op38.map lower) ∧ bytes38.length=41 := by core033_kernel_decide
def op39 : List WordIR.Op := [.band 0 42]
def bytes39 : Bytes := ("    let r0000002b: u32 = r00000000 & r0000002a;\n" : String).toByteArray.data.toList
theorem checked39 : bytes39=statementBytes 43 (op39.map lower) ∧ bytes39.length=48 := by core033_kernel_decide
def op40 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes40 : Bytes := ("    let r0000002c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked40 : bytes40=statementBytes 44 (op40.map lower) ∧ bytes40.length=41 := by core033_kernel_decide
def op41 : List WordIR.Op := [.bxor 0 44]
def bytes41 : Bytes := ("    let r0000002d: u32 = r00000000 ^ r0000002c;\n" : String).toByteArray.data.toList
theorem checked41 : bytes41=statementBytes 45 (op41.map lower) ∧ bytes41.length=48 := by core033_kernel_decide
def op42 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes42 : Bytes := ("    let r0000002e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked42 : bytes42=statementBytes 46 (op42.map lower) ∧ bytes42.length=41 := by core033_kernel_decide
def op43 : List WordIR.Op := [.badd 0 46]
def bytes43 : Bytes := ("    let r0000002f: u32 = r00000000.wrapping_add(r0000002e);\n" : String).toByteArray.data.toList
theorem checked43 : bytes43=statementBytes 47 (op43.map lower) ∧ bytes43.length=60 := by core033_kernel_decide
def op44 : List WordIR.Op := [.bnot 47]
def bytes44 : Bytes := ("    let r00000030: u32 = !r0000002f;\n" : String).toByteArray.data.toList
theorem checked44 : bytes44=statementBytes 48 (op44.map lower) ∧ bytes44.length=37 := by core033_kernel_decide
def op45 : List WordIR.Op := [.band 45 48]
def bytes45 : Bytes := ("    let r00000031: u32 = r0000002d & r00000030;\n" : String).toByteArray.data.toList
theorem checked45 : bytes45=statementBytes 49 (op45.map lower) ∧ bytes45.length=48 := by core033_kernel_decide
def op46 : List WordIR.Op := [.bxor 43 49]
def bytes46 : Bytes := ("    let r00000032: u32 = r0000002b ^ r00000031;\n" : String).toByteArray.data.toList
theorem checked46 : bytes46=statementBytes 50 (op46.map lower) ∧ bytes46.length=48 := by core033_kernel_decide
def op47 : List WordIR.Op := [.shr 50 31]
def bytes47 : Bytes := ("    let r00000033: u32 = r00000032 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked47 : bytes47=statementBytes 51 (op47.map lower) ∧ bytes47.length=54 := by core033_kernel_decide
def op48 : List WordIR.Op := [.badd 41 51]
def bytes48 : Bytes := ("    let r00000034: u32 = r00000029.wrapping_add(r00000033);\n" : String).toByteArray.data.toList
theorem checked48 : bytes48=statementBytes 52 (op48.map lower) ∧ bytes48.length=60 := by core033_kernel_decide
def op49 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes49 : Bytes := ("    let r00000035: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked49 : bytes49=statementBytes 53 (op49.map lower) ∧ bytes49.length=41 := by core033_kernel_decide
def op50 : List WordIR.Op := [.bnot 53]
def bytes50 : Bytes := ("    let r00000036: u32 = !r00000035;\n" : String).toByteArray.data.toList
theorem checked50 : bytes50=statementBytes 54 (op50.map lower) ∧ bytes50.length=37 := by core033_kernel_decide
def op51 : List WordIR.Op := [.band 52 54]
def bytes51 : Bytes := ("    let r00000037: u32 = r00000034 & r00000036;\n" : String).toByteArray.data.toList
theorem checked51 : bytes51=statementBytes 55 (op51.map lower) ∧ bytes51.length=48 := by core033_kernel_decide
def op52 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes52 : Bytes := ("    let r00000038: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked52 : bytes52=statementBytes 56 (op52.map lower) ∧ bytes52.length=41 := by core033_kernel_decide
def op53 : List WordIR.Op := [.badd 1 56]
def bytes53 : Bytes := ("    let r00000039: u32 = r00000001.wrapping_add(r00000038);\n" : String).toByteArray.data.toList
theorem checked53 : bytes53=statementBytes 57 (op53.map lower) ∧ bytes53.length=60 := by core033_kernel_decide
def op54 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes54 : Bytes := ("    let r0000003a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked54 : bytes54=statementBytes 58 (op54.map lower) ∧ bytes54.length=41 := by core033_kernel_decide
def op55 : List WordIR.Op := [.band 0 58]
def bytes55 : Bytes := ("    let r0000003b: u32 = r00000000 & r0000003a;\n" : String).toByteArray.data.toList
theorem checked55 : bytes55=statementBytes 59 (op55.map lower) ∧ bytes55.length=48 := by core033_kernel_decide
def op56 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes56 : Bytes := ("    let r0000003c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked56 : bytes56=statementBytes 60 (op56.map lower) ∧ bytes56.length=41 := by core033_kernel_decide
def op57 : List WordIR.Op := [.bxor 0 60]
def bytes57 : Bytes := ("    let r0000003d: u32 = r00000000 ^ r0000003c;\n" : String).toByteArray.data.toList
theorem checked57 : bytes57=statementBytes 61 (op57.map lower) ∧ bytes57.length=48 := by core033_kernel_decide
def op58 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes58 : Bytes := ("    let r0000003e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked58 : bytes58=statementBytes 62 (op58.map lower) ∧ bytes58.length=41 := by core033_kernel_decide
def op59 : List WordIR.Op := [.badd 0 62]
def bytes59 : Bytes := ("    let r0000003f: u32 = r00000000.wrapping_add(r0000003e);\n" : String).toByteArray.data.toList
theorem checked59 : bytes59=statementBytes 63 (op59.map lower) ∧ bytes59.length=60 := by core033_kernel_decide
def op60 : List WordIR.Op := [.bnot 63]
def bytes60 : Bytes := ("    let r00000040: u32 = !r0000003f;\n" : String).toByteArray.data.toList
theorem checked60 : bytes60=statementBytes 64 (op60.map lower) ∧ bytes60.length=37 := by core033_kernel_decide
def op61 : List WordIR.Op := [.band 61 64]
def bytes61 : Bytes := ("    let r00000041: u32 = r0000003d & r00000040;\n" : String).toByteArray.data.toList
theorem checked61 : bytes61=statementBytes 65 (op61.map lower) ∧ bytes61.length=48 := by core033_kernel_decide
def op62 : List WordIR.Op := [.bxor 59 65]
def bytes62 : Bytes := ("    let r00000042: u32 = r0000003b ^ r00000041;\n" : String).toByteArray.data.toList
theorem checked62 : bytes62=statementBytes 66 (op62.map lower) ∧ bytes62.length=48 := by core033_kernel_decide
def op63 : List WordIR.Op := [.shr 66 31]
def bytes63 : Bytes := ("    let r00000043: u32 = r00000042 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked63 : bytes63=statementBytes 67 (op63.map lower) ∧ bytes63.length=54 := by core033_kernel_decide
def op64 : List WordIR.Op := [.badd 57 67]
def bytes64 : Bytes := ("    let r00000044: u32 = r00000039.wrapping_add(r00000043);\n" : String).toByteArray.data.toList
theorem checked64 : bytes64=statementBytes 68 (op64.map lower) ∧ bytes64.length=60 := by core033_kernel_decide
def op65 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes65 : Bytes := ("    let r00000045: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked65 : bytes65=statementBytes 69 (op65.map lower) ∧ bytes65.length=41 := by core033_kernel_decide
def op66 : List WordIR.Op := [.bnot 69]
def bytes66 : Bytes := ("    let r00000046: u32 = !r00000045;\n" : String).toByteArray.data.toList
theorem checked66 : bytes66=statementBytes 70 (op66.map lower) ∧ bytes66.length=37 := by core033_kernel_decide
def op67 : List WordIR.Op := [.bxor 68 70]
def bytes67 : Bytes := ("    let r00000047: u32 = r00000044 ^ r00000046;\n" : String).toByteArray.data.toList
theorem checked67 : bytes67=statementBytes 71 (op67.map lower) ∧ bytes67.length=48 := by core033_kernel_decide
def op68 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes68 : Bytes := ("    let r00000048: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked68 : bytes68=statementBytes 72 (op68.map lower) ∧ bytes68.length=41 := by core033_kernel_decide
def op69 : List WordIR.Op := [.badd 1 72]
def bytes69 : Bytes := ("    let r00000049: u32 = r00000001.wrapping_add(r00000048);\n" : String).toByteArray.data.toList
theorem checked69 : bytes69=statementBytes 73 (op69.map lower) ∧ bytes69.length=60 := by core033_kernel_decide
def op70 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes70 : Bytes := ("    let r0000004a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked70 : bytes70=statementBytes 74 (op70.map lower) ∧ bytes70.length=41 := by core033_kernel_decide
def op71 : List WordIR.Op := [.band 0 74]
def bytes71 : Bytes := ("    let r0000004b: u32 = r00000000 & r0000004a;\n" : String).toByteArray.data.toList
theorem checked71 : bytes71=statementBytes 75 (op71.map lower) ∧ bytes71.length=48 := by core033_kernel_decide
def op72 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes72 : Bytes := ("    let r0000004c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked72 : bytes72=statementBytes 76 (op72.map lower) ∧ bytes72.length=41 := by core033_kernel_decide
def op73 : List WordIR.Op := [.bxor 0 76]
def bytes73 : Bytes := ("    let r0000004d: u32 = r00000000 ^ r0000004c;\n" : String).toByteArray.data.toList
theorem checked73 : bytes73=statementBytes 77 (op73.map lower) ∧ bytes73.length=48 := by core033_kernel_decide
def op74 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes74 : Bytes := ("    let r0000004e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked74 : bytes74=statementBytes 78 (op74.map lower) ∧ bytes74.length=41 := by core033_kernel_decide
def op75 : List WordIR.Op := [.badd 0 78]
def bytes75 : Bytes := ("    let r0000004f: u32 = r00000000.wrapping_add(r0000004e);\n" : String).toByteArray.data.toList
theorem checked75 : bytes75=statementBytes 79 (op75.map lower) ∧ bytes75.length=60 := by core033_kernel_decide
def op76 : List WordIR.Op := [.bnot 79]
def bytes76 : Bytes := ("    let r00000050: u32 = !r0000004f;\n" : String).toByteArray.data.toList
theorem checked76 : bytes76=statementBytes 80 (op76.map lower) ∧ bytes76.length=37 := by core033_kernel_decide
def op77 : List WordIR.Op := [.band 77 80]
def bytes77 : Bytes := ("    let r00000051: u32 = r0000004d & r00000050;\n" : String).toByteArray.data.toList
theorem checked77 : bytes77=statementBytes 81 (op77.map lower) ∧ bytes77.length=48 := by core033_kernel_decide
def op78 : List WordIR.Op := [.bxor 75 81]
def bytes78 : Bytes := ("    let r00000052: u32 = r0000004b ^ r00000051;\n" : String).toByteArray.data.toList
theorem checked78 : bytes78=statementBytes 82 (op78.map lower) ∧ bytes78.length=48 := by core033_kernel_decide
def op79 : List WordIR.Op := [.shr 82 31]
def bytes79 : Bytes := ("    let r00000053: u32 = r00000052 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked79 : bytes79=statementBytes 83 (op79.map lower) ∧ bytes79.length=54 := by core033_kernel_decide
def op80 : List WordIR.Op := [.badd 73 83]
def bytes80 : Bytes := ("    let r00000054: u32 = r00000049.wrapping_add(r00000053);\n" : String).toByteArray.data.toList
theorem checked80 : bytes80=statementBytes 84 (op80.map lower) ∧ bytes80.length=60 := by core033_kernel_decide
def op81 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes81 : Bytes := ("    let r00000055: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked81 : bytes81=statementBytes 85 (op81.map lower) ∧ bytes81.length=41 := by core033_kernel_decide
def op82 : List WordIR.Op := [.bnot 85]
def bytes82 : Bytes := ("    let r00000056: u32 = !r00000055;\n" : String).toByteArray.data.toList
theorem checked82 : bytes82=statementBytes 86 (op82.map lower) ∧ bytes82.length=37 := by core033_kernel_decide
def op83 : List WordIR.Op := [.badd 84 86]
def bytes83 : Bytes := ("    let r00000057: u32 = r00000054.wrapping_add(r00000056);\n" : String).toByteArray.data.toList
theorem checked83 : bytes83=statementBytes 87 (op83.map lower) ∧ bytes83.length=60 := by core033_kernel_decide
def op84 : List WordIR.Op := [.bnot 87]
def bytes84 : Bytes := ("    let r00000058: u32 = !r00000057;\n" : String).toByteArray.data.toList
theorem checked84 : bytes84=statementBytes 88 (op84.map lower) ∧ bytes84.length=37 := by core033_kernel_decide
def op85 : List WordIR.Op := [.band 71 88]
def bytes85 : Bytes := ("    let r00000059: u32 = r00000047 & r00000058;\n" : String).toByteArray.data.toList
theorem checked85 : bytes85=statementBytes 89 (op85.map lower) ∧ bytes85.length=48 := by core033_kernel_decide
def op86 : List WordIR.Op := [.bxor 55 89]
def bytes86 : Bytes := ("    let r0000005a: u32 = r00000037 ^ r00000059;\n" : String).toByteArray.data.toList
theorem checked86 : bytes86=statementBytes 90 (op86.map lower) ∧ bytes86.length=48 := by core033_kernel_decide
def op87 : List WordIR.Op := [.shr 90 31]
def bytes87 : Bytes := ("    let r0000005b: u32 = r0000005a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked87 : bytes87=statementBytes 91 (op87.map lower) ∧ bytes87.length=54 := by core033_kernel_decide
def op88 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes88 : Bytes := ("    let r0000005c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked88 : bytes88=statementBytes 92 (op88.map lower) ∧ bytes88.length=41 := by core033_kernel_decide
def op89 : List WordIR.Op := [.bxor 91 92]
def bytes89 : Bytes := ("    let r0000005d: u32 = r0000005b ^ r0000005c;\n" : String).toByteArray.data.toList
theorem checked89 : bytes89=statementBytes 93 (op89.map lower) ∧ bytes89.length=48 := by core033_kernel_decide
def op90 : List WordIR.Op := [.band 39 93]
def bytes90 : Bytes := ("    let r0000005e: u32 = r00000027 & r0000005d;\n" : String).toByteArray.data.toList
theorem checked90 : bytes90=statementBytes 94 (op90.map lower) ∧ bytes90.length=48 := by core033_kernel_decide
def op91 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes91 : Bytes := ("    let r0000005f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked91 : bytes91=statementBytes 95 (op91.map lower) ∧ bytes91.length=41 := by core033_kernel_decide
def op92 : List WordIR.Op := [.bxor 94 95]
def bytes92 : Bytes := ("    let r00000060: u32 = r0000005e ^ r0000005f;\n" : String).toByteArray.data.toList
theorem checked92 : bytes92=statementBytes 96 (op92.map lower) ∧ bytes92.length=48 := by core033_kernel_decide
def op93 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes93 : Bytes := ("    let r00000061: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked93 : bytes93=statementBytes 97 (op93.map lower) ∧ bytes93.length=41 := by core033_kernel_decide
def op94 : List WordIR.Op := [.badd 2 97]
def bytes94 : Bytes := ("    let r00000062: u32 = r00000002.wrapping_add(r00000061);\n" : String).toByteArray.data.toList
theorem checked94 : bytes94=statementBytes 98 (op94.map lower) ∧ bytes94.length=60 := by core033_kernel_decide
def op95 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes95 : Bytes := ("    let r00000063: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked95 : bytes95=statementBytes 99 (op95.map lower) ∧ bytes95.length=41 := by core033_kernel_decide
def op96 : List WordIR.Op := [.badd 3 99]
def bytes96 : Bytes := ("    let r00000064: u32 = r00000003.wrapping_add(r00000063);\n" : String).toByteArray.data.toList
theorem checked96 : bytes96=statementBytes 100 (op96.map lower) ∧ bytes96.length=60 := by core033_kernel_decide
def op97 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes97 : Bytes := ("    let r00000065: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked97 : bytes97=statementBytes 101 (op97.map lower) ∧ bytes97.length=41 := by core033_kernel_decide
def op98 : List WordIR.Op := [.band 2 101]
def bytes98 : Bytes := ("    let r00000066: u32 = r00000002 & r00000065;\n" : String).toByteArray.data.toList
theorem checked98 : bytes98=statementBytes 102 (op98.map lower) ∧ bytes98.length=48 := by core033_kernel_decide
def op99 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes99 : Bytes := ("    let r00000067: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked99 : bytes99=statementBytes 103 (op99.map lower) ∧ bytes99.length=41 := by core033_kernel_decide
def op100 : List WordIR.Op := [.bxor 2 103]
def bytes100 : Bytes := ("    let r00000068: u32 = r00000002 ^ r00000067;\n" : String).toByteArray.data.toList
theorem checked100 : bytes100=statementBytes 104 (op100.map lower) ∧ bytes100.length=48 := by core033_kernel_decide
def op101 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes101 : Bytes := ("    let r00000069: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked101 : bytes101=statementBytes 105 (op101.map lower) ∧ bytes101.length=41 := by core033_kernel_decide
def op102 : List WordIR.Op := [.badd 2 105]
def bytes102 : Bytes := ("    let r0000006a: u32 = r00000002.wrapping_add(r00000069);\n" : String).toByteArray.data.toList
theorem checked102 : bytes102=statementBytes 106 (op102.map lower) ∧ bytes102.length=60 := by core033_kernel_decide
def op103 : List WordIR.Op := [.bnot 106]
def bytes103 : Bytes := ("    let r0000006b: u32 = !r0000006a;\n" : String).toByteArray.data.toList
theorem checked103 : bytes103=statementBytes 107 (op103.map lower) ∧ bytes103.length=37 := by core033_kernel_decide
def op104 : List WordIR.Op := [.band 104 107]
def bytes104 : Bytes := ("    let r0000006c: u32 = r00000068 & r0000006b;\n" : String).toByteArray.data.toList
theorem checked104 : bytes104=statementBytes 108 (op104.map lower) ∧ bytes104.length=48 := by core033_kernel_decide
def op105 : List WordIR.Op := [.bxor 102 108]
def bytes105 : Bytes := ("    let r0000006d: u32 = r00000066 ^ r0000006c;\n" : String).toByteArray.data.toList
theorem checked105 : bytes105=statementBytes 109 (op105.map lower) ∧ bytes105.length=48 := by core033_kernel_decide
def op106 : List WordIR.Op := [.shr 109 31]
def bytes106 : Bytes := ("    let r0000006e: u32 = r0000006d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked106 : bytes106=statementBytes 110 (op106.map lower) ∧ bytes106.length=54 := by core033_kernel_decide
def op107 : List WordIR.Op := [.badd 100 110]
def bytes107 : Bytes := ("    let r0000006f: u32 = r00000064.wrapping_add(r0000006e);\n" : String).toByteArray.data.toList
theorem checked107 : bytes107=statementBytes 111 (op107.map lower) ∧ bytes107.length=60 := by core033_kernel_decide
def op108 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes108 : Bytes := ("    let r00000070: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked108 : bytes108=statementBytes 112 (op108.map lower) ∧ bytes108.length=41 := by core033_kernel_decide
def op109 : List WordIR.Op := [.bnot 112]
def bytes109 : Bytes := ("    let r00000071: u32 = !r00000070;\n" : String).toByteArray.data.toList
theorem checked109 : bytes109=statementBytes 113 (op109.map lower) ∧ bytes109.length=37 := by core033_kernel_decide
def op110 : List WordIR.Op := [.band 2 113]
def bytes110 : Bytes := ("    let r00000072: u32 = r00000002 & r00000071;\n" : String).toByteArray.data.toList
theorem checked110 : bytes110=statementBytes 114 (op110.map lower) ∧ bytes110.length=48 := by core033_kernel_decide
def op111 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes111 : Bytes := ("    let r00000073: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked111 : bytes111=statementBytes 115 (op111.map lower) ∧ bytes111.length=41 := by core033_kernel_decide
def op112 : List WordIR.Op := [.bnot 115]
def bytes112 : Bytes := ("    let r00000074: u32 = !r00000073;\n" : String).toByteArray.data.toList
theorem checked112 : bytes112=statementBytes 116 (op112.map lower) ∧ bytes112.length=37 := by core033_kernel_decide
def op113 : List WordIR.Op := [.bxor 2 116]
def bytes113 : Bytes := ("    let r00000075: u32 = r00000002 ^ r00000074;\n" : String).toByteArray.data.toList
theorem checked113 : bytes113=statementBytes 117 (op113.map lower) ∧ bytes113.length=48 := by core033_kernel_decide
def op114 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes114 : Bytes := ("    let r00000076: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked114 : bytes114=statementBytes 118 (op114.map lower) ∧ bytes114.length=41 := by core033_kernel_decide
def op115 : List WordIR.Op := [.bnot 118]
def bytes115 : Bytes := ("    let r00000077: u32 = !r00000076;\n" : String).toByteArray.data.toList
theorem checked115 : bytes115=statementBytes 119 (op115.map lower) ∧ bytes115.length=37 := by core033_kernel_decide
def op116 : List WordIR.Op := [.badd 2 119]
def bytes116 : Bytes := ("    let r00000078: u32 = r00000002.wrapping_add(r00000077);\n" : String).toByteArray.data.toList
theorem checked116 : bytes116=statementBytes 120 (op116.map lower) ∧ bytes116.length=60 := by core033_kernel_decide
def op117 : List WordIR.Op := [.bnot 120]
def bytes117 : Bytes := ("    let r00000079: u32 = !r00000078;\n" : String).toByteArray.data.toList
theorem checked117 : bytes117=statementBytes 121 (op117.map lower) ∧ bytes117.length=37 := by core033_kernel_decide
def op118 : List WordIR.Op := [.band 117 121]
def bytes118 : Bytes := ("    let r0000007a: u32 = r00000075 & r00000079;\n" : String).toByteArray.data.toList
theorem checked118 : bytes118=statementBytes 122 (op118.map lower) ∧ bytes118.length=48 := by core033_kernel_decide
def op119 : List WordIR.Op := [.bxor 114 122]
def bytes119 : Bytes := ("    let r0000007b: u32 = r00000072 ^ r0000007a;\n" : String).toByteArray.data.toList
theorem checked119 : bytes119=statementBytes 123 (op119.map lower) ∧ bytes119.length=48 := by core033_kernel_decide
def op120 : List WordIR.Op := [.shr 123 31]
def bytes120 : Bytes := ("    let r0000007c: u32 = r0000007b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked120 : bytes120=statementBytes 124 (op120.map lower) ∧ bytes120.length=54 := by core033_kernel_decide
def op121 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes121 : Bytes := ("    let r0000007d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked121 : bytes121=statementBytes 125 (op121.map lower) ∧ bytes121.length=41 := by core033_kernel_decide
def op122 : List WordIR.Op := [.bxor 124 125]
def bytes122 : Bytes := ("    let r0000007e: u32 = r0000007c ^ r0000007d;\n" : String).toByteArray.data.toList
theorem checked122 : bytes122=statementBytes 126 (op122.map lower) ∧ bytes122.length=48 := by core033_kernel_decide
def op123 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes123 : Bytes := ("    let r0000007f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked123 : bytes123=statementBytes 127 (op123.map lower) ∧ bytes123.length=41 := by core033_kernel_decide
def op124 : List WordIR.Op := [.bnot 127]
def bytes124 : Bytes := ("    let r00000080: u32 = !r0000007f;\n" : String).toByteArray.data.toList
theorem checked124 : bytes124=statementBytes 128 (op124.map lower) ∧ bytes124.length=37 := by core033_kernel_decide
def op125 : List WordIR.Op := [.band 3 128]
def bytes125 : Bytes := ("    let r00000081: u32 = r00000003 & r00000080;\n" : String).toByteArray.data.toList
theorem checked125 : bytes125=statementBytes 129 (op125.map lower) ∧ bytes125.length=48 := by core033_kernel_decide
def op126 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes126 : Bytes := ("    let r00000082: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked126 : bytes126=statementBytes 130 (op126.map lower) ∧ bytes126.length=41 := by core033_kernel_decide
def op127 : List WordIR.Op := [.bnot 130]
def bytes127 : Bytes := ("    let r00000083: u32 = !r00000082;\n" : String).toByteArray.data.toList
theorem checked127 : bytes127=statementBytes 131 (op127.map lower) ∧ bytes127.length=37 := by core033_kernel_decide
def op128 : List WordIR.Op := [.bxor 3 131]
def bytes128 : Bytes := ("    let r00000084: u32 = r00000003 ^ r00000083;\n" : String).toByteArray.data.toList
theorem checked128 : bytes128=statementBytes 132 (op128.map lower) ∧ bytes128.length=48 := by core033_kernel_decide
def op129 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes129 : Bytes := ("    let r00000085: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked129 : bytes129=statementBytes 133 (op129.map lower) ∧ bytes129.length=41 := by core033_kernel_decide
def op130 : List WordIR.Op := [.bnot 133]
def bytes130 : Bytes := ("    let r00000086: u32 = !r00000085;\n" : String).toByteArray.data.toList
theorem checked130 : bytes130=statementBytes 134 (op130.map lower) ∧ bytes130.length=37 := by core033_kernel_decide
def op131 : List WordIR.Op := [.badd 3 134]
def bytes131 : Bytes := ("    let r00000087: u32 = r00000003.wrapping_add(r00000086);\n" : String).toByteArray.data.toList
theorem checked131 : bytes131=statementBytes 135 (op131.map lower) ∧ bytes131.length=60 := by core033_kernel_decide
def op132 : List WordIR.Op := [.bnot 135]
def bytes132 : Bytes := ("    let r00000088: u32 = !r00000087;\n" : String).toByteArray.data.toList
theorem checked132 : bytes132=statementBytes 136 (op132.map lower) ∧ bytes132.length=37 := by core033_kernel_decide
def op133 : List WordIR.Op := [.band 132 136]
def bytes133 : Bytes := ("    let r00000089: u32 = r00000084 & r00000088;\n" : String).toByteArray.data.toList
theorem checked133 : bytes133=statementBytes 137 (op133.map lower) ∧ bytes133.length=48 := by core033_kernel_decide
def op134 : List WordIR.Op := [.bxor 129 137]
def bytes134 : Bytes := ("    let r0000008a: u32 = r00000081 ^ r00000089;\n" : String).toByteArray.data.toList
theorem checked134 : bytes134=statementBytes 138 (op134.map lower) ∧ bytes134.length=48 := by core033_kernel_decide
def op135 : List WordIR.Op := [.shr 138 31]
def bytes135 : Bytes := ("    let r0000008b: u32 = r0000008a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked135 : bytes135=statementBytes 139 (op135.map lower) ∧ bytes135.length=54 := by core033_kernel_decide
def op136 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes136 : Bytes := ("    let r0000008c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked136 : bytes136=statementBytes 140 (op136.map lower) ∧ bytes136.length=41 := by core033_kernel_decide
def op137 : List WordIR.Op := [.bxor 139 140]
def bytes137 : Bytes := ("    let r0000008d: u32 = r0000008b ^ r0000008c;\n" : String).toByteArray.data.toList
theorem checked137 : bytes137=statementBytes 141 (op137.map lower) ∧ bytes137.length=48 := by core033_kernel_decide
def op138 : List WordIR.Op := [.band 126 141]
def bytes138 : Bytes := ("    let r0000008e: u32 = r0000007e & r0000008d;\n" : String).toByteArray.data.toList
theorem checked138 : bytes138=statementBytes 142 (op138.map lower) ∧ bytes138.length=48 := by core033_kernel_decide
def op139 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes139 : Bytes := ("    let r0000008f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked139 : bytes139=statementBytes 143 (op139.map lower) ∧ bytes139.length=41 := by core033_kernel_decide
def op140 : List WordIR.Op := [.bxor 142 143]
def bytes140 : Bytes := ("    let r00000090: u32 = r0000008e ^ r0000008f;\n" : String).toByteArray.data.toList
theorem checked140 : bytes140=statementBytes 144 (op140.map lower) ∧ bytes140.length=48 := by core033_kernel_decide
def op141 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes141 : Bytes := ("    let r00000091: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked141 : bytes141=statementBytes 145 (op141.map lower) ∧ bytes141.length=41 := by core033_kernel_decide
def op142 : List WordIR.Op := [.badd 2 145]
def bytes142 : Bytes := ("    let r00000092: u32 = r00000002.wrapping_add(r00000091);\n" : String).toByteArray.data.toList
theorem checked142 : bytes142=statementBytes 146 (op142.map lower) ∧ bytes142.length=60 := by core033_kernel_decide
def op143 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes143 : Bytes := ("    let r00000093: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked143 : bytes143=statementBytes 147 (op143.map lower) ∧ bytes143.length=41 := by core033_kernel_decide
def op144 : List WordIR.Op := [.bnot 147]
def bytes144 : Bytes := ("    let r00000094: u32 = !r00000093;\n" : String).toByteArray.data.toList
theorem checked144 : bytes144=statementBytes 148 (op144.map lower) ∧ bytes144.length=37 := by core033_kernel_decide
def op145 : List WordIR.Op := [.band 146 148]
def bytes145 : Bytes := ("    let r00000095: u32 = r00000092 & r00000094;\n" : String).toByteArray.data.toList
theorem checked145 : bytes145=statementBytes 149 (op145.map lower) ∧ bytes145.length=48 := by core033_kernel_decide
def op146 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes146 : Bytes := ("    let r00000096: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked146 : bytes146=statementBytes 150 (op146.map lower) ∧ bytes146.length=41 := by core033_kernel_decide
def op147 : List WordIR.Op := [.badd 2 150]
def bytes147 : Bytes := ("    let r00000097: u32 = r00000002.wrapping_add(r00000096);\n" : String).toByteArray.data.toList
theorem checked147 : bytes147=statementBytes 151 (op147.map lower) ∧ bytes147.length=60 := by core033_kernel_decide
def op148 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes148 : Bytes := ("    let r00000098: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked148 : bytes148=statementBytes 152 (op148.map lower) ∧ bytes148.length=41 := by core033_kernel_decide
def op149 : List WordIR.Op := [.bnot 152]
def bytes149 : Bytes := ("    let r00000099: u32 = !r00000098;\n" : String).toByteArray.data.toList
theorem checked149 : bytes149=statementBytes 153 (op149.map lower) ∧ bytes149.length=37 := by core033_kernel_decide
def op150 : List WordIR.Op := [.bxor 151 153]
def bytes150 : Bytes := ("    let r0000009a: u32 = r00000097 ^ r00000099;\n" : String).toByteArray.data.toList
theorem checked150 : bytes150=statementBytes 154 (op150.map lower) ∧ bytes150.length=48 := by core033_kernel_decide
def op151 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes151 : Bytes := ("    let r0000009b: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked151 : bytes151=statementBytes 155 (op151.map lower) ∧ bytes151.length=41 := by core033_kernel_decide
def op152 : List WordIR.Op := [.badd 2 155]
def bytes152 : Bytes := ("    let r0000009c: u32 = r00000002.wrapping_add(r0000009b);\n" : String).toByteArray.data.toList
theorem checked152 : bytes152=statementBytes 156 (op152.map lower) ∧ bytes152.length=60 := by core033_kernel_decide
def op153 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes153 : Bytes := ("    let r0000009d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked153 : bytes153=statementBytes 157 (op153.map lower) ∧ bytes153.length=41 := by core033_kernel_decide
def op154 : List WordIR.Op := [.bnot 157]
def bytes154 : Bytes := ("    let r0000009e: u32 = !r0000009d;\n" : String).toByteArray.data.toList
theorem checked154 : bytes154=statementBytes 158 (op154.map lower) ∧ bytes154.length=37 := by core033_kernel_decide
def op155 : List WordIR.Op := [.badd 156 158]
def bytes155 : Bytes := ("    let r0000009f: u32 = r0000009c.wrapping_add(r0000009e);\n" : String).toByteArray.data.toList
theorem checked155 : bytes155=statementBytes 159 (op155.map lower) ∧ bytes155.length=60 := by core033_kernel_decide
def op156 : List WordIR.Op := [.bnot 159]
def bytes156 : Bytes := ("    let r000000a0: u32 = !r0000009f;\n" : String).toByteArray.data.toList
theorem checked156 : bytes156=statementBytes 160 (op156.map lower) ∧ bytes156.length=37 := by core033_kernel_decide
def op157 : List WordIR.Op := [.band 154 160]
def bytes157 : Bytes := ("    let r000000a1: u32 = r0000009a & r000000a0;\n" : String).toByteArray.data.toList
theorem checked157 : bytes157=statementBytes 161 (op157.map lower) ∧ bytes157.length=48 := by core033_kernel_decide
def op158 : List WordIR.Op := [.bxor 149 161]
def bytes158 : Bytes := ("    let r000000a2: u32 = r00000095 ^ r000000a1;\n" : String).toByteArray.data.toList
theorem checked158 : bytes158=statementBytes 162 (op158.map lower) ∧ bytes158.length=48 := by core033_kernel_decide
def op159 : List WordIR.Op := [.shr 162 31]
def bytes159 : Bytes := ("    let r000000a3: u32 = r000000a2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked159 : bytes159=statementBytes 163 (op159.map lower) ∧ bytes159.length=54 := by core033_kernel_decide
def op160 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes160 : Bytes := ("    let r000000a4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked160 : bytes160=statementBytes 164 (op160.map lower) ∧ bytes160.length=41 := by core033_kernel_decide
def op161 : List WordIR.Op := [.bxor 163 164]
def bytes161 : Bytes := ("    let r000000a5: u32 = r000000a3 ^ r000000a4;\n" : String).toByteArray.data.toList
theorem checked161 : bytes161=statementBytes 165 (op161.map lower) ∧ bytes161.length=48 := by core033_kernel_decide
def op162 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes162 : Bytes := ("    let r000000a6: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked162 : bytes162=statementBytes 166 (op162.map lower) ∧ bytes162.length=41 := by core033_kernel_decide
def op163 : List WordIR.Op := [.badd 3 166]
def bytes163 : Bytes := ("    let r000000a7: u32 = r00000003.wrapping_add(r000000a6);\n" : String).toByteArray.data.toList
theorem checked163 : bytes163=statementBytes 167 (op163.map lower) ∧ bytes163.length=60 := by core033_kernel_decide
def op164 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes164 : Bytes := ("    let r000000a8: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked164 : bytes164=statementBytes 168 (op164.map lower) ∧ bytes164.length=41 := by core033_kernel_decide
def op165 : List WordIR.Op := [.band 2 168]
def bytes165 : Bytes := ("    let r000000a9: u32 = r00000002 & r000000a8;\n" : String).toByteArray.data.toList
theorem checked165 : bytes165=statementBytes 169 (op165.map lower) ∧ bytes165.length=48 := by core033_kernel_decide
def op166 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes166 : Bytes := ("    let r000000aa: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked166 : bytes166=statementBytes 170 (op166.map lower) ∧ bytes166.length=41 := by core033_kernel_decide
def op167 : List WordIR.Op := [.bxor 2 170]
def bytes167 : Bytes := ("    let r000000ab: u32 = r00000002 ^ r000000aa;\n" : String).toByteArray.data.toList
theorem checked167 : bytes167=statementBytes 171 (op167.map lower) ∧ bytes167.length=48 := by core033_kernel_decide
def op168 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes168 : Bytes := ("    let r000000ac: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked168 : bytes168=statementBytes 172 (op168.map lower) ∧ bytes168.length=41 := by core033_kernel_decide
def op169 : List WordIR.Op := [.badd 2 172]
def bytes169 : Bytes := ("    let r000000ad: u32 = r00000002.wrapping_add(r000000ac);\n" : String).toByteArray.data.toList
theorem checked169 : bytes169=statementBytes 173 (op169.map lower) ∧ bytes169.length=60 := by core033_kernel_decide
def op170 : List WordIR.Op := [.bnot 173]
def bytes170 : Bytes := ("    let r000000ae: u32 = !r000000ad;\n" : String).toByteArray.data.toList
theorem checked170 : bytes170=statementBytes 174 (op170.map lower) ∧ bytes170.length=37 := by core033_kernel_decide
def op171 : List WordIR.Op := [.band 171 174]
def bytes171 : Bytes := ("    let r000000af: u32 = r000000ab & r000000ae;\n" : String).toByteArray.data.toList
theorem checked171 : bytes171=statementBytes 175 (op171.map lower) ∧ bytes171.length=48 := by core033_kernel_decide
def op172 : List WordIR.Op := [.bxor 169 175]
def bytes172 : Bytes := ("    let r000000b0: u32 = r000000a9 ^ r000000af;\n" : String).toByteArray.data.toList
theorem checked172 : bytes172=statementBytes 176 (op172.map lower) ∧ bytes172.length=48 := by core033_kernel_decide
def op173 : List WordIR.Op := [.shr 176 31]
def bytes173 : Bytes := ("    let r000000b1: u32 = r000000b0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked173 : bytes173=statementBytes 177 (op173.map lower) ∧ bytes173.length=54 := by core033_kernel_decide
def op174 : List WordIR.Op := [.badd 167 177]
def bytes174 : Bytes := ("    let r000000b2: u32 = r000000a7.wrapping_add(r000000b1);\n" : String).toByteArray.data.toList
theorem checked174 : bytes174=statementBytes 178 (op174.map lower) ∧ bytes174.length=60 := by core033_kernel_decide
def op175 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes175 : Bytes := ("    let r000000b3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked175 : bytes175=statementBytes 179 (op175.map lower) ∧ bytes175.length=41 := by core033_kernel_decide
def op176 : List WordIR.Op := [.bnot 179]
def bytes176 : Bytes := ("    let r000000b4: u32 = !r000000b3;\n" : String).toByteArray.data.toList
theorem checked176 : bytes176=statementBytes 180 (op176.map lower) ∧ bytes176.length=37 := by core033_kernel_decide
def op177 : List WordIR.Op := [.band 178 180]
def bytes177 : Bytes := ("    let r000000b5: u32 = r000000b2 & r000000b4;\n" : String).toByteArray.data.toList
theorem checked177 : bytes177=statementBytes 181 (op177.map lower) ∧ bytes177.length=48 := by core033_kernel_decide
def op178 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes178 : Bytes := ("    let r000000b6: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked178 : bytes178=statementBytes 182 (op178.map lower) ∧ bytes178.length=41 := by core033_kernel_decide
def op179 : List WordIR.Op := [.badd 3 182]
def bytes179 : Bytes := ("    let r000000b7: u32 = r00000003.wrapping_add(r000000b6);\n" : String).toByteArray.data.toList
theorem checked179 : bytes179=statementBytes 183 (op179.map lower) ∧ bytes179.length=60 := by core033_kernel_decide
def op180 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes180 : Bytes := ("    let r000000b8: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked180 : bytes180=statementBytes 184 (op180.map lower) ∧ bytes180.length=41 := by core033_kernel_decide
def op181 : List WordIR.Op := [.band 2 184]
def bytes181 : Bytes := ("    let r000000b9: u32 = r00000002 & r000000b8;\n" : String).toByteArray.data.toList
theorem checked181 : bytes181=statementBytes 185 (op181.map lower) ∧ bytes181.length=48 := by core033_kernel_decide
def op182 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes182 : Bytes := ("    let r000000ba: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked182 : bytes182=statementBytes 186 (op182.map lower) ∧ bytes182.length=41 := by core033_kernel_decide
def op183 : List WordIR.Op := [.bxor 2 186]
def bytes183 : Bytes := ("    let r000000bb: u32 = r00000002 ^ r000000ba;\n" : String).toByteArray.data.toList
theorem checked183 : bytes183=statementBytes 187 (op183.map lower) ∧ bytes183.length=48 := by core033_kernel_decide
def op184 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes184 : Bytes := ("    let r000000bc: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked184 : bytes184=statementBytes 188 (op184.map lower) ∧ bytes184.length=41 := by core033_kernel_decide
def op185 : List WordIR.Op := [.badd 2 188]
def bytes185 : Bytes := ("    let r000000bd: u32 = r00000002.wrapping_add(r000000bc);\n" : String).toByteArray.data.toList
theorem checked185 : bytes185=statementBytes 189 (op185.map lower) ∧ bytes185.length=60 := by core033_kernel_decide
def op186 : List WordIR.Op := [.bnot 189]
def bytes186 : Bytes := ("    let r000000be: u32 = !r000000bd;\n" : String).toByteArray.data.toList
theorem checked186 : bytes186=statementBytes 190 (op186.map lower) ∧ bytes186.length=37 := by core033_kernel_decide
def op187 : List WordIR.Op := [.band 187 190]
def bytes187 : Bytes := ("    let r000000bf: u32 = r000000bb & r000000be;\n" : String).toByteArray.data.toList
theorem checked187 : bytes187=statementBytes 191 (op187.map lower) ∧ bytes187.length=48 := by core033_kernel_decide
def op188 : List WordIR.Op := [.bxor 185 191]
def bytes188 : Bytes := ("    let r000000c0: u32 = r000000b9 ^ r000000bf;\n" : String).toByteArray.data.toList
theorem checked188 : bytes188=statementBytes 192 (op188.map lower) ∧ bytes188.length=48 := by core033_kernel_decide
def op189 : List WordIR.Op := [.shr 192 31]
def bytes189 : Bytes := ("    let r000000c1: u32 = r000000c0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked189 : bytes189=statementBytes 193 (op189.map lower) ∧ bytes189.length=54 := by core033_kernel_decide
def op190 : List WordIR.Op := [.badd 183 193]
def bytes190 : Bytes := ("    let r000000c2: u32 = r000000b7.wrapping_add(r000000c1);\n" : String).toByteArray.data.toList
theorem checked190 : bytes190=statementBytes 194 (op190.map lower) ∧ bytes190.length=60 := by core033_kernel_decide
def op191 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes191 : Bytes := ("    let r000000c3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked191 : bytes191=statementBytes 195 (op191.map lower) ∧ bytes191.length=41 := by core033_kernel_decide
def op192 : List WordIR.Op := [.bnot 195]
def bytes192 : Bytes := ("    let r000000c4: u32 = !r000000c3;\n" : String).toByteArray.data.toList
theorem checked192 : bytes192=statementBytes 196 (op192.map lower) ∧ bytes192.length=37 := by core033_kernel_decide
def op193 : List WordIR.Op := [.bxor 194 196]
def bytes193 : Bytes := ("    let r000000c5: u32 = r000000c2 ^ r000000c4;\n" : String).toByteArray.data.toList
theorem checked193 : bytes193=statementBytes 197 (op193.map lower) ∧ bytes193.length=48 := by core033_kernel_decide
def op194 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes194 : Bytes := ("    let r000000c6: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked194 : bytes194=statementBytes 198 (op194.map lower) ∧ bytes194.length=41 := by core033_kernel_decide
def op195 : List WordIR.Op := [.badd 3 198]
def bytes195 : Bytes := ("    let r000000c7: u32 = r00000003.wrapping_add(r000000c6);\n" : String).toByteArray.data.toList
theorem checked195 : bytes195=statementBytes 199 (op195.map lower) ∧ bytes195.length=60 := by core033_kernel_decide
def op196 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes196 : Bytes := ("    let r000000c8: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked196 : bytes196=statementBytes 200 (op196.map lower) ∧ bytes196.length=41 := by core033_kernel_decide
def op197 : List WordIR.Op := [.band 2 200]
def bytes197 : Bytes := ("    let r000000c9: u32 = r00000002 & r000000c8;\n" : String).toByteArray.data.toList
theorem checked197 : bytes197=statementBytes 201 (op197.map lower) ∧ bytes197.length=48 := by core033_kernel_decide
def op198 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes198 : Bytes := ("    let r000000ca: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked198 : bytes198=statementBytes 202 (op198.map lower) ∧ bytes198.length=41 := by core033_kernel_decide
def op199 : List WordIR.Op := [.bxor 2 202]
def bytes199 : Bytes := ("    let r000000cb: u32 = r00000002 ^ r000000ca;\n" : String).toByteArray.data.toList
theorem checked199 : bytes199=statementBytes 203 (op199.map lower) ∧ bytes199.length=48 := by core033_kernel_decide
def op200 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295)]
def bytes200 : Bytes := ("    let r000000cc: u32 = 0xffffffff_u32;\n" : String).toByteArray.data.toList
theorem checked200 : bytes200=statementBytes 204 (op200.map lower) ∧ bytes200.length=41 := by core033_kernel_decide
def op201 : List WordIR.Op := [.badd 2 204]
def bytes201 : Bytes := ("    let r000000cd: u32 = r00000002.wrapping_add(r000000cc);\n" : String).toByteArray.data.toList
theorem checked201 : bytes201=statementBytes 205 (op201.map lower) ∧ bytes201.length=60 := by core033_kernel_decide
def op202 : List WordIR.Op := [.bnot 205]
def bytes202 : Bytes := ("    let r000000ce: u32 = !r000000cd;\n" : String).toByteArray.data.toList
theorem checked202 : bytes202=statementBytes 206 (op202.map lower) ∧ bytes202.length=37 := by core033_kernel_decide
def op203 : List WordIR.Op := [.band 203 206]
def bytes203 : Bytes := ("    let r000000cf: u32 = r000000cb & r000000ce;\n" : String).toByteArray.data.toList
theorem checked203 : bytes203=statementBytes 207 (op203.map lower) ∧ bytes203.length=48 := by core033_kernel_decide
def op204 : List WordIR.Op := [.bxor 201 207]
def bytes204 : Bytes := ("    let r000000d0: u32 = r000000c9 ^ r000000cf;\n" : String).toByteArray.data.toList
theorem checked204 : bytes204=statementBytes 208 (op204.map lower) ∧ bytes204.length=48 := by core033_kernel_decide
def op205 : List WordIR.Op := [.shr 208 31]
def bytes205 : Bytes := ("    let r000000d1: u32 = r000000d0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked205 : bytes205=statementBytes 209 (op205.map lower) ∧ bytes205.length=54 := by core033_kernel_decide
def op206 : List WordIR.Op := [.badd 199 209]
def bytes206 : Bytes := ("    let r000000d2: u32 = r000000c7.wrapping_add(r000000d1);\n" : String).toByteArray.data.toList
theorem checked206 : bytes206=statementBytes 210 (op206.map lower) ∧ bytes206.length=60 := by core033_kernel_decide
def op207 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes207 : Bytes := ("    let r000000d3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked207 : bytes207=statementBytes 211 (op207.map lower) ∧ bytes207.length=41 := by core033_kernel_decide
def op208 : List WordIR.Op := [.bnot 211]
def bytes208 : Bytes := ("    let r000000d4: u32 = !r000000d3;\n" : String).toByteArray.data.toList
theorem checked208 : bytes208=statementBytes 212 (op208.map lower) ∧ bytes208.length=37 := by core033_kernel_decide
def op209 : List WordIR.Op := [.badd 210 212]
def bytes209 : Bytes := ("    let r000000d5: u32 = r000000d2.wrapping_add(r000000d4);\n" : String).toByteArray.data.toList
theorem checked209 : bytes209=statementBytes 213 (op209.map lower) ∧ bytes209.length=60 := by core033_kernel_decide
def op210 : List WordIR.Op := [.bnot 213]
def bytes210 : Bytes := ("    let r000000d6: u32 = !r000000d5;\n" : String).toByteArray.data.toList
theorem checked210 : bytes210=statementBytes 214 (op210.map lower) ∧ bytes210.length=37 := by core033_kernel_decide
def op211 : List WordIR.Op := [.band 197 214]
def bytes211 : Bytes := ("    let r000000d7: u32 = r000000c5 & r000000d6;\n" : String).toByteArray.data.toList
theorem checked211 : bytes211=statementBytes 215 (op211.map lower) ∧ bytes211.length=48 := by core033_kernel_decide
def op212 : List WordIR.Op := [.bxor 181 215]
def bytes212 : Bytes := ("    let r000000d8: u32 = r000000b5 ^ r000000d7;\n" : String).toByteArray.data.toList
theorem checked212 : bytes212=statementBytes 216 (op212.map lower) ∧ bytes212.length=48 := by core033_kernel_decide
def op213 : List WordIR.Op := [.shr 216 31]
def bytes213 : Bytes := ("    let r000000d9: u32 = r000000d8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked213 : bytes213=statementBytes 217 (op213.map lower) ∧ bytes213.length=54 := by core033_kernel_decide
def op214 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes214 : Bytes := ("    let r000000da: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked214 : bytes214=statementBytes 218 (op214.map lower) ∧ bytes214.length=41 := by core033_kernel_decide
def op215 : List WordIR.Op := [.bxor 217 218]
def bytes215 : Bytes := ("    let r000000db: u32 = r000000d9 ^ r000000da;\n" : String).toByteArray.data.toList
theorem checked215 : bytes215=statementBytes 219 (op215.map lower) ∧ bytes215.length=48 := by core033_kernel_decide
def op216 : List WordIR.Op := [.band 165 219]
def bytes216 : Bytes := ("    let r000000dc: u32 = r000000a5 & r000000db;\n" : String).toByteArray.data.toList
theorem checked216 : bytes216=statementBytes 220 (op216.map lower) ∧ bytes216.length=48 := by core033_kernel_decide
def op217 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes217 : Bytes := ("    let r000000dd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked217 : bytes217=statementBytes 221 (op217.map lower) ∧ bytes217.length=41 := by core033_kernel_decide
def op218 : List WordIR.Op := [.badd 0 221]
def bytes218 : Bytes := ("    let r000000de: u32 = r00000000.wrapping_add(r000000dd);\n" : String).toByteArray.data.toList
theorem checked218 : bytes218=statementBytes 222 (op218.map lower) ∧ bytes218.length=60 := by core033_kernel_decide
def op219 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes219 : Bytes := ("    let r000000df: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked219 : bytes219=statementBytes 223 (op219.map lower) ∧ bytes219.length=41 := by core033_kernel_decide
def op220 : List WordIR.Op := [.bnot 223]
def bytes220 : Bytes := ("    let r000000e0: u32 = !r000000df;\n" : String).toByteArray.data.toList
theorem checked220 : bytes220=statementBytes 224 (op220.map lower) ∧ bytes220.length=37 := by core033_kernel_decide
def op221 : List WordIR.Op := [.band 222 224]
def bytes221 : Bytes := ("    let r000000e1: u32 = r000000de & r000000e0;\n" : String).toByteArray.data.toList
theorem checked221 : bytes221=statementBytes 225 (op221.map lower) ∧ bytes221.length=48 := by core033_kernel_decide
def op222 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes222 : Bytes := ("    let r000000e2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked222 : bytes222=statementBytes 226 (op222.map lower) ∧ bytes222.length=41 := by core033_kernel_decide
def op223 : List WordIR.Op := [.badd 0 226]
def bytes223 : Bytes := ("    let r000000e3: u32 = r00000000.wrapping_add(r000000e2);\n" : String).toByteArray.data.toList
theorem checked223 : bytes223=statementBytes 227 (op223.map lower) ∧ bytes223.length=60 := by core033_kernel_decide
def op224 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes224 : Bytes := ("    let r000000e4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked224 : bytes224=statementBytes 228 (op224.map lower) ∧ bytes224.length=41 := by core033_kernel_decide
def op225 : List WordIR.Op := [.bnot 228]
def bytes225 : Bytes := ("    let r000000e5: u32 = !r000000e4;\n" : String).toByteArray.data.toList
theorem checked225 : bytes225=statementBytes 229 (op225.map lower) ∧ bytes225.length=37 := by core033_kernel_decide
def op226 : List WordIR.Op := [.bxor 227 229]
def bytes226 : Bytes := ("    let r000000e6: u32 = r000000e3 ^ r000000e5;\n" : String).toByteArray.data.toList
theorem checked226 : bytes226=statementBytes 230 (op226.map lower) ∧ bytes226.length=48 := by core033_kernel_decide
def op227 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes227 : Bytes := ("    let r000000e7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked227 : bytes227=statementBytes 231 (op227.map lower) ∧ bytes227.length=41 := by core033_kernel_decide
def op228 : List WordIR.Op := [.badd 0 231]
def bytes228 : Bytes := ("    let r000000e8: u32 = r00000000.wrapping_add(r000000e7);\n" : String).toByteArray.data.toList
theorem checked228 : bytes228=statementBytes 232 (op228.map lower) ∧ bytes228.length=60 := by core033_kernel_decide
def op229 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes229 : Bytes := ("    let r000000e9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked229 : bytes229=statementBytes 233 (op229.map lower) ∧ bytes229.length=41 := by core033_kernel_decide
def op230 : List WordIR.Op := [.bnot 233]
def bytes230 : Bytes := ("    let r000000ea: u32 = !r000000e9;\n" : String).toByteArray.data.toList
theorem checked230 : bytes230=statementBytes 234 (op230.map lower) ∧ bytes230.length=37 := by core033_kernel_decide
def op231 : List WordIR.Op := [.badd 232 234]
def bytes231 : Bytes := ("    let r000000eb: u32 = r000000e8.wrapping_add(r000000ea);\n" : String).toByteArray.data.toList
theorem checked231 : bytes231=statementBytes 235 (op231.map lower) ∧ bytes231.length=60 := by core033_kernel_decide
def op232 : List WordIR.Op := [.bnot 235]
def bytes232 : Bytes := ("    let r000000ec: u32 = !r000000eb;\n" : String).toByteArray.data.toList
theorem checked232 : bytes232=statementBytes 236 (op232.map lower) ∧ bytes232.length=37 := by core033_kernel_decide
def op233 : List WordIR.Op := [.band 230 236]
def bytes233 : Bytes := ("    let r000000ed: u32 = r000000e6 & r000000ec;\n" : String).toByteArray.data.toList
theorem checked233 : bytes233=statementBytes 237 (op233.map lower) ∧ bytes233.length=48 := by core033_kernel_decide
def op234 : List WordIR.Op := [.bxor 225 237]
def bytes234 : Bytes := ("    let r000000ee: u32 = r000000e1 ^ r000000ed;\n" : String).toByteArray.data.toList
theorem checked234 : bytes234=statementBytes 238 (op234.map lower) ∧ bytes234.length=48 := by core033_kernel_decide
def op235 : List WordIR.Op := [.shr 238 31]
def bytes235 : Bytes := ("    let r000000ef: u32 = r000000ee >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked235 : bytes235=statementBytes 239 (op235.map lower) ∧ bytes235.length=54 := by core033_kernel_decide
def op236 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes236 : Bytes := ("    let r000000f0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked236 : bytes236=statementBytes 240 (op236.map lower) ∧ bytes236.length=41 := by core033_kernel_decide
def op237 : List WordIR.Op := [.bxor 239 240]
def bytes237 : Bytes := ("    let r000000f1: u32 = r000000ef ^ r000000f0;\n" : String).toByteArray.data.toList
theorem checked237 : bytes237=statementBytes 241 (op237.map lower) ∧ bytes237.length=48 := by core033_kernel_decide
def op238 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes238 : Bytes := ("    let r000000f2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked238 : bytes238=statementBytes 242 (op238.map lower) ∧ bytes238.length=41 := by core033_kernel_decide
def op239 : List WordIR.Op := [.badd 1 242]
def bytes239 : Bytes := ("    let r000000f3: u32 = r00000001.wrapping_add(r000000f2);\n" : String).toByteArray.data.toList
theorem checked239 : bytes239=statementBytes 243 (op239.map lower) ∧ bytes239.length=60 := by core033_kernel_decide
def op240 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes240 : Bytes := ("    let r000000f4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked240 : bytes240=statementBytes 244 (op240.map lower) ∧ bytes240.length=41 := by core033_kernel_decide
def op241 : List WordIR.Op := [.band 0 244]
def bytes241 : Bytes := ("    let r000000f5: u32 = r00000000 & r000000f4;\n" : String).toByteArray.data.toList
theorem checked241 : bytes241=statementBytes 245 (op241.map lower) ∧ bytes241.length=48 := by core033_kernel_decide
def op242 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes242 : Bytes := ("    let r000000f6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked242 : bytes242=statementBytes 246 (op242.map lower) ∧ bytes242.length=41 := by core033_kernel_decide
def op243 : List WordIR.Op := [.bxor 0 246]
def bytes243 : Bytes := ("    let r000000f7: u32 = r00000000 ^ r000000f6;\n" : String).toByteArray.data.toList
theorem checked243 : bytes243=statementBytes 247 (op243.map lower) ∧ bytes243.length=48 := by core033_kernel_decide
def op244 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes244 : Bytes := ("    let r000000f8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked244 : bytes244=statementBytes 248 (op244.map lower) ∧ bytes244.length=41 := by core033_kernel_decide
def op245 : List WordIR.Op := [.badd 0 248]
def bytes245 : Bytes := ("    let r000000f9: u32 = r00000000.wrapping_add(r000000f8);\n" : String).toByteArray.data.toList
theorem checked245 : bytes245=statementBytes 249 (op245.map lower) ∧ bytes245.length=60 := by core033_kernel_decide
def op246 : List WordIR.Op := [.bnot 249]
def bytes246 : Bytes := ("    let r000000fa: u32 = !r000000f9;\n" : String).toByteArray.data.toList
theorem checked246 : bytes246=statementBytes 250 (op246.map lower) ∧ bytes246.length=37 := by core033_kernel_decide
def op247 : List WordIR.Op := [.band 247 250]
def bytes247 : Bytes := ("    let r000000fb: u32 = r000000f7 & r000000fa;\n" : String).toByteArray.data.toList
theorem checked247 : bytes247=statementBytes 251 (op247.map lower) ∧ bytes247.length=48 := by core033_kernel_decide
def op248 : List WordIR.Op := [.bxor 245 251]
def bytes248 : Bytes := ("    let r000000fc: u32 = r000000f5 ^ r000000fb;\n" : String).toByteArray.data.toList
theorem checked248 : bytes248=statementBytes 252 (op248.map lower) ∧ bytes248.length=48 := by core033_kernel_decide
def op249 : List WordIR.Op := [.shr 252 31]
def bytes249 : Bytes := ("    let r000000fd: u32 = r000000fc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked249 : bytes249=statementBytes 253 (op249.map lower) ∧ bytes249.length=54 := by core033_kernel_decide
def op250 : List WordIR.Op := [.badd 243 253]
def bytes250 : Bytes := ("    let r000000fe: u32 = r000000f3.wrapping_add(r000000fd);\n" : String).toByteArray.data.toList
theorem checked250 : bytes250=statementBytes 254 (op250.map lower) ∧ bytes250.length=60 := by core033_kernel_decide
def op251 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes251 : Bytes := ("    let r000000ff: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked251 : bytes251=statementBytes 255 (op251.map lower) ∧ bytes251.length=41 := by core033_kernel_decide
def op252 : List WordIR.Op := [.bnot 255]
def bytes252 : Bytes := ("    let r00000100: u32 = !r000000ff;\n" : String).toByteArray.data.toList
theorem checked252 : bytes252=statementBytes 256 (op252.map lower) ∧ bytes252.length=37 := by core033_kernel_decide
def op253 : List WordIR.Op := [.band 254 256]
def bytes253 : Bytes := ("    let r00000101: u32 = r000000fe & r00000100;\n" : String).toByteArray.data.toList
theorem checked253 : bytes253=statementBytes 257 (op253.map lower) ∧ bytes253.length=48 := by core033_kernel_decide
def op254 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes254 : Bytes := ("    let r00000102: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked254 : bytes254=statementBytes 258 (op254.map lower) ∧ bytes254.length=41 := by core033_kernel_decide
def op255 : List WordIR.Op := [.badd 1 258]
def bytes255 : Bytes := ("    let r00000103: u32 = r00000001.wrapping_add(r00000102);\n" : String).toByteArray.data.toList
theorem checked255 : bytes255=statementBytes 259 (op255.map lower) ∧ bytes255.length=60 := by core033_kernel_decide
def op256 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes256 : Bytes := ("    let r00000104: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked256 : bytes256=statementBytes 260 (op256.map lower) ∧ bytes256.length=41 := by core033_kernel_decide
def op257 : List WordIR.Op := [.band 0 260]
def bytes257 : Bytes := ("    let r00000105: u32 = r00000000 & r00000104;\n" : String).toByteArray.data.toList
theorem checked257 : bytes257=statementBytes 261 (op257.map lower) ∧ bytes257.length=48 := by core033_kernel_decide
def op258 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes258 : Bytes := ("    let r00000106: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked258 : bytes258=statementBytes 262 (op258.map lower) ∧ bytes258.length=41 := by core033_kernel_decide
def op259 : List WordIR.Op := [.bxor 0 262]
def bytes259 : Bytes := ("    let r00000107: u32 = r00000000 ^ r00000106;\n" : String).toByteArray.data.toList
theorem checked259 : bytes259=statementBytes 263 (op259.map lower) ∧ bytes259.length=48 := by core033_kernel_decide
def op260 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes260 : Bytes := ("    let r00000108: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked260 : bytes260=statementBytes 264 (op260.map lower) ∧ bytes260.length=41 := by core033_kernel_decide
def op261 : List WordIR.Op := [.badd 0 264]
def bytes261 : Bytes := ("    let r00000109: u32 = r00000000.wrapping_add(r00000108);\n" : String).toByteArray.data.toList
theorem checked261 : bytes261=statementBytes 265 (op261.map lower) ∧ bytes261.length=60 := by core033_kernel_decide
def op262 : List WordIR.Op := [.bnot 265]
def bytes262 : Bytes := ("    let r0000010a: u32 = !r00000109;\n" : String).toByteArray.data.toList
theorem checked262 : bytes262=statementBytes 266 (op262.map lower) ∧ bytes262.length=37 := by core033_kernel_decide
def op263 : List WordIR.Op := [.band 263 266]
def bytes263 : Bytes := ("    let r0000010b: u32 = r00000107 & r0000010a;\n" : String).toByteArray.data.toList
theorem checked263 : bytes263=statementBytes 267 (op263.map lower) ∧ bytes263.length=48 := by core033_kernel_decide
def op264 : List WordIR.Op := [.bxor 261 267]
def bytes264 : Bytes := ("    let r0000010c: u32 = r00000105 ^ r0000010b;\n" : String).toByteArray.data.toList
theorem checked264 : bytes264=statementBytes 268 (op264.map lower) ∧ bytes264.length=48 := by core033_kernel_decide
def op265 : List WordIR.Op := [.shr 268 31]
def bytes265 : Bytes := ("    let r0000010d: u32 = r0000010c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked265 : bytes265=statementBytes 269 (op265.map lower) ∧ bytes265.length=54 := by core033_kernel_decide
def op266 : List WordIR.Op := [.badd 259 269]
def bytes266 : Bytes := ("    let r0000010e: u32 = r00000103.wrapping_add(r0000010d);\n" : String).toByteArray.data.toList
theorem checked266 : bytes266=statementBytes 270 (op266.map lower) ∧ bytes266.length=60 := by core033_kernel_decide
def op267 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes267 : Bytes := ("    let r0000010f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked267 : bytes267=statementBytes 271 (op267.map lower) ∧ bytes267.length=41 := by core033_kernel_decide
def op268 : List WordIR.Op := [.bnot 271]
def bytes268 : Bytes := ("    let r00000110: u32 = !r0000010f;\n" : String).toByteArray.data.toList
theorem checked268 : bytes268=statementBytes 272 (op268.map lower) ∧ bytes268.length=37 := by core033_kernel_decide
def op269 : List WordIR.Op := [.bxor 270 272]
def bytes269 : Bytes := ("    let r00000111: u32 = r0000010e ^ r00000110;\n" : String).toByteArray.data.toList
theorem checked269 : bytes269=statementBytes 273 (op269.map lower) ∧ bytes269.length=48 := by core033_kernel_decide
def op270 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes270 : Bytes := ("    let r00000112: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked270 : bytes270=statementBytes 274 (op270.map lower) ∧ bytes270.length=41 := by core033_kernel_decide
def op271 : List WordIR.Op := [.badd 1 274]
def bytes271 : Bytes := ("    let r00000113: u32 = r00000001.wrapping_add(r00000112);\n" : String).toByteArray.data.toList
theorem checked271 : bytes271=statementBytes 275 (op271.map lower) ∧ bytes271.length=60 := by core033_kernel_decide
def op272 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes272 : Bytes := ("    let r00000114: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked272 : bytes272=statementBytes 276 (op272.map lower) ∧ bytes272.length=41 := by core033_kernel_decide
def op273 : List WordIR.Op := [.band 0 276]
def bytes273 : Bytes := ("    let r00000115: u32 = r00000000 & r00000114;\n" : String).toByteArray.data.toList
theorem checked273 : bytes273=statementBytes 277 (op273.map lower) ∧ bytes273.length=48 := by core033_kernel_decide
def op274 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes274 : Bytes := ("    let r00000116: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked274 : bytes274=statementBytes 278 (op274.map lower) ∧ bytes274.length=41 := by core033_kernel_decide
def op275 : List WordIR.Op := [.bxor 0 278]
def bytes275 : Bytes := ("    let r00000117: u32 = r00000000 ^ r00000116;\n" : String).toByteArray.data.toList
theorem checked275 : bytes275=statementBytes 279 (op275.map lower) ∧ bytes275.length=48 := by core033_kernel_decide
def op276 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes276 : Bytes := ("    let r00000118: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked276 : bytes276=statementBytes 280 (op276.map lower) ∧ bytes276.length=41 := by core033_kernel_decide
def op277 : List WordIR.Op := [.badd 0 280]
def bytes277 : Bytes := ("    let r00000119: u32 = r00000000.wrapping_add(r00000118);\n" : String).toByteArray.data.toList
theorem checked277 : bytes277=statementBytes 281 (op277.map lower) ∧ bytes277.length=60 := by core033_kernel_decide
def op278 : List WordIR.Op := [.bnot 281]
def bytes278 : Bytes := ("    let r0000011a: u32 = !r00000119;\n" : String).toByteArray.data.toList
theorem checked278 : bytes278=statementBytes 282 (op278.map lower) ∧ bytes278.length=37 := by core033_kernel_decide
def op279 : List WordIR.Op := [.band 279 282]
def bytes279 : Bytes := ("    let r0000011b: u32 = r00000117 & r0000011a;\n" : String).toByteArray.data.toList
theorem checked279 : bytes279=statementBytes 283 (op279.map lower) ∧ bytes279.length=48 := by core033_kernel_decide
def op280 : List WordIR.Op := [.bxor 277 283]
def bytes280 : Bytes := ("    let r0000011c: u32 = r00000115 ^ r0000011b;\n" : String).toByteArray.data.toList
theorem checked280 : bytes280=statementBytes 284 (op280.map lower) ∧ bytes280.length=48 := by core033_kernel_decide
def op281 : List WordIR.Op := [.shr 284 31]
def bytes281 : Bytes := ("    let r0000011d: u32 = r0000011c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked281 : bytes281=statementBytes 285 (op281.map lower) ∧ bytes281.length=54 := by core033_kernel_decide
def op282 : List WordIR.Op := [.badd 275 285]
def bytes282 : Bytes := ("    let r0000011e: u32 = r00000113.wrapping_add(r0000011d);\n" : String).toByteArray.data.toList
theorem checked282 : bytes282=statementBytes 286 (op282.map lower) ∧ bytes282.length=60 := by core033_kernel_decide
def op283 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes283 : Bytes := ("    let r0000011f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked283 : bytes283=statementBytes 287 (op283.map lower) ∧ bytes283.length=41 := by core033_kernel_decide
def op284 : List WordIR.Op := [.bnot 287]
def bytes284 : Bytes := ("    let r00000120: u32 = !r0000011f;\n" : String).toByteArray.data.toList
theorem checked284 : bytes284=statementBytes 288 (op284.map lower) ∧ bytes284.length=37 := by core033_kernel_decide
def op285 : List WordIR.Op := [.badd 286 288]
def bytes285 : Bytes := ("    let r00000121: u32 = r0000011e.wrapping_add(r00000120);\n" : String).toByteArray.data.toList
theorem checked285 : bytes285=statementBytes 289 (op285.map lower) ∧ bytes285.length=60 := by core033_kernel_decide
def op286 : List WordIR.Op := [.bnot 289]
def bytes286 : Bytes := ("    let r00000122: u32 = !r00000121;\n" : String).toByteArray.data.toList
theorem checked286 : bytes286=statementBytes 290 (op286.map lower) ∧ bytes286.length=37 := by core033_kernel_decide
def op287 : List WordIR.Op := [.band 273 290]
def bytes287 : Bytes := ("    let r00000123: u32 = r00000111 & r00000122;\n" : String).toByteArray.data.toList
theorem checked287 : bytes287=statementBytes 291 (op287.map lower) ∧ bytes287.length=48 := by core033_kernel_decide
def op288 : List WordIR.Op := [.bxor 257 291]
def bytes288 : Bytes := ("    let r00000124: u32 = r00000101 ^ r00000123;\n" : String).toByteArray.data.toList
theorem checked288 : bytes288=statementBytes 292 (op288.map lower) ∧ bytes288.length=48 := by core033_kernel_decide
def op289 : List WordIR.Op := [.shr 292 31]
def bytes289 : Bytes := ("    let r00000125: u32 = r00000124 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked289 : bytes289=statementBytes 293 (op289.map lower) ∧ bytes289.length=54 := by core033_kernel_decide
def op290 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes290 : Bytes := ("    let r00000126: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked290 : bytes290=statementBytes 294 (op290.map lower) ∧ bytes290.length=41 := by core033_kernel_decide
def op291 : List WordIR.Op := [.bxor 293 294]
def bytes291 : Bytes := ("    let r00000127: u32 = r00000125 ^ r00000126;\n" : String).toByteArray.data.toList
theorem checked291 : bytes291=statementBytes 295 (op291.map lower) ∧ bytes291.length=48 := by core033_kernel_decide
def op292 : List WordIR.Op := [.band 241 295]
def bytes292 : Bytes := ("    let r00000128: u32 = r000000f1 & r00000127;\n" : String).toByteArray.data.toList
theorem checked292 : bytes292=statementBytes 296 (op292.map lower) ∧ bytes292.length=48 := by core033_kernel_decide
def op293 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes293 : Bytes := ("    let r00000129: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked293 : bytes293=statementBytes 297 (op293.map lower) ∧ bytes293.length=41 := by core033_kernel_decide
def op294 : List WordIR.Op := [.bxor 296 297]
def bytes294 : Bytes := ("    let r0000012a: u32 = r00000128 ^ r00000129;\n" : String).toByteArray.data.toList
theorem checked294 : bytes294=statementBytes 298 (op294.map lower) ∧ bytes294.length=48 := by core033_kernel_decide
def op295 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes295 : Bytes := ("    let r0000012b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked295 : bytes295=statementBytes 299 (op295.map lower) ∧ bytes295.length=41 := by core033_kernel_decide
def op296 : List WordIR.Op := [.bnot 299]
def bytes296 : Bytes := ("    let r0000012c: u32 = !r0000012b;\n" : String).toByteArray.data.toList
theorem checked296 : bytes296=statementBytes 300 (op296.map lower) ∧ bytes296.length=37 := by core033_kernel_decide
def op297 : List WordIR.Op := [.band 2 300]
def bytes297 : Bytes := ("    let r0000012d: u32 = r00000002 & r0000012c;\n" : String).toByteArray.data.toList
theorem checked297 : bytes297=statementBytes 301 (op297.map lower) ∧ bytes297.length=48 := by core033_kernel_decide
def op298 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes298 : Bytes := ("    let r0000012e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked298 : bytes298=statementBytes 302 (op298.map lower) ∧ bytes298.length=41 := by core033_kernel_decide
def op299 : List WordIR.Op := [.bnot 302]
def bytes299 : Bytes := ("    let r0000012f: u32 = !r0000012e;\n" : String).toByteArray.data.toList
theorem checked299 : bytes299=statementBytes 303 (op299.map lower) ∧ bytes299.length=37 := by core033_kernel_decide
def op300 : List WordIR.Op := [.bxor 2 303]
def bytes300 : Bytes := ("    let r00000130: u32 = r00000002 ^ r0000012f;\n" : String).toByteArray.data.toList
theorem checked300 : bytes300=statementBytes 304 (op300.map lower) ∧ bytes300.length=48 := by core033_kernel_decide
def op301 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes301 : Bytes := ("    let r00000131: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked301 : bytes301=statementBytes 305 (op301.map lower) ∧ bytes301.length=41 := by core033_kernel_decide
def op302 : List WordIR.Op := [.bnot 305]
def bytes302 : Bytes := ("    let r00000132: u32 = !r00000131;\n" : String).toByteArray.data.toList
theorem checked302 : bytes302=statementBytes 306 (op302.map lower) ∧ bytes302.length=37 := by core033_kernel_decide
def op303 : List WordIR.Op := [.badd 2 306]
def bytes303 : Bytes := ("    let r00000133: u32 = r00000002.wrapping_add(r00000132);\n" : String).toByteArray.data.toList
theorem checked303 : bytes303=statementBytes 307 (op303.map lower) ∧ bytes303.length=60 := by core033_kernel_decide
def op304 : List WordIR.Op := [.bnot 307]
def bytes304 : Bytes := ("    let r00000134: u32 = !r00000133;\n" : String).toByteArray.data.toList
theorem checked304 : bytes304=statementBytes 308 (op304.map lower) ∧ bytes304.length=37 := by core033_kernel_decide
def op305 : List WordIR.Op := [.band 304 308]
def bytes305 : Bytes := ("    let r00000135: u32 = r00000130 & r00000134;\n" : String).toByteArray.data.toList
theorem checked305 : bytes305=statementBytes 309 (op305.map lower) ∧ bytes305.length=48 := by core033_kernel_decide
def op306 : List WordIR.Op := [.bxor 301 309]
def bytes306 : Bytes := ("    let r00000136: u32 = r0000012d ^ r00000135;\n" : String).toByteArray.data.toList
theorem checked306 : bytes306=statementBytes 310 (op306.map lower) ∧ bytes306.length=48 := by core033_kernel_decide
def op307 : List WordIR.Op := [.shr 310 31]
def bytes307 : Bytes := ("    let r00000137: u32 = r00000136 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked307 : bytes307=statementBytes 311 (op307.map lower) ∧ bytes307.length=54 := by core033_kernel_decide
def op308 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes308 : Bytes := ("    let r00000138: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked308 : bytes308=statementBytes 312 (op308.map lower) ∧ bytes308.length=41 := by core033_kernel_decide
def op309 : List WordIR.Op := [.bxor 311 312]
def bytes309 : Bytes := ("    let r00000139: u32 = r00000137 ^ r00000138;\n" : String).toByteArray.data.toList
theorem checked309 : bytes309=statementBytes 313 (op309.map lower) ∧ bytes309.length=48 := by core033_kernel_decide
def op310 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes310 : Bytes := ("    let r0000013a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked310 : bytes310=statementBytes 314 (op310.map lower) ∧ bytes310.length=41 := by core033_kernel_decide
def op311 : List WordIR.Op := [.bnot 314]
def bytes311 : Bytes := ("    let r0000013b: u32 = !r0000013a;\n" : String).toByteArray.data.toList
theorem checked311 : bytes311=statementBytes 315 (op311.map lower) ∧ bytes311.length=37 := by core033_kernel_decide
def op312 : List WordIR.Op := [.band 3 315]
def bytes312 : Bytes := ("    let r0000013c: u32 = r00000003 & r0000013b;\n" : String).toByteArray.data.toList
theorem checked312 : bytes312=statementBytes 316 (op312.map lower) ∧ bytes312.length=48 := by core033_kernel_decide
def op313 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes313 : Bytes := ("    let r0000013d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked313 : bytes313=statementBytes 317 (op313.map lower) ∧ bytes313.length=41 := by core033_kernel_decide
def op314 : List WordIR.Op := [.bnot 317]
def bytes314 : Bytes := ("    let r0000013e: u32 = !r0000013d;\n" : String).toByteArray.data.toList
theorem checked314 : bytes314=statementBytes 318 (op314.map lower) ∧ bytes314.length=37 := by core033_kernel_decide
def op315 : List WordIR.Op := [.bxor 3 318]
def bytes315 : Bytes := ("    let r0000013f: u32 = r00000003 ^ r0000013e;\n" : String).toByteArray.data.toList
theorem checked315 : bytes315=statementBytes 319 (op315.map lower) ∧ bytes315.length=48 := by core033_kernel_decide
def op316 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes316 : Bytes := ("    let r00000140: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked316 : bytes316=statementBytes 320 (op316.map lower) ∧ bytes316.length=41 := by core033_kernel_decide
def op317 : List WordIR.Op := [.bnot 320]
def bytes317 : Bytes := ("    let r00000141: u32 = !r00000140;\n" : String).toByteArray.data.toList
theorem checked317 : bytes317=statementBytes 321 (op317.map lower) ∧ bytes317.length=37 := by core033_kernel_decide
def op318 : List WordIR.Op := [.badd 3 321]
def bytes318 : Bytes := ("    let r00000142: u32 = r00000003.wrapping_add(r00000141);\n" : String).toByteArray.data.toList
theorem checked318 : bytes318=statementBytes 322 (op318.map lower) ∧ bytes318.length=60 := by core033_kernel_decide
def op319 : List WordIR.Op := [.bnot 322]
def bytes319 : Bytes := ("    let r00000143: u32 = !r00000142;\n" : String).toByteArray.data.toList
theorem checked319 : bytes319=statementBytes 323 (op319.map lower) ∧ bytes319.length=37 := by core033_kernel_decide
def op320 : List WordIR.Op := [.band 319 323]
def bytes320 : Bytes := ("    let r00000144: u32 = r0000013f & r00000143;\n" : String).toByteArray.data.toList
theorem checked320 : bytes320=statementBytes 324 (op320.map lower) ∧ bytes320.length=48 := by core033_kernel_decide
def op321 : List WordIR.Op := [.bxor 316 324]
def bytes321 : Bytes := ("    let r00000145: u32 = r0000013c ^ r00000144;\n" : String).toByteArray.data.toList
theorem checked321 : bytes321=statementBytes 325 (op321.map lower) ∧ bytes321.length=48 := by core033_kernel_decide
def op322 : List WordIR.Op := [.shr 325 31]
def bytes322 : Bytes := ("    let r00000146: u32 = r00000145 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked322 : bytes322=statementBytes 326 (op322.map lower) ∧ bytes322.length=54 := by core033_kernel_decide
def op323 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes323 : Bytes := ("    let r00000147: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked323 : bytes323=statementBytes 327 (op323.map lower) ∧ bytes323.length=41 := by core033_kernel_decide
def op324 : List WordIR.Op := [.bxor 326 327]
def bytes324 : Bytes := ("    let r00000148: u32 = r00000146 ^ r00000147;\n" : String).toByteArray.data.toList
theorem checked324 : bytes324=statementBytes 328 (op324.map lower) ∧ bytes324.length=48 := by core033_kernel_decide
def op325 : List WordIR.Op := [.band 313 328]
def bytes325 : Bytes := ("    let r00000149: u32 = r00000139 & r00000148;\n" : String).toByteArray.data.toList
theorem checked325 : bytes325=statementBytes 329 (op325.map lower) ∧ bytes325.length=48 := by core033_kernel_decide
def op326 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes326 : Bytes := ("    let r0000014a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked326 : bytes326=statementBytes 330 (op326.map lower) ∧ bytes326.length=41 := by core033_kernel_decide
def op327 : List WordIR.Op := [.bxor 329 330]
def bytes327 : Bytes := ("    let r0000014b: u32 = r00000149 ^ r0000014a;\n" : String).toByteArray.data.toList
theorem checked327 : bytes327=statementBytes 331 (op327.map lower) ∧ bytes327.length=48 := by core033_kernel_decide
def op328 : List WordIR.Op := [.band 298 331]
def bytes328 : Bytes := ("    let r0000014c: u32 = r0000012a & r0000014b;\n" : String).toByteArray.data.toList
theorem checked328 : bytes328=statementBytes 332 (op328.map lower) ∧ bytes328.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op0,op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16,op17,op18,op19,op20,op21,op22,op23,op24,op25,op26,op27,op28,op29,op30,op31,op32,op33,op34,op35,op36,op37,op38,op39,op40,op41,op42,op43,op44,op45,op46,op47,op48,op49,op50,op51,op52,op53,op54,op55,op56,op57,op58,op59,op60,op61,op62,op63,op64,op65,op66,op67,op68,op69,op70,op71,op72,op73,op74,op75,op76,op77,op78,op79,op80,op81,op82,op83,op84,op85,op86,op87,op88,op89,op90,op91,op92,op93,op94,op95,op96,op97,op98,op99,op100,op101,op102,op103,op104,op105,op106,op107,op108,op109,op110,op111,op112,op113,op114,op115,op116,op117,op118,op119,op120,op121,op122,op123,op124,op125,op126,op127,op128,op129,op130,op131,op132,op133,op134,op135,op136,op137,op138,op139,op140,op141,op142,op143,op144,op145,op146,op147,op148,op149,op150,op151,op152,op153,op154,op155,op156,op157,op158,op159,op160,op161,op162,op163,op164,op165,op166,op167,op168,op169,op170,op171,op172,op173,op174,op175,op176,op177,op178,op179,op180,op181,op182,op183,op184,op185,op186,op187,op188,op189,op190,op191,op192,op193,op194,op195,op196,op197,op198,op199,op200,op201,op202,op203,op204,op205,op206,op207,op208,op209,op210,op211,op212,op213,op214,op215,op216,op217,op218,op219,op220,op221,op222,op223,op224,op225,op226,op227,op228,op229,op230,op231,op232,op233,op234,op235,op236,op237,op238,op239,op240,op241,op242,op243,op244,op245,op246,op247,op248,op249,op250,op251,op252,op253,op254,op255,op256,op257,op258,op259,op260,op261,op262,op263,op264,op265,op266,op267,op268,op269,op270,op271,op272,op273,op274,op275,op276,op277,op278,op279,op280,op281,op282,op283,op284,op285,op286,op287,op288,op289,op290,op291,op292,op293,op294,op295,op296,op297,op298,op299,op300,op301,op302,op303,op304,op305,op306,op307,op308,op309,op310,op311,op312,op313,op314,op315,op316,op317,op318,op319,op320,op321,op322,op323,op324,op325,op326,op327,op328]
def actualBody : List Bytes := [bytes0,bytes1,bytes2,bytes3,bytes4,bytes5,bytes6,bytes7,bytes8,bytes9,bytes10,bytes11,bytes12,bytes13,bytes14,bytes15,bytes16,bytes17,bytes18,bytes19,bytes20,bytes21,bytes22,bytes23,bytes24,bytes25,bytes26,bytes27,bytes28,bytes29,bytes30,bytes31,bytes32,bytes33,bytes34,bytes35,bytes36,bytes37,bytes38,bytes39,bytes40,bytes41,bytes42,bytes43,bytes44,bytes45,bytes46,bytes47,bytes48,bytes49,bytes50,bytes51,bytes52,bytes53,bytes54,bytes55,bytes56,bytes57,bytes58,bytes59,bytes60,bytes61,bytes62,bytes63,bytes64,bytes65,bytes66,bytes67,bytes68,bytes69,bytes70,bytes71,bytes72,bytes73,bytes74,bytes75,bytes76,bytes77,bytes78,bytes79,bytes80,bytes81,bytes82,bytes83,bytes84,bytes85,bytes86,bytes87,bytes88,bytes89,bytes90,bytes91,bytes92,bytes93,bytes94,bytes95,bytes96,bytes97,bytes98,bytes99,bytes100,bytes101,bytes102,bytes103,bytes104,bytes105,bytes106,bytes107,bytes108,bytes109,bytes110,bytes111,bytes112,bytes113,bytes114,bytes115,bytes116,bytes117,bytes118,bytes119,bytes120,bytes121,bytes122,bytes123,bytes124,bytes125,bytes126,bytes127,bytes128,bytes129,bytes130,bytes131,bytes132,bytes133,bytes134,bytes135,bytes136,bytes137,bytes138,bytes139,bytes140,bytes141,bytes142,bytes143,bytes144,bytes145,bytes146,bytes147,bytes148,bytes149,bytes150,bytes151,bytes152,bytes153,bytes154,bytes155,bytes156,bytes157,bytes158,bytes159,bytes160,bytes161,bytes162,bytes163,bytes164,bytes165,bytes166,bytes167,bytes168,bytes169,bytes170,bytes171,bytes172,bytes173,bytes174,bytes175,bytes176,bytes177,bytes178,bytes179,bytes180,bytes181,bytes182,bytes183,bytes184,bytes185,bytes186,bytes187,bytes188,bytes189,bytes190,bytes191,bytes192,bytes193,bytes194,bytes195,bytes196,bytes197,bytes198,bytes199,bytes200,bytes201,bytes202,bytes203,bytes204,bytes205,bytes206,bytes207,bytes208,bytes209,bytes210,bytes211,bytes212,bytes213,bytes214,bytes215,bytes216,bytes217,bytes218,bytes219,bytes220,bytes221,bytes222,bytes223,bytes224,bytes225,bytes226,bytes227,bytes228,bytes229,bytes230,bytes231,bytes232,bytes233,bytes234,bytes235,bytes236,bytes237,bytes238,bytes239,bytes240,bytes241,bytes242,bytes243,bytes244,bytes245,bytes246,bytes247,bytes248,bytes249,bytes250,bytes251,bytes252,bytes253,bytes254,bytes255,bytes256,bytes257,bytes258,bytes259,bytes260,bytes261,bytes262,bytes263,bytes264,bytes265,bytes266,bytes267,bytes268,bytes269,bytes270,bytes271,bytes272,bytes273,bytes274,bytes275,bytes276,bytes277,bytes278,bytes279,bytes280,bytes281,bytes282,bytes283,bytes284,bytes285,bytes286,bytes287,bytes288,bytes289,bytes290,bytes291,bytes292,bytes293,bytes294,bytes295,bytes296,bytes297,bytes298,bytes299,bytes300,bytes301,bytes302,bytes303,bytes304,bytes305,bytes306,bytes307,bytes308,bytes309,bytes310,bytes311,bytes312,bytes313,bytes314,bytes315,bytes316,bytes317,bytes318,bytes319,bytes320,bytes321,bytes322,bytes323,bytes324,bytes325,bytes326,bytes327,bytes328]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n) -> [u32; 0x00000008_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000005, r00000012, r00000060, r00000062, r0000006f, r00000090, r000000dc, r0000014c]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem header_checked : actualHeader=headerBytes 4 8 ∧ actualHeader.length=132 := by core033_kernel_decide
theorem footer_checked : actualFooter=suffix ActualCounterIR.program.outputs ∧ actualFooter.length=95 := by core033_kernel_decide
theorem partition_checked : ActualCounterIR.program.operations=blocks.flatten := rfl
theorem body_checked : BlockChain 4 blocks actualBody := by
  unfold blocks actualBody
  exact (.cons _ _ _ _ _ checked0.1 (.cons _ _ _ _ _ checked1.1 (.cons _ _ _ _ _ checked2.1 (.cons _ _ _ _ _ checked3.1 (.cons _ _ _ _ _ checked4.1 (.cons _ _ _ _ _ checked5.1 (.cons _ _ _ _ _ checked6.1 (.cons _ _ _ _ _ checked7.1 (.cons _ _ _ _ _ checked8.1 (.cons _ _ _ _ _ checked9.1 (.cons _ _ _ _ _ checked10.1 (.cons _ _ _ _ _ checked11.1 (.cons _ _ _ _ _ checked12.1 (.cons _ _ _ _ _ checked13.1 (.cons _ _ _ _ _ checked14.1 (.cons _ _ _ _ _ checked15.1 (.cons _ _ _ _ _ checked16.1 (.cons _ _ _ _ _ checked17.1 (.cons _ _ _ _ _ checked18.1 (.cons _ _ _ _ _ checked19.1 (.cons _ _ _ _ _ checked20.1 (.cons _ _ _ _ _ checked21.1 (.cons _ _ _ _ _ checked22.1 (.cons _ _ _ _ _ checked23.1 (.cons _ _ _ _ _ checked24.1 (.cons _ _ _ _ _ checked25.1 (.cons _ _ _ _ _ checked26.1 (.cons _ _ _ _ _ checked27.1 (.cons _ _ _ _ _ checked28.1 (.cons _ _ _ _ _ checked29.1 (.cons _ _ _ _ _ checked30.1 (.cons _ _ _ _ _ checked31.1 (.cons _ _ _ _ _ checked32.1 (.cons _ _ _ _ _ checked33.1 (.cons _ _ _ _ _ checked34.1 (.cons _ _ _ _ _ checked35.1 (.cons _ _ _ _ _ checked36.1 (.cons _ _ _ _ _ checked37.1 (.cons _ _ _ _ _ checked38.1 (.cons _ _ _ _ _ checked39.1 (.cons _ _ _ _ _ checked40.1 (.cons _ _ _ _ _ checked41.1 (.cons _ _ _ _ _ checked42.1 (.cons _ _ _ _ _ checked43.1 (.cons _ _ _ _ _ checked44.1 (.cons _ _ _ _ _ checked45.1 (.cons _ _ _ _ _ checked46.1 (.cons _ _ _ _ _ checked47.1 (.cons _ _ _ _ _ checked48.1 (.cons _ _ _ _ _ checked49.1 (.cons _ _ _ _ _ checked50.1 (.cons _ _ _ _ _ checked51.1 (.cons _ _ _ _ _ checked52.1 (.cons _ _ _ _ _ checked53.1 (.cons _ _ _ _ _ checked54.1 (.cons _ _ _ _ _ checked55.1 (.cons _ _ _ _ _ checked56.1 (.cons _ _ _ _ _ checked57.1 (.cons _ _ _ _ _ checked58.1 (.cons _ _ _ _ _ checked59.1 (.cons _ _ _ _ _ checked60.1 (.cons _ _ _ _ _ checked61.1 (.cons _ _ _ _ _ checked62.1 (.cons _ _ _ _ _ checked63.1 (.cons _ _ _ _ _ checked64.1 (.cons _ _ _ _ _ checked65.1 (.cons _ _ _ _ _ checked66.1 (.cons _ _ _ _ _ checked67.1 (.cons _ _ _ _ _ checked68.1 (.cons _ _ _ _ _ checked69.1 (.cons _ _ _ _ _ checked70.1 (.cons _ _ _ _ _ checked71.1 (.cons _ _ _ _ _ checked72.1 (.cons _ _ _ _ _ checked73.1 (.cons _ _ _ _ _ checked74.1 (.cons _ _ _ _ _ checked75.1 (.cons _ _ _ _ _ checked76.1 (.cons _ _ _ _ _ checked77.1 (.cons _ _ _ _ _ checked78.1 (.cons _ _ _ _ _ checked79.1 (.cons _ _ _ _ _ checked80.1 (.cons _ _ _ _ _ checked81.1 (.cons _ _ _ _ _ checked82.1 (.cons _ _ _ _ _ checked83.1 (.cons _ _ _ _ _ checked84.1 (.cons _ _ _ _ _ checked85.1 (.cons _ _ _ _ _ checked86.1 (.cons _ _ _ _ _ checked87.1 (.cons _ _ _ _ _ checked88.1 (.cons _ _ _ _ _ checked89.1 (.cons _ _ _ _ _ checked90.1 (.cons _ _ _ _ _ checked91.1 (.cons _ _ _ _ _ checked92.1 (.cons _ _ _ _ _ checked93.1 (.cons _ _ _ _ _ checked94.1 (.cons _ _ _ _ _ checked95.1 (.cons _ _ _ _ _ checked96.1 (.cons _ _ _ _ _ checked97.1 (.cons _ _ _ _ _ checked98.1 (.cons _ _ _ _ _ checked99.1 (.cons _ _ _ _ _ checked100.1 (.cons _ _ _ _ _ checked101.1 (.cons _ _ _ _ _ checked102.1 (.cons _ _ _ _ _ checked103.1 (.cons _ _ _ _ _ checked104.1 (.cons _ _ _ _ _ checked105.1 (.cons _ _ _ _ _ checked106.1 (.cons _ _ _ _ _ checked107.1 (.cons _ _ _ _ _ checked108.1 (.cons _ _ _ _ _ checked109.1 (.cons _ _ _ _ _ checked110.1 (.cons _ _ _ _ _ checked111.1 (.cons _ _ _ _ _ checked112.1 (.cons _ _ _ _ _ checked113.1 (.cons _ _ _ _ _ checked114.1 (.cons _ _ _ _ _ checked115.1 (.cons _ _ _ _ _ checked116.1 (.cons _ _ _ _ _ checked117.1 (.cons _ _ _ _ _ checked118.1 (.cons _ _ _ _ _ checked119.1 (.cons _ _ _ _ _ checked120.1 (.cons _ _ _ _ _ checked121.1 (.cons _ _ _ _ _ checked122.1 (.cons _ _ _ _ _ checked123.1 (.cons _ _ _ _ _ checked124.1 (.cons _ _ _ _ _ checked125.1 (.cons _ _ _ _ _ checked126.1 (.cons _ _ _ _ _ checked127.1 (.cons _ _ _ _ _ checked128.1 (.cons _ _ _ _ _ checked129.1 (.cons _ _ _ _ _ checked130.1 (.cons _ _ _ _ _ checked131.1 (.cons _ _ _ _ _ checked132.1 (.cons _ _ _ _ _ checked133.1 (.cons _ _ _ _ _ checked134.1 (.cons _ _ _ _ _ checked135.1 (.cons _ _ _ _ _ checked136.1 (.cons _ _ _ _ _ checked137.1 (.cons _ _ _ _ _ checked138.1 (.cons _ _ _ _ _ checked139.1 (.cons _ _ _ _ _ checked140.1 (.cons _ _ _ _ _ checked141.1 (.cons _ _ _ _ _ checked142.1 (.cons _ _ _ _ _ checked143.1 (.cons _ _ _ _ _ checked144.1 (.cons _ _ _ _ _ checked145.1 (.cons _ _ _ _ _ checked146.1 (.cons _ _ _ _ _ checked147.1 (.cons _ _ _ _ _ checked148.1 (.cons _ _ _ _ _ checked149.1 (.cons _ _ _ _ _ checked150.1 (.cons _ _ _ _ _ checked151.1 (.cons _ _ _ _ _ checked152.1 (.cons _ _ _ _ _ checked153.1 (.cons _ _ _ _ _ checked154.1 (.cons _ _ _ _ _ checked155.1 (.cons _ _ _ _ _ checked156.1 (.cons _ _ _ _ _ checked157.1 (.cons _ _ _ _ _ checked158.1 (.cons _ _ _ _ _ checked159.1 (.cons _ _ _ _ _ checked160.1 (.cons _ _ _ _ _ checked161.1 (.cons _ _ _ _ _ checked162.1 (.cons _ _ _ _ _ checked163.1 (.cons _ _ _ _ _ checked164.1 (.cons _ _ _ _ _ checked165.1 (.cons _ _ _ _ _ checked166.1 (.cons _ _ _ _ _ checked167.1 (.cons _ _ _ _ _ checked168.1 (.cons _ _ _ _ _ checked169.1 (.cons _ _ _ _ _ checked170.1 (.cons _ _ _ _ _ checked171.1 (.cons _ _ _ _ _ checked172.1 (.cons _ _ _ _ _ checked173.1 (.cons _ _ _ _ _ checked174.1 (.cons _ _ _ _ _ checked175.1 (.cons _ _ _ _ _ checked176.1 (.cons _ _ _ _ _ checked177.1 (.cons _ _ _ _ _ checked178.1 (.cons _ _ _ _ _ checked179.1 (.cons _ _ _ _ _ checked180.1 (.cons _ _ _ _ _ checked181.1 (.cons _ _ _ _ _ checked182.1 (.cons _ _ _ _ _ checked183.1 (.cons _ _ _ _ _ checked184.1 (.cons _ _ _ _ _ checked185.1 (.cons _ _ _ _ _ checked186.1 (.cons _ _ _ _ _ checked187.1 (.cons _ _ _ _ _ checked188.1 (.cons _ _ _ _ _ checked189.1 (.cons _ _ _ _ _ checked190.1 (.cons _ _ _ _ _ checked191.1 (.cons _ _ _ _ _ checked192.1 (.cons _ _ _ _ _ checked193.1 (.cons _ _ _ _ _ checked194.1 (.cons _ _ _ _ _ checked195.1 (.cons _ _ _ _ _ checked196.1 (.cons _ _ _ _ _ checked197.1 (.cons _ _ _ _ _ checked198.1 (.cons _ _ _ _ _ checked199.1 (.cons _ _ _ _ _ checked200.1 (.cons _ _ _ _ _ checked201.1 (.cons _ _ _ _ _ checked202.1 (.cons _ _ _ _ _ checked203.1 (.cons _ _ _ _ _ checked204.1 (.cons _ _ _ _ _ checked205.1 (.cons _ _ _ _ _ checked206.1 (.cons _ _ _ _ _ checked207.1 (.cons _ _ _ _ _ checked208.1 (.cons _ _ _ _ _ checked209.1 (.cons _ _ _ _ _ checked210.1 (.cons _ _ _ _ _ checked211.1 (.cons _ _ _ _ _ checked212.1 (.cons _ _ _ _ _ checked213.1 (.cons _ _ _ _ _ checked214.1 (.cons _ _ _ _ _ checked215.1 (.cons _ _ _ _ _ checked216.1 (.cons _ _ _ _ _ checked217.1 (.cons _ _ _ _ _ checked218.1 (.cons _ _ _ _ _ checked219.1 (.cons _ _ _ _ _ checked220.1 (.cons _ _ _ _ _ checked221.1 (.cons _ _ _ _ _ checked222.1 (.cons _ _ _ _ _ checked223.1 (.cons _ _ _ _ _ checked224.1 (.cons _ _ _ _ _ checked225.1 (.cons _ _ _ _ _ checked226.1 (.cons _ _ _ _ _ checked227.1 (.cons _ _ _ _ _ checked228.1 (.cons _ _ _ _ _ checked229.1 (.cons _ _ _ _ _ checked230.1 (.cons _ _ _ _ _ checked231.1 (.cons _ _ _ _ _ checked232.1 (.cons _ _ _ _ _ checked233.1 (.cons _ _ _ _ _ checked234.1 (.cons _ _ _ _ _ checked235.1 (.cons _ _ _ _ _ checked236.1 (.cons _ _ _ _ _ checked237.1 (.cons _ _ _ _ _ checked238.1 (.cons _ _ _ _ _ checked239.1 (.cons _ _ _ _ _ checked240.1 (.cons _ _ _ _ _ checked241.1 (.cons _ _ _ _ _ checked242.1 (.cons _ _ _ _ _ checked243.1 (.cons _ _ _ _ _ checked244.1 (.cons _ _ _ _ _ checked245.1 (.cons _ _ _ _ _ checked246.1 (.cons _ _ _ _ _ checked247.1 (.cons _ _ _ _ _ checked248.1 (.cons _ _ _ _ _ checked249.1 (.cons _ _ _ _ _ checked250.1 (.cons _ _ _ _ _ checked251.1 (.cons _ _ _ _ _ checked252.1 (.cons _ _ _ _ _ checked253.1 (.cons _ _ _ _ _ checked254.1 (.cons _ _ _ _ _ checked255.1 (.cons _ _ _ _ _ checked256.1 (.cons _ _ _ _ _ checked257.1 (.cons _ _ _ _ _ checked258.1 (.cons _ _ _ _ _ checked259.1 (.cons _ _ _ _ _ checked260.1 (.cons _ _ _ _ _ checked261.1 (.cons _ _ _ _ _ checked262.1 (.cons _ _ _ _ _ checked263.1 (.cons _ _ _ _ _ checked264.1 (.cons _ _ _ _ _ checked265.1 (.cons _ _ _ _ _ checked266.1 (.cons _ _ _ _ _ checked267.1 (.cons _ _ _ _ _ checked268.1 (.cons _ _ _ _ _ checked269.1 (.cons _ _ _ _ _ checked270.1 (.cons _ _ _ _ _ checked271.1 (.cons _ _ _ _ _ checked272.1 (.cons _ _ _ _ _ checked273.1 (.cons _ _ _ _ _ checked274.1 (.cons _ _ _ _ _ checked275.1 (.cons _ _ _ _ _ checked276.1 (.cons _ _ _ _ _ checked277.1 (.cons _ _ _ _ _ checked278.1 (.cons _ _ _ _ _ checked279.1 (.cons _ _ _ _ _ checked280.1 (.cons _ _ _ _ _ checked281.1 (.cons _ _ _ _ _ checked282.1 (.cons _ _ _ _ _ checked283.1 (.cons _ _ _ _ _ checked284.1 (.cons _ _ _ _ _ checked285.1 (.cons _ _ _ _ _ checked286.1 (.cons _ _ _ _ _ checked287.1 (.cons _ _ _ _ _ checked288.1 (.cons _ _ _ _ _ checked289.1 (.cons _ _ _ _ _ checked290.1 (.cons _ _ _ _ _ checked291.1 (.cons _ _ _ _ _ checked292.1 (.cons _ _ _ _ _ checked293.1 (.cons _ _ _ _ _ checked294.1 (.cons _ _ _ _ _ checked295.1 (.cons _ _ _ _ _ checked296.1 (.cons _ _ _ _ _ checked297.1 (.cons _ _ _ _ _ checked298.1 (.cons _ _ _ _ _ checked299.1 (.cons _ _ _ _ _ checked300.1 (.cons _ _ _ _ _ checked301.1 (.cons _ _ _ _ _ checked302.1 (.cons _ _ _ _ _ checked303.1 (.cons _ _ _ _ _ checked304.1 (.cons _ _ _ _ _ checked305.1 (.cons _ _ _ _ _ checked306.1 (.cons _ _ _ _ _ checked307.1 (.cons _ _ _ _ _ checked308.1 (.cons _ _ _ _ _ checked309.1 (.cons _ _ _ _ _ checked310.1 (.cons _ _ _ _ _ checked311.1 (.cons _ _ _ _ _ checked312.1 (.cons _ _ _ _ _ checked313.1 (.cons _ _ _ _ _ checked314.1 (.cons _ _ _ _ _ checked315.1 (.cons _ _ _ _ _ checked316.1 (.cons _ _ _ _ _ checked317.1 (.cons _ _ _ _ _ checked318.1 (.cons _ _ _ _ _ checked319.1 (.cons _ _ _ _ _ checked320.1 (.cons _ _ _ _ _ checked321.1 (.cons _ _ _ _ _ checked322.1 (.cons _ _ _ _ _ checked323.1 (.cons _ _ _ _ _ checked324.1 (.cons _ _ _ _ _ checked325.1 (.cons _ _ _ _ _ checked326.1 (.cons _ _ _ _ _ checked327.1 (.cons _ _ _ _ _ checked328.1 (.empty _))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,checked0.2,checked1.2,checked2.2,checked3.2,checked4.2,checked5.2,checked6.2,checked7.2,checked8.2,checked9.2,checked10.2,checked11.2,checked12.2,checked13.2,checked14.2,checked15.2,checked16.2,checked17.2,checked18.2,checked19.2,checked20.2,checked21.2,checked22.2,checked23.2,checked24.2,checked25.2,checked26.2,checked27.2,checked28.2,checked29.2,checked30.2,checked31.2,checked32.2,checked33.2,checked34.2,checked35.2,checked36.2,checked37.2,checked38.2,checked39.2,checked40.2,checked41.2,checked42.2,checked43.2,checked44.2,checked45.2,checked46.2,checked47.2,checked48.2,checked49.2,checked50.2,checked51.2,checked52.2,checked53.2,checked54.2,checked55.2,checked56.2,checked57.2,checked58.2,checked59.2,checked60.2,checked61.2,checked62.2,checked63.2,checked64.2,checked65.2,checked66.2,checked67.2,checked68.2,checked69.2,checked70.2,checked71.2,checked72.2,checked73.2,checked74.2,checked75.2,checked76.2,checked77.2,checked78.2,checked79.2,checked80.2,checked81.2,checked82.2,checked83.2,checked84.2,checked85.2,checked86.2,checked87.2,checked88.2,checked89.2,checked90.2,checked91.2,checked92.2,checked93.2,checked94.2,checked95.2,checked96.2,checked97.2,checked98.2,checked99.2,checked100.2,checked101.2,checked102.2,checked103.2,checked104.2,checked105.2,checked106.2,checked107.2,checked108.2,checked109.2,checked110.2,checked111.2,checked112.2,checked113.2,checked114.2,checked115.2,checked116.2,checked117.2,checked118.2,checked119.2,checked120.2,checked121.2,checked122.2,checked123.2,checked124.2,checked125.2,checked126.2,checked127.2,checked128.2,checked129.2,checked130.2,checked131.2,checked132.2,checked133.2,checked134.2,checked135.2,checked136.2,checked137.2,checked138.2,checked139.2,checked140.2,checked141.2,checked142.2,checked143.2,checked144.2,checked145.2,checked146.2,checked147.2,checked148.2,checked149.2,checked150.2,checked151.2,checked152.2,checked153.2,checked154.2,checked155.2,checked156.2,checked157.2,checked158.2,checked159.2,checked160.2,checked161.2,checked162.2,checked163.2,checked164.2,checked165.2,checked166.2,checked167.2,checked168.2,checked169.2,checked170.2,checked171.2,checked172.2,checked173.2,checked174.2,checked175.2,checked176.2,checked177.2,checked178.2,checked179.2,checked180.2,checked181.2,checked182.2,checked183.2,checked184.2,checked185.2,checked186.2,checked187.2,checked188.2,checked189.2,checked190.2,checked191.2,checked192.2,checked193.2,checked194.2,checked195.2,checked196.2,checked197.2,checked198.2,checked199.2,checked200.2,checked201.2,checked202.2,checked203.2,checked204.2,checked205.2,checked206.2,checked207.2,checked208.2,checked209.2,checked210.2,checked211.2,checked212.2,checked213.2,checked214.2,checked215.2,checked216.2,checked217.2,checked218.2,checked219.2,checked220.2,checked221.2,checked222.2,checked223.2,checked224.2,checked225.2,checked226.2,checked227.2,checked228.2,checked229.2,checked230.2,checked231.2,checked232.2,checked233.2,checked234.2,checked235.2,checked236.2,checked237.2,checked238.2,checked239.2,checked240.2,checked241.2,checked242.2,checked243.2,checked244.2,checked245.2,checked246.2,checked247.2,checked248.2,checked249.2,checked250.2,checked251.2,checked252.2,checked253.2,checked254.2,checked255.2,checked256.2,checked257.2,checked258.2,checked259.2,checked260.2,checked261.2,checked262.2,checked263.2,checked264.2,checked265.2,checked266.2,checked267.2,checked268.2,checked269.2,checked270.2,checked271.2,checked272.2,checked273.2,checked274.2,checked275.2,checked276.2,checked277.2,checked278.2,checked279.2,checked280.2,checked281.2,checked282.2,checked283.2,checked284.2,checked285.2,checked286.2,checked287.2,checked288.2,checked289.2,checked290.2,checked291.2,checked292.2,checked293.2,checked294.2,checked295.2,checked296.2,checked297.2,checked298.2,checked299.2,checked300.2,checked301.2,checked302.2,checked303.2,checked304.2,checked305.2,checked306.2,checked307.2,checked308.2,checked309.2,checked310.2,checked311.2,checked312.2,checked313.2,checked314.2,checked315.2,checked316.2,checked317.2,checked318.2,checked319.2,checked320.2,checked321.2,checked322.2,checked323.2,checked324.2,checked325.2,checked326.2,checked327.2,checked328.2]
  decide
theorem actual_validated : validate ActualCounterIR.program actualBytes=true := by
  exact validate_from_facts ActualCounterIR.program actualBytes ActualCounterIR.safe_checked
    (assembled_bytes_exact ActualCounterIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (CounterProgram.expected inputs) := by
  have result:=actual_bytes_sound ActualCounterIR.program actualBytes actual_validated inputs
  rw [ActualCounterIR.ir_exact,CounterProgram.program_meaning] at result
  exact result
end ActualCounterBytes
