import ActualCounterIR
import ActualCounterBytes
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import CounterInstructionMatrixData5
namespace CounterCheckedRows
open Core033 CounterInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows333 : actualRows333=WordMatrix.outputRows actualModulus ActualCounterIR.program := by core033_kernel_decide
theorem stats333 : actualRows333.length=8 ∧ MatrixRowBlocks.rowsWeight actualRows333=960 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows333
theorem partStatsOutputs : partRowsOutputs.length=8 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=960 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats333.1,stats333.2]
  decide
end CounterCheckedRows
