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
theorem rows12523 : actualRows12523=WordField.canonicalRows actualModulus 12523 (.shr 12522 31) := by core033_kernel_decide
theorem stats12523 : actualRows12523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12523=2892 := by core033_kernel_decide
theorem rows12524 : actualRows12524=WordField.canonicalRows actualModulus 12524 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12524 : actualRows12524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12524=2892 := by core033_kernel_decide
theorem rows12525 : actualRows12525=WordField.canonicalRows actualModulus 12525 (.bxor 12523 12524) := by core033_kernel_decide
theorem stats12525 : actualRows12525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12525=7428 := by core033_kernel_decide
theorem rows12526 : actualRows12526=WordField.canonicalRows actualModulus 12526 (.bxor 12504 12525) := by core033_kernel_decide
theorem stats12526 : actualRows12526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12526=7428 := by core033_kernel_decide
def partRows195 : List R1CS.Row := actualRows12523++actualRows12524++actualRows12525++actualRows12526
def partOps195 : List WordIR.Op := [.shr 12522 31,.literal (BitVec.ofNat 32 1),.bxor 12523 12524,.bxor 12504 12525]
theorem partExact195 : partRows195=WordField.rows actualModulus 12523 partOps195 := by
  simp only [partRows195,partOps195,WordField.rows,rows12523,rows12524,rows12525,rows12526,List.append_assoc,List.append_nil]
theorem partLength195 : partOps195.length=4 := by decide
theorem partStats195 : partRows195.length=136 ∧ MatrixRowBlocks.rowsWeight partRows195=20640 := by
  simp only [partRows195,List.length_append,MatrixRowBlocks.rows_weight_append,stats12523.1,stats12523.2,stats12524.1,stats12524.2,stats12525.1,stats12525.2,stats12526.1,stats12526.2]
  decide
end PathRoundDispatchCheckedRows
