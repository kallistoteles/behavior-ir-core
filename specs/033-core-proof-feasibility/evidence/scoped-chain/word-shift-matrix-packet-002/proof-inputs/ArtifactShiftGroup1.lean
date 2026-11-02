import ActualShiftIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactShiftGroup1
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op64 : List WordIR.Op := [.badd 64 65]
def bytes64 : Bytes := ("    let r00000042: u32 = r00000040.wrapping_add(r00000041);\n" : String).toByteArray.data.toList
theorem checked64 : bytes64=statementBytes 66 (op64.map lower) ∧ bytes64.length=60 := by core033_kernel_decide
def op65 : List WordIR.Op := [.bnot 66]
def bytes65 : Bytes := ("    let r00000043: u32 = !r00000042;\n" : String).toByteArray.data.toList
theorem checked65 : bytes65=statementBytes 67 (op65.map lower) ∧ bytes65.length=37 := by core033_kernel_decide
def op66 : List WordIR.Op := [.band 67 52]
def bytes66 : Bytes := ("    let r00000044: u32 = r00000043 & r00000034;\n" : String).toByteArray.data.toList
theorem checked66 : bytes66=statementBytes 68 (op66.map lower) ∧ bytes66.length=48 := by core033_kernel_decide
def op67 : List WordIR.Op := [.bxor 60 68]
def bytes67 : Bytes := ("    let r00000045: u32 = r0000003c ^ r00000044;\n" : String).toByteArray.data.toList
theorem checked67 : bytes67=statementBytes 69 (op67.map lower) ∧ bytes67.length=48 := by core033_kernel_decide
def op68 : List WordIR.Op := [.shr 1 4]
def bytes68 : Bytes := ("    let r00000046: u32 = r00000001 >> 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked68 : bytes68=statementBytes 70 (op68.map lower) ∧ bytes68.length=54 := by core033_kernel_decide
def op69 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes69 : Bytes := ("    let r00000047: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked69 : bytes69=statementBytes 71 (op69.map lower) ∧ bytes69.length=41 := by core033_kernel_decide
def op70 : List WordIR.Op := [.band 70 71]
def bytes70 : Bytes := ("    let r00000048: u32 = r00000046 & r00000047;\n" : String).toByteArray.data.toList
theorem checked70 : bytes70=statementBytes 72 (op70.map lower) ∧ bytes70.length=48 := by core033_kernel_decide
def op71 : List WordIR.Op := [.bnot 72]
def bytes71 : Bytes := ("    let r00000049: u32 = !r00000048;\n" : String).toByteArray.data.toList
theorem checked71 : bytes71=statementBytes 73 (op71.map lower) ∧ bytes71.length=37 := by core033_kernel_decide
def op72 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes72 : Bytes := ("    let r0000004a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked72 : bytes72=statementBytes 74 (op72.map lower) ∧ bytes72.length=41 := by core033_kernel_decide
def op73 : List WordIR.Op := [.badd 73 74]
def bytes73 : Bytes := ("    let r0000004b: u32 = r00000049.wrapping_add(r0000004a);\n" : String).toByteArray.data.toList
theorem checked73 : bytes73=statementBytes 75 (op73.map lower) ∧ bytes73.length=60 := by core033_kernel_decide
def op74 : List WordIR.Op := [.shr 69 16]
def bytes74 : Bytes := ("    let r0000004c: u32 = r00000045 >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked74 : bytes74=statementBytes 76 (op74.map lower) ∧ bytes74.length=54 := by core033_kernel_decide
def op75 : List WordIR.Op := [.band 75 76]
def bytes75 : Bytes := ("    let r0000004d: u32 = r0000004b & r0000004c;\n" : String).toByteArray.data.toList
theorem checked75 : bytes75=statementBytes 77 (op75.map lower) ∧ bytes75.length=48 := by core033_kernel_decide
def op76 : List WordIR.Op := [.shr 1 4]
def bytes76 : Bytes := ("    let r0000004e: u32 = r00000001 >> 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked76 : bytes76=statementBytes 78 (op76.map lower) ∧ bytes76.length=54 := by core033_kernel_decide
def op77 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes77 : Bytes := ("    let r0000004f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked77 : bytes77=statementBytes 79 (op77.map lower) ∧ bytes77.length=41 := by core033_kernel_decide
def op78 : List WordIR.Op := [.band 78 79]
def bytes78 : Bytes := ("    let r00000050: u32 = r0000004e & r0000004f;\n" : String).toByteArray.data.toList
theorem checked78 : bytes78=statementBytes 80 (op78.map lower) ∧ bytes78.length=48 := by core033_kernel_decide
def op79 : List WordIR.Op := [.bnot 80]
def bytes79 : Bytes := ("    let r00000051: u32 = !r00000050;\n" : String).toByteArray.data.toList
theorem checked79 : bytes79=statementBytes 81 (op79.map lower) ∧ bytes79.length=37 := by core033_kernel_decide
def op80 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes80 : Bytes := ("    let r00000052: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked80 : bytes80=statementBytes 82 (op80.map lower) ∧ bytes80.length=41 := by core033_kernel_decide
def op81 : List WordIR.Op := [.badd 81 82]
def bytes81 : Bytes := ("    let r00000053: u32 = r00000051.wrapping_add(r00000052);\n" : String).toByteArray.data.toList
theorem checked81 : bytes81=statementBytes 83 (op81.map lower) ∧ bytes81.length=60 := by core033_kernel_decide
def op82 : List WordIR.Op := [.bnot 83]
def bytes82 : Bytes := ("    let r00000054: u32 = !r00000053;\n" : String).toByteArray.data.toList
theorem checked82 : bytes82=statementBytes 84 (op82.map lower) ∧ bytes82.length=37 := by core033_kernel_decide
def op83 : List WordIR.Op := [.band 84 69]
def bytes83 : Bytes := ("    let r00000055: u32 = r00000054 & r00000045;\n" : String).toByteArray.data.toList
theorem checked83 : bytes83=statementBytes 85 (op83.map lower) ∧ bytes83.length=48 := by core033_kernel_decide
def op84 : List WordIR.Op := [.bxor 77 85]
def bytes84 : Bytes := ("    let r00000056: u32 = r0000004d ^ r00000055;\n" : String).toByteArray.data.toList
theorem checked84 : bytes84=statementBytes 86 (op84.map lower) ∧ bytes84.length=48 := by core033_kernel_decide
def op85 : List WordIR.Op := [.shr 1 5]
def bytes85 : Bytes := ("    let r00000057: u32 = r00000001 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked85 : bytes85=statementBytes 87 (op85.map lower) ∧ bytes85.length=54 := by core033_kernel_decide
def op86 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes86 : Bytes := ("    let r00000058: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked86 : bytes86=statementBytes 88 (op86.map lower) ∧ bytes86.length=41 := by core033_kernel_decide
def op87 : List WordIR.Op := [.bnot 88]
def bytes87 : Bytes := ("    let r00000059: u32 = !r00000058;\n" : String).toByteArray.data.toList
theorem checked87 : bytes87=statementBytes 89 (op87.map lower) ∧ bytes87.length=37 := by core033_kernel_decide
def op88 : List WordIR.Op := [.band 87 89]
def bytes88 : Bytes := ("    let r0000005a: u32 = r00000057 & r00000059;\n" : String).toByteArray.data.toList
theorem checked88 : bytes88=statementBytes 90 (op88.map lower) ∧ bytes88.length=48 := by core033_kernel_decide
def op89 : List WordIR.Op := [.shr 1 5]
def bytes89 : Bytes := ("    let r0000005b: u32 = r00000001 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked89 : bytes89=statementBytes 91 (op89.map lower) ∧ bytes89.length=54 := by core033_kernel_decide
def op90 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes90 : Bytes := ("    let r0000005c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked90 : bytes90=statementBytes 92 (op90.map lower) ∧ bytes90.length=41 := by core033_kernel_decide
def op91 : List WordIR.Op := [.bnot 92]
def bytes91 : Bytes := ("    let r0000005d: u32 = !r0000005c;\n" : String).toByteArray.data.toList
theorem checked91 : bytes91=statementBytes 93 (op91.map lower) ∧ bytes91.length=37 := by core033_kernel_decide
def op92 : List WordIR.Op := [.bxor 91 93]
def bytes92 : Bytes := ("    let r0000005e: u32 = r0000005b ^ r0000005d;\n" : String).toByteArray.data.toList
theorem checked92 : bytes92=statementBytes 94 (op92.map lower) ∧ bytes92.length=48 := by core033_kernel_decide
def op93 : List WordIR.Op := [.shr 1 5]
def bytes93 : Bytes := ("    let r0000005f: u32 = r00000001 >> 0x00000005_u32;\n" : String).toByteArray.data.toList
theorem checked93 : bytes93=statementBytes 95 (op93.map lower) ∧ bytes93.length=54 := by core033_kernel_decide
def op94 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes94 : Bytes := ("    let r00000060: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked94 : bytes94=statementBytes 96 (op94.map lower) ∧ bytes94.length=41 := by core033_kernel_decide
def op95 : List WordIR.Op := [.bnot 96]
def bytes95 : Bytes := ("    let r00000061: u32 = !r00000060;\n" : String).toByteArray.data.toList
theorem checked95 : bytes95=statementBytes 97 (op95.map lower) ∧ bytes95.length=37 := by core033_kernel_decide
def op96 : List WordIR.Op := [.badd 95 97]
def bytes96 : Bytes := ("    let r00000062: u32 = r0000005f.wrapping_add(r00000061);\n" : String).toByteArray.data.toList
theorem checked96 : bytes96=statementBytes 98 (op96.map lower) ∧ bytes96.length=60 := by core033_kernel_decide
def op97 : List WordIR.Op := [.bnot 98]
def bytes97 : Bytes := ("    let r00000063: u32 = !r00000062;\n" : String).toByteArray.data.toList
theorem checked97 : bytes97=statementBytes 99 (op97.map lower) ∧ bytes97.length=37 := by core033_kernel_decide
def op98 : List WordIR.Op := [.band 94 99]
def bytes98 : Bytes := ("    let r00000064: u32 = r0000005e & r00000063;\n" : String).toByteArray.data.toList
theorem checked98 : bytes98=statementBytes 100 (op98.map lower) ∧ bytes98.length=48 := by core033_kernel_decide
def op99 : List WordIR.Op := [.bxor 90 100]
def bytes99 : Bytes := ("    let r00000065: u32 = r0000005a ^ r00000064;\n" : String).toByteArray.data.toList
theorem checked99 : bytes99=statementBytes 101 (op99.map lower) ∧ bytes99.length=48 := by core033_kernel_decide
def op100 : List WordIR.Op := [.shr 101 31]
def bytes100 : Bytes := ("    let r00000066: u32 = r00000065 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked100 : bytes100=statementBytes 102 (op100.map lower) ∧ bytes100.length=54 := by core033_kernel_decide
def op101 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes101 : Bytes := ("    let r00000067: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked101 : bytes101=statementBytes 103 (op101.map lower) ∧ bytes101.length=41 := by core033_kernel_decide
def op102 : List WordIR.Op := [.bxor 102 103]
def bytes102 : Bytes := ("    let r00000068: u32 = r00000066 ^ r00000067;\n" : String).toByteArray.data.toList
theorem checked102 : bytes102=statementBytes 104 (op102.map lower) ∧ bytes102.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op64,op65,op66,op67,op68,op69,op70,op71,op72,op73,op74,op75,op76,op77,op78,op79,op80,op81,op82,op83,op84,op85,op86,op87,op88,op89,op90,op91,op92,op93,op94,op95,op96,op97,op98,op99,op100,op101,op102]
def chunks : List Bytes := [bytes64,bytes65,bytes66,bytes67,bytes68,bytes69,bytes70,bytes71,bytes72,bytes73,bytes74,bytes75,bytes76,bytes77,bytes78,bytes79,bytes80,bytes81,bytes82,bytes83,bytes84,bytes85,bytes86,bytes87,bytes88,bytes89,bytes90,bytes91,bytes92,bytes93,bytes94,bytes95,bytes96,bytes97,bytes98,bytes99,bytes100,bytes101,bytes102]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 66 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked64.1 (.cons _ _ _ _ _ checked65.1 (.cons _ _ _ _ _ checked66.1 (.cons _ _ _ _ _ checked67.1 (.cons _ _ _ _ _ checked68.1 (.cons _ _ _ _ _ checked69.1 (.cons _ _ _ _ _ checked70.1 (.cons _ _ _ _ _ checked71.1 (.cons _ _ _ _ _ checked72.1 (.cons _ _ _ _ _ checked73.1 (.cons _ _ _ _ _ checked74.1 (.cons _ _ _ _ _ checked75.1 (.cons _ _ _ _ _ checked76.1 (.cons _ _ _ _ _ checked77.1 (.cons _ _ _ _ _ checked78.1 (.cons _ _ _ _ _ checked79.1 (.cons _ _ _ _ _ checked80.1 (.cons _ _ _ _ _ checked81.1 (.cons _ _ _ _ _ checked82.1 (.cons _ _ _ _ _ checked83.1 (.cons _ _ _ _ _ checked84.1 (.cons _ _ _ _ _ checked85.1 (.cons _ _ _ _ _ checked86.1 (.cons _ _ _ _ _ checked87.1 (.cons _ _ _ _ _ checked88.1 (.cons _ _ _ _ _ checked89.1 (.cons _ _ _ _ _ checked90.1 (.cons _ _ _ _ _ checked91.1 (.cons _ _ _ _ _ checked92.1 (.cons _ _ _ _ _ checked93.1 (.cons _ _ _ _ _ checked94.1 (.cons _ _ _ _ _ checked95.1 (.cons _ _ _ _ _ checked96.1 (.cons _ _ _ _ _ checked97.1 (.cons _ _ _ _ _ checked98.1 (.cons _ _ _ _ _ checked99.1 (.cons _ _ _ _ _ checked100.1 (.cons _ _ _ _ _ checked101.1 (.cons _ _ _ _ _ checked102.1 (.empty _))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 66 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=39 := rfl
theorem partSize : partBytes.length=1818 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked64.2,checked65.2,checked66.2,checked67.2,checked68.2,checked69.2,checked70.2,checked71.2,checked72.2,checked73.2,checked74.2,checked75.2,checked76.2,checked77.2,checked78.2,checked79.2,checked80.2,checked81.2,checked82.2,checked83.2,checked84.2,checked85.2,checked86.2,checked87.2,checked88.2,checked89.2,checked90.2,checked91.2,checked92.2,checked93.2,checked94.2,checked95.2,checked96.2,checked97.2,checked98.2,checked99.2,checked100.2,checked101.2,checked102.2]
  decide
end ArtifactShiftGroup1
