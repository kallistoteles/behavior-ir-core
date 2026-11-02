import Core033.ControlPrimitives
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualControlIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨7,[.badd 0 2,.badd 1 3,.band 0 2,.bxor 0 2,.badd 0 2,.bnot 11,.band 10 12,.bxor 9 13,.shr 14 31,.badd 8 15,.band 0 2,.bxor 0 2,.badd 0 2,.bnot 19,.band 18 20,.bxor 17 21,.shr 22 31,.bnot 0,.band 2 24,.bnot 0,.bxor 2 26,.bnot 0,.badd 2 28,.bnot 29,.band 27 30,.bxor 25 31,.shr 32 31,.literal (BitVec.ofNat 32 0),.bnot 34,.band 0 35,.literal (BitVec.ofNat 32 0),.bnot 37,.bxor 0 38,.literal (BitVec.ofNat 32 0),.bnot 40,.badd 0 41,.bnot 42,.band 39 43,.bxor 36 44,.shr 45 31,.literal (BitVec.ofNat 32 1),.bxor 46 47,.shr 1 31,.bnot 4,.literal (BitVec.ofNat 32 1),.badd 50 51,.band 52 5,.bnot 4,.literal (BitVec.ofNat 32 1),.badd 54 55,.bnot 56,.band 57 6,.bxor 53 58],[7,16,23,33,48,49,59]⟩
theorem ir_exact : program=ControlPrimitives.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualControlIR
