import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData12
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows794 : actualRows794=WordField.canonicalRows actualModulus 794 (.bnot 793) := by core033_kernel_decide
theorem stats794 : actualRows794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows794=6276 := by core033_kernel_decide
theorem rows795 : actualRows795=WordField.canonicalRows actualModulus 795 (.bxor 792 794) := by core033_kernel_decide
theorem stats795 : actualRows795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows795=7428 := by core033_kernel_decide
theorem rows796 : actualRows796=WordField.canonicalRows actualModulus 796 (.badd 18 20) := by core033_kernel_decide
theorem stats796 : actualRows796.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows796=5388 := by core033_kernel_decide
theorem rows797 : actualRows797=WordField.canonicalRows actualModulus 797 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats797 : actualRows797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows797=2892 := by core033_kernel_decide
theorem rows798 : actualRows798=WordField.canonicalRows actualModulus 798 (.bnot 797) := by core033_kernel_decide
theorem stats798 : actualRows798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows798=6276 := by core033_kernel_decide
theorem rows799 : actualRows799=WordField.canonicalRows actualModulus 799 (.badd 796 798) := by core033_kernel_decide
theorem stats799 : actualRows799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows799=5388 := by core033_kernel_decide
theorem rows800 : actualRows800=WordField.canonicalRows actualModulus 800 (.bnot 799) := by core033_kernel_decide
theorem stats800 : actualRows800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows800=6276 := by core033_kernel_decide
theorem rows801 : actualRows801=WordField.canonicalRows actualModulus 801 (.band 795 800) := by core033_kernel_decide
theorem stats801 : actualRows801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows801=5124 := by core033_kernel_decide
theorem rows802 : actualRows802=WordField.canonicalRows actualModulus 802 (.bxor 791 801) := by core033_kernel_decide
theorem stats802 : actualRows802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows802=7428 := by core033_kernel_decide
theorem rows803 : actualRows803=WordField.canonicalRows actualModulus 803 (.shr 802 31) := by core033_kernel_decide
theorem stats803 : actualRows803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows803=2892 := by core033_kernel_decide
theorem rows804 : actualRows804=WordField.canonicalRows actualModulus 804 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats804 : actualRows804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows804=2892 := by core033_kernel_decide
theorem rows805 : actualRows805=WordField.canonicalRows actualModulus 805 (.bxor 803 804) := by core033_kernel_decide
theorem stats805 : actualRows805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows805=7428 := by core033_kernel_decide
theorem rows806 : actualRows806=WordField.canonicalRows actualModulus 806 (.band 787 805) := by core033_kernel_decide
theorem stats806 : actualRows806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows806=5124 := by core033_kernel_decide
theorem rows807 : actualRows807=WordField.canonicalRows actualModulus 807 (.band 745 806) := by core033_kernel_decide
theorem stats807 : actualRows807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows807=5124 := by core033_kernel_decide
def partRows12 : List R1CS.Row := actualRows794++actualRows795++actualRows796++actualRows797++actualRows798++actualRows799++actualRows800++actualRows801++actualRows802++actualRows803++actualRows804++actualRows805++actualRows806++actualRows807
def partOps12 : List WordIR.Op := [.bnot 793,.bxor 792 794,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 797,.badd 796 798,.bnot 799,.band 795 800,.bxor 791 801,.shr 802 31,.literal (BitVec.ofNat 32 1),.bxor 803 804,.band 787 805,.band 745 806]
theorem partExact12 : partRows12=WordField.rows actualModulus 794 partOps12 := by
  simp only [partRows12,partOps12,WordField.rows,rows794,rows795,rows796,rows797,rows798,rows799,rows800,rows801,rows802,rows803,rows804,rows805,rows806,rows807,List.append_assoc,List.append_nil]
theorem partLength12 : partOps12.length=14 := by decide
theorem partStats12 : partRows12.length=478 ∧ MatrixRowBlocks.rowsWeight partRows12=75936 := by
  simp only [partRows12,List.length_append,MatrixRowBlocks.rows_weight_append,stats794.1,stats794.2,stats795.1,stats795.2,stats796.1,stats796.2,stats797.1,stats797.2,stats798.1,stats798.2,stats799.1,stats799.2,stats800.1,stats800.2,stats801.1,stats801.2,stats802.1,stats802.2,stats803.1,stats803.2,stats804.1,stats804.2,stats805.1,stats805.2,stats806.1,stats806.2,stats807.1,stats807.2]
  decide
end ParentBranchCheckedRows
