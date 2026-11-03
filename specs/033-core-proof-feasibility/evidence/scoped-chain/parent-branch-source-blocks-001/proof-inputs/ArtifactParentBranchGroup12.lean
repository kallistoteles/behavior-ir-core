import ActualParentBranchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactParentBranchGroup12
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op768 : List WordIR.Op := [.bnot 793]
def bytes768 : Bytes := ("    let r0000031a: u32 = !r00000319;\n" : String).toByteArray.data.toList
theorem checked768 : bytes768=statementBytes 794 (op768.map lower) ∧ bytes768.length=37 := by core033_kernel_decide
def op769 : List WordIR.Op := [.bxor 792 794]
def bytes769 : Bytes := ("    let r0000031b: u32 = r00000318 ^ r0000031a;\n" : String).toByteArray.data.toList
theorem checked769 : bytes769=statementBytes 795 (op769.map lower) ∧ bytes769.length=48 := by core033_kernel_decide
def op770 : List WordIR.Op := [.badd 18 20]
def bytes770 : Bytes := ("    let r0000031c: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked770 : bytes770=statementBytes 796 (op770.map lower) ∧ bytes770.length=60 := by core033_kernel_decide
def op771 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes771 : Bytes := ("    let r0000031d: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked771 : bytes771=statementBytes 797 (op771.map lower) ∧ bytes771.length=41 := by core033_kernel_decide
def op772 : List WordIR.Op := [.bnot 797]
def bytes772 : Bytes := ("    let r0000031e: u32 = !r0000031d;\n" : String).toByteArray.data.toList
theorem checked772 : bytes772=statementBytes 798 (op772.map lower) ∧ bytes772.length=37 := by core033_kernel_decide
def op773 : List WordIR.Op := [.badd 796 798]
def bytes773 : Bytes := ("    let r0000031f: u32 = r0000031c.wrapping_add(r0000031e);\n" : String).toByteArray.data.toList
theorem checked773 : bytes773=statementBytes 799 (op773.map lower) ∧ bytes773.length=60 := by core033_kernel_decide
def op774 : List WordIR.Op := [.bnot 799]
def bytes774 : Bytes := ("    let r00000320: u32 = !r0000031f;\n" : String).toByteArray.data.toList
theorem checked774 : bytes774=statementBytes 800 (op774.map lower) ∧ bytes774.length=37 := by core033_kernel_decide
def op775 : List WordIR.Op := [.band 795 800]
def bytes775 : Bytes := ("    let r00000321: u32 = r0000031b & r00000320;\n" : String).toByteArray.data.toList
theorem checked775 : bytes775=statementBytes 801 (op775.map lower) ∧ bytes775.length=48 := by core033_kernel_decide
def op776 : List WordIR.Op := [.bxor 791 801]
def bytes776 : Bytes := ("    let r00000322: u32 = r00000317 ^ r00000321;\n" : String).toByteArray.data.toList
theorem checked776 : bytes776=statementBytes 802 (op776.map lower) ∧ bytes776.length=48 := by core033_kernel_decide
def op777 : List WordIR.Op := [.shr 802 31]
def bytes777 : Bytes := ("    let r00000323: u32 = r00000322 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked777 : bytes777=statementBytes 803 (op777.map lower) ∧ bytes777.length=54 := by core033_kernel_decide
def op778 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes778 : Bytes := ("    let r00000324: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked778 : bytes778=statementBytes 804 (op778.map lower) ∧ bytes778.length=41 := by core033_kernel_decide
def op779 : List WordIR.Op := [.bxor 803 804]
def bytes779 : Bytes := ("    let r00000325: u32 = r00000323 ^ r00000324;\n" : String).toByteArray.data.toList
theorem checked779 : bytes779=statementBytes 805 (op779.map lower) ∧ bytes779.length=48 := by core033_kernel_decide
def op780 : List WordIR.Op := [.band 787 805]
def bytes780 : Bytes := ("    let r00000326: u32 = r00000313 & r00000325;\n" : String).toByteArray.data.toList
theorem checked780 : bytes780=statementBytes 806 (op780.map lower) ∧ bytes780.length=48 := by core033_kernel_decide
def op781 : List WordIR.Op := [.band 745 806]
def bytes781 : Bytes := ("    let r00000327: u32 = r000002e9 & r00000326;\n" : String).toByteArray.data.toList
theorem checked781 : bytes781=statementBytes 807 (op781.map lower) ∧ bytes781.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op768,op769,op770,op771,op772,op773,op774,op775,op776,op777,op778,op779,op780,op781]
def chunks : List Bytes := [bytes768,bytes769,bytes770,bytes771,bytes772,bytes773,bytes774,bytes775,bytes776,bytes777,bytes778,bytes779,bytes780,bytes781]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 794 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked768.1 (.cons _ _ _ _ _ checked769.1 (.cons _ _ _ _ _ checked770.1 (.cons _ _ _ _ _ checked771.1 (.cons _ _ _ _ _ checked772.1 (.cons _ _ _ _ _ checked773.1 (.cons _ _ _ _ _ checked774.1 (.cons _ _ _ _ _ checked775.1 (.cons _ _ _ _ _ checked776.1 (.cons _ _ _ _ _ checked777.1 (.cons _ _ _ _ _ checked778.1 (.cons _ _ _ _ _ checked779.1 (.cons _ _ _ _ _ checked780.1 (.cons _ _ _ _ _ checked781.1 (.empty _)))))))))))))))
theorem partChecked : partBytes=statementBytes 794 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=14 := rfl
theorem partSize : partBytes.length=655 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked768.2,checked769.2,checked770.2,checked771.2,checked772.2,checked773.2,checked774.2,checked775.2,checked776.2,checked777.2,checked778.2,checked779.2,checked780.2,checked781.2]
  decide
end ArtifactParentBranchGroup12
