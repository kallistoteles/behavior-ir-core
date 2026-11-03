import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData12
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows808 : actualRows808=WordMatrix.outputRows actualModulus ActualParentBranchIR.program := by core033_kernel_decide
theorem stats808 : actualRows808.length=127 ∧ MatrixRowBlocks.rowsWeight actualRows808=15240 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows808
theorem partStatsOutputs : partRowsOutputs.length=127 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=15240 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats808.1,stats808.2]
  decide
end ParentBranchCheckedRows
