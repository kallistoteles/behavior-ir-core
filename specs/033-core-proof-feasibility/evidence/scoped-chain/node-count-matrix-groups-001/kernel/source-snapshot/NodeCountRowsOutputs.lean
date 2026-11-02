import ActualNodeCountIR
import ArtifactNodeCountBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import NodeCountInstructionMatrixData2
namespace NodeCountCheckedRows
open Core033 NodeCountInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows139 : actualRows139=WordMatrix.outputRows actualModulus ActualNodeCountIR.program := by core033_kernel_decide
theorem stats139 : actualRows139.length=3 ∧ MatrixRowBlocks.rowsWeight actualRows139=360 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows139
theorem partStatsOutputs : partRowsOutputs.length=3 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=360 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats139.1,stats139.2]
  decide
end NodeCountCheckedRows
