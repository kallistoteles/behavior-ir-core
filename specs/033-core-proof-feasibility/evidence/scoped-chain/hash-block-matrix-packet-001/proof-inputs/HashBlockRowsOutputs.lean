import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData57
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3680 : actualRows3680=WordMatrix.outputRows actualModulus ActualHashBlockIR.program := by core033_kernel_decide
theorem stats3680 : actualRows3680.length=72 ∧ MatrixRowBlocks.rowsWeight actualRows3680=8640 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows3680
theorem partStatsOutputs : partRowsOutputs.length=72 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=8640 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats3680.1,stats3680.2]
  decide
end HashBlockCheckedRows
