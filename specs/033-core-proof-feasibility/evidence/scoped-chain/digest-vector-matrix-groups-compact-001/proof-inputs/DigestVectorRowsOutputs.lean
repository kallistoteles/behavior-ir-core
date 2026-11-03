import ActualDigestVectorIR
import Core033.WordVectorEquality
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import DigestVectorInstructionMatrixData1
namespace DigestVectorCheckedRows
open Core033 DigestVectorInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows72 : actualRows72=WordMatrix.outputRows actualModulus ActualDigestVectorIR.program := by core033_kernel_decide
theorem stats72 : actualRows72.length=1 ∧ MatrixRowBlocks.rowsWeight actualRows72=120 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows72
theorem partStatsOutputs : partRowsOutputs.length=1 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=120 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats72.1,stats72.2]
  decide
end DigestVectorCheckedRows
