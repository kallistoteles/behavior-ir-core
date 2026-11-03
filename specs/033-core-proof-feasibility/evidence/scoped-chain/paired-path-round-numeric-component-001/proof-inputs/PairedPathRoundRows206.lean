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
theorem rows13280 : actualRows13280=WordField.canonicalRows actualModulus 13280 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13280 : actualRows13280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13280=2892 := by core033_kernel_decide
theorem rows13281 : actualRows13281=WordField.canonicalRows actualModulus 13281 (.badd 13279 13280) := by core033_kernel_decide
theorem stats13281 : actualRows13281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13281=5388 := by core033_kernel_decide
theorem rows13282 : actualRows13282=WordField.canonicalRows actualModulus 13282 (.band 13281 12409) := by core033_kernel_decide
theorem stats13282 : actualRows13282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13282=5124 := by core033_kernel_decide
theorem rows13283 : actualRows13283=WordField.canonicalRows actualModulus 13283 (.bnot 288) := by core033_kernel_decide
theorem stats13283 : actualRows13283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13283=6276 := by core033_kernel_decide
theorem rows13284 : actualRows13284=WordField.canonicalRows actualModulus 13284 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13284 : actualRows13284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13284=2892 := by core033_kernel_decide
theorem rows13285 : actualRows13285=WordField.canonicalRows actualModulus 13285 (.badd 13283 13284) := by core033_kernel_decide
theorem stats13285 : actualRows13285.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13285=5388 := by core033_kernel_decide
theorem rows13286 : actualRows13286=WordField.canonicalRows actualModulus 13286 (.bnot 13285) := by core033_kernel_decide
theorem stats13286 : actualRows13286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13286=6276 := by core033_kernel_decide
theorem rows13287 : actualRows13287=WordField.canonicalRows actualModulus 13287 (.band 13286 77) := by core033_kernel_decide
theorem stats13287 : actualRows13287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13287=5124 := by core033_kernel_decide
theorem rows13288 : actualRows13288=WordField.canonicalRows actualModulus 13288 (.bxor 13282 13287) := by core033_kernel_decide
theorem stats13288 : actualRows13288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13288=7428 := by core033_kernel_decide
theorem rows13289 : actualRows13289=WordField.canonicalRows actualModulus 13289 (.bnot 288) := by core033_kernel_decide
theorem stats13289 : actualRows13289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13289=6276 := by core033_kernel_decide
theorem rows13290 : actualRows13290=WordField.canonicalRows actualModulus 13290 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13290 : actualRows13290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13290=2892 := by core033_kernel_decide
theorem rows13291 : actualRows13291=WordField.canonicalRows actualModulus 13291 (.badd 13289 13290) := by core033_kernel_decide
theorem stats13291 : actualRows13291.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13291=5388 := by core033_kernel_decide
theorem rows13292 : actualRows13292=WordField.canonicalRows actualModulus 13292 (.band 13291 12513) := by core033_kernel_decide
theorem stats13292 : actualRows13292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13292=5124 := by core033_kernel_decide
theorem rows13293 : actualRows13293=WordField.canonicalRows actualModulus 13293 (.bnot 288) := by core033_kernel_decide
theorem stats13293 : actualRows13293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13293=6276 := by core033_kernel_decide
theorem rows13294 : actualRows13294=WordField.canonicalRows actualModulus 13294 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13294 : actualRows13294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13294=2892 := by core033_kernel_decide
theorem rows13295 : actualRows13295=WordField.canonicalRows actualModulus 13295 (.badd 13293 13294) := by core033_kernel_decide
theorem stats13295 : actualRows13295.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13295=5388 := by core033_kernel_decide
theorem rows13296 : actualRows13296=WordField.canonicalRows actualModulus 13296 (.bnot 13295) := by core033_kernel_decide
theorem stats13296 : actualRows13296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13296=6276 := by core033_kernel_decide
theorem rows13297 : actualRows13297=WordField.canonicalRows actualModulus 13297 (.band 13296 78) := by core033_kernel_decide
theorem stats13297 : actualRows13297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13297=5124 := by core033_kernel_decide
theorem rows13298 : actualRows13298=WordField.canonicalRows actualModulus 13298 (.bxor 13292 13297) := by core033_kernel_decide
theorem stats13298 : actualRows13298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13298=7428 := by core033_kernel_decide
def partRows206 : List R1CS.Row := actualRows13280++actualRows13281++actualRows13282++actualRows13283++actualRows13284++actualRows13285++actualRows13286++actualRows13287++actualRows13288++actualRows13289++actualRows13290++actualRows13291++actualRows13292++actualRows13293++actualRows13294++actualRows13295++actualRows13296++actualRows13297++actualRows13298
def partOps206 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 13279 13280,.band 13281 12409,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13283 13284,.bnot 13285,.band 13286 77,.bxor 13282 13287,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13289 13290,.band 13291 12513,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13293 13294,.bnot 13295,.band 13296 78,.bxor 13292 13297]
theorem partExact206 : partRows206=WordField.rows actualModulus 13280 partOps206 := by
  simp only [partRows206,partOps206,WordField.rows,rows13280,rows13281,rows13282,rows13283,rows13284,rows13285,rows13286,rows13287,rows13288,rows13289,rows13290,rows13291,rows13292,rows13293,rows13294,rows13295,rows13296,rows13297,rows13298,List.append_assoc,List.append_nil]
theorem partLength206 : partOps206.length=19 := by decide
theorem partStats206 : partRows206.length=650 ∧ MatrixRowBlocks.rowsWeight partRows206=99852 := by
  simp only [partRows206,List.length_append,MatrixRowBlocks.rows_weight_append,stats13280.1,stats13280.2,stats13281.1,stats13281.2,stats13282.1,stats13282.2,stats13283.1,stats13283.2,stats13284.1,stats13284.2,stats13285.1,stats13285.2,stats13286.1,stats13286.2,stats13287.1,stats13287.2,stats13288.1,stats13288.2,stats13289.1,stats13289.2,stats13290.1,stats13290.2,stats13291.1,stats13291.2,stats13292.1,stats13292.2,stats13293.1,stats13293.2,stats13294.1,stats13294.2,stats13295.1,stats13295.2,stats13296.1,stats13296.2,stats13297.1,stats13297.2,stats13298.1,stats13298.2]
  decide
end PairedPathRoundCheckedRows
