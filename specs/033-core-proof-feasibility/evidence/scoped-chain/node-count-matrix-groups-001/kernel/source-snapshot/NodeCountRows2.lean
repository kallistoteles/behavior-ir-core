import ActualNodeCountIR
import ArtifactNodeCountBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import NodeCountInstructionMatrixData2
namespace NodeCountCheckedRows
open Core033 NodeCountInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows132 : actualRows132=WordField.canonicalRows actualModulus 132 (.band 126 131) := by core033_kernel_decide
theorem stats132 : actualRows132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows132=5124 := by core033_kernel_decide
theorem rows133 : actualRows133=WordField.canonicalRows actualModulus 133 (.bxor 122 132) := by core033_kernel_decide
theorem stats133 : actualRows133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows133=7428 := by core033_kernel_decide
theorem rows134 : actualRows134=WordField.canonicalRows actualModulus 134 (.shr 133 31) := by core033_kernel_decide
theorem stats134 : actualRows134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows134=2892 := by core033_kernel_decide
theorem rows135 : actualRows135=WordField.canonicalRows actualModulus 135 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats135 : actualRows135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows135=2892 := by core033_kernel_decide
theorem rows136 : actualRows136=WordField.canonicalRows actualModulus 136 (.bxor 134 135) := by core033_kernel_decide
theorem stats136 : actualRows136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows136=7428 := by core033_kernel_decide
theorem rows137 : actualRows137=WordField.canonicalRows actualModulus 137 (.band 118 136) := by core033_kernel_decide
theorem stats137 : actualRows137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows137=5124 := by core033_kernel_decide
theorem rows138 : actualRows138=WordField.canonicalRows actualModulus 138 (.band 76 137) := by core033_kernel_decide
theorem stats138 : actualRows138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows138=5124 := by core033_kernel_decide
def partRows2 : List R1CS.Row := actualRows132++actualRows133++actualRows134++actualRows135++actualRows136++actualRows137++actualRows138
def partOps2 : List WordIR.Op := [.band 126 131,.bxor 122 132,.shr 133 31,.literal (BitVec.ofNat 32 1),.bxor 134 135,.band 118 136,.band 76 137]
theorem partExact2 : partRows2=WordField.rows actualModulus 132 partOps2 := by
  simp only [partRows2,partOps2,WordField.rows,rows132,rows133,rows134,rows135,rows136,rows137,rows138,List.append_assoc,List.append_nil]
theorem partLength2 : partOps2.length=7 := by decide
theorem partStats2 : partRows2.length=238 ∧ MatrixRowBlocks.rowsWeight partRows2=36012 := by
  simp only [partRows2,List.length_append,MatrixRowBlocks.rows_weight_append,stats132.1,stats132.2,stats133.1,stats133.2,stats134.1,stats134.2,stats135.1,stats135.2,stats136.1,stats136.2,stats137.1,stats137.2,stats138.1,stats138.2]
  decide
end NodeCountCheckedRows
