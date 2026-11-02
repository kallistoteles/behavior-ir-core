import ActualCursorIR
import ArtifactCursorBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import CursorInstructionMatrixData1
namespace CursorCheckedRows
open Core033 CursorInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows67 : actualRows67=WordField.canonicalRows actualModulus 67 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats67 : actualRows67.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows67=2820 := by core033_kernel_decide
theorem rows68 : actualRows68=WordField.canonicalRows actualModulus 68 (.bnot 67) := by core033_kernel_decide
theorem stats68 : actualRows68.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows68=6276 := by core033_kernel_decide
theorem rows69 : actualRows69=WordField.canonicalRows actualModulus 69 (.band 66 68) := by core033_kernel_decide
theorem stats69 : actualRows69.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows69=5124 := by core033_kernel_decide
theorem rows70 : actualRows70=WordField.canonicalRows actualModulus 70 (.badd 0 2) := by core033_kernel_decide
theorem stats70 : actualRows70.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows70=5388 := by core033_kernel_decide
theorem rows71 : actualRows71=WordField.canonicalRows actualModulus 71 (.bnot 70) := by core033_kernel_decide
theorem stats71 : actualRows71.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows71=6276 := by core033_kernel_decide
theorem rows72 : actualRows72=WordField.canonicalRows actualModulus 72 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats72 : actualRows72.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows72=2892 := by core033_kernel_decide
theorem rows73 : actualRows73=WordField.canonicalRows actualModulus 73 (.badd 71 72) := by core033_kernel_decide
theorem stats73 : actualRows73.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows73=5388 := by core033_kernel_decide
theorem rows74 : actualRows74=WordField.canonicalRows actualModulus 74 (.badd 1 73) := by core033_kernel_decide
theorem stats74 : actualRows74.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows74=5388 := by core033_kernel_decide
theorem rows75 : actualRows75=WordField.canonicalRows actualModulus 75 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats75 : actualRows75.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows75=2820 := by core033_kernel_decide
theorem rows76 : actualRows76=WordField.canonicalRows actualModulus 76 (.bnot 75) := by core033_kernel_decide
theorem stats76 : actualRows76.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows76=6276 := by core033_kernel_decide
theorem rows77 : actualRows77=WordField.canonicalRows actualModulus 77 (.bxor 74 76) := by core033_kernel_decide
theorem stats77 : actualRows77.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows77=7428 := by core033_kernel_decide
theorem rows78 : actualRows78=WordField.canonicalRows actualModulus 78 (.badd 0 2) := by core033_kernel_decide
theorem stats78 : actualRows78.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows78=5388 := by core033_kernel_decide
theorem rows79 : actualRows79=WordField.canonicalRows actualModulus 79 (.bnot 78) := by core033_kernel_decide
theorem stats79 : actualRows79.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows79=6276 := by core033_kernel_decide
theorem rows80 : actualRows80=WordField.canonicalRows actualModulus 80 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats80 : actualRows80.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows80=2892 := by core033_kernel_decide
theorem rows81 : actualRows81=WordField.canonicalRows actualModulus 81 (.badd 79 80) := by core033_kernel_decide
theorem stats81 : actualRows81.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows81=5388 := by core033_kernel_decide
theorem rows82 : actualRows82=WordField.canonicalRows actualModulus 82 (.badd 1 81) := by core033_kernel_decide
theorem stats82 : actualRows82.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows82=5388 := by core033_kernel_decide
theorem rows83 : actualRows83=WordField.canonicalRows actualModulus 83 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats83 : actualRows83.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows83=2820 := by core033_kernel_decide
theorem rows84 : actualRows84=WordField.canonicalRows actualModulus 84 (.bnot 83) := by core033_kernel_decide
theorem stats84 : actualRows84.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows84=6276 := by core033_kernel_decide
theorem rows85 : actualRows85=WordField.canonicalRows actualModulus 85 (.badd 82 84) := by core033_kernel_decide
theorem stats85 : actualRows85.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows85=5388 := by core033_kernel_decide
theorem rows86 : actualRows86=WordField.canonicalRows actualModulus 86 (.bnot 85) := by core033_kernel_decide
theorem stats86 : actualRows86.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows86=6276 := by core033_kernel_decide
theorem rows87 : actualRows87=WordField.canonicalRows actualModulus 87 (.band 77 86) := by core033_kernel_decide
theorem stats87 : actualRows87.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows87=5124 := by core033_kernel_decide
theorem rows88 : actualRows88=WordField.canonicalRows actualModulus 88 (.bxor 69 87) := by core033_kernel_decide
theorem stats88 : actualRows88.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows88=7428 := by core033_kernel_decide
theorem rows89 : actualRows89=WordField.canonicalRows actualModulus 89 (.shr 88 31) := by core033_kernel_decide
theorem stats89 : actualRows89.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows89=2892 := by core033_kernel_decide
theorem rows90 : actualRows90=WordField.canonicalRows actualModulus 90 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats90 : actualRows90.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows90=2892 := by core033_kernel_decide
theorem rows91 : actualRows91=WordField.canonicalRows actualModulus 91 (.bxor 89 90) := by core033_kernel_decide
theorem stats91 : actualRows91.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows91=7428 := by core033_kernel_decide
def partRows1 : List R1CS.Row := actualRows67++actualRows68++actualRows69++actualRows70++actualRows71++actualRows72++actualRows73++actualRows74++actualRows75++actualRows76++actualRows77++actualRows78++actualRows79++actualRows80++actualRows81++actualRows82++actualRows83++actualRows84++actualRows85++actualRows86++actualRows87++actualRows88++actualRows89++actualRows90++actualRows91
def partOps1 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 67,.band 66 68,.badd 0 2,.bnot 70,.literal (BitVec.ofNat 32 1),.badd 71 72,.badd 1 73,.literal (BitVec.ofNat 32 0),.bnot 75,.bxor 74 76,.badd 0 2,.bnot 78,.literal (BitVec.ofNat 32 1),.badd 79 80,.badd 1 81,.literal (BitVec.ofNat 32 0),.bnot 83,.badd 82 84,.bnot 85,.band 77 86,.bxor 69 87,.shr 88 31,.literal (BitVec.ofNat 32 1),.bxor 89 90]
theorem partExact1 : partRows1=WordField.rows actualModulus 67 partOps1 := by
  simp only [partRows1,partOps1,WordField.rows,rows67,rows68,rows69,rows70,rows71,rows72,rows73,rows74,rows75,rows76,rows77,rows78,rows79,rows80,rows81,rows82,rows83,rows84,rows85,rows86,rows87,rows88,rows89,rows90,rows91,List.append_assoc,List.append_nil]
theorem partLength1 : partOps1.length=25 := by decide
theorem partStats1 : partRows1.length=857 ∧ MatrixRowBlocks.rowsWeight partRows1=127932 := by
  simp only [partRows1,List.length_append,MatrixRowBlocks.rows_weight_append,stats67.1,stats67.2,stats68.1,stats68.2,stats69.1,stats69.2,stats70.1,stats70.2,stats71.1,stats71.2,stats72.1,stats72.2,stats73.1,stats73.2,stats74.1,stats74.2,stats75.1,stats75.2,stats76.1,stats76.2,stats77.1,stats77.2,stats78.1,stats78.2,stats79.1,stats79.2,stats80.1,stats80.2,stats81.1,stats81.2,stats82.1,stats82.2,stats83.1,stats83.2,stats84.1,stats84.2,stats85.1,stats85.2,stats86.1,stats86.2,stats87.1,stats87.2,stats88.1,stats88.2,stats89.1,stats89.2,stats90.1,stats90.2,stats91.1,stats91.2]
  decide
end CursorCheckedRows
