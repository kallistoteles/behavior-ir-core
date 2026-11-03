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
theorem rows3838 : actualRows3838=WordMatrix.outputRows actualModulus SharedFrameProgram.program := by core033_kernel_decide
theorem stats3838 : actualRows3838.length=125 ∧ MatrixRowBlocks.rowsWeight actualRows3838=15000 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows3838
theorem partStatsOutputs : partRowsOutputs.length=125 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=15000 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats3838.1,stats3838.2]
  decide
end SharedFrameCheckedRows
