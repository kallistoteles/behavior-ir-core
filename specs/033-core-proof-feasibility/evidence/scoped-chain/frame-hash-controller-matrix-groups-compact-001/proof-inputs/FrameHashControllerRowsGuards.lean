import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData138
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8871 : actualRows8871=((List.range 82).map (fun index=>WordMatrix.outputBase ActualFrameHashControllerIR.program+43+index)).map (fun wire=>SHA256Circuit.literalRow wire true) := by core033_kernel_decide
theorem stats8871 : actualRows8871.length=82 ∧ MatrixRowBlocks.rowsWeight actualRows8871=9840 := by core033_kernel_decide
def partRowsGuards : List R1CS.Row := actualRows8871
theorem partStatsGuards : partRowsGuards.length=82 ∧ MatrixRowBlocks.rowsWeight partRowsGuards=9840 := by
  simp only [partRowsGuards,List.length_append,MatrixRowBlocks.rows_weight_append,stats8871.1,stats8871.2]
  decide
end FrameHashControllerCheckedRows
