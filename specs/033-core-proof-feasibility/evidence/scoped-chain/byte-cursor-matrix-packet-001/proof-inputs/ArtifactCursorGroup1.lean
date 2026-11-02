import ActualCursorIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactCursorGroup1
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op64 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes64 : Bytes := ("    let r00000043: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked64 : bytes64=statementBytes 67 (op64.map lower) ∧ bytes64.length=41 := by core033_kernel_decide
def op65 : List WordIR.Op := [.bnot 67]
def bytes65 : Bytes := ("    let r00000044: u32 = !r00000043;\n" : String).toByteArray.data.toList
theorem checked65 : bytes65=statementBytes 68 (op65.map lower) ∧ bytes65.length=37 := by core033_kernel_decide
def op66 : List WordIR.Op := [.band 66 68]
def bytes66 : Bytes := ("    let r00000045: u32 = r00000042 & r00000044;\n" : String).toByteArray.data.toList
theorem checked66 : bytes66=statementBytes 69 (op66.map lower) ∧ bytes66.length=48 := by core033_kernel_decide
def op67 : List WordIR.Op := [.badd 0 2]
def bytes67 : Bytes := ("    let r00000046: u32 = r00000000.wrapping_add(r00000002);\n" : String).toByteArray.data.toList
theorem checked67 : bytes67=statementBytes 70 (op67.map lower) ∧ bytes67.length=60 := by core033_kernel_decide
def op68 : List WordIR.Op := [.bnot 70]
def bytes68 : Bytes := ("    let r00000047: u32 = !r00000046;\n" : String).toByteArray.data.toList
theorem checked68 : bytes68=statementBytes 71 (op68.map lower) ∧ bytes68.length=37 := by core033_kernel_decide
def op69 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes69 : Bytes := ("    let r00000048: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked69 : bytes69=statementBytes 72 (op69.map lower) ∧ bytes69.length=41 := by core033_kernel_decide
def op70 : List WordIR.Op := [.badd 71 72]
def bytes70 : Bytes := ("    let r00000049: u32 = r00000047.wrapping_add(r00000048);\n" : String).toByteArray.data.toList
theorem checked70 : bytes70=statementBytes 73 (op70.map lower) ∧ bytes70.length=60 := by core033_kernel_decide
def op71 : List WordIR.Op := [.badd 1 73]
def bytes71 : Bytes := ("    let r0000004a: u32 = r00000001.wrapping_add(r00000049);\n" : String).toByteArray.data.toList
theorem checked71 : bytes71=statementBytes 74 (op71.map lower) ∧ bytes71.length=60 := by core033_kernel_decide
def op72 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes72 : Bytes := ("    let r0000004b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked72 : bytes72=statementBytes 75 (op72.map lower) ∧ bytes72.length=41 := by core033_kernel_decide
def op73 : List WordIR.Op := [.bnot 75]
def bytes73 : Bytes := ("    let r0000004c: u32 = !r0000004b;\n" : String).toByteArray.data.toList
theorem checked73 : bytes73=statementBytes 76 (op73.map lower) ∧ bytes73.length=37 := by core033_kernel_decide
def op74 : List WordIR.Op := [.bxor 74 76]
def bytes74 : Bytes := ("    let r0000004d: u32 = r0000004a ^ r0000004c;\n" : String).toByteArray.data.toList
theorem checked74 : bytes74=statementBytes 77 (op74.map lower) ∧ bytes74.length=48 := by core033_kernel_decide
def op75 : List WordIR.Op := [.badd 0 2]
def bytes75 : Bytes := ("    let r0000004e: u32 = r00000000.wrapping_add(r00000002);\n" : String).toByteArray.data.toList
theorem checked75 : bytes75=statementBytes 78 (op75.map lower) ∧ bytes75.length=60 := by core033_kernel_decide
def op76 : List WordIR.Op := [.bnot 78]
def bytes76 : Bytes := ("    let r0000004f: u32 = !r0000004e;\n" : String).toByteArray.data.toList
theorem checked76 : bytes76=statementBytes 79 (op76.map lower) ∧ bytes76.length=37 := by core033_kernel_decide
def op77 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes77 : Bytes := ("    let r00000050: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked77 : bytes77=statementBytes 80 (op77.map lower) ∧ bytes77.length=41 := by core033_kernel_decide
def op78 : List WordIR.Op := [.badd 79 80]
def bytes78 : Bytes := ("    let r00000051: u32 = r0000004f.wrapping_add(r00000050);\n" : String).toByteArray.data.toList
theorem checked78 : bytes78=statementBytes 81 (op78.map lower) ∧ bytes78.length=60 := by core033_kernel_decide
def op79 : List WordIR.Op := [.badd 1 81]
def bytes79 : Bytes := ("    let r00000052: u32 = r00000001.wrapping_add(r00000051);\n" : String).toByteArray.data.toList
theorem checked79 : bytes79=statementBytes 82 (op79.map lower) ∧ bytes79.length=60 := by core033_kernel_decide
def op80 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes80 : Bytes := ("    let r00000053: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked80 : bytes80=statementBytes 83 (op80.map lower) ∧ bytes80.length=41 := by core033_kernel_decide
def op81 : List WordIR.Op := [.bnot 83]
def bytes81 : Bytes := ("    let r00000054: u32 = !r00000053;\n" : String).toByteArray.data.toList
theorem checked81 : bytes81=statementBytes 84 (op81.map lower) ∧ bytes81.length=37 := by core033_kernel_decide
def op82 : List WordIR.Op := [.badd 82 84]
def bytes82 : Bytes := ("    let r00000055: u32 = r00000052.wrapping_add(r00000054);\n" : String).toByteArray.data.toList
theorem checked82 : bytes82=statementBytes 85 (op82.map lower) ∧ bytes82.length=60 := by core033_kernel_decide
def op83 : List WordIR.Op := [.bnot 85]
def bytes83 : Bytes := ("    let r00000056: u32 = !r00000055;\n" : String).toByteArray.data.toList
theorem checked83 : bytes83=statementBytes 86 (op83.map lower) ∧ bytes83.length=37 := by core033_kernel_decide
def op84 : List WordIR.Op := [.band 77 86]
def bytes84 : Bytes := ("    let r00000057: u32 = r0000004d & r00000056;\n" : String).toByteArray.data.toList
theorem checked84 : bytes84=statementBytes 87 (op84.map lower) ∧ bytes84.length=48 := by core033_kernel_decide
def op85 : List WordIR.Op := [.bxor 69 87]
def bytes85 : Bytes := ("    let r00000058: u32 = r00000045 ^ r00000057;\n" : String).toByteArray.data.toList
theorem checked85 : bytes85=statementBytes 88 (op85.map lower) ∧ bytes85.length=48 := by core033_kernel_decide
def op86 : List WordIR.Op := [.shr 88 31]
def bytes86 : Bytes := ("    let r00000059: u32 = r00000058 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked86 : bytes86=statementBytes 89 (op86.map lower) ∧ bytes86.length=54 := by core033_kernel_decide
def op87 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes87 : Bytes := ("    let r0000005a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked87 : bytes87=statementBytes 90 (op87.map lower) ∧ bytes87.length=41 := by core033_kernel_decide
def op88 : List WordIR.Op := [.bxor 89 90]
def bytes88 : Bytes := ("    let r0000005b: u32 = r00000059 ^ r0000005a;\n" : String).toByteArray.data.toList
theorem checked88 : bytes88=statementBytes 91 (op88.map lower) ∧ bytes88.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op64,op65,op66,op67,op68,op69,op70,op71,op72,op73,op74,op75,op76,op77,op78,op79,op80,op81,op82,op83,op84,op85,op86,op87,op88]
def chunks : List Bytes := [bytes64,bytes65,bytes66,bytes67,bytes68,bytes69,bytes70,bytes71,bytes72,bytes73,bytes74,bytes75,bytes76,bytes77,bytes78,bytes79,bytes80,bytes81,bytes82,bytes83,bytes84,bytes85,bytes86,bytes87,bytes88]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 67 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked64.1 (.cons _ _ _ _ _ checked65.1 (.cons _ _ _ _ _ checked66.1 (.cons _ _ _ _ _ checked67.1 (.cons _ _ _ _ _ checked68.1 (.cons _ _ _ _ _ checked69.1 (.cons _ _ _ _ _ checked70.1 (.cons _ _ _ _ _ checked71.1 (.cons _ _ _ _ _ checked72.1 (.cons _ _ _ _ _ checked73.1 (.cons _ _ _ _ _ checked74.1 (.cons _ _ _ _ _ checked75.1 (.cons _ _ _ _ _ checked76.1 (.cons _ _ _ _ _ checked77.1 (.cons _ _ _ _ _ checked78.1 (.cons _ _ _ _ _ checked79.1 (.cons _ _ _ _ _ checked80.1 (.cons _ _ _ _ _ checked81.1 (.cons _ _ _ _ _ checked82.1 (.cons _ _ _ _ _ checked83.1 (.cons _ _ _ _ _ checked84.1 (.cons _ _ _ _ _ checked85.1 (.cons _ _ _ _ _ checked86.1 (.cons _ _ _ _ _ checked87.1 (.cons _ _ _ _ _ checked88.1 (.empty _))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 67 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=25 := rfl
theorem partSize : partBytes.length=1182 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked64.2,checked65.2,checked66.2,checked67.2,checked68.2,checked69.2,checked70.2,checked71.2,checked72.2,checked73.2,checked74.2,checked75.2,checked76.2,checked77.2,checked78.2,checked79.2,checked80.2,checked81.2,checked82.2,checked83.2,checked84.2,checked85.2,checked86.2,checked87.2,checked88.2]
  decide
end ArtifactCursorGroup1
