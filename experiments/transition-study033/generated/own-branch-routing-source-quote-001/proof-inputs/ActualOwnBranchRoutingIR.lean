import Core033.OwnBranchRouting
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualOwnBranchRoutingIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨33,[.literal (BitVec.ofNat 32 4294967295),.badd 0 33,.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 1),.literal (BitVec.ofNat 32 1),.literal (BitVec.ofNat 32 0),.bnot 45,.band 0 46,.literal (BitVec.ofNat 32 0),.bnot 48,.bxor 0 49,.literal (BitVec.ofNat 32 0),.bnot 51,.badd 0 52,.bnot 53,.band 50 54,.bxor 47 55,.shr 56 31,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 59,.band 58 60,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 63,.bxor 62 64,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 67,.badd 66 68,.bnot 69,.band 65 70,.bxor 61 71,.shr 72 31,.literal (BitVec.ofNat 32 1),.bxor 73 74],[24,1,34,35,36,37,38,39,40,41,42,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,43,23,44,25,26,27,28,29,30,31,32,57,75]⟩
theorem ir_exact : program=Core033.OwnBranchRouting.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualOwnBranchRoutingIR
