import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData58
import AuthenticatedBranchRoundInstructionMatrixData59
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3766 : actualRows3766=WordField.canonicalRows actualModulus 3766 (.bnot 3765) := by core033_kernel_decide
theorem stats3766 : actualRows3766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3766=6276 := by core033_kernel_decide
theorem rows3767 : actualRows3767=WordField.canonicalRows actualModulus 3767 (.band 3760 3766) := by core033_kernel_decide
theorem stats3767 : actualRows3767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3767=5124 := by core033_kernel_decide
theorem rows3768 : actualRows3768=WordField.canonicalRows actualModulus 3768 (.bxor 3755 3767) := by core033_kernel_decide
theorem stats3768 : actualRows3768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3768=7428 := by core033_kernel_decide
theorem rows3769 : actualRows3769=WordField.canonicalRows actualModulus 3769 (.shr 3768 31) := by core033_kernel_decide
theorem stats3769 : actualRows3769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3769=2892 := by core033_kernel_decide
theorem rows3770 : actualRows3770=WordField.canonicalRows actualModulus 3770 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3770 : actualRows3770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3770=2892 := by core033_kernel_decide
theorem rows3771 : actualRows3771=WordField.canonicalRows actualModulus 3771 (.bxor 3769 3770) := by core033_kernel_decide
theorem stats3771 : actualRows3771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3771=7428 := by core033_kernel_decide
theorem rows3772 : actualRows3772=WordField.canonicalRows actualModulus 3772 (.bnot 3771) := by core033_kernel_decide
theorem stats3772 : actualRows3772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3772=6276 := by core033_kernel_decide
theorem rows3773 : actualRows3773=WordField.canonicalRows actualModulus 3773 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3773 : actualRows3773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3773=2892 := by core033_kernel_decide
theorem rows3774 : actualRows3774=WordField.canonicalRows actualModulus 3774 (.badd 3772 3773) := by core033_kernel_decide
theorem stats3774 : actualRows3774.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3774=5388 := by core033_kernel_decide
theorem rows3775 : actualRows3775=WordField.canonicalRows actualModulus 3775 (.band 3774 2708) := by core033_kernel_decide
theorem stats3775 : actualRows3775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3775=5124 := by core033_kernel_decide
theorem rows3776 : actualRows3776=WordField.canonicalRows actualModulus 3776 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3776 : actualRows3776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3776=2892 := by core033_kernel_decide
theorem rows3777 : actualRows3777=WordField.canonicalRows actualModulus 3777 (.bxor 1299 3776) := by core033_kernel_decide
theorem stats3777 : actualRows3777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3777=7428 := by core033_kernel_decide
theorem rows3778 : actualRows3778=WordField.canonicalRows actualModulus 3778 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3778 : actualRows3778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3778=2820 := by core033_kernel_decide
theorem rows3779 : actualRows3779=WordField.canonicalRows actualModulus 3779 (.bnot 3778) := by core033_kernel_decide
theorem stats3779 : actualRows3779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3779=6276 := by core033_kernel_decide
theorem rows3780 : actualRows3780=WordField.canonicalRows actualModulus 3780 (.band 3777 3779) := by core033_kernel_decide
theorem stats3780 : actualRows3780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3780=5124 := by core033_kernel_decide
theorem rows3781 : actualRows3781=WordField.canonicalRows actualModulus 3781 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3781 : actualRows3781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3781=2892 := by core033_kernel_decide
theorem rows3782 : actualRows3782=WordField.canonicalRows actualModulus 3782 (.bxor 1299 3781) := by core033_kernel_decide
theorem stats3782 : actualRows3782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3782=7428 := by core033_kernel_decide
theorem rows3783 : actualRows3783=WordField.canonicalRows actualModulus 3783 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3783 : actualRows3783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3783=2820 := by core033_kernel_decide
theorem rows3784 : actualRows3784=WordField.canonicalRows actualModulus 3784 (.bnot 3783) := by core033_kernel_decide
theorem stats3784 : actualRows3784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3784=6276 := by core033_kernel_decide
theorem rows3785 : actualRows3785=WordField.canonicalRows actualModulus 3785 (.bxor 3782 3784) := by core033_kernel_decide
theorem stats3785 : actualRows3785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3785=7428 := by core033_kernel_decide
theorem rows3786 : actualRows3786=WordField.canonicalRows actualModulus 3786 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3786 : actualRows3786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3786=2892 := by core033_kernel_decide
theorem rows3787 : actualRows3787=WordField.canonicalRows actualModulus 3787 (.bxor 1299 3786) := by core033_kernel_decide
theorem stats3787 : actualRows3787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3787=7428 := by core033_kernel_decide
theorem rows3788 : actualRows3788=WordField.canonicalRows actualModulus 3788 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3788 : actualRows3788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3788=2820 := by core033_kernel_decide
theorem rows3789 : actualRows3789=WordField.canonicalRows actualModulus 3789 (.bnot 3788) := by core033_kernel_decide
theorem stats3789 : actualRows3789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3789=6276 := by core033_kernel_decide
theorem rows3790 : actualRows3790=WordField.canonicalRows actualModulus 3790 (.badd 3787 3789) := by core033_kernel_decide
theorem stats3790 : actualRows3790.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3790=5388 := by core033_kernel_decide
theorem rows3791 : actualRows3791=WordField.canonicalRows actualModulus 3791 (.bnot 3790) := by core033_kernel_decide
theorem stats3791 : actualRows3791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3791=6276 := by core033_kernel_decide
theorem rows3792 : actualRows3792=WordField.canonicalRows actualModulus 3792 (.band 3785 3791) := by core033_kernel_decide
theorem stats3792 : actualRows3792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3792=5124 := by core033_kernel_decide
theorem rows3793 : actualRows3793=WordField.canonicalRows actualModulus 3793 (.bxor 3780 3792) := by core033_kernel_decide
theorem stats3793 : actualRows3793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3793=7428 := by core033_kernel_decide
theorem rows3794 : actualRows3794=WordField.canonicalRows actualModulus 3794 (.shr 3793 31) := by core033_kernel_decide
theorem stats3794 : actualRows3794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3794=2892 := by core033_kernel_decide
theorem rows3795 : actualRows3795=WordField.canonicalRows actualModulus 3795 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3795 : actualRows3795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3795=2892 := by core033_kernel_decide
theorem rows3796 : actualRows3796=WordField.canonicalRows actualModulus 3796 (.bxor 3794 3795) := by core033_kernel_decide
theorem stats3796 : actualRows3796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3796=7428 := by core033_kernel_decide
theorem rows3797 : actualRows3797=WordField.canonicalRows actualModulus 3797 (.bnot 3796) := by core033_kernel_decide
theorem stats3797 : actualRows3797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3797=6276 := by core033_kernel_decide
theorem rows3798 : actualRows3798=WordField.canonicalRows actualModulus 3798 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3798 : actualRows3798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3798=2892 := by core033_kernel_decide
theorem rows3799 : actualRows3799=WordField.canonicalRows actualModulus 3799 (.badd 3797 3798) := by core033_kernel_decide
theorem stats3799 : actualRows3799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3799=5388 := by core033_kernel_decide
theorem rows3800 : actualRows3800=WordField.canonicalRows actualModulus 3800 (.bnot 3799) := by core033_kernel_decide
theorem stats3800 : actualRows3800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3800=6276 := by core033_kernel_decide
theorem rows3801 : actualRows3801=WordField.canonicalRows actualModulus 3801 (.band 3800 2550) := by core033_kernel_decide
theorem stats3801 : actualRows3801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3801=5124 := by core033_kernel_decide
theorem rows3802 : actualRows3802=WordField.canonicalRows actualModulus 3802 (.bxor 3775 3801) := by core033_kernel_decide
theorem stats3802 : actualRows3802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3802=7428 := by core033_kernel_decide
theorem rows3803 : actualRows3803=WordField.canonicalRows actualModulus 3803 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3803 : actualRows3803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3803=2892 := by core033_kernel_decide
theorem rows3804 : actualRows3804=WordField.canonicalRows actualModulus 3804 (.bxor 1299 3803) := by core033_kernel_decide
theorem stats3804 : actualRows3804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3804=7428 := by core033_kernel_decide
theorem rows3805 : actualRows3805=WordField.canonicalRows actualModulus 3805 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3805 : actualRows3805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3805=2820 := by core033_kernel_decide
theorem rows3806 : actualRows3806=WordField.canonicalRows actualModulus 3806 (.bnot 3805) := by core033_kernel_decide
theorem stats3806 : actualRows3806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3806=6276 := by core033_kernel_decide
theorem rows3807 : actualRows3807=WordField.canonicalRows actualModulus 3807 (.band 3804 3806) := by core033_kernel_decide
theorem stats3807 : actualRows3807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3807=5124 := by core033_kernel_decide
theorem rows3808 : actualRows3808=WordField.canonicalRows actualModulus 3808 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3808 : actualRows3808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3808=2892 := by core033_kernel_decide
theorem rows3809 : actualRows3809=WordField.canonicalRows actualModulus 3809 (.bxor 1299 3808) := by core033_kernel_decide
theorem stats3809 : actualRows3809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3809=7428 := by core033_kernel_decide
theorem rows3810 : actualRows3810=WordField.canonicalRows actualModulus 3810 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3810 : actualRows3810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3810=2820 := by core033_kernel_decide
theorem rows3811 : actualRows3811=WordField.canonicalRows actualModulus 3811 (.bnot 3810) := by core033_kernel_decide
theorem stats3811 : actualRows3811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3811=6276 := by core033_kernel_decide
theorem rows3812 : actualRows3812=WordField.canonicalRows actualModulus 3812 (.bxor 3809 3811) := by core033_kernel_decide
theorem stats3812 : actualRows3812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3812=7428 := by core033_kernel_decide
theorem rows3813 : actualRows3813=WordField.canonicalRows actualModulus 3813 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3813 : actualRows3813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3813=2892 := by core033_kernel_decide
theorem rows3814 : actualRows3814=WordField.canonicalRows actualModulus 3814 (.bxor 1299 3813) := by core033_kernel_decide
theorem stats3814 : actualRows3814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3814=7428 := by core033_kernel_decide
theorem rows3815 : actualRows3815=WordField.canonicalRows actualModulus 3815 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3815 : actualRows3815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3815=2820 := by core033_kernel_decide
theorem rows3816 : actualRows3816=WordField.canonicalRows actualModulus 3816 (.bnot 3815) := by core033_kernel_decide
theorem stats3816 : actualRows3816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3816=6276 := by core033_kernel_decide
theorem rows3817 : actualRows3817=WordField.canonicalRows actualModulus 3817 (.badd 3814 3816) := by core033_kernel_decide
theorem stats3817 : actualRows3817.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3817=5388 := by core033_kernel_decide
theorem rows3818 : actualRows3818=WordField.canonicalRows actualModulus 3818 (.bnot 3817) := by core033_kernel_decide
theorem stats3818 : actualRows3818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3818=6276 := by core033_kernel_decide
theorem rows3819 : actualRows3819=WordField.canonicalRows actualModulus 3819 (.band 3812 3818) := by core033_kernel_decide
theorem stats3819 : actualRows3819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3819=5124 := by core033_kernel_decide
theorem rows3820 : actualRows3820=WordField.canonicalRows actualModulus 3820 (.bxor 3807 3819) := by core033_kernel_decide
theorem stats3820 : actualRows3820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3820=7428 := by core033_kernel_decide
theorem rows3821 : actualRows3821=WordField.canonicalRows actualModulus 3821 (.shr 3820 31) := by core033_kernel_decide
theorem stats3821 : actualRows3821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3821=2892 := by core033_kernel_decide
theorem rows3822 : actualRows3822=WordField.canonicalRows actualModulus 3822 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3822 : actualRows3822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3822=2892 := by core033_kernel_decide
theorem rows3823 : actualRows3823=WordField.canonicalRows actualModulus 3823 (.bxor 3821 3822) := by core033_kernel_decide
theorem stats3823 : actualRows3823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3823=7428 := by core033_kernel_decide
theorem rows3824 : actualRows3824=WordField.canonicalRows actualModulus 3824 (.bnot 3823) := by core033_kernel_decide
theorem stats3824 : actualRows3824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3824=6276 := by core033_kernel_decide
theorem rows3825 : actualRows3825=WordField.canonicalRows actualModulus 3825 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3825 : actualRows3825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3825=2892 := by core033_kernel_decide
theorem rows3826 : actualRows3826=WordField.canonicalRows actualModulus 3826 (.badd 3824 3825) := by core033_kernel_decide
theorem stats3826 : actualRows3826.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3826=5388 := by core033_kernel_decide
theorem rows3827 : actualRows3827=WordField.canonicalRows actualModulus 3827 (.band 3826 2711) := by core033_kernel_decide
theorem stats3827 : actualRows3827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3827=5124 := by core033_kernel_decide
theorem rows3828 : actualRows3828=WordField.canonicalRows actualModulus 3828 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3828 : actualRows3828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3828=2892 := by core033_kernel_decide
theorem rows3829 : actualRows3829=WordField.canonicalRows actualModulus 3829 (.bxor 1299 3828) := by core033_kernel_decide
theorem stats3829 : actualRows3829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3829=7428 := by core033_kernel_decide
def partRows57 : List R1CS.Row := actualRows3766++actualRows3767++actualRows3768++actualRows3769++actualRows3770++actualRows3771++actualRows3772++actualRows3773++actualRows3774++actualRows3775++actualRows3776++actualRows3777++actualRows3778++actualRows3779++actualRows3780++actualRows3781++actualRows3782++actualRows3783++actualRows3784++actualRows3785++actualRows3786++actualRows3787++actualRows3788++actualRows3789++actualRows3790++actualRows3791++actualRows3792++actualRows3793++actualRows3794++actualRows3795++actualRows3796++actualRows3797++actualRows3798++actualRows3799++actualRows3800++actualRows3801++actualRows3802++actualRows3803++actualRows3804++actualRows3805++actualRows3806++actualRows3807++actualRows3808++actualRows3809++actualRows3810++actualRows3811++actualRows3812++actualRows3813++actualRows3814++actualRows3815++actualRows3816++actualRows3817++actualRows3818++actualRows3819++actualRows3820++actualRows3821++actualRows3822++actualRows3823++actualRows3824++actualRows3825++actualRows3826++actualRows3827++actualRows3828++actualRows3829
def partOps57 : List WordIR.Op := [.bnot 3765,.band 3760 3766,.bxor 3755 3767,.shr 3768 31,.literal (BitVec.ofNat 32 1),.bxor 3769 3770,.bnot 3771,.literal (BitVec.ofNat 32 1),.badd 3772 3773,.band 3774 2708,.literal (BitVec.ofNat 32 2),.bxor 1299 3776,.literal (BitVec.ofNat 32 0),.bnot 3778,.band 3777 3779,.literal (BitVec.ofNat 32 2),.bxor 1299 3781,.literal (BitVec.ofNat 32 0),.bnot 3783,.bxor 3782 3784,.literal (BitVec.ofNat 32 2),.bxor 1299 3786,.literal (BitVec.ofNat 32 0),.bnot 3788,.badd 3787 3789,.bnot 3790,.band 3785 3791,.bxor 3780 3792,.shr 3793 31,.literal (BitVec.ofNat 32 1),.bxor 3794 3795,.bnot 3796,.literal (BitVec.ofNat 32 1),.badd 3797 3798,.bnot 3799,.band 3800 2550,.bxor 3775 3801,.literal (BitVec.ofNat 32 2),.bxor 1299 3803,.literal (BitVec.ofNat 32 0),.bnot 3805,.band 3804 3806,.literal (BitVec.ofNat 32 2),.bxor 1299 3808,.literal (BitVec.ofNat 32 0),.bnot 3810,.bxor 3809 3811,.literal (BitVec.ofNat 32 2),.bxor 1299 3813,.literal (BitVec.ofNat 32 0),.bnot 3815,.badd 3814 3816,.bnot 3817,.band 3812 3818,.bxor 3807 3819,.shr 3820 31,.literal (BitVec.ofNat 32 1),.bxor 3821 3822,.bnot 3823,.literal (BitVec.ofNat 32 1),.badd 3824 3825,.band 3826 2711,.literal (BitVec.ofNat 32 2),.bxor 1299 3828]
theorem partExact57 : partRows57=WordField.rows actualModulus 3766 partOps57 := by
  simp only [partRows57,partOps57,WordField.rows,rows3766,rows3767,rows3768,rows3769,rows3770,rows3771,rows3772,rows3773,rows3774,rows3775,rows3776,rows3777,rows3778,rows3779,rows3780,rows3781,rows3782,rows3783,rows3784,rows3785,rows3786,rows3787,rows3788,rows3789,rows3790,rows3791,rows3792,rows3793,rows3794,rows3795,rows3796,rows3797,rows3798,rows3799,rows3800,rows3801,rows3802,rows3803,rows3804,rows3805,rows3806,rows3807,rows3808,rows3809,rows3810,rows3811,rows3812,rows3813,rows3814,rows3815,rows3816,rows3817,rows3818,rows3819,rows3820,rows3821,rows3822,rows3823,rows3824,rows3825,rows3826,rows3827,rows3828,rows3829,List.append_assoc,List.append_nil]
theorem partLength57 : partOps57.length=64 := by decide
theorem partStats57 : partRows57.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows57=331560 := by
  simp only [partRows57,List.length_append,MatrixRowBlocks.rows_weight_append,stats3766.1,stats3766.2,stats3767.1,stats3767.2,stats3768.1,stats3768.2,stats3769.1,stats3769.2,stats3770.1,stats3770.2,stats3771.1,stats3771.2,stats3772.1,stats3772.2,stats3773.1,stats3773.2,stats3774.1,stats3774.2,stats3775.1,stats3775.2,stats3776.1,stats3776.2,stats3777.1,stats3777.2,stats3778.1,stats3778.2,stats3779.1,stats3779.2,stats3780.1,stats3780.2,stats3781.1,stats3781.2,stats3782.1,stats3782.2,stats3783.1,stats3783.2,stats3784.1,stats3784.2,stats3785.1,stats3785.2,stats3786.1,stats3786.2,stats3787.1,stats3787.2,stats3788.1,stats3788.2,stats3789.1,stats3789.2,stats3790.1,stats3790.2,stats3791.1,stats3791.2,stats3792.1,stats3792.2,stats3793.1,stats3793.2,stats3794.1,stats3794.2,stats3795.1,stats3795.2,stats3796.1,stats3796.2,stats3797.1,stats3797.2,stats3798.1,stats3798.2,stats3799.1,stats3799.2,stats3800.1,stats3800.2,stats3801.1,stats3801.2,stats3802.1,stats3802.2,stats3803.1,stats3803.2,stats3804.1,stats3804.2,stats3805.1,stats3805.2,stats3806.1,stats3806.2,stats3807.1,stats3807.2,stats3808.1,stats3808.2,stats3809.1,stats3809.2,stats3810.1,stats3810.2,stats3811.1,stats3811.2,stats3812.1,stats3812.2,stats3813.1,stats3813.2,stats3814.1,stats3814.2,stats3815.1,stats3815.2,stats3816.1,stats3816.2,stats3817.1,stats3817.2,stats3818.1,stats3818.2,stats3819.1,stats3819.2,stats3820.1,stats3820.2,stats3821.1,stats3821.2,stats3822.1,stats3822.2,stats3823.1,stats3823.2,stats3824.1,stats3824.2,stats3825.1,stats3825.2,stats3826.1,stats3826.2,stats3827.1,stats3827.2,stats3828.1,stats3828.2,stats3829.1,stats3829.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
