import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData58
import PairedPathRoundInstructionMatrixData59
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3744 : actualRows3744=WordField.canonicalRows actualModulus 3744 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3744 : actualRows3744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3744=2892 := by core033_kernel_decide
theorem rows3745 : actualRows3745=WordField.canonicalRows actualModulus 3745 (.bxor 616 3744) := by core033_kernel_decide
theorem stats3745 : actualRows3745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3745=7428 := by core033_kernel_decide
theorem rows3746 : actualRows3746=WordField.canonicalRows actualModulus 3746 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3746 : actualRows3746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3746=2820 := by core033_kernel_decide
theorem rows3747 : actualRows3747=WordField.canonicalRows actualModulus 3747 (.bnot 3746) := by core033_kernel_decide
theorem stats3747 : actualRows3747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3747=6276 := by core033_kernel_decide
theorem rows3748 : actualRows3748=WordField.canonicalRows actualModulus 3748 (.band 3745 3747) := by core033_kernel_decide
theorem stats3748 : actualRows3748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3748=5124 := by core033_kernel_decide
theorem rows3749 : actualRows3749=WordField.canonicalRows actualModulus 3749 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3749 : actualRows3749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3749=2892 := by core033_kernel_decide
theorem rows3750 : actualRows3750=WordField.canonicalRows actualModulus 3750 (.bxor 616 3749) := by core033_kernel_decide
theorem stats3750 : actualRows3750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3750=7428 := by core033_kernel_decide
theorem rows3751 : actualRows3751=WordField.canonicalRows actualModulus 3751 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3751 : actualRows3751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3751=2820 := by core033_kernel_decide
theorem rows3752 : actualRows3752=WordField.canonicalRows actualModulus 3752 (.bnot 3751) := by core033_kernel_decide
theorem stats3752 : actualRows3752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3752=6276 := by core033_kernel_decide
theorem rows3753 : actualRows3753=WordField.canonicalRows actualModulus 3753 (.bxor 3750 3752) := by core033_kernel_decide
theorem stats3753 : actualRows3753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3753=7428 := by core033_kernel_decide
theorem rows3754 : actualRows3754=WordField.canonicalRows actualModulus 3754 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3754 : actualRows3754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3754=2892 := by core033_kernel_decide
theorem rows3755 : actualRows3755=WordField.canonicalRows actualModulus 3755 (.bxor 616 3754) := by core033_kernel_decide
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
theorem rows3768 : actualRows3768=WordField.canonicalRows actualModulus 3768 (.band 3767 2064) := by core033_kernel_decide
theorem stats3768 : actualRows3768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3768=5124 := by core033_kernel_decide
theorem rows3769 : actualRows3769=WordField.canonicalRows actualModulus 3769 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3769 : actualRows3769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3769=2892 := by core033_kernel_decide
theorem rows3770 : actualRows3770=WordField.canonicalRows actualModulus 3770 (.bxor 616 3769) := by core033_kernel_decide
theorem stats3770 : actualRows3770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3770=7428 := by core033_kernel_decide
theorem rows3771 : actualRows3771=WordField.canonicalRows actualModulus 3771 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3771 : actualRows3771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3771=2820 := by core033_kernel_decide
theorem rows3772 : actualRows3772=WordField.canonicalRows actualModulus 3772 (.bnot 3771) := by core033_kernel_decide
theorem stats3772 : actualRows3772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3772=6276 := by core033_kernel_decide
theorem rows3773 : actualRows3773=WordField.canonicalRows actualModulus 3773 (.band 3770 3772) := by core033_kernel_decide
theorem stats3773 : actualRows3773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3773=5124 := by core033_kernel_decide
theorem rows3774 : actualRows3774=WordField.canonicalRows actualModulus 3774 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3774 : actualRows3774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3774=2892 := by core033_kernel_decide
theorem rows3775 : actualRows3775=WordField.canonicalRows actualModulus 3775 (.bxor 616 3774) := by core033_kernel_decide
theorem stats3775 : actualRows3775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3775=7428 := by core033_kernel_decide
theorem rows3776 : actualRows3776=WordField.canonicalRows actualModulus 3776 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3776 : actualRows3776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3776=2820 := by core033_kernel_decide
theorem rows3777 : actualRows3777=WordField.canonicalRows actualModulus 3777 (.bnot 3776) := by core033_kernel_decide
theorem stats3777 : actualRows3777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3777=6276 := by core033_kernel_decide
theorem rows3778 : actualRows3778=WordField.canonicalRows actualModulus 3778 (.bxor 3775 3777) := by core033_kernel_decide
theorem stats3778 : actualRows3778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3778=7428 := by core033_kernel_decide
theorem rows3779 : actualRows3779=WordField.canonicalRows actualModulus 3779 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3779 : actualRows3779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3779=2892 := by core033_kernel_decide
theorem rows3780 : actualRows3780=WordField.canonicalRows actualModulus 3780 (.bxor 616 3779) := by core033_kernel_decide
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
theorem rows3794 : actualRows3794=WordField.canonicalRows actualModulus 3794 (.band 3793 1880) := by core033_kernel_decide
theorem stats3794 : actualRows3794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3794=5124 := by core033_kernel_decide
theorem rows3795 : actualRows3795=WordField.canonicalRows actualModulus 3795 (.bxor 3768 3794) := by core033_kernel_decide
theorem stats3795 : actualRows3795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3795=7428 := by core033_kernel_decide
theorem rows3796 : actualRows3796=WordField.canonicalRows actualModulus 3796 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3796 : actualRows3796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3796=2892 := by core033_kernel_decide
theorem rows3797 : actualRows3797=WordField.canonicalRows actualModulus 3797 (.bxor 616 3796) := by core033_kernel_decide
theorem stats3797 : actualRows3797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3797=7428 := by core033_kernel_decide
theorem rows3798 : actualRows3798=WordField.canonicalRows actualModulus 3798 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3798 : actualRows3798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3798=2820 := by core033_kernel_decide
theorem rows3799 : actualRows3799=WordField.canonicalRows actualModulus 3799 (.bnot 3798) := by core033_kernel_decide
theorem stats3799 : actualRows3799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3799=6276 := by core033_kernel_decide
theorem rows3800 : actualRows3800=WordField.canonicalRows actualModulus 3800 (.band 3797 3799) := by core033_kernel_decide
theorem stats3800 : actualRows3800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3800=5124 := by core033_kernel_decide
theorem rows3801 : actualRows3801=WordField.canonicalRows actualModulus 3801 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3801 : actualRows3801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3801=2892 := by core033_kernel_decide
theorem rows3802 : actualRows3802=WordField.canonicalRows actualModulus 3802 (.bxor 616 3801) := by core033_kernel_decide
theorem stats3802 : actualRows3802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3802=7428 := by core033_kernel_decide
theorem rows3803 : actualRows3803=WordField.canonicalRows actualModulus 3803 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3803 : actualRows3803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3803=2820 := by core033_kernel_decide
theorem rows3804 : actualRows3804=WordField.canonicalRows actualModulus 3804 (.bnot 3803) := by core033_kernel_decide
theorem stats3804 : actualRows3804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3804=6276 := by core033_kernel_decide
theorem rows3805 : actualRows3805=WordField.canonicalRows actualModulus 3805 (.bxor 3802 3804) := by core033_kernel_decide
theorem stats3805 : actualRows3805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3805=7428 := by core033_kernel_decide
theorem rows3806 : actualRows3806=WordField.canonicalRows actualModulus 3806 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3806 : actualRows3806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3806=2892 := by core033_kernel_decide
theorem rows3807 : actualRows3807=WordField.canonicalRows actualModulus 3807 (.bxor 616 3806) := by core033_kernel_decide
theorem stats3807 : actualRows3807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3807=7428 := by core033_kernel_decide
def partRows57 : List R1CS.Row := actualRows3744++actualRows3745++actualRows3746++actualRows3747++actualRows3748++actualRows3749++actualRows3750++actualRows3751++actualRows3752++actualRows3753++actualRows3754++actualRows3755++actualRows3756++actualRows3757++actualRows3758++actualRows3759++actualRows3760++actualRows3761++actualRows3762++actualRows3763++actualRows3764++actualRows3765++actualRows3766++actualRows3767++actualRows3768++actualRows3769++actualRows3770++actualRows3771++actualRows3772++actualRows3773++actualRows3774++actualRows3775++actualRows3776++actualRows3777++actualRows3778++actualRows3779++actualRows3780++actualRows3781++actualRows3782++actualRows3783++actualRows3784++actualRows3785++actualRows3786++actualRows3787++actualRows3788++actualRows3789++actualRows3790++actualRows3791++actualRows3792++actualRows3793++actualRows3794++actualRows3795++actualRows3796++actualRows3797++actualRows3798++actualRows3799++actualRows3800++actualRows3801++actualRows3802++actualRows3803++actualRows3804++actualRows3805++actualRows3806++actualRows3807
def partOps57 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 616 3744,.literal (BitVec.ofNat 32 0),.bnot 3746,.band 3745 3747,.literal (BitVec.ofNat 32 2),.bxor 616 3749,.literal (BitVec.ofNat 32 0),.bnot 3751,.bxor 3750 3752,.literal (BitVec.ofNat 32 2),.bxor 616 3754,.literal (BitVec.ofNat 32 0),.bnot 3756,.badd 3755 3757,.bnot 3758,.band 3753 3759,.bxor 3748 3760,.shr 3761 31,.literal (BitVec.ofNat 32 1),.bxor 3762 3763,.bnot 3764,.literal (BitVec.ofNat 32 1),.badd 3765 3766,.band 3767 2064,.literal (BitVec.ofNat 32 2),.bxor 616 3769,.literal (BitVec.ofNat 32 0),.bnot 3771,.band 3770 3772,.literal (BitVec.ofNat 32 2),.bxor 616 3774,.literal (BitVec.ofNat 32 0),.bnot 3776,.bxor 3775 3777,.literal (BitVec.ofNat 32 2),.bxor 616 3779,.literal (BitVec.ofNat 32 0),.bnot 3781,.badd 3780 3782,.bnot 3783,.band 3778 3784,.bxor 3773 3785,.shr 3786 31,.literal (BitVec.ofNat 32 1),.bxor 3787 3788,.bnot 3789,.literal (BitVec.ofNat 32 1),.badd 3790 3791,.bnot 3792,.band 3793 1880,.bxor 3768 3794,.literal (BitVec.ofNat 32 2),.bxor 616 3796,.literal (BitVec.ofNat 32 0),.bnot 3798,.band 3797 3799,.literal (BitVec.ofNat 32 2),.bxor 616 3801,.literal (BitVec.ofNat 32 0),.bnot 3803,.bxor 3802 3804,.literal (BitVec.ofNat 32 2),.bxor 616 3806]
theorem partExact57 : partRows57=WordField.rows actualModulus 3744 partOps57 := by
  simp only [partRows57,partOps57,WordField.rows,rows3744,rows3745,rows3746,rows3747,rows3748,rows3749,rows3750,rows3751,rows3752,rows3753,rows3754,rows3755,rows3756,rows3757,rows3758,rows3759,rows3760,rows3761,rows3762,rows3763,rows3764,rows3765,rows3766,rows3767,rows3768,rows3769,rows3770,rows3771,rows3772,rows3773,rows3774,rows3775,rows3776,rows3777,rows3778,rows3779,rows3780,rows3781,rows3782,rows3783,rows3784,rows3785,rows3786,rows3787,rows3788,rows3789,rows3790,rows3791,rows3792,rows3793,rows3794,rows3795,rows3796,rows3797,rows3798,rows3799,rows3800,rows3801,rows3802,rows3803,rows3804,rows3805,rows3806,rows3807,List.append_assoc,List.append_nil]
theorem partLength57 : partOps57.length=64 := by decide
theorem partStats57 : partRows57.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows57=331224 := by
  simp only [partRows57,List.length_append,MatrixRowBlocks.rows_weight_append,stats3744.1,stats3744.2,stats3745.1,stats3745.2,stats3746.1,stats3746.2,stats3747.1,stats3747.2,stats3748.1,stats3748.2,stats3749.1,stats3749.2,stats3750.1,stats3750.2,stats3751.1,stats3751.2,stats3752.1,stats3752.2,stats3753.1,stats3753.2,stats3754.1,stats3754.2,stats3755.1,stats3755.2,stats3756.1,stats3756.2,stats3757.1,stats3757.2,stats3758.1,stats3758.2,stats3759.1,stats3759.2,stats3760.1,stats3760.2,stats3761.1,stats3761.2,stats3762.1,stats3762.2,stats3763.1,stats3763.2,stats3764.1,stats3764.2,stats3765.1,stats3765.2,stats3766.1,stats3766.2,stats3767.1,stats3767.2,stats3768.1,stats3768.2,stats3769.1,stats3769.2,stats3770.1,stats3770.2,stats3771.1,stats3771.2,stats3772.1,stats3772.2,stats3773.1,stats3773.2,stats3774.1,stats3774.2,stats3775.1,stats3775.2,stats3776.1,stats3776.2,stats3777.1,stats3777.2,stats3778.1,stats3778.2,stats3779.1,stats3779.2,stats3780.1,stats3780.2,stats3781.1,stats3781.2,stats3782.1,stats3782.2,stats3783.1,stats3783.2,stats3784.1,stats3784.2,stats3785.1,stats3785.2,stats3786.1,stats3786.2,stats3787.1,stats3787.2,stats3788.1,stats3788.2,stats3789.1,stats3789.2,stats3790.1,stats3790.2,stats3791.1,stats3791.2,stats3792.1,stats3792.2,stats3793.1,stats3793.2,stats3794.1,stats3794.2,stats3795.1,stats3795.2,stats3796.1,stats3796.2,stats3797.1,stats3797.2,stats3798.1,stats3798.2,stats3799.1,stats3799.2,stats3800.1,stats3800.2,stats3801.1,stats3801.2,stats3802.1,stats3802.2,stats3803.1,stats3803.2,stats3804.1,stats3804.2,stats3805.1,stats3805.2,stats3806.1,stats3806.2,stats3807.1,stats3807.2]
  decide
end PairedPathRoundCheckedRows
