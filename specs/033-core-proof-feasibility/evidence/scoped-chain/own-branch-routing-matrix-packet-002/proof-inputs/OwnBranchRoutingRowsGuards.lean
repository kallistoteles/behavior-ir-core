import ActualOwnBranchRoutingIR
import Core033.OwnBranchRouting
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import OwnBranchRoutingInstructionMatrixData1
namespace OwnBranchRoutingCheckedRows
open Core033 OwnBranchRoutingInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows77 : actualRows77=((List.range 2).map (fun index=>WordMatrix.outputBase ActualOwnBranchRoutingIR.program+43+index)).map (fun wire=>SHA256Circuit.literalRow wire true) := by core033_kernel_decide
theorem stats77 : actualRows77.length=2 ∧ MatrixRowBlocks.rowsWeight actualRows77=240 := by core033_kernel_decide
def partRowsGuards : List R1CS.Row := actualRows77
theorem partStatsGuards : partRowsGuards.length=2 ∧ MatrixRowBlocks.rowsWeight partRowsGuards=240 := by
  simp only [partRowsGuards,List.length_append,MatrixRowBlocks.rows_weight_append,stats77.1,stats77.2]
  decide
end OwnBranchRoutingCheckedRows
