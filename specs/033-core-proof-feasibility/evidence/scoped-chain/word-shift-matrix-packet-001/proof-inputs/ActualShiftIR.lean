import Core033.WordShiftProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualShiftIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨2,[.shr 1 0,.literal (BitVec.ofNat 32 1),.band 2 3,.bnot 4,.literal (BitVec.ofNat 32 1),.badd 5 6,.shr 0 1,.band 7 8,.shr 1 0,.literal (BitVec.ofNat 32 1),.band 10 11,.bnot 12,.literal (BitVec.ofNat 32 1),.badd 13 14,.bnot 15,.band 16 0,.bxor 9 17,.shr 1 1,.literal (BitVec.ofNat 32 1),.band 19 20,.bnot 21,.literal (BitVec.ofNat 32 1),.badd 22 23,.shr 18 2,.band 24 25,.shr 1 1,.literal (BitVec.ofNat 32 1),.band 27 28,.bnot 29,.literal (BitVec.ofNat 32 1),.badd 30 31,.bnot 32,.band 33 18,.bxor 26 34,.shr 1 2,.literal (BitVec.ofNat 32 1),.band 36 37,.bnot 38,.literal (BitVec.ofNat 32 1),.badd 39 40,.shr 35 4,.band 41 42,.shr 1 2,.literal (BitVec.ofNat 32 1),.band 44 45,.bnot 46,.literal (BitVec.ofNat 32 1),.badd 47 48,.bnot 49,.band 50 35,.bxor 43 51,.shr 1 3,.literal (BitVec.ofNat 32 1),.band 53 54,.bnot 55,.literal (BitVec.ofNat 32 1),.badd 56 57,.shr 52 8,.band 58 59,.shr 1 3,.literal (BitVec.ofNat 32 1),.band 61 62,.bnot 63,.literal (BitVec.ofNat 32 1),.badd 64 65,.bnot 66,.band 67 52,.bxor 60 68,.shr 1 4,.literal (BitVec.ofNat 32 1),.band 70 71,.bnot 72,.literal (BitVec.ofNat 32 1),.badd 73 74,.shr 69 16,.band 75 76,.shr 1 4,.literal (BitVec.ofNat 32 1),.band 78 79,.bnot 80,.literal (BitVec.ofNat 32 1),.badd 81 82,.bnot 83,.band 84 69,.bxor 77 85,.shr 1 5,.literal (BitVec.ofNat 32 0),.bnot 88,.band 87 89,.shr 1 5,.literal (BitVec.ofNat 32 0),.bnot 92,.bxor 91 93,.shr 1 5,.literal (BitVec.ofNat 32 0),.bnot 96,.badd 95 97,.bnot 98,.band 94 99,.bxor 90 100,.shr 101 31,.literal (BitVec.ofNat 32 1),.bxor 102 103],[86,104]⟩
theorem ir_exact : program=Core033.WordShiftProgram.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualShiftIR
