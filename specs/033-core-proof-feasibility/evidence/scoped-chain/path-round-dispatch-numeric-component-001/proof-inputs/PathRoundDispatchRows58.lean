import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData58
import PathRoundDispatchInstructionMatrixData59
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3755 : actualRows3755=WordField.canonicalRows actualModulus 3755 (.bxor 96 3754) := by core033_kernel_decide
theorem stats3755 : actualRows3755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3755=7428 := by core033_kernel_decide
theorem rows3756 : actualRows3756=WordField.canonicalRows actualModulus 3756 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3756 : actualRows3756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3756=2820 := by core033_kernel_decide
theorem rows3757 : actualRows3757=WordField.canonicalRows actualModulus 3757 (.bnot 3756) := by core033_kernel_decide
theorem stats3757 : actualRows3757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3757=6276 := by core033_kernel_decide
theorem rows3758 : actualRows3758=WordField.canonicalRows actualModulus 3758 (.badd 3755 3757) := by core033_kernel_decide
theorem stats3758 : actualRows3758.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3758=5388 := by core033_kernel_decide
theorem rows3759 : actualRows3759=WordField.canonicalRows actualModulus 3759 (.bnot 3758) := by core033_kernel_decide
theorem stats3759 : actualRows3759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3759=6276 := by core033_kernel_decide
theorem rows3760 : actualRows3760=WordField.canonicalRows actualModulus 3760 (.band 3753 3759) := by core033_kernel_decide
theorem stats3760 : actualRows3760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3760=5124 := by core033_kernel_decide
theorem rows3761 : actualRows3761=WordField.canonicalRows actualModulus 3761 (.bxor 3748 3760) := by core033_kernel_decide
theorem stats3761 : actualRows3761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3761=7428 := by core033_kernel_decide
theorem rows3762 : actualRows3762=WordField.canonicalRows actualModulus 3762 (.shr 3761 31) := by core033_kernel_decide
theorem stats3762 : actualRows3762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3762=2892 := by core033_kernel_decide
theorem rows3763 : actualRows3763=WordField.canonicalRows actualModulus 3763 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3763 : actualRows3763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3763=2892 := by core033_kernel_decide
theorem rows3764 : actualRows3764=WordField.canonicalRows actualModulus 3764 (.bxor 3762 3763) := by core033_kernel_decide
theorem stats3764 : actualRows3764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3764=7428 := by core033_kernel_decide
theorem rows3765 : actualRows3765=WordField.canonicalRows actualModulus 3765 (.bnot 3764) := by core033_kernel_decide
theorem stats3765 : actualRows3765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3765=6276 := by core033_kernel_decide
theorem rows3766 : actualRows3766=WordField.canonicalRows actualModulus 3766 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3766 : actualRows3766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3766=2892 := by core033_kernel_decide
theorem rows3767 : actualRows3767=WordField.canonicalRows actualModulus 3767 (.badd 3765 3766) := by core033_kernel_decide
theorem stats3767 : actualRows3767.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3767=5388 := by core033_kernel_decide
theorem rows3768 : actualRows3768=WordField.canonicalRows actualModulus 3768 (.band 3767 1574) := by core033_kernel_decide
theorem stats3768 : actualRows3768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3768=5124 := by core033_kernel_decide
theorem rows3769 : actualRows3769=WordField.canonicalRows actualModulus 3769 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3769 : actualRows3769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3769=2892 := by core033_kernel_decide
theorem rows3770 : actualRows3770=WordField.canonicalRows actualModulus 3770 (.bxor 96 3769) := by core033_kernel_decide
theorem stats3770 : actualRows3770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3770=7428 := by core033_kernel_decide
theorem rows3771 : actualRows3771=WordField.canonicalRows actualModulus 3771 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3771 : actualRows3771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3771=2820 := by core033_kernel_decide
theorem rows3772 : actualRows3772=WordField.canonicalRows actualModulus 3772 (.bnot 3771) := by core033_kernel_decide
theorem stats3772 : actualRows3772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3772=6276 := by core033_kernel_decide
theorem rows3773 : actualRows3773=WordField.canonicalRows actualModulus 3773 (.band 3770 3772) := by core033_kernel_decide
theorem stats3773 : actualRows3773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3773=5124 := by core033_kernel_decide
theorem rows3774 : actualRows3774=WordField.canonicalRows actualModulus 3774 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3774 : actualRows3774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3774=2892 := by core033_kernel_decide
theorem rows3775 : actualRows3775=WordField.canonicalRows actualModulus 3775 (.bxor 96 3774) := by core033_kernel_decide
theorem stats3775 : actualRows3775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3775=7428 := by core033_kernel_decide
theorem rows3776 : actualRows3776=WordField.canonicalRows actualModulus 3776 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3776 : actualRows3776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3776=2820 := by core033_kernel_decide
theorem rows3777 : actualRows3777=WordField.canonicalRows actualModulus 3777 (.bnot 3776) := by core033_kernel_decide
theorem stats3777 : actualRows3777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3777=6276 := by core033_kernel_decide
theorem rows3778 : actualRows3778=WordField.canonicalRows actualModulus 3778 (.bxor 3775 3777) := by core033_kernel_decide
theorem stats3778 : actualRows3778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3778=7428 := by core033_kernel_decide
theorem rows3779 : actualRows3779=WordField.canonicalRows actualModulus 3779 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3779 : actualRows3779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3779=2892 := by core033_kernel_decide
theorem rows3780 : actualRows3780=WordField.canonicalRows actualModulus 3780 (.bxor 96 3779) := by core033_kernel_decide
theorem stats3780 : actualRows3780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3780=7428 := by core033_kernel_decide
theorem rows3781 : actualRows3781=WordField.canonicalRows actualModulus 3781 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3781 : actualRows3781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3781=2820 := by core033_kernel_decide
theorem rows3782 : actualRows3782=WordField.canonicalRows actualModulus 3782 (.bnot 3781) := by core033_kernel_decide
theorem stats3782 : actualRows3782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3782=6276 := by core033_kernel_decide
theorem rows3783 : actualRows3783=WordField.canonicalRows actualModulus 3783 (.badd 3780 3782) := by core033_kernel_decide
theorem stats3783 : actualRows3783.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3783=5388 := by core033_kernel_decide
theorem rows3784 : actualRows3784=WordField.canonicalRows actualModulus 3784 (.bnot 3783) := by core033_kernel_decide
theorem stats3784 : actualRows3784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3784=6276 := by core033_kernel_decide
theorem rows3785 : actualRows3785=WordField.canonicalRows actualModulus 3785 (.band 3778 3784) := by core033_kernel_decide
theorem stats3785 : actualRows3785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3785=5124 := by core033_kernel_decide
theorem rows3786 : actualRows3786=WordField.canonicalRows actualModulus 3786 (.bxor 3773 3785) := by core033_kernel_decide
theorem stats3786 : actualRows3786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3786=7428 := by core033_kernel_decide
theorem rows3787 : actualRows3787=WordField.canonicalRows actualModulus 3787 (.shr 3786 31) := by core033_kernel_decide
theorem stats3787 : actualRows3787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3787=2892 := by core033_kernel_decide
theorem rows3788 : actualRows3788=WordField.canonicalRows actualModulus 3788 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3788 : actualRows3788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3788=2892 := by core033_kernel_decide
theorem rows3789 : actualRows3789=WordField.canonicalRows actualModulus 3789 (.bxor 3787 3788) := by core033_kernel_decide
theorem stats3789 : actualRows3789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3789=7428 := by core033_kernel_decide
theorem rows3790 : actualRows3790=WordField.canonicalRows actualModulus 3790 (.bnot 3789) := by core033_kernel_decide
theorem stats3790 : actualRows3790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3790=6276 := by core033_kernel_decide
theorem rows3791 : actualRows3791=WordField.canonicalRows actualModulus 3791 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3791 : actualRows3791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3791=2892 := by core033_kernel_decide
theorem rows3792 : actualRows3792=WordField.canonicalRows actualModulus 3792 (.badd 3790 3791) := by core033_kernel_decide
theorem stats3792 : actualRows3792.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3792=5388 := by core033_kernel_decide
theorem rows3793 : actualRows3793=WordField.canonicalRows actualModulus 3793 (.bnot 3792) := by core033_kernel_decide
theorem stats3793 : actualRows3793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3793=6276 := by core033_kernel_decide
theorem rows3794 : actualRows3794=WordField.canonicalRows actualModulus 3794 (.band 3793 1382) := by core033_kernel_decide
theorem stats3794 : actualRows3794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3794=5124 := by core033_kernel_decide
theorem rows3795 : actualRows3795=WordField.canonicalRows actualModulus 3795 (.bxor 3768 3794) := by core033_kernel_decide
theorem stats3795 : actualRows3795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3795=7428 := by core033_kernel_decide
theorem rows3796 : actualRows3796=WordField.canonicalRows actualModulus 3796 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3796 : actualRows3796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3796=2892 := by core033_kernel_decide
theorem rows3797 : actualRows3797=WordField.canonicalRows actualModulus 3797 (.bxor 96 3796) := by core033_kernel_decide
theorem stats3797 : actualRows3797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3797=7428 := by core033_kernel_decide
theorem rows3798 : actualRows3798=WordField.canonicalRows actualModulus 3798 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3798 : actualRows3798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3798=2820 := by core033_kernel_decide
theorem rows3799 : actualRows3799=WordField.canonicalRows actualModulus 3799 (.bnot 3798) := by core033_kernel_decide
theorem stats3799 : actualRows3799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3799=6276 := by core033_kernel_decide
theorem rows3800 : actualRows3800=WordField.canonicalRows actualModulus 3800 (.band 3797 3799) := by core033_kernel_decide
theorem stats3800 : actualRows3800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3800=5124 := by core033_kernel_decide
theorem rows3801 : actualRows3801=WordField.canonicalRows actualModulus 3801 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3801 : actualRows3801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3801=2892 := by core033_kernel_decide
theorem rows3802 : actualRows3802=WordField.canonicalRows actualModulus 3802 (.bxor 96 3801) := by core033_kernel_decide
theorem stats3802 : actualRows3802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3802=7428 := by core033_kernel_decide
theorem rows3803 : actualRows3803=WordField.canonicalRows actualModulus 3803 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3803 : actualRows3803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3803=2820 := by core033_kernel_decide
theorem rows3804 : actualRows3804=WordField.canonicalRows actualModulus 3804 (.bnot 3803) := by core033_kernel_decide
theorem stats3804 : actualRows3804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3804=6276 := by core033_kernel_decide
theorem rows3805 : actualRows3805=WordField.canonicalRows actualModulus 3805 (.bxor 3802 3804) := by core033_kernel_decide
theorem stats3805 : actualRows3805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3805=7428 := by core033_kernel_decide
theorem rows3806 : actualRows3806=WordField.canonicalRows actualModulus 3806 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3806 : actualRows3806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3806=2892 := by core033_kernel_decide
theorem rows3807 : actualRows3807=WordField.canonicalRows actualModulus 3807 (.bxor 96 3806) := by core033_kernel_decide
theorem stats3807 : actualRows3807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3807=7428 := by core033_kernel_decide
theorem rows3808 : actualRows3808=WordField.canonicalRows actualModulus 3808 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3808 : actualRows3808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3808=2820 := by core033_kernel_decide
theorem rows3809 : actualRows3809=WordField.canonicalRows actualModulus 3809 (.bnot 3808) := by core033_kernel_decide
theorem stats3809 : actualRows3809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3809=6276 := by core033_kernel_decide
theorem rows3810 : actualRows3810=WordField.canonicalRows actualModulus 3810 (.badd 3807 3809) := by core033_kernel_decide
theorem stats3810 : actualRows3810.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3810=5388 := by core033_kernel_decide
theorem rows3811 : actualRows3811=WordField.canonicalRows actualModulus 3811 (.bnot 3810) := by core033_kernel_decide
theorem stats3811 : actualRows3811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3811=6276 := by core033_kernel_decide
theorem rows3812 : actualRows3812=WordField.canonicalRows actualModulus 3812 (.band 3805 3811) := by core033_kernel_decide
theorem stats3812 : actualRows3812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3812=5124 := by core033_kernel_decide
theorem rows3813 : actualRows3813=WordField.canonicalRows actualModulus 3813 (.bxor 3800 3812) := by core033_kernel_decide
theorem stats3813 : actualRows3813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3813=7428 := by core033_kernel_decide
theorem rows3814 : actualRows3814=WordField.canonicalRows actualModulus 3814 (.shr 3813 31) := by core033_kernel_decide
theorem stats3814 : actualRows3814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3814=2892 := by core033_kernel_decide
theorem rows3815 : actualRows3815=WordField.canonicalRows actualModulus 3815 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3815 : actualRows3815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3815=2892 := by core033_kernel_decide
theorem rows3816 : actualRows3816=WordField.canonicalRows actualModulus 3816 (.bxor 3814 3815) := by core033_kernel_decide
theorem stats3816 : actualRows3816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3816=7428 := by core033_kernel_decide
theorem rows3817 : actualRows3817=WordField.canonicalRows actualModulus 3817 (.bnot 3816) := by core033_kernel_decide
theorem stats3817 : actualRows3817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3817=6276 := by core033_kernel_decide
theorem rows3818 : actualRows3818=WordField.canonicalRows actualModulus 3818 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3818 : actualRows3818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3818=2892 := by core033_kernel_decide
def partRows58 : List R1CS.Row := actualRows3755++actualRows3756++actualRows3757++actualRows3758++actualRows3759++actualRows3760++actualRows3761++actualRows3762++actualRows3763++actualRows3764++actualRows3765++actualRows3766++actualRows3767++actualRows3768++actualRows3769++actualRows3770++actualRows3771++actualRows3772++actualRows3773++actualRows3774++actualRows3775++actualRows3776++actualRows3777++actualRows3778++actualRows3779++actualRows3780++actualRows3781++actualRows3782++actualRows3783++actualRows3784++actualRows3785++actualRows3786++actualRows3787++actualRows3788++actualRows3789++actualRows3790++actualRows3791++actualRows3792++actualRows3793++actualRows3794++actualRows3795++actualRows3796++actualRows3797++actualRows3798++actualRows3799++actualRows3800++actualRows3801++actualRows3802++actualRows3803++actualRows3804++actualRows3805++actualRows3806++actualRows3807++actualRows3808++actualRows3809++actualRows3810++actualRows3811++actualRows3812++actualRows3813++actualRows3814++actualRows3815++actualRows3816++actualRows3817++actualRows3818
def partOps58 : List WordIR.Op := [.bxor 96 3754,.literal (BitVec.ofNat 32 0),.bnot 3756,.badd 3755 3757,.bnot 3758,.band 3753 3759,.bxor 3748 3760,.shr 3761 31,.literal (BitVec.ofNat 32 1),.bxor 3762 3763,.bnot 3764,.literal (BitVec.ofNat 32 1),.badd 3765 3766,.band 3767 1574,.literal (BitVec.ofNat 32 2),.bxor 96 3769,.literal (BitVec.ofNat 32 0),.bnot 3771,.band 3770 3772,.literal (BitVec.ofNat 32 2),.bxor 96 3774,.literal (BitVec.ofNat 32 0),.bnot 3776,.bxor 3775 3777,.literal (BitVec.ofNat 32 2),.bxor 96 3779,.literal (BitVec.ofNat 32 0),.bnot 3781,.badd 3780 3782,.bnot 3783,.band 3778 3784,.bxor 3773 3785,.shr 3786 31,.literal (BitVec.ofNat 32 1),.bxor 3787 3788,.bnot 3789,.literal (BitVec.ofNat 32 1),.badd 3790 3791,.bnot 3792,.band 3793 1382,.bxor 3768 3794,.literal (BitVec.ofNat 32 2),.bxor 96 3796,.literal (BitVec.ofNat 32 0),.bnot 3798,.band 3797 3799,.literal (BitVec.ofNat 32 2),.bxor 96 3801,.literal (BitVec.ofNat 32 0),.bnot 3803,.bxor 3802 3804,.literal (BitVec.ofNat 32 2),.bxor 96 3806,.literal (BitVec.ofNat 32 0),.bnot 3808,.badd 3807 3809,.bnot 3810,.band 3805 3811,.bxor 3800 3812,.shr 3813 31,.literal (BitVec.ofNat 32 1),.bxor 3814 3815,.bnot 3816,.literal (BitVec.ofNat 32 1)]
theorem partExact58 : partRows58=WordField.rows actualModulus 3755 partOps58 := by
  simp only [partRows58,partOps58,WordField.rows,rows3755,rows3756,rows3757,rows3758,rows3759,rows3760,rows3761,rows3762,rows3763,rows3764,rows3765,rows3766,rows3767,rows3768,rows3769,rows3770,rows3771,rows3772,rows3773,rows3774,rows3775,rows3776,rows3777,rows3778,rows3779,rows3780,rows3781,rows3782,rows3783,rows3784,rows3785,rows3786,rows3787,rows3788,rows3789,rows3790,rows3791,rows3792,rows3793,rows3794,rows3795,rows3796,rows3797,rows3798,rows3799,rows3800,rows3801,rows3802,rows3803,rows3804,rows3805,rows3806,rows3807,rows3808,rows3809,rows3810,rows3811,rows3812,rows3813,rows3814,rows3815,rows3816,rows3817,rows3818,List.append_assoc,List.append_nil]
theorem partLength58 : partOps58.length=64 := by decide
theorem partStats58 : partRows58.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows58=332640 := by
  simp only [partRows58,List.length_append,MatrixRowBlocks.rows_weight_append,stats3755.1,stats3755.2,stats3756.1,stats3756.2,stats3757.1,stats3757.2,stats3758.1,stats3758.2,stats3759.1,stats3759.2,stats3760.1,stats3760.2,stats3761.1,stats3761.2,stats3762.1,stats3762.2,stats3763.1,stats3763.2,stats3764.1,stats3764.2,stats3765.1,stats3765.2,stats3766.1,stats3766.2,stats3767.1,stats3767.2,stats3768.1,stats3768.2,stats3769.1,stats3769.2,stats3770.1,stats3770.2,stats3771.1,stats3771.2,stats3772.1,stats3772.2,stats3773.1,stats3773.2,stats3774.1,stats3774.2,stats3775.1,stats3775.2,stats3776.1,stats3776.2,stats3777.1,stats3777.2,stats3778.1,stats3778.2,stats3779.1,stats3779.2,stats3780.1,stats3780.2,stats3781.1,stats3781.2,stats3782.1,stats3782.2,stats3783.1,stats3783.2,stats3784.1,stats3784.2,stats3785.1,stats3785.2,stats3786.1,stats3786.2,stats3787.1,stats3787.2,stats3788.1,stats3788.2,stats3789.1,stats3789.2,stats3790.1,stats3790.2,stats3791.1,stats3791.2,stats3792.1,stats3792.2,stats3793.1,stats3793.2,stats3794.1,stats3794.2,stats3795.1,stats3795.2,stats3796.1,stats3796.2,stats3797.1,stats3797.2,stats3798.1,stats3798.2,stats3799.1,stats3799.2,stats3800.1,stats3800.2,stats3801.1,stats3801.2,stats3802.1,stats3802.2,stats3803.1,stats3803.2,stats3804.1,stats3804.2,stats3805.1,stats3805.2,stats3806.1,stats3806.2,stats3807.1,stats3807.2,stats3808.1,stats3808.2,stats3809.1,stats3809.2,stats3810.1,stats3810.2,stats3811.1,stats3811.2,stats3812.1,stats3812.2,stats3813.1,stats3813.2,stats3814.1,stats3814.2,stats3815.1,stats3815.2,stats3816.1,stats3816.2,stats3817.1,stats3817.2,stats3818.1,stats3818.2]
  decide
end PathRoundDispatchCheckedRows
