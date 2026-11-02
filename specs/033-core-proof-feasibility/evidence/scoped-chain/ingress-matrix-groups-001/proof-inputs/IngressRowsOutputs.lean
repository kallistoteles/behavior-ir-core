import ActualIngressIR
import ArtifactIngressBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import IngressInstructionMatrixData20
namespace IngressCheckedRows
open Core033 IngressInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1312 : actualRows1312=WordMatrix.outputRows actualModulus ActualIngressIR.program := by core033_kernel_decide
theorem stats1312 : actualRows1312.length=80 ∧ MatrixRowBlocks.rowsWeight actualRows1312=9600 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows1312
theorem partStatsOutputs : partRowsOutputs.length=80 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=9600 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats1312.1,stats1312.2]
  decide
end IngressCheckedRows
