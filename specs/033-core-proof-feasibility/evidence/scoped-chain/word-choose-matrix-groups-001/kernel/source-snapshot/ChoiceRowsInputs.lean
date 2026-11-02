import ActualChoiceIR
import ArtifactChoiceBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ChoiceInstructionMatrixData0
namespace ChoiceCheckedRows
open Core033 ChoiceInstructionData
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
theorem rows4 : actualRows4=WordField.booleanBits actualModulus 4++[WordField.packing actualModulus 4,SHA256Circuit.literalRow (WordField.carry 4) false] := by core033_kernel_decide
theorem stats4 : actualRows4.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4=5124 := by core033_kernel_decide
theorem rows5 : actualRows5=WordField.booleanBits actualModulus 5++[WordField.packing actualModulus 5,SHA256Circuit.literalRow (WordField.carry 5) false] := by core033_kernel_decide
theorem stats5 : actualRows5.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5=5124 := by core033_kernel_decide
theorem rows6 : actualRows6=WordField.booleanBits actualModulus 6++[WordField.packing actualModulus 6,SHA256Circuit.literalRow (WordField.carry 6) false] := by core033_kernel_decide
theorem stats6 : actualRows6.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6=5124 := by core033_kernel_decide
theorem rows7 : actualRows7=WordField.booleanBits actualModulus 7++[WordField.packing actualModulus 7,SHA256Circuit.literalRow (WordField.carry 7) false] := by core033_kernel_decide
theorem stats7 : actualRows7.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7=5124 := by core033_kernel_decide
theorem rows8 : actualRows8=WordField.booleanBits actualModulus 8++[WordField.packing actualModulus 8,SHA256Circuit.literalRow (WordField.carry 8) false] := by core033_kernel_decide
theorem stats8 : actualRows8.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8=5124 := by core033_kernel_decide
def partRowsInputs : List R1CS.Row := actualRows0++actualRows1++actualRows2++actualRows3++actualRows4++actualRows5++actualRows6++actualRows7++actualRows8
theorem partStatsInputs : partRowsInputs.length=306 ∧ MatrixRowBlocks.rowsWeight partRowsInputs=46116 := by
  simp only [partRowsInputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats0.1,stats0.2,stats1.1,stats1.2,stats2.1,stats2.2,stats3.1,stats3.2,stats4.1,stats4.2,stats5.1,stats5.2,stats6.1,stats6.2,stats7.1,stats7.2,stats8.1,stats8.2]
  decide
end ChoiceCheckedRows
