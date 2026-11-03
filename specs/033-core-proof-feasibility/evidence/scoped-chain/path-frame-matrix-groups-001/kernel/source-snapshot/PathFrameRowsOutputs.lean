import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData21
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1391 : actualRows1391=WordMatrix.outputRows actualModulus ActualPathFrameIR.program := by core033_kernel_decide
theorem stats1391 : actualRows1391.length=133 ∧ MatrixRowBlocks.rowsWeight actualRows1391=15960 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows1391
theorem partStatsOutputs : partRowsOutputs.length=133 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=15960 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats1391.1,stats1391.2]
  decide
end PathFrameCheckedRows
