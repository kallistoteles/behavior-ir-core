import Core033.ByteCursorProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualCursorIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨3,[.badd 0 2,.badd 0 2,.bnot 4,.literal (BitVec.ofNat 32 1),.badd 5 6,.badd 1 7,.bnot 1,.band 0 9,.bnot 1,.bxor 0 11,.bnot 1,.badd 0 13,.bnot 14,.band 12 15,.bxor 10 16,.shr 17 31,.literal (BitVec.ofNat 32 1),.bxor 18 19,.bnot 0,.literal (BitVec.ofNat 32 1),.badd 21 22,.badd 1 23,.bnot 24,.band 2 25,.bnot 0,.literal (BitVec.ofNat 32 1),.badd 27 28,.badd 1 29,.bnot 30,.bxor 2 31,.bnot 0,.literal (BitVec.ofNat 32 1),.badd 33 34,.badd 1 35,.bnot 36,.badd 2 37,.bnot 38,.band 32 39,.bxor 26 40,.shr 41 31,.literal (BitVec.ofNat 32 1),.bxor 42 43,.band 20 44,.literal (BitVec.ofNat 32 1073741824),.bnot 46,.band 1 47,.literal (BitVec.ofNat 32 1073741824),.bnot 49,.bxor 1 50,.literal (BitVec.ofNat 32 1073741824),.bnot 52,.badd 1 53,.bnot 54,.band 51 55,.bxor 48 56,.shr 57 31,.literal (BitVec.ofNat 32 1),.bxor 58 59,.band 45 60,.badd 0 2,.bnot 62,.literal (BitVec.ofNat 32 1),.badd 63 64,.badd 1 65,.literal (BitVec.ofNat 32 0),.bnot 67,.band 66 68,.badd 0 2,.bnot 70,.literal (BitVec.ofNat 32 1),.badd 71 72,.badd 1 73,.literal (BitVec.ofNat 32 0),.bnot 75,.bxor 74 76,.badd 0 2,.bnot 78,.literal (BitVec.ofNat 32 1),.badd 79 80,.badd 1 81,.literal (BitVec.ofNat 32 0),.bnot 83,.badd 82 84,.bnot 85,.band 77 86,.bxor 69 87,.shr 88 31,.literal (BitVec.ofNat 32 1),.bxor 89 90],[3,8,61,91]⟩
theorem ir_exact : program=Core033.ByteCursorProgram.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualCursorIR
