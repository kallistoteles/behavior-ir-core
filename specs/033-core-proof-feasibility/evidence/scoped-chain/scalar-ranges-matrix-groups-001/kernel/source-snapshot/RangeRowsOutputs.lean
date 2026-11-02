import ActualRangeIR
import ArtifactRangeBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import RangeInstructionMatrixData0
namespace RangeCheckedRows
open Core033 RangeInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows55 : actualRows55=WordMatrix.outputRows actualModulus ActualRangeIR.program := by core033_kernel_decide
theorem stats55 : actualRows55.length=3 ∧ MatrixRowBlocks.rowsWeight actualRows55=360 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows55
theorem partStatsOutputs : partRowsOutputs.length=3 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=360 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats55.1,stats55.2]
  decide
end RangeCheckedRows
