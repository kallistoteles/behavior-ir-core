import ActualPairedPathFinalizeIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FinalizeControlInstructionMatrixData6
namespace FinalizeControlCheckedRows
open Core033 FinalizeControlInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows403 : actualRows403=WordMatrix.outputRows actualModulus ActualPairedPathFinalizeIR.program := by core033_kernel_decide
theorem stats403 : actualRows403.length=112 ∧ MatrixRowBlocks.rowsWeight actualRows403=13440 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows403
theorem partStatsOutputs : partRowsOutputs.length=112 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=13440 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats403.1,stats403.2]
  decide
end FinalizeControlCheckedRows
