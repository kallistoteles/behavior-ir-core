import Core033.SignedProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualSignedIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨2,[.shr 1 31,.literal (BitVec.ofNat 32 1),.bxor 2 3,.literal (BitVec.ofNat 32 0),.bnot 5,.band 0 6,.literal (BitVec.ofNat 32 0),.bnot 8,.bxor 0 9,.literal (BitVec.ofNat 32 0),.bnot 11,.badd 0 12,.bnot 13,.band 10 14,.bxor 7 15,.shr 16 31,.literal (BitVec.ofNat 32 1),.bxor 17 18,.literal (BitVec.ofNat 32 0),.bnot 20,.band 1 21,.literal (BitVec.ofNat 32 0),.bnot 23,.bxor 1 24,.literal (BitVec.ofNat 32 0),.bnot 26,.badd 1 27,.bnot 28,.band 25 29,.bxor 22 30,.shr 31 31,.literal (BitVec.ofNat 32 1),.bxor 32 33,.band 19 34,.literal (BitVec.ofNat 32 1),.bxor 35 36,.band 4 37],[38]⟩
theorem ir_exact : program=SignedProgram.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualSignedIR
