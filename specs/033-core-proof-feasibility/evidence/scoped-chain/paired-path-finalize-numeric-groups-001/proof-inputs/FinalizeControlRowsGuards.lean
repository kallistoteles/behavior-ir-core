import ActualPairedPathFinalizeIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FinalizeControlInstructionMatrixData6
namespace FinalizeControlCheckedRows
open Core033 FinalizeControlInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows404 : actualRows404=((List.range 16).map (fun index=>WordMatrix.outputBase ActualPairedPathFinalizeIR.program+96+index)).map (fun wire=>SHA256Circuit.literalRow wire true) := by core033_kernel_decide
theorem stats404 : actualRows404.length=16 ∧ MatrixRowBlocks.rowsWeight actualRows404=1920 := by core033_kernel_decide
def partRowsGuards : List R1CS.Row := actualRows404
theorem partStatsGuards : partRowsGuards.length=16 ∧ MatrixRowBlocks.rowsWeight partRowsGuards=1920 := by
  simp only [partRowsGuards,List.length_append,MatrixRowBlocks.rows_weight_append,stats404.1,stats404.2]
  decide
end FinalizeControlCheckedRows
