import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData220
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows14102 : actualRows14102=WordMatrix.outputRows actualModulus QuotedAuthenticatedBranchRoundIR.program := by core033_kernel_decide
theorem stats14102 : actualRows14102.length=209 ∧ MatrixRowBlocks.rowsWeight actualRows14102=25080 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows14102
theorem partStatsOutputs : partRowsOutputs.length=209 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=25080 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats14102.1,stats14102.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
