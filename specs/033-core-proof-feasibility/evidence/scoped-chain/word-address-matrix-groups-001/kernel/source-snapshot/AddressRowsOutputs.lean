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
theorem rows267 : actualRows267=WordMatrix.outputRows actualModulus ActualAddressIR.program := by core033_kernel_decide
theorem stats267 : actualRows267.length=4 ∧ MatrixRowBlocks.rowsWeight actualRows267=480 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows267
theorem partStatsOutputs : partRowsOutputs.length=4 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=480 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats267.1,stats267.2]
  decide
end AddressCheckedRows
