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
theorem rows8870 : actualRows8870=WordMatrix.outputRows actualModulus ActualFrameHashControllerIR.program := by core033_kernel_decide
theorem stats8870 : actualRows8870.length=125 ∧ MatrixRowBlocks.rowsWeight actualRows8870=15000 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows8870
theorem partStatsOutputs : partRowsOutputs.length=125 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=15000 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats8870.1,stats8870.2]
  decide
end FrameHashControllerCheckedRows
