import ActualPathFrameAdvanceIR
import Core033.PathFrameAdvance
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameAdvanceInstructionMatrixData6
namespace PathFrameAdvanceCheckedRows
open Core033 PathFrameAdvanceInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows389 : actualRows389=WordMatrix.outputRows actualModulus ActualPathFrameAdvanceIR.program := by core033_kernel_decide
theorem stats389 : actualRows389.length=50 ∧ MatrixRowBlocks.rowsWeight actualRows389=6000 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows389
theorem partStatsOutputs : partRowsOutputs.length=50 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=6000 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats389.1,stats389.2]
  decide
end PathFrameAdvanceCheckedRows
