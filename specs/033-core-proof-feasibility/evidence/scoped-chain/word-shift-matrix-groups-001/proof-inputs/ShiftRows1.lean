import ActualShiftIR
import ArtifactShiftBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ShiftInstructionMatrixData1
namespace ShiftCheckedRows
open Core033 ShiftInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows66 : actualRows66=WordField.canonicalRows actualModulus 66 (.badd 64 65) := by core033_kernel_decide
theorem stats66 : actualRows66.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows66=5388 := by core033_kernel_decide
theorem rows67 : actualRows67=WordField.canonicalRows actualModulus 67 (.bnot 66) := by core033_kernel_decide
theorem stats67 : actualRows67.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows67=6276 := by core033_kernel_decide
theorem rows68 : actualRows68=WordField.canonicalRows actualModulus 68 (.band 67 52) := by core033_kernel_decide
theorem stats68 : actualRows68.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows68=5124 := by core033_kernel_decide
theorem rows69 : actualRows69=WordField.canonicalRows actualModulus 69 (.bxor 60 68) := by core033_kernel_decide
theorem stats69 : actualRows69.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows69=7428 := by core033_kernel_decide
theorem rows70 : actualRows70=WordField.canonicalRows actualModulus 70 (.shr 1 4) := by core033_kernel_decide
theorem stats70 : actualRows70.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows70=4836 := by core033_kernel_decide
theorem rows71 : actualRows71=WordField.canonicalRows actualModulus 71 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats71 : actualRows71.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows71=2892 := by core033_kernel_decide
theorem rows72 : actualRows72=WordField.canonicalRows actualModulus 72 (.band 70 71) := by core033_kernel_decide
theorem stats72 : actualRows72.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows72=5124 := by core033_kernel_decide
theorem rows73 : actualRows73=WordField.canonicalRows actualModulus 73 (.bnot 72) := by core033_kernel_decide
theorem stats73 : actualRows73.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows73=6276 := by core033_kernel_decide
theorem rows74 : actualRows74=WordField.canonicalRows actualModulus 74 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats74 : actualRows74.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows74=2892 := by core033_kernel_decide
theorem rows75 : actualRows75=WordField.canonicalRows actualModulus 75 (.badd 73 74) := by core033_kernel_decide
theorem stats75 : actualRows75.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows75=5388 := by core033_kernel_decide
theorem rows76 : actualRows76=WordField.canonicalRows actualModulus 76 (.shr 69 16) := by core033_kernel_decide
theorem stats76 : actualRows76.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows76=3972 := by core033_kernel_decide
theorem rows77 : actualRows77=WordField.canonicalRows actualModulus 77 (.band 75 76) := by core033_kernel_decide
theorem stats77 : actualRows77.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows77=5124 := by core033_kernel_decide
theorem rows78 : actualRows78=WordField.canonicalRows actualModulus 78 (.shr 1 4) := by core033_kernel_decide
theorem stats78 : actualRows78.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows78=4836 := by core033_kernel_decide
theorem rows79 : actualRows79=WordField.canonicalRows actualModulus 79 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats79 : actualRows79.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows79=2892 := by core033_kernel_decide
theorem rows80 : actualRows80=WordField.canonicalRows actualModulus 80 (.band 78 79) := by core033_kernel_decide
theorem stats80 : actualRows80.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows80=5124 := by core033_kernel_decide
theorem rows81 : actualRows81=WordField.canonicalRows actualModulus 81 (.bnot 80) := by core033_kernel_decide
theorem stats81 : actualRows81.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows81=6276 := by core033_kernel_decide
theorem rows82 : actualRows82=WordField.canonicalRows actualModulus 82 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats82 : actualRows82.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows82=2892 := by core033_kernel_decide
theorem rows83 : actualRows83=WordField.canonicalRows actualModulus 83 (.badd 81 82) := by core033_kernel_decide
theorem stats83 : actualRows83.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows83=5388 := by core033_kernel_decide
theorem rows84 : actualRows84=WordField.canonicalRows actualModulus 84 (.bnot 83) := by core033_kernel_decide
theorem stats84 : actualRows84.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows84=6276 := by core033_kernel_decide
theorem rows85 : actualRows85=WordField.canonicalRows actualModulus 85 (.band 84 69) := by core033_kernel_decide
theorem stats85 : actualRows85.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows85=5124 := by core033_kernel_decide
theorem rows86 : actualRows86=WordField.canonicalRows actualModulus 86 (.bxor 77 85) := by core033_kernel_decide
theorem stats86 : actualRows86.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows86=7428 := by core033_kernel_decide
theorem rows87 : actualRows87=WordField.canonicalRows actualModulus 87 (.shr 1 5) := by core033_kernel_decide
theorem stats87 : actualRows87.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows87=4764 := by core033_kernel_decide
theorem rows88 : actualRows88=WordField.canonicalRows actualModulus 88 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats88 : actualRows88.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows88=2820 := by core033_kernel_decide
theorem rows89 : actualRows89=WordField.canonicalRows actualModulus 89 (.bnot 88) := by core033_kernel_decide
theorem stats89 : actualRows89.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows89=6276 := by core033_kernel_decide
theorem rows90 : actualRows90=WordField.canonicalRows actualModulus 90 (.band 87 89) := by core033_kernel_decide
theorem stats90 : actualRows90.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows90=5124 := by core033_kernel_decide
theorem rows91 : actualRows91=WordField.canonicalRows actualModulus 91 (.shr 1 5) := by core033_kernel_decide
theorem stats91 : actualRows91.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows91=4764 := by core033_kernel_decide
theorem rows92 : actualRows92=WordField.canonicalRows actualModulus 92 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats92 : actualRows92.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows92=2820 := by core033_kernel_decide
theorem rows93 : actualRows93=WordField.canonicalRows actualModulus 93 (.bnot 92) := by core033_kernel_decide
theorem stats93 : actualRows93.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows93=6276 := by core033_kernel_decide
theorem rows94 : actualRows94=WordField.canonicalRows actualModulus 94 (.bxor 91 93) := by core033_kernel_decide
theorem stats94 : actualRows94.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows94=7428 := by core033_kernel_decide
theorem rows95 : actualRows95=WordField.canonicalRows actualModulus 95 (.shr 1 5) := by core033_kernel_decide
theorem stats95 : actualRows95.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows95=4764 := by core033_kernel_decide
theorem rows96 : actualRows96=WordField.canonicalRows actualModulus 96 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats96 : actualRows96.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows96=2820 := by core033_kernel_decide
theorem rows97 : actualRows97=WordField.canonicalRows actualModulus 97 (.bnot 96) := by core033_kernel_decide
theorem stats97 : actualRows97.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows97=6276 := by core033_kernel_decide
theorem rows98 : actualRows98=WordField.canonicalRows actualModulus 98 (.badd 95 97) := by core033_kernel_decide
theorem stats98 : actualRows98.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows98=5388 := by core033_kernel_decide
theorem rows99 : actualRows99=WordField.canonicalRows actualModulus 99 (.bnot 98) := by core033_kernel_decide
theorem stats99 : actualRows99.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows99=6276 := by core033_kernel_decide
theorem rows100 : actualRows100=WordField.canonicalRows actualModulus 100 (.band 94 99) := by core033_kernel_decide
theorem stats100 : actualRows100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows100=5124 := by core033_kernel_decide
theorem rows101 : actualRows101=WordField.canonicalRows actualModulus 101 (.bxor 90 100) := by core033_kernel_decide
theorem stats101 : actualRows101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows101=7428 := by core033_kernel_decide
theorem rows102 : actualRows102=WordField.canonicalRows actualModulus 102 (.shr 101 31) := by core033_kernel_decide
theorem stats102 : actualRows102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows102=2892 := by core033_kernel_decide
theorem rows103 : actualRows103=WordField.canonicalRows actualModulus 103 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats103 : actualRows103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows103=2892 := by core033_kernel_decide
theorem rows104 : actualRows104=WordField.canonicalRows actualModulus 104 (.bxor 102 103) := by core033_kernel_decide
theorem stats104 : actualRows104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows104=7428 := by core033_kernel_decide
def partRows1 : List R1CS.Row := actualRows66++actualRows67++actualRows68++actualRows69++actualRows70++actualRows71++actualRows72++actualRows73++actualRows74++actualRows75++actualRows76++actualRows77++actualRows78++actualRows79++actualRows80++actualRows81++actualRows82++actualRows83++actualRows84++actualRows85++actualRows86++actualRows87++actualRows88++actualRows89++actualRows90++actualRows91++actualRows92++actualRows93++actualRows94++actualRows95++actualRows96++actualRows97++actualRows98++actualRows99++actualRows100++actualRows101++actualRows102++actualRows103++actualRows104
def partOps1 : List WordIR.Op := [.badd 64 65,.bnot 66,.band 67 52,.bxor 60 68,.shr 1 4,.literal (BitVec.ofNat 32 1),.band 70 71,.bnot 72,.literal (BitVec.ofNat 32 1),.badd 73 74,.shr 69 16,.band 75 76,.shr 1 4,.literal (BitVec.ofNat 32 1),.band 78 79,.bnot 80,.literal (BitVec.ofNat 32 1),.badd 81 82,.bnot 83,.band 84 69,.bxor 77 85,.shr 1 5,.literal (BitVec.ofNat 32 0),.bnot 88,.band 87 89,.shr 1 5,.literal (BitVec.ofNat 32 0),.bnot 92,.bxor 91 93,.shr 1 5,.literal (BitVec.ofNat 32 0),.bnot 96,.badd 95 97,.bnot 98,.band 94 99,.bxor 90 100,.shr 101 31,.literal (BitVec.ofNat 32 1),.bxor 102 103]
theorem partExact1 : partRows1=WordField.rows actualModulus 66 partOps1 := by
  simp only [partRows1,partOps1,WordField.rows,rows66,rows67,rows68,rows69,rows70,rows71,rows72,rows73,rows74,rows75,rows76,rows77,rows78,rows79,rows80,rows81,rows82,rows83,rows84,rows85,rows86,rows87,rows88,rows89,rows90,rows91,rows92,rows93,rows94,rows95,rows96,rows97,rows98,rows99,rows100,rows101,rows102,rows103,rows104,List.append_assoc,List.append_nil]
theorem partLength1 : partOps1.length=39 := by decide
theorem partStats1 : partRows1.length=1330 ∧ MatrixRowBlocks.rowsWeight partRows1=198516 := by
  simp only [partRows1,List.length_append,MatrixRowBlocks.rows_weight_append,stats66.1,stats66.2,stats67.1,stats67.2,stats68.1,stats68.2,stats69.1,stats69.2,stats70.1,stats70.2,stats71.1,stats71.2,stats72.1,stats72.2,stats73.1,stats73.2,stats74.1,stats74.2,stats75.1,stats75.2,stats76.1,stats76.2,stats77.1,stats77.2,stats78.1,stats78.2,stats79.1,stats79.2,stats80.1,stats80.2,stats81.1,stats81.2,stats82.1,stats82.2,stats83.1,stats83.2,stats84.1,stats84.2,stats85.1,stats85.2,stats86.1,stats86.2,stats87.1,stats87.2,stats88.1,stats88.2,stats89.1,stats89.2,stats90.1,stats90.2,stats91.1,stats91.2,stats92.1,stats92.2,stats93.1,stats93.2,stats94.1,stats94.2,stats95.1,stats95.2,stats96.1,stats96.2,stats97.1,stats97.2,stats98.1,stats98.2,stats99.1,stats99.2,stats100.1,stats100.2,stats101.1,stats101.2,stats102.1,stats102.2,stats103.1,stats103.2,stats104.1,stats104.2]
  decide
end ShiftCheckedRows
