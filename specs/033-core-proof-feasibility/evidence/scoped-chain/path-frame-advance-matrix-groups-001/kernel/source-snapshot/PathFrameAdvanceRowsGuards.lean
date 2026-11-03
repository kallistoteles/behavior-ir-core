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
theorem rows390 : actualRows390=((List.range 7).map (fun index=>WordMatrix.outputBase ActualPathFrameAdvanceIR.program+43+index)).map (fun wire=>SHA256Circuit.literalRow wire true) := by core033_kernel_decide
theorem stats390 : actualRows390.length=7 ∧ MatrixRowBlocks.rowsWeight actualRows390=840 := by core033_kernel_decide
def partRowsGuards : List R1CS.Row := actualRows390
theorem partStatsGuards : partRowsGuards.length=7 ∧ MatrixRowBlocks.rowsWeight partRowsGuards=840 := by
  simp only [partRowsGuards,List.length_append,MatrixRowBlocks.rows_weight_append,stats390.1,stats390.2]
  decide
end PathFrameAdvanceCheckedRows
