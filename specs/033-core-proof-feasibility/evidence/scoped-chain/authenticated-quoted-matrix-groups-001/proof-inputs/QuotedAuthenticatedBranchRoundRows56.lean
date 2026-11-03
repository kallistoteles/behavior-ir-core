import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData57
import AuthenticatedBranchRoundInstructionMatrixData58
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3702 : actualRows3702=WordField.canonicalRows actualModulus 3702 (.bnot 3701) := by core033_kernel_decide
theorem stats3702 : actualRows3702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3702=6276 := by core033_kernel_decide
theorem rows3703 : actualRows3703=WordField.canonicalRows actualModulus 3703 (.band 3700 3702) := by core033_kernel_decide
theorem stats3703 : actualRows3703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3703=5124 := by core033_kernel_decide
theorem rows3704 : actualRows3704=WordField.canonicalRows actualModulus 3704 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3704 : actualRows3704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3704=2892 := by core033_kernel_decide
theorem rows3705 : actualRows3705=WordField.canonicalRows actualModulus 3705 (.bxor 1299 3704) := by core033_kernel_decide
theorem stats3705 : actualRows3705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3705=7428 := by core033_kernel_decide
theorem rows3706 : actualRows3706=WordField.canonicalRows actualModulus 3706 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3706 : actualRows3706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3706=2820 := by core033_kernel_decide
theorem rows3707 : actualRows3707=WordField.canonicalRows actualModulus 3707 (.bnot 3706) := by core033_kernel_decide
theorem stats3707 : actualRows3707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3707=6276 := by core033_kernel_decide
theorem rows3708 : actualRows3708=WordField.canonicalRows actualModulus 3708 (.bxor 3705 3707) := by core033_kernel_decide
theorem stats3708 : actualRows3708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3708=7428 := by core033_kernel_decide
theorem rows3709 : actualRows3709=WordField.canonicalRows actualModulus 3709 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3709 : actualRows3709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3709=2892 := by core033_kernel_decide
theorem rows3710 : actualRows3710=WordField.canonicalRows actualModulus 3710 (.bxor 1299 3709) := by core033_kernel_decide
theorem stats3710 : actualRows3710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3710=7428 := by core033_kernel_decide
theorem rows3711 : actualRows3711=WordField.canonicalRows actualModulus 3711 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3711 : actualRows3711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3711=2820 := by core033_kernel_decide
theorem rows3712 : actualRows3712=WordField.canonicalRows actualModulus 3712 (.bnot 3711) := by core033_kernel_decide
theorem stats3712 : actualRows3712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3712=6276 := by core033_kernel_decide
theorem rows3713 : actualRows3713=WordField.canonicalRows actualModulus 3713 (.badd 3710 3712) := by core033_kernel_decide
theorem stats3713 : actualRows3713.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3713=5388 := by core033_kernel_decide
theorem rows3714 : actualRows3714=WordField.canonicalRows actualModulus 3714 (.bnot 3713) := by core033_kernel_decide
theorem stats3714 : actualRows3714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3714=6276 := by core033_kernel_decide
theorem rows3715 : actualRows3715=WordField.canonicalRows actualModulus 3715 (.band 3708 3714) := by core033_kernel_decide
theorem stats3715 : actualRows3715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3715=5124 := by core033_kernel_decide
theorem rows3716 : actualRows3716=WordField.canonicalRows actualModulus 3716 (.bxor 3703 3715) := by core033_kernel_decide
theorem stats3716 : actualRows3716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3716=7428 := by core033_kernel_decide
theorem rows3717 : actualRows3717=WordField.canonicalRows actualModulus 3717 (.shr 3716 31) := by core033_kernel_decide
theorem stats3717 : actualRows3717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3717=2892 := by core033_kernel_decide
theorem rows3718 : actualRows3718=WordField.canonicalRows actualModulus 3718 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3718 : actualRows3718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3718=2892 := by core033_kernel_decide
theorem rows3719 : actualRows3719=WordField.canonicalRows actualModulus 3719 (.bxor 3717 3718) := by core033_kernel_decide
theorem stats3719 : actualRows3719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3719=7428 := by core033_kernel_decide
theorem rows3720 : actualRows3720=WordField.canonicalRows actualModulus 3720 (.bnot 3719) := by core033_kernel_decide
theorem stats3720 : actualRows3720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3720=6276 := by core033_kernel_decide
theorem rows3721 : actualRows3721=WordField.canonicalRows actualModulus 3721 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3721 : actualRows3721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3721=2892 := by core033_kernel_decide
theorem rows3722 : actualRows3722=WordField.canonicalRows actualModulus 3722 (.badd 3720 3721) := by core033_kernel_decide
theorem stats3722 : actualRows3722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3722=5388 := by core033_kernel_decide
theorem rows3723 : actualRows3723=WordField.canonicalRows actualModulus 3723 (.band 3722 2705) := by core033_kernel_decide
theorem stats3723 : actualRows3723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3723=5124 := by core033_kernel_decide
theorem rows3724 : actualRows3724=WordField.canonicalRows actualModulus 3724 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3724 : actualRows3724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3724=2892 := by core033_kernel_decide
theorem rows3725 : actualRows3725=WordField.canonicalRows actualModulus 3725 (.bxor 1299 3724) := by core033_kernel_decide
theorem stats3725 : actualRows3725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3725=7428 := by core033_kernel_decide
theorem rows3726 : actualRows3726=WordField.canonicalRows actualModulus 3726 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3726 : actualRows3726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3726=2820 := by core033_kernel_decide
theorem rows3727 : actualRows3727=WordField.canonicalRows actualModulus 3727 (.bnot 3726) := by core033_kernel_decide
theorem stats3727 : actualRows3727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3727=6276 := by core033_kernel_decide
theorem rows3728 : actualRows3728=WordField.canonicalRows actualModulus 3728 (.band 3725 3727) := by core033_kernel_decide
theorem stats3728 : actualRows3728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3728=5124 := by core033_kernel_decide
theorem rows3729 : actualRows3729=WordField.canonicalRows actualModulus 3729 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3729 : actualRows3729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3729=2892 := by core033_kernel_decide
theorem rows3730 : actualRows3730=WordField.canonicalRows actualModulus 3730 (.bxor 1299 3729) := by core033_kernel_decide
theorem stats3730 : actualRows3730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3730=7428 := by core033_kernel_decide
theorem rows3731 : actualRows3731=WordField.canonicalRows actualModulus 3731 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3731 : actualRows3731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3731=2820 := by core033_kernel_decide
theorem rows3732 : actualRows3732=WordField.canonicalRows actualModulus 3732 (.bnot 3731) := by core033_kernel_decide
theorem stats3732 : actualRows3732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3732=6276 := by core033_kernel_decide
theorem rows3733 : actualRows3733=WordField.canonicalRows actualModulus 3733 (.bxor 3730 3732) := by core033_kernel_decide
theorem stats3733 : actualRows3733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3733=7428 := by core033_kernel_decide
theorem rows3734 : actualRows3734=WordField.canonicalRows actualModulus 3734 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3734 : actualRows3734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3734=2892 := by core033_kernel_decide
theorem rows3735 : actualRows3735=WordField.canonicalRows actualModulus 3735 (.bxor 1299 3734) := by core033_kernel_decide
theorem stats3735 : actualRows3735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3735=7428 := by core033_kernel_decide
theorem rows3736 : actualRows3736=WordField.canonicalRows actualModulus 3736 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3736 : actualRows3736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3736=2820 := by core033_kernel_decide
theorem rows3737 : actualRows3737=WordField.canonicalRows actualModulus 3737 (.bnot 3736) := by core033_kernel_decide
theorem stats3737 : actualRows3737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3737=6276 := by core033_kernel_decide
theorem rows3738 : actualRows3738=WordField.canonicalRows actualModulus 3738 (.badd 3735 3737) := by core033_kernel_decide
theorem stats3738 : actualRows3738.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3738=5388 := by core033_kernel_decide
theorem rows3739 : actualRows3739=WordField.canonicalRows actualModulus 3739 (.bnot 3738) := by core033_kernel_decide
theorem stats3739 : actualRows3739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3739=6276 := by core033_kernel_decide
theorem rows3740 : actualRows3740=WordField.canonicalRows actualModulus 3740 (.band 3733 3739) := by core033_kernel_decide
theorem stats3740 : actualRows3740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3740=5124 := by core033_kernel_decide
theorem rows3741 : actualRows3741=WordField.canonicalRows actualModulus 3741 (.bxor 3728 3740) := by core033_kernel_decide
theorem stats3741 : actualRows3741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3741=7428 := by core033_kernel_decide
theorem rows3742 : actualRows3742=WordField.canonicalRows actualModulus 3742 (.shr 3741 31) := by core033_kernel_decide
theorem stats3742 : actualRows3742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3742=2892 := by core033_kernel_decide
theorem rows3743 : actualRows3743=WordField.canonicalRows actualModulus 3743 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3743 : actualRows3743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3743=2892 := by core033_kernel_decide
theorem rows3744 : actualRows3744=WordField.canonicalRows actualModulus 3744 (.bxor 3742 3743) := by core033_kernel_decide
theorem stats3744 : actualRows3744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3744=7428 := by core033_kernel_decide
theorem rows3745 : actualRows3745=WordField.canonicalRows actualModulus 3745 (.bnot 3744) := by core033_kernel_decide
theorem stats3745 : actualRows3745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3745=6276 := by core033_kernel_decide
theorem rows3746 : actualRows3746=WordField.canonicalRows actualModulus 3746 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3746 : actualRows3746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3746=2892 := by core033_kernel_decide
theorem rows3747 : actualRows3747=WordField.canonicalRows actualModulus 3747 (.badd 3745 3746) := by core033_kernel_decide
theorem stats3747 : actualRows3747.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3747=5388 := by core033_kernel_decide
theorem rows3748 : actualRows3748=WordField.canonicalRows actualModulus 3748 (.bnot 3747) := by core033_kernel_decide
theorem stats3748 : actualRows3748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3748=6276 := by core033_kernel_decide
theorem rows3749 : actualRows3749=WordField.canonicalRows actualModulus 3749 (.band 3748 2549) := by core033_kernel_decide
theorem stats3749 : actualRows3749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3749=5124 := by core033_kernel_decide
theorem rows3750 : actualRows3750=WordField.canonicalRows actualModulus 3750 (.bxor 3723 3749) := by core033_kernel_decide
theorem stats3750 : actualRows3750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3750=7428 := by core033_kernel_decide
theorem rows3751 : actualRows3751=WordField.canonicalRows actualModulus 3751 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3751 : actualRows3751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3751=2892 := by core033_kernel_decide
theorem rows3752 : actualRows3752=WordField.canonicalRows actualModulus 3752 (.bxor 1299 3751) := by core033_kernel_decide
theorem stats3752 : actualRows3752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3752=7428 := by core033_kernel_decide
theorem rows3753 : actualRows3753=WordField.canonicalRows actualModulus 3753 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3753 : actualRows3753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3753=2820 := by core033_kernel_decide
theorem rows3754 : actualRows3754=WordField.canonicalRows actualModulus 3754 (.bnot 3753) := by core033_kernel_decide
theorem stats3754 : actualRows3754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3754=6276 := by core033_kernel_decide
theorem rows3755 : actualRows3755=WordField.canonicalRows actualModulus 3755 (.band 3752 3754) := by core033_kernel_decide
theorem stats3755 : actualRows3755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3755=5124 := by core033_kernel_decide
theorem rows3756 : actualRows3756=WordField.canonicalRows actualModulus 3756 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3756 : actualRows3756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3756=2892 := by core033_kernel_decide
theorem rows3757 : actualRows3757=WordField.canonicalRows actualModulus 3757 (.bxor 1299 3756) := by core033_kernel_decide
theorem stats3757 : actualRows3757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3757=7428 := by core033_kernel_decide
theorem rows3758 : actualRows3758=WordField.canonicalRows actualModulus 3758 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3758 : actualRows3758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3758=2820 := by core033_kernel_decide
theorem rows3759 : actualRows3759=WordField.canonicalRows actualModulus 3759 (.bnot 3758) := by core033_kernel_decide
theorem stats3759 : actualRows3759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3759=6276 := by core033_kernel_decide
theorem rows3760 : actualRows3760=WordField.canonicalRows actualModulus 3760 (.bxor 3757 3759) := by core033_kernel_decide
theorem stats3760 : actualRows3760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3760=7428 := by core033_kernel_decide
theorem rows3761 : actualRows3761=WordField.canonicalRows actualModulus 3761 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3761 : actualRows3761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3761=2892 := by core033_kernel_decide
theorem rows3762 : actualRows3762=WordField.canonicalRows actualModulus 3762 (.bxor 1299 3761) := by core033_kernel_decide
theorem stats3762 : actualRows3762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3762=7428 := by core033_kernel_decide
theorem rows3763 : actualRows3763=WordField.canonicalRows actualModulus 3763 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3763 : actualRows3763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3763=2820 := by core033_kernel_decide
theorem rows3764 : actualRows3764=WordField.canonicalRows actualModulus 3764 (.bnot 3763) := by core033_kernel_decide
theorem stats3764 : actualRows3764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3764=6276 := by core033_kernel_decide
theorem rows3765 : actualRows3765=WordField.canonicalRows actualModulus 3765 (.badd 3762 3764) := by core033_kernel_decide
theorem stats3765 : actualRows3765.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3765=5388 := by core033_kernel_decide
def partRows56 : List R1CS.Row := actualRows3702++actualRows3703++actualRows3704++actualRows3705++actualRows3706++actualRows3707++actualRows3708++actualRows3709++actualRows3710++actualRows3711++actualRows3712++actualRows3713++actualRows3714++actualRows3715++actualRows3716++actualRows3717++actualRows3718++actualRows3719++actualRows3720++actualRows3721++actualRows3722++actualRows3723++actualRows3724++actualRows3725++actualRows3726++actualRows3727++actualRows3728++actualRows3729++actualRows3730++actualRows3731++actualRows3732++actualRows3733++actualRows3734++actualRows3735++actualRows3736++actualRows3737++actualRows3738++actualRows3739++actualRows3740++actualRows3741++actualRows3742++actualRows3743++actualRows3744++actualRows3745++actualRows3746++actualRows3747++actualRows3748++actualRows3749++actualRows3750++actualRows3751++actualRows3752++actualRows3753++actualRows3754++actualRows3755++actualRows3756++actualRows3757++actualRows3758++actualRows3759++actualRows3760++actualRows3761++actualRows3762++actualRows3763++actualRows3764++actualRows3765
def partOps56 : List WordIR.Op := [.bnot 3701,.band 3700 3702,.literal (BitVec.ofNat 32 2),.bxor 1299 3704,.literal (BitVec.ofNat 32 0),.bnot 3706,.bxor 3705 3707,.literal (BitVec.ofNat 32 2),.bxor 1299 3709,.literal (BitVec.ofNat 32 0),.bnot 3711,.badd 3710 3712,.bnot 3713,.band 3708 3714,.bxor 3703 3715,.shr 3716 31,.literal (BitVec.ofNat 32 1),.bxor 3717 3718,.bnot 3719,.literal (BitVec.ofNat 32 1),.badd 3720 3721,.band 3722 2705,.literal (BitVec.ofNat 32 2),.bxor 1299 3724,.literal (BitVec.ofNat 32 0),.bnot 3726,.band 3725 3727,.literal (BitVec.ofNat 32 2),.bxor 1299 3729,.literal (BitVec.ofNat 32 0),.bnot 3731,.bxor 3730 3732,.literal (BitVec.ofNat 32 2),.bxor 1299 3734,.literal (BitVec.ofNat 32 0),.bnot 3736,.badd 3735 3737,.bnot 3738,.band 3733 3739,.bxor 3728 3740,.shr 3741 31,.literal (BitVec.ofNat 32 1),.bxor 3742 3743,.bnot 3744,.literal (BitVec.ofNat 32 1),.badd 3745 3746,.bnot 3747,.band 3748 2549,.bxor 3723 3749,.literal (BitVec.ofNat 32 2),.bxor 1299 3751,.literal (BitVec.ofNat 32 0),.bnot 3753,.band 3752 3754,.literal (BitVec.ofNat 32 2),.bxor 1299 3756,.literal (BitVec.ofNat 32 0),.bnot 3758,.bxor 3757 3759,.literal (BitVec.ofNat 32 2),.bxor 1299 3761,.literal (BitVec.ofNat 32 0),.bnot 3763,.badd 3762 3764]
theorem partExact56 : partRows56=WordField.rows actualModulus 3702 partOps56 := by
  simp only [partRows56,partOps56,WordField.rows,rows3702,rows3703,rows3704,rows3705,rows3706,rows3707,rows3708,rows3709,rows3710,rows3711,rows3712,rows3713,rows3714,rows3715,rows3716,rows3717,rows3718,rows3719,rows3720,rows3721,rows3722,rows3723,rows3724,rows3725,rows3726,rows3727,rows3728,rows3729,rows3730,rows3731,rows3732,rows3733,rows3734,rows3735,rows3736,rows3737,rows3738,rows3739,rows3740,rows3741,rows3742,rows3743,rows3744,rows3745,rows3746,rows3747,rows3748,rows3749,rows3750,rows3751,rows3752,rows3753,rows3754,rows3755,rows3756,rows3757,rows3758,rows3759,rows3760,rows3761,rows3762,rows3763,rows3764,rows3765,List.append_assoc,List.append_nil]
theorem partLength56 : partOps56.length=64 := by decide
theorem partStats56 : partRows56.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows56=332568 := by
  simp only [partRows56,List.length_append,MatrixRowBlocks.rows_weight_append,stats3702.1,stats3702.2,stats3703.1,stats3703.2,stats3704.1,stats3704.2,stats3705.1,stats3705.2,stats3706.1,stats3706.2,stats3707.1,stats3707.2,stats3708.1,stats3708.2,stats3709.1,stats3709.2,stats3710.1,stats3710.2,stats3711.1,stats3711.2,stats3712.1,stats3712.2,stats3713.1,stats3713.2,stats3714.1,stats3714.2,stats3715.1,stats3715.2,stats3716.1,stats3716.2,stats3717.1,stats3717.2,stats3718.1,stats3718.2,stats3719.1,stats3719.2,stats3720.1,stats3720.2,stats3721.1,stats3721.2,stats3722.1,stats3722.2,stats3723.1,stats3723.2,stats3724.1,stats3724.2,stats3725.1,stats3725.2,stats3726.1,stats3726.2,stats3727.1,stats3727.2,stats3728.1,stats3728.2,stats3729.1,stats3729.2,stats3730.1,stats3730.2,stats3731.1,stats3731.2,stats3732.1,stats3732.2,stats3733.1,stats3733.2,stats3734.1,stats3734.2,stats3735.1,stats3735.2,stats3736.1,stats3736.2,stats3737.1,stats3737.2,stats3738.1,stats3738.2,stats3739.1,stats3739.2,stats3740.1,stats3740.2,stats3741.1,stats3741.2,stats3742.1,stats3742.2,stats3743.1,stats3743.2,stats3744.1,stats3744.2,stats3745.1,stats3745.2,stats3746.1,stats3746.2,stats3747.1,stats3747.2,stats3748.1,stats3748.2,stats3749.1,stats3749.2,stats3750.1,stats3750.2,stats3751.1,stats3751.2,stats3752.1,stats3752.2,stats3753.1,stats3753.2,stats3754.1,stats3754.2,stats3755.1,stats3755.2,stats3756.1,stats3756.2,stats3757.1,stats3757.2,stats3758.1,stats3758.2,stats3759.1,stats3759.2,stats3760.1,stats3760.2,stats3761.1,stats3761.2,stats3762.1,stats3762.2,stats3763.1,stats3763.2,stats3764.1,stats3764.2,stats3765.1,stats3765.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
