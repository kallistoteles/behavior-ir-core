import ActualRangeIR
import ArtifactRangeBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import RangeInstructionMatrixData0
namespace RangeCheckedRows
open Core033 RangeInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows0 : actualRows0=WordField.booleanBits actualModulus 0++[WordField.packing actualModulus 0,SHA256Circuit.literalRow (WordField.carry 0) false] := by core033_kernel_decide
theorem stats0 : actualRows0.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows0=5124 := by core033_kernel_decide
def partRowsInputs : List R1CS.Row := actualRows0
theorem partStatsInputs : partRowsInputs.length=34 ∧ MatrixRowBlocks.rowsWeight partRowsInputs=5124 := by
  simp only [partRowsInputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats0.1,stats0.2]
  decide
end RangeCheckedRows
