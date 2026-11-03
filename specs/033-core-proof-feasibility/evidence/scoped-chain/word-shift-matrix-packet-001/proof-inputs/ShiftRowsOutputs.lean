import ActualShiftIR
import ArtifactShiftBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ShiftInstructionMatrixData1
namespace ShiftCheckedRows
open Core033 ShiftInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows105 : actualRows105=WordMatrix.outputRows actualModulus ActualShiftIR.program := by core033_kernel_decide
theorem stats105 : actualRows105.length=2 ∧ MatrixRowBlocks.rowsWeight actualRows105=240 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows105
theorem partStatsOutputs : partRowsOutputs.length=2 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=240 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats105.1,stats105.2]
  decide
end ShiftCheckedRows
