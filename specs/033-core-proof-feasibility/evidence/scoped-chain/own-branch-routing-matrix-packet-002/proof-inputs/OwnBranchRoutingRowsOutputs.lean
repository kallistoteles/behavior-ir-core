import ActualOwnBranchRoutingIR
import Core033.OwnBranchRouting
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import OwnBranchRoutingInstructionMatrixData1
namespace OwnBranchRoutingCheckedRows
open Core033 OwnBranchRoutingInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows76 : actualRows76=WordMatrix.outputRows actualModulus ActualOwnBranchRoutingIR.program := by core033_kernel_decide
theorem stats76 : actualRows76.length=45 ∧ MatrixRowBlocks.rowsWeight actualRows76=5400 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows76
theorem partStatsOutputs : partRowsOutputs.length=45 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=5400 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats76.1,stats76.2]
  decide
end OwnBranchRoutingCheckedRows
