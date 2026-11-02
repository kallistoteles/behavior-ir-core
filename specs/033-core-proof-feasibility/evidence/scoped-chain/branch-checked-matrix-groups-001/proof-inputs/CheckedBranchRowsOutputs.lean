import ActualCheckedBranchIR
import ArtifactCheckedBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import CheckedBranchInstructionMatrixData9
namespace CheckedBranchCheckedRows
open Core033 CheckedBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows599 : actualRows599=WordMatrix.outputRows actualModulus ActualCheckedBranchIR.program := by core033_kernel_decide
theorem stats599 : actualRows599.length=122 ∧ MatrixRowBlocks.rowsWeight actualRows599=14640 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows599
theorem partStatsOutputs : partRowsOutputs.length=122 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=14640 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats599.1,stats599.2]
  decide
end CheckedBranchCheckedRows
