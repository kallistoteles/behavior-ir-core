import ActualCounterIR
import ActualCounterBytes
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import CounterInstructionMatrixData5
namespace CounterCheckedRows
open Core033 CounterInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows324 : actualRows324=WordField.canonicalRows actualModulus 324 (.band 319 323) := by core033_kernel_decide
theorem stats324 : actualRows324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows324=5124 := by core033_kernel_decide
theorem rows325 : actualRows325=WordField.canonicalRows actualModulus 325 (.bxor 316 324) := by core033_kernel_decide
theorem stats325 : actualRows325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows325=7428 := by core033_kernel_decide
theorem rows326 : actualRows326=WordField.canonicalRows actualModulus 326 (.shr 325 31) := by core033_kernel_decide
theorem stats326 : actualRows326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows326=2892 := by core033_kernel_decide
theorem rows327 : actualRows327=WordField.canonicalRows actualModulus 327 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats327 : actualRows327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows327=2892 := by core033_kernel_decide
theorem rows328 : actualRows328=WordField.canonicalRows actualModulus 328 (.bxor 326 327) := by core033_kernel_decide
theorem stats328 : actualRows328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows328=7428 := by core033_kernel_decide
theorem rows329 : actualRows329=WordField.canonicalRows actualModulus 329 (.band 313 328) := by core033_kernel_decide
theorem stats329 : actualRows329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows329=5124 := by core033_kernel_decide
theorem rows330 : actualRows330=WordField.canonicalRows actualModulus 330 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats330 : actualRows330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows330=2892 := by core033_kernel_decide
theorem rows331 : actualRows331=WordField.canonicalRows actualModulus 331 (.bxor 329 330) := by core033_kernel_decide
theorem stats331 : actualRows331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows331=7428 := by core033_kernel_decide
theorem rows332 : actualRows332=WordField.canonicalRows actualModulus 332 (.band 298 331) := by core033_kernel_decide
theorem stats332 : actualRows332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows332=5124 := by core033_kernel_decide
def partRows5 : List R1CS.Row := actualRows324++actualRows325++actualRows326++actualRows327++actualRows328++actualRows329++actualRows330++actualRows331++actualRows332
def partOps5 : List WordIR.Op := [.band 319 323,.bxor 316 324,.shr 325 31,.literal (BitVec.ofNat 32 1),.bxor 326 327,.band 313 328,.literal (BitVec.ofNat 32 1),.bxor 329 330,.band 298 331]
theorem partExact5 : partRows5=WordField.rows actualModulus 324 partOps5 := by
  simp only [partRows5,partOps5,WordField.rows,rows324,rows325,rows326,rows327,rows328,rows329,rows330,rows331,rows332,List.append_assoc,List.append_nil]
theorem partLength5 : partOps5.length=9 := by decide
theorem partStats5 : partRows5.length=306 ∧ MatrixRowBlocks.rowsWeight partRows5=46332 := by
  simp only [partRows5,List.length_append,MatrixRowBlocks.rows_weight_append,stats324.1,stats324.2,stats325.1,stats325.2,stats326.1,stats326.2,stats327.1,stats327.2,stats328.1,stats328.2,stats329.1,stats329.2,stats330.1,stats330.2,stats331.1,stats331.2,stats332.1,stats332.2]
  decide
end CounterCheckedRows
