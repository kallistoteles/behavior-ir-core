import ActualNodeCountIR
import ArtifactNodeCountBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import NodeCountInstructionMatrixData0
namespace NodeCountCheckedRows
open Core033 NodeCountInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows0 : actualRows0=WordField.booleanBits actualModulus 0++[WordField.packing actualModulus 0,SHA256Circuit.literalRow (WordField.carry 0) false] := by core033_kernel_decide
theorem stats0 : actualRows0.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows0=5124 := by core033_kernel_decide
theorem rows1 : actualRows1=WordField.booleanBits actualModulus 1++[WordField.packing actualModulus 1,SHA256Circuit.literalRow (WordField.carry 1) false] := by core033_kernel_decide
theorem stats1 : actualRows1.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1=5124 := by core033_kernel_decide
theorem rows2 : actualRows2=WordField.booleanBits actualModulus 2++[WordField.packing actualModulus 2,SHA256Circuit.literalRow (WordField.carry 2) false] := by core033_kernel_decide
theorem stats2 : actualRows2.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2=5124 := by core033_kernel_decide
theorem rows3 : actualRows3=WordField.booleanBits actualModulus 3++[WordField.packing actualModulus 3,SHA256Circuit.literalRow (WordField.carry 3) false] := by core033_kernel_decide
theorem stats3 : actualRows3.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3=5124 := by core033_kernel_decide
def partRowsInputs : List R1CS.Row := actualRows0++actualRows1++actualRows2++actualRows3
theorem partStatsInputs : partRowsInputs.length=136 ∧ MatrixRowBlocks.rowsWeight partRowsInputs=20496 := by
  simp only [partRowsInputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats0.1,stats0.2,stats1.1,stats1.2,stats2.1,stats2.2,stats3.1,stats3.2]
  decide
end NodeCountCheckedRows
