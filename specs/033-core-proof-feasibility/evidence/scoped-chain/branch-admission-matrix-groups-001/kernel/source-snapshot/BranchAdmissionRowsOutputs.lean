import ActualBranchAdmissionIR
import ArtifactBranchAdmissionBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import BranchAdmissionInstructionMatrixData4
namespace BranchAdmissionCheckedRows
open Core033 BranchAdmissionInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows298 : actualRows298=WordMatrix.outputRows actualModulus ActualBranchAdmissionIR.program := by core033_kernel_decide
theorem stats298 : actualRows298.length=7 ∧ MatrixRowBlocks.rowsWeight actualRows298=840 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows298
theorem partStatsOutputs : partRowsOutputs.length=7 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=840 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats298.1,stats298.2]
  decide
end BranchAdmissionCheckedRows
