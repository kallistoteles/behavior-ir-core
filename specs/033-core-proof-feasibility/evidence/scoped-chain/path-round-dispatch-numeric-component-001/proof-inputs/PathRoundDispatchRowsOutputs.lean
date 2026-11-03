import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData195
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12527 : actualRows12527=WordMatrix.outputRows actualModulus ActualPathRoundDispatchIR.program := by core033_kernel_decide
theorem stats12527 : actualRows12527.length=133 ∧ MatrixRowBlocks.rowsWeight actualRows12527=15960 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows12527
theorem partStatsOutputs : partRowsOutputs.length=133 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=15960 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats12527.1,stats12527.2]
  decide
end PathRoundDispatchCheckedRows
