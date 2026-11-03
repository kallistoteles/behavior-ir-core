import Core033.WordVectorEquality
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualDigestVectorIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨16,[.bxor 0 8,.bnot 16,.bxor 1 9,.bnot 18,.bxor 2 10,.bnot 20,.bxor 3 11,.bnot 22,.bxor 4 12,.bnot 24,.bxor 5 13,.bnot 26,.bxor 6 14,.bnot 28,.bxor 7 15,.bnot 30,.literal (BitVec.ofNat 32 0),.bnot 32,.band 31 33,.bnot 34,.bnot 35,.band 29 36,.bnot 37,.bnot 38,.band 27 39,.bnot 40,.bnot 41,.band 25 42,.bnot 43,.bnot 44,.band 23 45,.bnot 46,.bnot 47,.band 21 48,.bnot 49,.bnot 50,.band 19 51,.bnot 52,.bnot 53,.band 17 54,.bnot 55,.literal (BitVec.ofNat 32 0),.bnot 57,.band 56 58,.literal (BitVec.ofNat 32 0),.bnot 60,.bxor 56 61,.literal (BitVec.ofNat 32 0),.bnot 63,.badd 56 64,.bnot 65,.band 62 66,.bxor 59 67,.shr 68 31,.literal (BitVec.ofNat 32 1),.bxor 69 70],[71]⟩
theorem ir_exact : program=Core033.WordVectorEquality.digestProgram := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualDigestVectorIR
