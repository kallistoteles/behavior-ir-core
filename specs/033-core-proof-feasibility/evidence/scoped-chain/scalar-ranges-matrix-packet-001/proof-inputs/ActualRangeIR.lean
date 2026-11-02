import Core033.ScalarRanges
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualRangeIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨1,[.shr 0 1,.literal (BitVec.ofNat 32 0),.bnot 2,.band 1 3,.shr 0 1,.literal (BitVec.ofNat 32 0),.bnot 6,.bxor 5 7,.shr 0 1,.literal (BitVec.ofNat 32 0),.bnot 10,.badd 9 11,.bnot 12,.band 8 13,.bxor 4 14,.shr 15 31,.literal (BitVec.ofNat 32 1),.bxor 16 17,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 20,.band 19 21,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 24,.bxor 23 25,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 28,.badd 27 29,.bnot 30,.band 26 31,.bxor 22 32,.shr 33 31,.literal (BitVec.ofNat 32 1),.bxor 34 35,.shr 0 16,.literal (BitVec.ofNat 32 0),.bnot 38,.band 37 39,.shr 0 16,.literal (BitVec.ofNat 32 0),.bnot 42,.bxor 41 43,.shr 0 16,.literal (BitVec.ofNat 32 0),.bnot 46,.badd 45 47,.bnot 48,.band 44 49,.bxor 40 50,.shr 51 31,.literal (BitVec.ofNat 32 1),.bxor 52 53],[18,36,54]⟩
theorem ir_exact : program=Core033.ScalarRanges.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualRangeIR
