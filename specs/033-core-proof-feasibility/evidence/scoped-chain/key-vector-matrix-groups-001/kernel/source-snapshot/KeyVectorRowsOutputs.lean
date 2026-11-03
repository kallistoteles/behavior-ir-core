import ActualKeyVectorIR
import Core033.WordVectorEquality
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import KeyVectorInstructionMatrixData5
namespace KeyVectorCheckedRows
open Core033 KeyVectorInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows352 : actualRows352=WordMatrix.outputRows actualModulus ActualKeyVectorIR.program := by core033_kernel_decide
theorem stats352 : actualRows352.length=1 ∧ MatrixRowBlocks.rowsWeight actualRows352=120 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows352
theorem partStatsOutputs : partRowsOutputs.length=1 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=120 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats352.1,stats352.2]
  decide
end KeyVectorCheckedRows
