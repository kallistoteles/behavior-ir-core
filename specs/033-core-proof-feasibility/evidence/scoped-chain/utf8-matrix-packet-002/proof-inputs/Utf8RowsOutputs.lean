import ActualUtf8IR
import ArtifactUtf8Blocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import Utf8InstructionMatrixData8
namespace Utf8CheckedRows
open Core033 Utf8InstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows528 : actualRows528=WordMatrix.outputRows actualModulus ActualUtf8IR.program := by core033_kernel_decide
theorem stats528 : actualRows528.length=6 ∧ MatrixRowBlocks.rowsWeight actualRows528=720 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows528
theorem partStatsOutputs : partRowsOutputs.length=6 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=720 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats528.1,stats528.2]
  decide
end Utf8CheckedRows
