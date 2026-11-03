import ActualAddressIR
import ArtifactAddressBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AddressInstructionMatrixData4
namespace AddressCheckedRows
open Core033 AddressInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows265 : actualRows265=WordField.canonicalRows actualModulus 265 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats265 : actualRows265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows265=2892 := by core033_kernel_decide
theorem rows266 : actualRows266=WordField.canonicalRows actualModulus 266 (.band 264 265) := by core033_kernel_decide
theorem stats266 : actualRows266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows266=5124 := by core033_kernel_decide
def partRows4 : List R1CS.Row := actualRows265++actualRows266
def partOps4 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.band 264 265]
theorem partExact4 : partRows4=WordField.rows actualModulus 265 partOps4 := by
  simp only [partRows4,partOps4,WordField.rows,rows265,rows266,List.append_assoc,List.append_nil]
theorem partLength4 : partOps4.length=2 := by decide
theorem partStats4 : partRows4.length=68 ∧ MatrixRowBlocks.rowsWeight partRows4=8016 := by
  simp only [partRows4,List.length_append,MatrixRowBlocks.rows_weight_append,stats265.1,stats265.2,stats266.1,stats266.2]
  decide
end AddressCheckedRows
