import ActualCursorIR
import ArtifactCursorBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import CursorInstructionMatrixData1
namespace CursorCheckedRows
open Core033 CursorInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows92 : actualRows92=WordMatrix.outputRows actualModulus ActualCursorIR.program := by core033_kernel_decide
theorem stats92 : actualRows92.length=4 ∧ MatrixRowBlocks.rowsWeight actualRows92=480 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows92
theorem partStatsOutputs : partRowsOutputs.length=4 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=480 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats92.1,stats92.2]
  decide
end CursorCheckedRows
