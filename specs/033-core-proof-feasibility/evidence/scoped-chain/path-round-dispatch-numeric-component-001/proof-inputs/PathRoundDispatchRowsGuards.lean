import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData195
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12528 : actualRows12528=((List.range 90).map (fun index=>WordMatrix.outputBase ActualPathRoundDispatchIR.program+43+index)).map (fun wire=>SHA256Circuit.literalRow wire true) := by core033_kernel_decide
theorem stats12528 : actualRows12528.length=90 ∧ MatrixRowBlocks.rowsWeight actualRows12528=10800 := by core033_kernel_decide
def partRowsGuards : List R1CS.Row := actualRows12528
theorem partStatsGuards : partRowsGuards.length=90 ∧ MatrixRowBlocks.rowsWeight partRowsGuards=10800 := by
  simp only [partRowsGuards,List.length_append,MatrixRowBlocks.rows_weight_append,stats12528.1,stats12528.2]
  decide
end PathRoundDispatchCheckedRows
