import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup206
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13184 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13184 : Bytes := ("    let r000033e0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13184 : bytes13184=statementBytes 13280 (op13184.map lower) ∧ bytes13184.length=41 := by core033_kernel_decide
def op13185 : List WordIR.Op := [.badd 13279 13280]
def bytes13185 : Bytes := ("    let r000033e1: u32 = r000033df.wrapping_add(r000033e0);\n" : String).toByteArray.data.toList
theorem checked13185 : bytes13185=statementBytes 13281 (op13185.map lower) ∧ bytes13185.length=60 := by core033_kernel_decide
def op13186 : List WordIR.Op := [.band 13281 12409]
def bytes13186 : Bytes := ("    let r000033e2: u32 = r000033e1 & r00003079;\n" : String).toByteArray.data.toList
theorem checked13186 : bytes13186=statementBytes 13282 (op13186.map lower) ∧ bytes13186.length=48 := by core033_kernel_decide
def op13187 : List WordIR.Op := [.bnot 288]
def bytes13187 : Bytes := ("    let r000033e3: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13187 : bytes13187=statementBytes 13283 (op13187.map lower) ∧ bytes13187.length=37 := by core033_kernel_decide
def op13188 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13188 : Bytes := ("    let r000033e4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13188 : bytes13188=statementBytes 13284 (op13188.map lower) ∧ bytes13188.length=41 := by core033_kernel_decide
def op13189 : List WordIR.Op := [.badd 13283 13284]
def bytes13189 : Bytes := ("    let r000033e5: u32 = r000033e3.wrapping_add(r000033e4);\n" : String).toByteArray.data.toList
theorem checked13189 : bytes13189=statementBytes 13285 (op13189.map lower) ∧ bytes13189.length=60 := by core033_kernel_decide
def op13190 : List WordIR.Op := [.bnot 13285]
def bytes13190 : Bytes := ("    let r000033e6: u32 = !r000033e5;\n" : String).toByteArray.data.toList
theorem checked13190 : bytes13190=statementBytes 13286 (op13190.map lower) ∧ bytes13190.length=37 := by core033_kernel_decide
def op13191 : List WordIR.Op := [.band 13286 77]
def bytes13191 : Bytes := ("    let r000033e7: u32 = r000033e6 & r0000004d;\n" : String).toByteArray.data.toList
theorem checked13191 : bytes13191=statementBytes 13287 (op13191.map lower) ∧ bytes13191.length=48 := by core033_kernel_decide
def op13192 : List WordIR.Op := [.bxor 13282 13287]
def bytes13192 : Bytes := ("    let r000033e8: u32 = r000033e2 ^ r000033e7;\n" : String).toByteArray.data.toList
theorem checked13192 : bytes13192=statementBytes 13288 (op13192.map lower) ∧ bytes13192.length=48 := by core033_kernel_decide
def op13193 : List WordIR.Op := [.bnot 288]
def bytes13193 : Bytes := ("    let r000033e9: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13193 : bytes13193=statementBytes 13289 (op13193.map lower) ∧ bytes13193.length=37 := by core033_kernel_decide
def op13194 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13194 : Bytes := ("    let r000033ea: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13194 : bytes13194=statementBytes 13290 (op13194.map lower) ∧ bytes13194.length=41 := by core033_kernel_decide
def op13195 : List WordIR.Op := [.badd 13289 13290]
def bytes13195 : Bytes := ("    let r000033eb: u32 = r000033e9.wrapping_add(r000033ea);\n" : String).toByteArray.data.toList
theorem checked13195 : bytes13195=statementBytes 13291 (op13195.map lower) ∧ bytes13195.length=60 := by core033_kernel_decide
def op13196 : List WordIR.Op := [.band 13291 12513]
def bytes13196 : Bytes := ("    let r000033ec: u32 = r000033eb & r000030e1;\n" : String).toByteArray.data.toList
theorem checked13196 : bytes13196=statementBytes 13292 (op13196.map lower) ∧ bytes13196.length=48 := by core033_kernel_decide
def op13197 : List WordIR.Op := [.bnot 288]
def bytes13197 : Bytes := ("    let r000033ed: u32 = !r00000120;\n" : String).toByteArray.data.toList
theorem checked13197 : bytes13197=statementBytes 13293 (op13197.map lower) ∧ bytes13197.length=37 := by core033_kernel_decide
def op13198 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13198 : Bytes := ("    let r000033ee: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13198 : bytes13198=statementBytes 13294 (op13198.map lower) ∧ bytes13198.length=41 := by core033_kernel_decide
def op13199 : List WordIR.Op := [.badd 13293 13294]
def bytes13199 : Bytes := ("    let r000033ef: u32 = r000033ed.wrapping_add(r000033ee);\n" : String).toByteArray.data.toList
theorem checked13199 : bytes13199=statementBytes 13295 (op13199.map lower) ∧ bytes13199.length=60 := by core033_kernel_decide
def op13200 : List WordIR.Op := [.bnot 13295]
def bytes13200 : Bytes := ("    let r000033f0: u32 = !r000033ef;\n" : String).toByteArray.data.toList
theorem checked13200 : bytes13200=statementBytes 13296 (op13200.map lower) ∧ bytes13200.length=37 := by core033_kernel_decide
def op13201 : List WordIR.Op := [.band 13296 78]
def bytes13201 : Bytes := ("    let r000033f1: u32 = r000033f0 & r0000004e;\n" : String).toByteArray.data.toList
theorem checked13201 : bytes13201=statementBytes 13297 (op13201.map lower) ∧ bytes13201.length=48 := by core033_kernel_decide
def op13202 : List WordIR.Op := [.bxor 13292 13297]
def bytes13202 : Bytes := ("    let r000033f2: u32 = r000033ec ^ r000033f1;\n" : String).toByteArray.data.toList
theorem checked13202 : bytes13202=statementBytes 13298 (op13202.map lower) ∧ bytes13202.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13184,op13185,op13186,op13187,op13188,op13189,op13190,op13191,op13192,op13193,op13194,op13195,op13196,op13197,op13198,op13199,op13200,op13201,op13202]
def chunks : List Bytes := [bytes13184,bytes13185,bytes13186,bytes13187,bytes13188,bytes13189,bytes13190,bytes13191,bytes13192,bytes13193,bytes13194,bytes13195,bytes13196,bytes13197,bytes13198,bytes13199,bytes13200,bytes13201,bytes13202]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13280 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13184.1 (.cons _ _ _ _ _ checked13185.1 (.cons _ _ _ _ _ checked13186.1 (.cons _ _ _ _ _ checked13187.1 (.cons _ _ _ _ _ checked13188.1 (.cons _ _ _ _ _ checked13189.1 (.cons _ _ _ _ _ checked13190.1 (.cons _ _ _ _ _ checked13191.1 (.cons _ _ _ _ _ checked13192.1 (.cons _ _ _ _ _ checked13193.1 (.cons _ _ _ _ _ checked13194.1 (.cons _ _ _ _ _ checked13195.1 (.cons _ _ _ _ _ checked13196.1 (.cons _ _ _ _ _ checked13197.1 (.cons _ _ _ _ _ checked13198.1 (.cons _ _ _ _ _ checked13199.1 (.cons _ _ _ _ _ checked13200.1 (.cons _ _ _ _ _ checked13201.1 (.cons _ _ _ _ _ checked13202.1 (.empty _))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13280 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=19 := rfl
theorem partSize : partBytes.length=877 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13184.2,checked13185.2,checked13186.2,checked13187.2,checked13188.2,checked13189.2,checked13190.2,checked13191.2,checked13192.2,checked13193.2,checked13194.2,checked13195.2,checked13196.2,checked13197.2,checked13198.2,checked13199.2,checked13200.2,checked13201.2,checked13202.2]
  decide
end ArtifactPairedPathRoundGroup206
