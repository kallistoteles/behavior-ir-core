import ActualChoiceIR
import ArtifactChoiceBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ChoiceInstructionMatrixData2
namespace ChoiceCheckedRows
open Core033 ChoiceInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows137 : actualRows137=WordField.canonicalRows actualModulus 137 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats137 : actualRows137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows137=2892 := by core033_kernel_decide
theorem rows138 : actualRows138=WordField.canonicalRows actualModulus 138 (.bxor 136 137) := by core033_kernel_decide
theorem stats138 : actualRows138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows138=7428 := by core033_kernel_decide
def partRows2 : List R1CS.Row := actualRows137++actualRows138
def partOps2 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 136 137]
theorem partExact2 : partRows2=WordField.rows actualModulus 137 partOps2 := by
  simp only [partRows2,partOps2,WordField.rows,rows137,rows138,List.append_assoc,List.append_nil]
theorem partLength2 : partOps2.length=2 := by decide
theorem partStats2 : partRows2.length=68 ∧ MatrixRowBlocks.rowsWeight partRows2=10320 := by
  simp only [partRows2,List.length_append,MatrixRowBlocks.rows_weight_append,stats137.1,stats137.2,stats138.1,stats138.2]
  decide
end ChoiceCheckedRows
