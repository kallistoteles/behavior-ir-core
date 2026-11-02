import Core033.PaddingWords
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualPaddingIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨1,[.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 2,.bnot 3,.literal (BitVec.ofNat 32 1),.badd 4 5,.badd 1 6,.literal (BitVec.ofNat 32 63),.band 7 8,.literal (BitVec.ofNat 32 9),.badd 0 10,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 13,.bnot 14,.literal (BitVec.ofNat 32 1),.badd 15 16,.badd 12 17,.literal (BitVec.ofNat 32 63),.band 18 19,.badd 11 20,.rotr 0 29,.literal (BitVec.ofNat 32 4294967288),.band 22 23,.shr 0 29,.literal (BitVec.ofNat 32 9),.badd 0 26,.literal (BitVec.ofNat 32 119),.literal (BitVec.ofNat 32 63),.band 0 29,.bnot 30,.literal (BitVec.ofNat 32 1),.badd 31 32,.badd 28 33,.literal (BitVec.ofNat 32 63),.band 34 35,.badd 27 36,.shr 37 6,.literal (BitVec.ofNat 32 1073741825),.bnot 0,.band 39 40,.literal (BitVec.ofNat 32 1073741825),.bnot 0,.bxor 42 43,.literal (BitVec.ofNat 32 1073741825),.bnot 0,.badd 45 46,.bnot 47,.band 44 48,.bxor 41 49,.shr 50 31],[9,21,24,25,38,51]⟩
theorem ir_exact : program=PaddingWords.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualPaddingIR
