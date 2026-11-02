import Core033.LengthBytes
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ActualLengthIR
open Core033
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def program : WordIR.Program := ⟨1,[.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.shr 0 29,.shr 0 21,.literal (BitVec.ofNat 32 255),.band 5 6,.shr 0 13,.literal (BitVec.ofNat 32 255),.band 8 9,.shr 0 5,.literal (BitVec.ofNat 32 255),.band 11 12,.rotr 0 29,.literal (BitVec.ofNat 32 4294967288),.band 14 15,.literal (BitVec.ofNat 32 255),.band 16 17],[1,2,3,4,7,10,13,18]⟩
theorem ir_exact : program=LengthBytes.program := by core033_kernel_decide
theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide
end ActualLengthIR
