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
theorem rows14103 : actualRows14103=((List.range 91).map (fun index=>WordMatrix.outputBase QuotedAuthenticatedBranchRoundIR.program+118+index)).map (fun wire=>SHA256Circuit.literalRow wire true) := by core033_kernel_decide
theorem stats14103 : actualRows14103.length=91 ∧ MatrixRowBlocks.rowsWeight actualRows14103=10920 := by core033_kernel_decide
def partRowsGuards : List R1CS.Row := actualRows14103
theorem partStatsGuards : partRowsGuards.length=91 ∧ MatrixRowBlocks.rowsWeight partRowsGuards=10920 := by
  simp only [partRowsGuards,List.length_append,MatrixRowBlocks.rows_weight_append,stats14103.1,stats14103.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
