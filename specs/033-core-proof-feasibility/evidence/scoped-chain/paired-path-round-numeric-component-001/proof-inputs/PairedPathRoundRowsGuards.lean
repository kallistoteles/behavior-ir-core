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
theorem rows13300 : actualRows13300=((List.range 91).map (fun index=>WordMatrix.outputBase ActualPairedPathRoundIR.program+96+index)).map (fun wire=>SHA256Circuit.literalRow wire true) := by core033_kernel_decide
theorem stats13300 : actualRows13300.length=91 ∧ MatrixRowBlocks.rowsWeight actualRows13300=10920 := by core033_kernel_decide
def partRowsGuards : List R1CS.Row := actualRows13300
theorem partStatsGuards : partRowsGuards.length=91 ∧ MatrixRowBlocks.rowsWeight partRowsGuards=10920 := by
  simp only [partRowsGuards,List.length_append,MatrixRowBlocks.rows_weight_append,stats13300.1,stats13300.2]
  decide
end PairedPathRoundCheckedRows
