import ActualIntegerIR
import ArtifactIntegerBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import IntegerInstructionMatrixData2
namespace IntegerCheckedRows
open Core033 IntegerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows164 : actualRows164=WordMatrix.outputRows actualModulus ActualIntegerIR.program := by core033_kernel_decide
theorem stats164 : actualRows164.length=10 ∧ MatrixRowBlocks.rowsWeight actualRows164=1200 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows164
theorem partStatsOutputs : partRowsOutputs.length=10 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=1200 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats164.1,stats164.2]
  decide
end IntegerCheckedRows
