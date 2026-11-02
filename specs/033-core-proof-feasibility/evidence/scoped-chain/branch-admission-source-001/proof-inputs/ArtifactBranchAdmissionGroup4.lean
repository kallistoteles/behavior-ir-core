import ActualBranchAdmissionIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactBranchAdmissionGroup4
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op256 : List WordIR.Op := [.badd 18 20]
def bytes256 : Bytes := ("    let r0000011a: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked256 : bytes256=statementBytes 282 (op256.map lower) ∧ bytes256.length=60 := by core033_kernel_decide
def op257 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes257 : Bytes := ("    let r0000011b: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked257 : bytes257=statementBytes 283 (op257.map lower) ∧ bytes257.length=41 := by core033_kernel_decide
def op258 : List WordIR.Op := [.bnot 283]
def bytes258 : Bytes := ("    let r0000011c: u32 = !r0000011b;\n" : String).toByteArray.data.toList
theorem checked258 : bytes258=statementBytes 284 (op258.map lower) ∧ bytes258.length=37 := by core033_kernel_decide
def op259 : List WordIR.Op := [.bxor 282 284]
def bytes259 : Bytes := ("    let r0000011d: u32 = r0000011a ^ r0000011c;\n" : String).toByteArray.data.toList
theorem checked259 : bytes259=statementBytes 285 (op259.map lower) ∧ bytes259.length=48 := by core033_kernel_decide
def op260 : List WordIR.Op := [.badd 18 20]
def bytes260 : Bytes := ("    let r0000011e: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked260 : bytes260=statementBytes 286 (op260.map lower) ∧ bytes260.length=60 := by core033_kernel_decide
def op261 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes261 : Bytes := ("    let r0000011f: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked261 : bytes261=statementBytes 287 (op261.map lower) ∧ bytes261.length=41 := by core033_kernel_decide
def op262 : List WordIR.Op := [.bnot 287]
def bytes262 : Bytes := ("    let r00000120: u32 = !r0000011f;\n" : String).toByteArray.data.toList
theorem checked262 : bytes262=statementBytes 288 (op262.map lower) ∧ bytes262.length=37 := by core033_kernel_decide
def op263 : List WordIR.Op := [.badd 286 288]
def bytes263 : Bytes := ("    let r00000121: u32 = r0000011e.wrapping_add(r00000120);\n" : String).toByteArray.data.toList
theorem checked263 : bytes263=statementBytes 289 (op263.map lower) ∧ bytes263.length=60 := by core033_kernel_decide
def op264 : List WordIR.Op := [.bnot 289]
def bytes264 : Bytes := ("    let r00000122: u32 = !r00000121;\n" : String).toByteArray.data.toList
theorem checked264 : bytes264=statementBytes 290 (op264.map lower) ∧ bytes264.length=37 := by core033_kernel_decide
def op265 : List WordIR.Op := [.band 285 290]
def bytes265 : Bytes := ("    let r00000123: u32 = r0000011d & r00000122;\n" : String).toByteArray.data.toList
theorem checked265 : bytes265=statementBytes 291 (op265.map lower) ∧ bytes265.length=48 := by core033_kernel_decide
def op266 : List WordIR.Op := [.bxor 281 291]
def bytes266 : Bytes := ("    let r00000124: u32 = r00000119 ^ r00000123;\n" : String).toByteArray.data.toList
theorem checked266 : bytes266=statementBytes 292 (op266.map lower) ∧ bytes266.length=48 := by core033_kernel_decide
def op267 : List WordIR.Op := [.shr 292 31]
def bytes267 : Bytes := ("    let r00000125: u32 = r00000124 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked267 : bytes267=statementBytes 293 (op267.map lower) ∧ bytes267.length=54 := by core033_kernel_decide
def op268 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes268 : Bytes := ("    let r00000126: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked268 : bytes268=statementBytes 294 (op268.map lower) ∧ bytes268.length=41 := by core033_kernel_decide
def op269 : List WordIR.Op := [.bxor 293 294]
def bytes269 : Bytes := ("    let r00000127: u32 = r00000125 ^ r00000126;\n" : String).toByteArray.data.toList
theorem checked269 : bytes269=statementBytes 295 (op269.map lower) ∧ bytes269.length=48 := by core033_kernel_decide
def op270 : List WordIR.Op := [.band 277 295]
def bytes270 : Bytes := ("    let r00000128: u32 = r00000115 & r00000127;\n" : String).toByteArray.data.toList
theorem checked270 : bytes270=statementBytes 296 (op270.map lower) ∧ bytes270.length=48 := by core033_kernel_decide
def op271 : List WordIR.Op := [.band 235 296]
def bytes271 : Bytes := ("    let r00000129: u32 = r000000eb & r00000128;\n" : String).toByteArray.data.toList
theorem checked271 : bytes271=statementBytes 297 (op271.map lower) ∧ bytes271.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op256,op257,op258,op259,op260,op261,op262,op263,op264,op265,op266,op267,op268,op269,op270,op271]
def chunks : List Bytes := [bytes256,bytes257,bytes258,bytes259,bytes260,bytes261,bytes262,bytes263,bytes264,bytes265,bytes266,bytes267,bytes268,bytes269,bytes270,bytes271]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 282 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked256.1 (.cons _ _ _ _ _ checked257.1 (.cons _ _ _ _ _ checked258.1 (.cons _ _ _ _ _ checked259.1 (.cons _ _ _ _ _ checked260.1 (.cons _ _ _ _ _ checked261.1 (.cons _ _ _ _ _ checked262.1 (.cons _ _ _ _ _ checked263.1 (.cons _ _ _ _ _ checked264.1 (.cons _ _ _ _ _ checked265.1 (.cons _ _ _ _ _ checked266.1 (.cons _ _ _ _ _ checked267.1 (.cons _ _ _ _ _ checked268.1 (.cons _ _ _ _ _ checked269.1 (.cons _ _ _ _ _ checked270.1 (.cons _ _ _ _ _ checked271.1 (.empty _)))))))))))))))))
theorem partChecked : partBytes=statementBytes 282 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=16 := rfl
theorem partSize : partBytes.length=756 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked256.2,checked257.2,checked258.2,checked259.2,checked260.2,checked261.2,checked262.2,checked263.2,checked264.2,checked265.2,checked266.2,checked267.2,checked268.2,checked269.2,checked270.2,checked271.2]
  decide
end ArtifactBranchAdmissionGroup4
