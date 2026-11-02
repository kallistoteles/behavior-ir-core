import ActualBranchAdmissionIR
import ArtifactBranchAdmissionBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import BranchAdmissionInstructionMatrixData4
namespace BranchAdmissionCheckedRows
open Core033 BranchAdmissionInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows282 : actualRows282=WordField.canonicalRows actualModulus 282 (.badd 18 20) := by core033_kernel_decide
theorem stats282 : actualRows282.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows282=5388 := by core033_kernel_decide
theorem rows283 : actualRows283=WordField.canonicalRows actualModulus 283 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats283 : actualRows283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows283=2892 := by core033_kernel_decide
theorem rows284 : actualRows284=WordField.canonicalRows actualModulus 284 (.bnot 283) := by core033_kernel_decide
theorem stats284 : actualRows284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows284=6276 := by core033_kernel_decide
theorem rows285 : actualRows285=WordField.canonicalRows actualModulus 285 (.bxor 282 284) := by core033_kernel_decide
theorem stats285 : actualRows285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows285=7428 := by core033_kernel_decide
theorem rows286 : actualRows286=WordField.canonicalRows actualModulus 286 (.badd 18 20) := by core033_kernel_decide
theorem stats286 : actualRows286.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows286=5388 := by core033_kernel_decide
theorem rows287 : actualRows287=WordField.canonicalRows actualModulus 287 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats287 : actualRows287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows287=2892 := by core033_kernel_decide
theorem rows288 : actualRows288=WordField.canonicalRows actualModulus 288 (.bnot 287) := by core033_kernel_decide
theorem stats288 : actualRows288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows288=6276 := by core033_kernel_decide
theorem rows289 : actualRows289=WordField.canonicalRows actualModulus 289 (.badd 286 288) := by core033_kernel_decide
theorem stats289 : actualRows289.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows289=5388 := by core033_kernel_decide
theorem rows290 : actualRows290=WordField.canonicalRows actualModulus 290 (.bnot 289) := by core033_kernel_decide
theorem stats290 : actualRows290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows290=6276 := by core033_kernel_decide
theorem rows291 : actualRows291=WordField.canonicalRows actualModulus 291 (.band 285 290) := by core033_kernel_decide
theorem stats291 : actualRows291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows291=5124 := by core033_kernel_decide
theorem rows292 : actualRows292=WordField.canonicalRows actualModulus 292 (.bxor 281 291) := by core033_kernel_decide
theorem stats292 : actualRows292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows292=7428 := by core033_kernel_decide
theorem rows293 : actualRows293=WordField.canonicalRows actualModulus 293 (.shr 292 31) := by core033_kernel_decide
theorem stats293 : actualRows293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows293=2892 := by core033_kernel_decide
theorem rows294 : actualRows294=WordField.canonicalRows actualModulus 294 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats294 : actualRows294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows294=2892 := by core033_kernel_decide
theorem rows295 : actualRows295=WordField.canonicalRows actualModulus 295 (.bxor 293 294) := by core033_kernel_decide
theorem stats295 : actualRows295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows295=7428 := by core033_kernel_decide
theorem rows296 : actualRows296=WordField.canonicalRows actualModulus 296 (.band 277 295) := by core033_kernel_decide
theorem stats296 : actualRows296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows296=5124 := by core033_kernel_decide
theorem rows297 : actualRows297=WordField.canonicalRows actualModulus 297 (.band 235 296) := by core033_kernel_decide
theorem stats297 : actualRows297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows297=5124 := by core033_kernel_decide
def partRows4 : List R1CS.Row := actualRows282++actualRows283++actualRows284++actualRows285++actualRows286++actualRows287++actualRows288++actualRows289++actualRows290++actualRows291++actualRows292++actualRows293++actualRows294++actualRows295++actualRows296++actualRows297
def partOps4 : List WordIR.Op := [.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 283,.bxor 282 284,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 287,.badd 286 288,.bnot 289,.band 285 290,.bxor 281 291,.shr 292 31,.literal (BitVec.ofNat 32 1),.bxor 293 294,.band 277 295,.band 235 296]
theorem partExact4 : partRows4=WordField.rows actualModulus 282 partOps4 := by
  simp only [partRows4,partOps4,WordField.rows,rows282,rows283,rows284,rows285,rows286,rows287,rows288,rows289,rows290,rows291,rows292,rows293,rows294,rows295,rows296,rows297,List.append_assoc,List.append_nil]
theorem partLength4 : partOps4.length=16 := by decide
theorem partStats4 : partRows4.length=547 ∧ MatrixRowBlocks.rowsWeight partRows4=84216 := by
  simp only [partRows4,List.length_append,MatrixRowBlocks.rows_weight_append,stats282.1,stats282.2,stats283.1,stats283.2,stats284.1,stats284.2,stats285.1,stats285.2,stats286.1,stats286.2,stats287.1,stats287.2,stats288.1,stats288.2,stats289.1,stats289.2,stats290.1,stats290.2,stats291.1,stats291.2,stats292.1,stats292.2,stats293.1,stats293.2,stats294.1,stats294.2,stats295.1,stats295.2,stats296.1,stats296.2,stats297.1,stats297.2]
  decide
end BranchAdmissionCheckedRows
