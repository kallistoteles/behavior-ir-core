import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData59
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3819 : actualRows3819=WordField.canonicalRows actualModulus 3819 (.badd 652 3790) := by core033_kernel_decide
theorem stats3819 : actualRows3819.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3819=5388 := by core033_kernel_decide
theorem rows3820 : actualRows3820=WordField.canonicalRows actualModulus 3820 (.badd 656 3764) := by core033_kernel_decide
theorem stats3820 : actualRows3820.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3820=5388 := by core033_kernel_decide
theorem rows3821 : actualRows3821=WordField.canonicalRows actualModulus 3821 (.badd 660 3738) := by core033_kernel_decide
theorem stats3821 : actualRows3821.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3821=5388 := by core033_kernel_decide
theorem rows3822 : actualRows3822=WordField.canonicalRows actualModulus 3822 (.badd 664 3817) := by core033_kernel_decide
theorem stats3822 : actualRows3822.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3822=5388 := by core033_kernel_decide
theorem rows3823 : actualRows3823=WordField.canonicalRows actualModulus 3823 (.badd 668 3791) := by core033_kernel_decide
theorem stats3823 : actualRows3823.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3823=5388 := by core033_kernel_decide
theorem rows3824 : actualRows3824=WordField.canonicalRows actualModulus 3824 (.badd 672 3765) := by core033_kernel_decide
theorem stats3824 : actualRows3824.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3824=5388 := by core033_kernel_decide
theorem rows3825 : actualRows3825=WordField.canonicalRows actualModulus 3825 (.badd 676 3739) := by core033_kernel_decide
theorem stats3825 : actualRows3825.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3825=5388 := by core033_kernel_decide
theorem rows3826 : actualRows3826=WordField.canonicalRows actualModulus 3826 (.band 645 632) := by core033_kernel_decide
theorem stats3826 : actualRows3826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3826=5124 := by core033_kernel_decide
theorem rows3827 : actualRows3827=WordField.canonicalRows actualModulus 3827 (.bxor 850 3826) := by core033_kernel_decide
theorem stats3827 : actualRows3827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3827=7428 := by core033_kernel_decide
theorem rows3828 : actualRows3828=WordField.canonicalRows actualModulus 3828 (.bxor 0 43) := by core033_kernel_decide
theorem stats3828 : actualRows3828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3828=7428 := by core033_kernel_decide
theorem rows3829 : actualRows3829=WordField.canonicalRows actualModulus 3829 (.band 3828 50) := by core033_kernel_decide
theorem stats3829 : actualRows3829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3829=5124 := by core033_kernel_decide
theorem rows3830 : actualRows3830=WordField.canonicalRows actualModulus 3830 (.bxor 3828 50) := by core033_kernel_decide
theorem stats3830 : actualRows3830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3830=7428 := by core033_kernel_decide
theorem rows3831 : actualRows3831=WordField.canonicalRows actualModulus 3831 (.badd 3828 50) := by core033_kernel_decide
theorem stats3831 : actualRows3831.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3831=5388 := by core033_kernel_decide
theorem rows3832 : actualRows3832=WordField.canonicalRows actualModulus 3832 (.bnot 3831) := by core033_kernel_decide
theorem stats3832 : actualRows3832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3832=6276 := by core033_kernel_decide
theorem rows3833 : actualRows3833=WordField.canonicalRows actualModulus 3833 (.band 3830 3832) := by core033_kernel_decide
theorem stats3833 : actualRows3833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3833=5124 := by core033_kernel_decide
theorem rows3834 : actualRows3834=WordField.canonicalRows actualModulus 3834 (.bxor 3829 3833) := by core033_kernel_decide
theorem stats3834 : actualRows3834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3834=7428 := by core033_kernel_decide
theorem rows3835 : actualRows3835=WordField.canonicalRows actualModulus 3835 (.shr 3834 31) := by core033_kernel_decide
theorem stats3835 : actualRows3835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3835=2892 := by core033_kernel_decide
theorem rows3836 : actualRows3836=WordField.canonicalRows actualModulus 3836 (.bxor 3835 43) := by core033_kernel_decide
theorem stats3836 : actualRows3836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3836=7428 := by core033_kernel_decide
theorem rows3837 : actualRows3837=WordField.canonicalRows actualModulus 3837 (.bxor 3836 641) := by core033_kernel_decide
theorem stats3837 : actualRows3837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3837=7428 := by core033_kernel_decide
def partRows59 : List R1CS.Row := actualRows3819++actualRows3820++actualRows3821++actualRows3822++actualRows3823++actualRows3824++actualRows3825++actualRows3826++actualRows3827++actualRows3828++actualRows3829++actualRows3830++actualRows3831++actualRows3832++actualRows3833++actualRows3834++actualRows3835++actualRows3836++actualRows3837
def partOps59 : List WordIR.Op := [.badd 652 3790,.badd 656 3764,.badd 660 3738,.badd 664 3817,.badd 668 3791,.badd 672 3765,.badd 676 3739,.band 645 632,.bxor 850 3826,.bxor 0 43,.band 3828 50,.bxor 3828 50,.badd 3828 50,.bnot 3831,.band 3830 3832,.bxor 3829 3833,.shr 3834 31,.bxor 3835 43,.bxor 3836 641]
theorem partExact59 : partRows59=WordField.rows actualModulus 3819 partOps59 := by
  simp only [partRows59,partOps59,WordField.rows,rows3819,rows3820,rows3821,rows3822,rows3823,rows3824,rows3825,rows3826,rows3827,rows3828,rows3829,rows3830,rows3831,rows3832,rows3833,rows3834,rows3835,rows3836,rows3837,List.append_assoc,List.append_nil]
theorem partLength59 : partOps59.length=19 := by decide
theorem partStats59 : partRows59.length=654 ∧ MatrixRowBlocks.rowsWeight partRows59=112212 := by
  simp only [partRows59,List.length_append,MatrixRowBlocks.rows_weight_append,stats3819.1,stats3819.2,stats3820.1,stats3820.2,stats3821.1,stats3821.2,stats3822.1,stats3822.2,stats3823.1,stats3823.2,stats3824.1,stats3824.2,stats3825.1,stats3825.2,stats3826.1,stats3826.2,stats3827.1,stats3827.2,stats3828.1,stats3828.2,stats3829.1,stats3829.2,stats3830.1,stats3830.2,stats3831.1,stats3831.2,stats3832.1,stats3832.2,stats3833.1,stats3833.2,stats3834.1,stats3834.2,stats3835.1,stats3835.2,stats3836.1,stats3836.2,stats3837.1,stats3837.2]
  decide
end SharedFrameCheckedRows
