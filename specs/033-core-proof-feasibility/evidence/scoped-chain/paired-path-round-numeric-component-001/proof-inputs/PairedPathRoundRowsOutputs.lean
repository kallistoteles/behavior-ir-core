import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData207
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13299 : actualRows13299=WordMatrix.outputRows actualModulus ActualPairedPathRoundIR.program := by core033_kernel_decide
theorem stats13299 : actualRows13299.length=187 ∧ MatrixRowBlocks.rowsWeight actualRows13299=22440 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows13299
theorem partStatsOutputs : partRowsOutputs.length=187 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=22440 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats13299.1,stats13299.2]
  decide
end PairedPathRoundCheckedRows
