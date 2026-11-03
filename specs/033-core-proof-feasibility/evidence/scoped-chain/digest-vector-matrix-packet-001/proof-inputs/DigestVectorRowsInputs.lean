import ActualDigestVectorIR
import Core033.WordVectorEquality
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import DigestVectorInstructionMatrixData0
namespace DigestVectorCheckedRows
open Core033 DigestVectorInstructionData
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
theorem rows9 : actualRows9=WordField.booleanBits actualModulus 9++[WordField.packing actualModulus 9,SHA256Circuit.literalRow (WordField.carry 9) false] := by core033_kernel_decide
theorem stats9 : actualRows9.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9=5124 := by core033_kernel_decide
theorem rows10 : actualRows10=WordField.booleanBits actualModulus 10++[WordField.packing actualModulus 10,SHA256Circuit.literalRow (WordField.carry 10) false] := by core033_kernel_decide
theorem stats10 : actualRows10.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10=5124 := by core033_kernel_decide
theorem rows11 : actualRows11=WordField.booleanBits actualModulus 11++[WordField.packing actualModulus 11,SHA256Circuit.literalRow (WordField.carry 11) false] := by core033_kernel_decide
theorem stats11 : actualRows11.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11=5124 := by core033_kernel_decide
theorem rows12 : actualRows12=WordField.booleanBits actualModulus 12++[WordField.packing actualModulus 12,SHA256Circuit.literalRow (WordField.carry 12) false] := by core033_kernel_decide
theorem stats12 : actualRows12.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12=5124 := by core033_kernel_decide
theorem rows13 : actualRows13=WordField.booleanBits actualModulus 13++[WordField.packing actualModulus 13,SHA256Circuit.literalRow (WordField.carry 13) false] := by core033_kernel_decide
theorem stats13 : actualRows13.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13=5124 := by core033_kernel_decide
theorem rows14 : actualRows14=WordField.booleanBits actualModulus 14++[WordField.packing actualModulus 14,SHA256Circuit.literalRow (WordField.carry 14) false] := by core033_kernel_decide
theorem stats14 : actualRows14.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14=5124 := by core033_kernel_decide
theorem rows15 : actualRows15=WordField.booleanBits actualModulus 15++[WordField.packing actualModulus 15,SHA256Circuit.literalRow (WordField.carry 15) false] := by core033_kernel_decide
theorem stats15 : actualRows15.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows15=5124 := by core033_kernel_decide
def partRowsInputs : List R1CS.Row := actualRows0++actualRows1++actualRows2++actualRows3++actualRows4++actualRows5++actualRows6++actualRows7++actualRows8++actualRows9++actualRows10++actualRows11++actualRows12++actualRows13++actualRows14++actualRows15
theorem partStatsInputs : partRowsInputs.length=544 ∧ MatrixRowBlocks.rowsWeight partRowsInputs=81984 := by
  simp only [partRowsInputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats0.1,stats0.2,stats1.1,stats1.2,stats2.1,stats2.2,stats3.1,stats3.2,stats4.1,stats4.2,stats5.1,stats5.2,stats6.1,stats6.2,stats7.1,stats7.2,stats8.1,stats8.2,stats9.1,stats9.2,stats10.1,stats10.2,stats11.1,stats11.2,stats12.1,stats12.2,stats13.1,stats13.2,stats14.1,stats14.2,stats15.1,stats15.2]
  decide
end DigestVectorCheckedRows
