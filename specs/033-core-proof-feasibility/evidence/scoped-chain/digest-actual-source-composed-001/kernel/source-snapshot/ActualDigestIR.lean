import Core033.DigestWords
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualDigestIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨8,[.rotr 0 24,.literal (BitVec.ofNat 32 16711935),.band 8 9,.rotr 0 8,.literal (BitVec.ofNat 32 4278255360),.band 11 12,.bxor 10 13,.rotr 1 24,.literal (BitVec.ofNat 32 16711935),.band 15 16,.rotr 1 8,.literal (BitVec.ofNat 32 4278255360),.band 18 19,.bxor 17 20,.rotr 2 24,.literal (BitVec.ofNat 32 16711935),.band 22 23,.rotr 2 8,.literal (BitVec.ofNat 32 4278255360),.band 25 26,.bxor 24 27,.rotr 3 24,.literal (BitVec.ofNat 32 16711935),.band 29 30,.rotr 3 8,.literal (BitVec.ofNat 32 4278255360),.band 32 33,.bxor 31 34,.rotr 4 24,.literal (BitVec.ofNat 32 16711935),.band 36 37,.rotr 4 8,.literal (BitVec.ofNat 32 4278255360),.band 39 40,.bxor 38 41,.rotr 5 24,.literal (BitVec.ofNat 32 16711935),.band 43 44,.rotr 5 8,.literal (BitVec.ofNat 32 4278255360),.band 46 47,.bxor 45 48,.rotr 6 24,.literal (BitVec.ofNat 32 16711935),.band 50 51,.rotr 6 8,.literal (BitVec.ofNat 32 4278255360),.band 53 54,.bxor 52 55,.rotr 7 24,.literal (BitVec.ofNat 32 16711935),.band 57 58,.rotr 7 8,.literal (BitVec.ofNat 32 4278255360),.band 60 61,.bxor 59 62],[14,21,28,35,42,49,56,63]⟩
theorem ir_exact : program=DigestWords.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualDigestIR
