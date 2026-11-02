import ActualUtf8IR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactUtf8Group8
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op512 : List WordIR.Op := [.band 511 512]
def bytes512 : Bytes := ("    let r00000201: u32 = r000001ff & r00000200;\n" : String).toByteArray.data.toList
theorem checked512 : bytes512=statementBytes 513 (op512.map lower) ∧ bytes512.length=48 := by core033_kernel_decide
def op513 : List WordIR.Op := [.literal (BitVec.ofNat 32 57344)]
def bytes513 : Bytes := ("    let r00000202: u32 = 0x0000e000_u32;\n" : String).toByteArray.data.toList
theorem checked513 : bytes513=statementBytes 514 (op513.map lower) ∧ bytes513.length=41 := by core033_kernel_decide
def op514 : List WordIR.Op := [.bnot 0]
def bytes514 : Bytes := ("    let r00000203: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked514 : bytes514=statementBytes 515 (op514.map lower) ∧ bytes514.length=37 := by core033_kernel_decide
def op515 : List WordIR.Op := [.bxor 514 515]
def bytes515 : Bytes := ("    let r00000204: u32 = r00000202 ^ r00000203;\n" : String).toByteArray.data.toList
theorem checked515 : bytes515=statementBytes 516 (op515.map lower) ∧ bytes515.length=48 := by core033_kernel_decide
def op516 : List WordIR.Op := [.literal (BitVec.ofNat 32 57344)]
def bytes516 : Bytes := ("    let r00000205: u32 = 0x0000e000_u32;\n" : String).toByteArray.data.toList
theorem checked516 : bytes516=statementBytes 517 (op516.map lower) ∧ bytes516.length=41 := by core033_kernel_decide
def op517 : List WordIR.Op := [.bnot 0]
def bytes517 : Bytes := ("    let r00000206: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked517 : bytes517=statementBytes 518 (op517.map lower) ∧ bytes517.length=37 := by core033_kernel_decide
def op518 : List WordIR.Op := [.badd 517 518]
def bytes518 : Bytes := ("    let r00000207: u32 = r00000205.wrapping_add(r00000206);\n" : String).toByteArray.data.toList
theorem checked518 : bytes518=statementBytes 519 (op518.map lower) ∧ bytes518.length=60 := by core033_kernel_decide
def op519 : List WordIR.Op := [.bnot 519]
def bytes519 : Bytes := ("    let r00000208: u32 = !r00000207;\n" : String).toByteArray.data.toList
theorem checked519 : bytes519=statementBytes 520 (op519.map lower) ∧ bytes519.length=37 := by core033_kernel_decide
def op520 : List WordIR.Op := [.band 516 520]
def bytes520 : Bytes := ("    let r00000209: u32 = r00000204 & r00000208;\n" : String).toByteArray.data.toList
theorem checked520 : bytes520=statementBytes 521 (op520.map lower) ∧ bytes520.length=48 := by core033_kernel_decide
def op521 : List WordIR.Op := [.bxor 513 521]
def bytes521 : Bytes := ("    let r0000020a: u32 = r00000201 ^ r00000209;\n" : String).toByteArray.data.toList
theorem checked521 : bytes521=statementBytes 522 (op521.map lower) ∧ bytes521.length=48 := by core033_kernel_decide
def op522 : List WordIR.Op := [.shr 522 31]
def bytes522 : Bytes := ("    let r0000020b: u32 = r0000020a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked522 : bytes522=statementBytes 523 (op522.map lower) ∧ bytes522.length=54 := by core033_kernel_decide
def op523 : List WordIR.Op := [.bxor 510 523]
def bytes523 : Bytes := ("    let r0000020c: u32 = r000001fe ^ r0000020b;\n" : String).toByteArray.data.toList
theorem checked523 : bytes523=statementBytes 524 (op523.map lower) ∧ bytes523.length=48 := by core033_kernel_decide
def op524 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes524 : Bytes := ("    let r0000020d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked524 : bytes524=statementBytes 525 (op524.map lower) ∧ bytes524.length=41 := by core033_kernel_decide
def op525 : List WordIR.Op := [.bxor 524 525]
def bytes525 : Bytes := ("    let r0000020e: u32 = r0000020c ^ r0000020d;\n" : String).toByteArray.data.toList
theorem checked525 : bytes525=statementBytes 526 (op525.map lower) ∧ bytes525.length=48 := by core033_kernel_decide
def op526 : List WordIR.Op := [.band 497 526]
def bytes526 : Bytes := ("    let r0000020f: u32 = r000001f1 & r0000020e;\n" : String).toByteArray.data.toList
theorem checked526 : bytes526=statementBytes 527 (op526.map lower) ∧ bytes526.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op512,op513,op514,op515,op516,op517,op518,op519,op520,op521,op522,op523,op524,op525,op526]
def chunks : List Bytes := [bytes512,bytes513,bytes514,bytes515,bytes516,bytes517,bytes518,bytes519,bytes520,bytes521,bytes522,bytes523,bytes524,bytes525,bytes526]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 513 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked512.1 (.cons _ _ _ _ _ checked513.1 (.cons _ _ _ _ _ checked514.1 (.cons _ _ _ _ _ checked515.1 (.cons _ _ _ _ _ checked516.1 (.cons _ _ _ _ _ checked517.1 (.cons _ _ _ _ _ checked518.1 (.cons _ _ _ _ _ checked519.1 (.cons _ _ _ _ _ checked520.1 (.cons _ _ _ _ _ checked521.1 (.cons _ _ _ _ _ checked522.1 (.cons _ _ _ _ _ checked523.1 (.cons _ _ _ _ _ checked524.1 (.cons _ _ _ _ _ checked525.1 (.cons _ _ _ _ _ checked526.1 (.empty _))))))))))))))))
theorem partChecked : partBytes=statementBytes 513 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=15 := rfl
theorem partSize : partBytes.length=684 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked512.2,checked513.2,checked514.2,checked515.2,checked516.2,checked517.2,checked518.2,checked519.2,checked520.2,checked521.2,checked522.2,checked523.2,checked524.2,checked525.2,checked526.2]
  decide
end ArtifactUtf8Group8
