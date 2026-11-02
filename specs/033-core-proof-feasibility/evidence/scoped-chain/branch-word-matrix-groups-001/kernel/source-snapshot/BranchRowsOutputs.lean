import ActualBranchIR
import ArtifactBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import BranchInstructionMatrixData5
namespace BranchCheckedRows
open Core033 BranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows327 : actualRows327=WordMatrix.outputRows actualModulus ActualBranchIR.program := by core033_kernel_decide
theorem stats327 : actualRows327.length=115 ∧ MatrixRowBlocks.rowsWeight actualRows327=13800 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows327
theorem partStatsOutputs : partRowsOutputs.length=115 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=13800 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats327.1,stats327.2]
  decide
end BranchCheckedRows
