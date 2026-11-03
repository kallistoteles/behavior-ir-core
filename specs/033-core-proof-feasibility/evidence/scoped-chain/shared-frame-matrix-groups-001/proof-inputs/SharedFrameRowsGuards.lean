import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData59
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3839 : actualRows3839=((List.range 82).map (fun index=>WordMatrix.outputBase SharedFrameProgram.program+43+index)).map (fun wire=>SHA256Circuit.literalRow wire true) := by core033_kernel_decide
theorem stats3839 : actualRows3839.length=82 ∧ MatrixRowBlocks.rowsWeight actualRows3839=9840 := by core033_kernel_decide
def partRowsGuards : List R1CS.Row := actualRows3839
theorem partStatsGuards : partRowsGuards.length=82 ∧ MatrixRowBlocks.rowsWeight partRowsGuards=9840 := by
  simp only [partRowsGuards,List.length_append,MatrixRowBlocks.rows_weight_append,stats3839.1,stats3839.2]
  decide
end SharedFrameCheckedRows
