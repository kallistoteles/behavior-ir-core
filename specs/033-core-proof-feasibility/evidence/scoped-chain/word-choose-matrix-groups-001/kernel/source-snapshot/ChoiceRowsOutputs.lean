import ActualChoiceIR
import ArtifactChoiceBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ChoiceInstructionMatrixData2
namespace ChoiceCheckedRows
open Core033 ChoiceInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows139 : actualRows139=WordMatrix.outputRows actualModulus ActualChoiceIR.program := by core033_kernel_decide
theorem stats139 : actualRows139.length=2 ∧ MatrixRowBlocks.rowsWeight actualRows139=240 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows139
theorem partStatsOutputs : partRowsOutputs.length=2 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=240 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats139.1,stats139.2]
  decide
end ChoiceCheckedRows
