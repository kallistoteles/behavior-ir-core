import ActualIntegerIR
import ArtifactIntegerBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import IntegerInstructionMatrixData2
namespace IntegerCheckedRows
open Core033 IntegerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows136 : actualRows136=WordField.canonicalRows actualModulus 136 (.shr 6 8) := by core033_kernel_decide
theorem stats136 : actualRows136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows136=4548 := by core033_kernel_decide
theorem rows137 : actualRows137=WordField.canonicalRows actualModulus 137 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats137 : actualRows137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows137=2820 := by core033_kernel_decide
theorem rows138 : actualRows138=WordField.canonicalRows actualModulus 138 (.bnot 137) := by core033_kernel_decide
theorem stats138 : actualRows138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows138=6276 := by core033_kernel_decide
theorem rows139 : actualRows139=WordField.canonicalRows actualModulus 139 (.badd 136 138) := by core033_kernel_decide
theorem stats139 : actualRows139.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows139=5388 := by core033_kernel_decide
theorem rows140 : actualRows140=WordField.canonicalRows actualModulus 140 (.bnot 139) := by core033_kernel_decide
theorem stats140 : actualRows140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows140=6276 := by core033_kernel_decide
theorem rows141 : actualRows141=WordField.canonicalRows actualModulus 141 (.band 135 140) := by core033_kernel_decide
theorem stats141 : actualRows141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows141=5124 := by core033_kernel_decide
theorem rows142 : actualRows142=WordField.canonicalRows actualModulus 142 (.bxor 131 141) := by core033_kernel_decide
theorem stats142 : actualRows142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows142=7428 := by core033_kernel_decide
theorem rows143 : actualRows143=WordField.canonicalRows actualModulus 143 (.shr 142 31) := by core033_kernel_decide
theorem stats143 : actualRows143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows143=2892 := by core033_kernel_decide
theorem rows144 : actualRows144=WordField.canonicalRows actualModulus 144 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats144 : actualRows144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows144=2892 := by core033_kernel_decide
theorem rows145 : actualRows145=WordField.canonicalRows actualModulus 145 (.bxor 143 144) := by core033_kernel_decide
theorem stats145 : actualRows145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows145=7428 := by core033_kernel_decide
theorem rows146 : actualRows146=WordField.canonicalRows actualModulus 146 (.shr 7 8) := by core033_kernel_decide
theorem stats146 : actualRows146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows146=4548 := by core033_kernel_decide
theorem rows147 : actualRows147=WordField.canonicalRows actualModulus 147 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats147 : actualRows147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows147=2820 := by core033_kernel_decide
theorem rows148 : actualRows148=WordField.canonicalRows actualModulus 148 (.bnot 147) := by core033_kernel_decide
theorem stats148 : actualRows148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows148=6276 := by core033_kernel_decide
theorem rows149 : actualRows149=WordField.canonicalRows actualModulus 149 (.band 146 148) := by core033_kernel_decide
theorem stats149 : actualRows149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows149=5124 := by core033_kernel_decide
theorem rows150 : actualRows150=WordField.canonicalRows actualModulus 150 (.shr 7 8) := by core033_kernel_decide
theorem stats150 : actualRows150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows150=4548 := by core033_kernel_decide
theorem rows151 : actualRows151=WordField.canonicalRows actualModulus 151 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats151 : actualRows151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows151=2820 := by core033_kernel_decide
theorem rows152 : actualRows152=WordField.canonicalRows actualModulus 152 (.bnot 151) := by core033_kernel_decide
theorem stats152 : actualRows152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows152=6276 := by core033_kernel_decide
theorem rows153 : actualRows153=WordField.canonicalRows actualModulus 153 (.bxor 150 152) := by core033_kernel_decide
theorem stats153 : actualRows153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows153=7428 := by core033_kernel_decide
theorem rows154 : actualRows154=WordField.canonicalRows actualModulus 154 (.shr 7 8) := by core033_kernel_decide
theorem stats154 : actualRows154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows154=4548 := by core033_kernel_decide
theorem rows155 : actualRows155=WordField.canonicalRows actualModulus 155 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats155 : actualRows155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows155=2820 := by core033_kernel_decide
theorem rows156 : actualRows156=WordField.canonicalRows actualModulus 156 (.bnot 155) := by core033_kernel_decide
theorem stats156 : actualRows156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows156=6276 := by core033_kernel_decide
theorem rows157 : actualRows157=WordField.canonicalRows actualModulus 157 (.badd 154 156) := by core033_kernel_decide
theorem stats157 : actualRows157.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows157=5388 := by core033_kernel_decide
theorem rows158 : actualRows158=WordField.canonicalRows actualModulus 158 (.bnot 157) := by core033_kernel_decide
theorem stats158 : actualRows158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows158=6276 := by core033_kernel_decide
theorem rows159 : actualRows159=WordField.canonicalRows actualModulus 159 (.band 153 158) := by core033_kernel_decide
theorem stats159 : actualRows159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows159=5124 := by core033_kernel_decide
theorem rows160 : actualRows160=WordField.canonicalRows actualModulus 160 (.bxor 149 159) := by core033_kernel_decide
theorem stats160 : actualRows160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows160=7428 := by core033_kernel_decide
theorem rows161 : actualRows161=WordField.canonicalRows actualModulus 161 (.shr 160 31) := by core033_kernel_decide
theorem stats161 : actualRows161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows161=2892 := by core033_kernel_decide
theorem rows162 : actualRows162=WordField.canonicalRows actualModulus 162 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats162 : actualRows162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows162=2892 := by core033_kernel_decide
theorem rows163 : actualRows163=WordField.canonicalRows actualModulus 163 (.bxor 161 162) := by core033_kernel_decide
theorem stats163 : actualRows163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows163=7428 := by core033_kernel_decide
def partRows2 : List R1CS.Row := actualRows136++actualRows137++actualRows138++actualRows139++actualRows140++actualRows141++actualRows142++actualRows143++actualRows144++actualRows145++actualRows146++actualRows147++actualRows148++actualRows149++actualRows150++actualRows151++actualRows152++actualRows153++actualRows154++actualRows155++actualRows156++actualRows157++actualRows158++actualRows159++actualRows160++actualRows161++actualRows162++actualRows163
def partOps2 : List WordIR.Op := [.shr 6 8,.literal (BitVec.ofNat 32 0),.bnot 137,.badd 136 138,.bnot 139,.band 135 140,.bxor 131 141,.shr 142 31,.literal (BitVec.ofNat 32 1),.bxor 143 144,.shr 7 8,.literal (BitVec.ofNat 32 0),.bnot 147,.band 146 148,.shr 7 8,.literal (BitVec.ofNat 32 0),.bnot 151,.bxor 150 152,.shr 7 8,.literal (BitVec.ofNat 32 0),.bnot 155,.badd 154 156,.bnot 157,.band 153 158,.bxor 149 159,.shr 160 31,.literal (BitVec.ofNat 32 1),.bxor 161 162]
theorem partExact2 : partRows2=WordField.rows actualModulus 136 partOps2 := by
  simp only [partRows2,partOps2,WordField.rows,rows136,rows137,rows138,rows139,rows140,rows141,rows142,rows143,rows144,rows145,rows146,rows147,rows148,rows149,rows150,rows151,rows152,rows153,rows154,rows155,rows156,rows157,rows158,rows159,rows160,rows161,rows162,rows163,List.append_assoc,List.append_nil]
theorem partLength2 : partOps2.length=28 := by decide
theorem partStats2 : partRows2.length=954 ∧ MatrixRowBlocks.rowsWeight partRows2=141984 := by
  simp only [partRows2,List.length_append,MatrixRowBlocks.rows_weight_append,stats136.1,stats136.2,stats137.1,stats137.2,stats138.1,stats138.2,stats139.1,stats139.2,stats140.1,stats140.2,stats141.1,stats141.2,stats142.1,stats142.2,stats143.1,stats143.2,stats144.1,stats144.2,stats145.1,stats145.2,stats146.1,stats146.2,stats147.1,stats147.2,stats148.1,stats148.2,stats149.1,stats149.2,stats150.1,stats150.2,stats151.1,stats151.2,stats152.1,stats152.2,stats153.1,stats153.2,stats154.1,stats154.2,stats155.1,stats155.2,stats156.1,stats156.2,stats157.1,stats157.2,stats158.1,stats158.2,stats159.1,stats159.2,stats160.1,stats160.2,stats161.1,stats161.2,stats162.1,stats162.2,stats163.1,stats163.2]
  decide
end IntegerCheckedRows
