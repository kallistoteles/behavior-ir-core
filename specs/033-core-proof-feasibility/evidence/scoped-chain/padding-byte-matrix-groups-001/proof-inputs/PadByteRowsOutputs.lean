import ActualPadByteIR
import ArtifactPadByteBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PadByteInstructionMatrixData12
namespace PadByteCheckedRows
open Core033 PadByteInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows823 : actualRows823=WordMatrix.outputRows actualModulus ActualPadByteIR.program := by core033_kernel_decide
theorem stats823 : actualRows823.length=4 ∧ MatrixRowBlocks.rowsWeight actualRows823=480 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows823
theorem partStatsOutputs : partRowsOutputs.length=4 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=480 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats823.1,stats823.2]
  decide
end PadByteCheckedRows
