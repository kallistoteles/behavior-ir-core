import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData57
import FrameHashControllerInstructionMatrixData58
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3691 : actualRows3691=WordField.canonicalRows actualModulus 3691 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3691 : actualRows3691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3691=2892 := by core033_kernel_decide
theorem rows3692 : actualRows3692=WordField.canonicalRows actualModulus 3692 (.badd 3690 3691) := by core033_kernel_decide
theorem stats3692 : actualRows3692.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3692=5388 := by core033_kernel_decide
theorem rows3693 : actualRows3693=WordField.canonicalRows actualModulus 3693 (.bnot 3692) := by core033_kernel_decide
theorem stats3693 : actualRows3693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3693=6276 := by core033_kernel_decide
theorem rows3694 : actualRows3694=WordField.canonicalRows actualModulus 3694 (.band 3693 890) := by core033_kernel_decide
theorem stats3694 : actualRows3694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3694=5124 := by core033_kernel_decide
theorem rows3695 : actualRows3695=WordField.canonicalRows actualModulus 3695 (.bxor 3668 3694) := by core033_kernel_decide
theorem stats3695 : actualRows3695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3695=7428 := by core033_kernel_decide
theorem rows3696 : actualRows3696=WordField.canonicalRows actualModulus 3696 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3696 : actualRows3696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3696=2892 := by core033_kernel_decide
theorem rows3697 : actualRows3697=WordField.canonicalRows actualModulus 3697 (.bxor 0 3696) := by core033_kernel_decide
theorem stats3697 : actualRows3697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3697=7428 := by core033_kernel_decide
theorem rows3698 : actualRows3698=WordField.canonicalRows actualModulus 3698 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3698 : actualRows3698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3698=2820 := by core033_kernel_decide
theorem rows3699 : actualRows3699=WordField.canonicalRows actualModulus 3699 (.bnot 3698) := by core033_kernel_decide
theorem stats3699 : actualRows3699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3699=6276 := by core033_kernel_decide
theorem rows3700 : actualRows3700=WordField.canonicalRows actualModulus 3700 (.band 3697 3699) := by core033_kernel_decide
theorem stats3700 : actualRows3700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3700=5124 := by core033_kernel_decide
theorem rows3701 : actualRows3701=WordField.canonicalRows actualModulus 3701 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3701 : actualRows3701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3701=2892 := by core033_kernel_decide
theorem rows3702 : actualRows3702=WordField.canonicalRows actualModulus 3702 (.bxor 0 3701) := by core033_kernel_decide
theorem stats3702 : actualRows3702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3702=7428 := by core033_kernel_decide
theorem rows3703 : actualRows3703=WordField.canonicalRows actualModulus 3703 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3703 : actualRows3703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3703=2820 := by core033_kernel_decide
theorem rows3704 : actualRows3704=WordField.canonicalRows actualModulus 3704 (.bnot 3703) := by core033_kernel_decide
theorem stats3704 : actualRows3704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3704=6276 := by core033_kernel_decide
theorem rows3705 : actualRows3705=WordField.canonicalRows actualModulus 3705 (.bxor 3702 3704) := by core033_kernel_decide
theorem stats3705 : actualRows3705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3705=7428 := by core033_kernel_decide
theorem rows3706 : actualRows3706=WordField.canonicalRows actualModulus 3706 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3706 : actualRows3706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3706=2892 := by core033_kernel_decide
theorem rows3707 : actualRows3707=WordField.canonicalRows actualModulus 3707 (.bxor 0 3706) := by core033_kernel_decide
theorem stats3707 : actualRows3707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3707=7428 := by core033_kernel_decide
theorem rows3708 : actualRows3708=WordField.canonicalRows actualModulus 3708 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3708 : actualRows3708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3708=2820 := by core033_kernel_decide
theorem rows3709 : actualRows3709=WordField.canonicalRows actualModulus 3709 (.bnot 3708) := by core033_kernel_decide
theorem stats3709 : actualRows3709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3709=6276 := by core033_kernel_decide
theorem rows3710 : actualRows3710=WordField.canonicalRows actualModulus 3710 (.badd 3707 3709) := by core033_kernel_decide
theorem stats3710 : actualRows3710.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3710=5388 := by core033_kernel_decide
theorem rows3711 : actualRows3711=WordField.canonicalRows actualModulus 3711 (.bnot 3710) := by core033_kernel_decide
theorem stats3711 : actualRows3711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3711=6276 := by core033_kernel_decide
theorem rows3712 : actualRows3712=WordField.canonicalRows actualModulus 3712 (.band 3705 3711) := by core033_kernel_decide
theorem stats3712 : actualRows3712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3712=5124 := by core033_kernel_decide
theorem rows3713 : actualRows3713=WordField.canonicalRows actualModulus 3713 (.bxor 3700 3712) := by core033_kernel_decide
theorem stats3713 : actualRows3713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3713=7428 := by core033_kernel_decide
theorem rows3714 : actualRows3714=WordField.canonicalRows actualModulus 3714 (.shr 3713 31) := by core033_kernel_decide
theorem stats3714 : actualRows3714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3714=2892 := by core033_kernel_decide
theorem rows3715 : actualRows3715=WordField.canonicalRows actualModulus 3715 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3715 : actualRows3715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3715=2892 := by core033_kernel_decide
theorem rows3716 : actualRows3716=WordField.canonicalRows actualModulus 3716 (.bxor 3714 3715) := by core033_kernel_decide
theorem stats3716 : actualRows3716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3716=7428 := by core033_kernel_decide
theorem rows3717 : actualRows3717=WordField.canonicalRows actualModulus 3717 (.bnot 3716) := by core033_kernel_decide
theorem stats3717 : actualRows3717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3717=6276 := by core033_kernel_decide
theorem rows3718 : actualRows3718=WordField.canonicalRows actualModulus 3718 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3718 : actualRows3718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3718=2892 := by core033_kernel_decide
theorem rows3719 : actualRows3719=WordField.canonicalRows actualModulus 3719 (.badd 3717 3718) := by core033_kernel_decide
theorem stats3719 : actualRows3719.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3719=5388 := by core033_kernel_decide
theorem rows3720 : actualRows3720=WordField.canonicalRows actualModulus 3720 (.band 3719 1085) := by core033_kernel_decide
theorem stats3720 : actualRows3720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3720=5124 := by core033_kernel_decide
theorem rows3721 : actualRows3721=WordField.canonicalRows actualModulus 3721 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3721 : actualRows3721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3721=2892 := by core033_kernel_decide
theorem rows3722 : actualRows3722=WordField.canonicalRows actualModulus 3722 (.bxor 0 3721) := by core033_kernel_decide
theorem stats3722 : actualRows3722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3722=7428 := by core033_kernel_decide
theorem rows3723 : actualRows3723=WordField.canonicalRows actualModulus 3723 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3723 : actualRows3723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3723=2820 := by core033_kernel_decide
theorem rows3724 : actualRows3724=WordField.canonicalRows actualModulus 3724 (.bnot 3723) := by core033_kernel_decide
theorem stats3724 : actualRows3724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3724=6276 := by core033_kernel_decide
theorem rows3725 : actualRows3725=WordField.canonicalRows actualModulus 3725 (.band 3722 3724) := by core033_kernel_decide
theorem stats3725 : actualRows3725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3725=5124 := by core033_kernel_decide
theorem rows3726 : actualRows3726=WordField.canonicalRows actualModulus 3726 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3726 : actualRows3726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3726=2892 := by core033_kernel_decide
theorem rows3727 : actualRows3727=WordField.canonicalRows actualModulus 3727 (.bxor 0 3726) := by core033_kernel_decide
theorem stats3727 : actualRows3727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3727=7428 := by core033_kernel_decide
theorem rows3728 : actualRows3728=WordField.canonicalRows actualModulus 3728 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3728 : actualRows3728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3728=2820 := by core033_kernel_decide
theorem rows3729 : actualRows3729=WordField.canonicalRows actualModulus 3729 (.bnot 3728) := by core033_kernel_decide
theorem stats3729 : actualRows3729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3729=6276 := by core033_kernel_decide
theorem rows3730 : actualRows3730=WordField.canonicalRows actualModulus 3730 (.bxor 3727 3729) := by core033_kernel_decide
theorem stats3730 : actualRows3730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3730=7428 := by core033_kernel_decide
theorem rows3731 : actualRows3731=WordField.canonicalRows actualModulus 3731 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3731 : actualRows3731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3731=2892 := by core033_kernel_decide
theorem rows3732 : actualRows3732=WordField.canonicalRows actualModulus 3732 (.bxor 0 3731) := by core033_kernel_decide
theorem stats3732 : actualRows3732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3732=7428 := by core033_kernel_decide
theorem rows3733 : actualRows3733=WordField.canonicalRows actualModulus 3733 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3733 : actualRows3733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3733=2820 := by core033_kernel_decide
theorem rows3734 : actualRows3734=WordField.canonicalRows actualModulus 3734 (.bnot 3733) := by core033_kernel_decide
theorem stats3734 : actualRows3734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3734=6276 := by core033_kernel_decide
theorem rows3735 : actualRows3735=WordField.canonicalRows actualModulus 3735 (.badd 3732 3734) := by core033_kernel_decide
theorem stats3735 : actualRows3735.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3735=5388 := by core033_kernel_decide
theorem rows3736 : actualRows3736=WordField.canonicalRows actualModulus 3736 (.bnot 3735) := by core033_kernel_decide
theorem stats3736 : actualRows3736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3736=6276 := by core033_kernel_decide
theorem rows3737 : actualRows3737=WordField.canonicalRows actualModulus 3737 (.band 3730 3736) := by core033_kernel_decide
theorem stats3737 : actualRows3737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3737=5124 := by core033_kernel_decide
theorem rows3738 : actualRows3738=WordField.canonicalRows actualModulus 3738 (.bxor 3725 3737) := by core033_kernel_decide
theorem stats3738 : actualRows3738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3738=7428 := by core033_kernel_decide
theorem rows3739 : actualRows3739=WordField.canonicalRows actualModulus 3739 (.shr 3738 31) := by core033_kernel_decide
theorem stats3739 : actualRows3739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3739=2892 := by core033_kernel_decide
theorem rows3740 : actualRows3740=WordField.canonicalRows actualModulus 3740 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3740 : actualRows3740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3740=2892 := by core033_kernel_decide
theorem rows3741 : actualRows3741=WordField.canonicalRows actualModulus 3741 (.bxor 3739 3740) := by core033_kernel_decide
theorem stats3741 : actualRows3741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3741=7428 := by core033_kernel_decide
theorem rows3742 : actualRows3742=WordField.canonicalRows actualModulus 3742 (.bnot 3741) := by core033_kernel_decide
theorem stats3742 : actualRows3742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3742=6276 := by core033_kernel_decide
theorem rows3743 : actualRows3743=WordField.canonicalRows actualModulus 3743 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3743 : actualRows3743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3743=2892 := by core033_kernel_decide
theorem rows3744 : actualRows3744=WordField.canonicalRows actualModulus 3744 (.badd 3742 3743) := by core033_kernel_decide
theorem stats3744 : actualRows3744.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3744=5388 := by core033_kernel_decide
theorem rows3745 : actualRows3745=WordField.canonicalRows actualModulus 3745 (.bnot 3744) := by core033_kernel_decide
theorem stats3745 : actualRows3745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3745=6276 := by core033_kernel_decide
theorem rows3746 : actualRows3746=WordField.canonicalRows actualModulus 3746 (.band 3745 893) := by core033_kernel_decide
theorem stats3746 : actualRows3746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3746=5124 := by core033_kernel_decide
theorem rows3747 : actualRows3747=WordField.canonicalRows actualModulus 3747 (.bxor 3720 3746) := by core033_kernel_decide
theorem stats3747 : actualRows3747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3747=7428 := by core033_kernel_decide
theorem rows3748 : actualRows3748=WordField.canonicalRows actualModulus 3748 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3748 : actualRows3748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3748=2892 := by core033_kernel_decide
theorem rows3749 : actualRows3749=WordField.canonicalRows actualModulus 3749 (.bxor 0 3748) := by core033_kernel_decide
theorem stats3749 : actualRows3749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3749=7428 := by core033_kernel_decide
theorem rows3750 : actualRows3750=WordField.canonicalRows actualModulus 3750 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3750 : actualRows3750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3750=2820 := by core033_kernel_decide
theorem rows3751 : actualRows3751=WordField.canonicalRows actualModulus 3751 (.bnot 3750) := by core033_kernel_decide
theorem stats3751 : actualRows3751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3751=6276 := by core033_kernel_decide
theorem rows3752 : actualRows3752=WordField.canonicalRows actualModulus 3752 (.band 3749 3751) := by core033_kernel_decide
theorem stats3752 : actualRows3752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3752=5124 := by core033_kernel_decide
theorem rows3753 : actualRows3753=WordField.canonicalRows actualModulus 3753 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3753 : actualRows3753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3753=2892 := by core033_kernel_decide
theorem rows3754 : actualRows3754=WordField.canonicalRows actualModulus 3754 (.bxor 0 3753) := by core033_kernel_decide
theorem stats3754 : actualRows3754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3754=7428 := by core033_kernel_decide
def partRows57 : List R1CS.Row := actualRows3691++actualRows3692++actualRows3693++actualRows3694++actualRows3695++actualRows3696++actualRows3697++actualRows3698++actualRows3699++actualRows3700++actualRows3701++actualRows3702++actualRows3703++actualRows3704++actualRows3705++actualRows3706++actualRows3707++actualRows3708++actualRows3709++actualRows3710++actualRows3711++actualRows3712++actualRows3713++actualRows3714++actualRows3715++actualRows3716++actualRows3717++actualRows3718++actualRows3719++actualRows3720++actualRows3721++actualRows3722++actualRows3723++actualRows3724++actualRows3725++actualRows3726++actualRows3727++actualRows3728++actualRows3729++actualRows3730++actualRows3731++actualRows3732++actualRows3733++actualRows3734++actualRows3735++actualRows3736++actualRows3737++actualRows3738++actualRows3739++actualRows3740++actualRows3741++actualRows3742++actualRows3743++actualRows3744++actualRows3745++actualRows3746++actualRows3747++actualRows3748++actualRows3749++actualRows3750++actualRows3751++actualRows3752++actualRows3753++actualRows3754
def partOps57 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 3690 3691,.bnot 3692,.band 3693 890,.bxor 3668 3694,.literal (BitVec.ofNat 32 2),.bxor 0 3696,.literal (BitVec.ofNat 32 0),.bnot 3698,.band 3697 3699,.literal (BitVec.ofNat 32 2),.bxor 0 3701,.literal (BitVec.ofNat 32 0),.bnot 3703,.bxor 3702 3704,.literal (BitVec.ofNat 32 2),.bxor 0 3706,.literal (BitVec.ofNat 32 0),.bnot 3708,.badd 3707 3709,.bnot 3710,.band 3705 3711,.bxor 3700 3712,.shr 3713 31,.literal (BitVec.ofNat 32 1),.bxor 3714 3715,.bnot 3716,.literal (BitVec.ofNat 32 1),.badd 3717 3718,.band 3719 1085,.literal (BitVec.ofNat 32 2),.bxor 0 3721,.literal (BitVec.ofNat 32 0),.bnot 3723,.band 3722 3724,.literal (BitVec.ofNat 32 2),.bxor 0 3726,.literal (BitVec.ofNat 32 0),.bnot 3728,.bxor 3727 3729,.literal (BitVec.ofNat 32 2),.bxor 0 3731,.literal (BitVec.ofNat 32 0),.bnot 3733,.badd 3732 3734,.bnot 3735,.band 3730 3736,.bxor 3725 3737,.shr 3738 31,.literal (BitVec.ofNat 32 1),.bxor 3739 3740,.bnot 3741,.literal (BitVec.ofNat 32 1),.badd 3742 3743,.bnot 3744,.band 3745 893,.bxor 3720 3746,.literal (BitVec.ofNat 32 2),.bxor 0 3748,.literal (BitVec.ofNat 32 0),.bnot 3750,.band 3749 3751,.literal (BitVec.ofNat 32 2),.bxor 0 3753]
theorem partExact57 : partRows57=WordField.rows actualModulus 3691 partOps57 := by
  simp only [partRows57,partOps57,WordField.rows,rows3691,rows3692,rows3693,rows3694,rows3695,rows3696,rows3697,rows3698,rows3699,rows3700,rows3701,rows3702,rows3703,rows3704,rows3705,rows3706,rows3707,rows3708,rows3709,rows3710,rows3711,rows3712,rows3713,rows3714,rows3715,rows3716,rows3717,rows3718,rows3719,rows3720,rows3721,rows3722,rows3723,rows3724,rows3725,rows3726,rows3727,rows3728,rows3729,rows3730,rows3731,rows3732,rows3733,rows3734,rows3735,rows3736,rows3737,rows3738,rows3739,rows3740,rows3741,rows3742,rows3743,rows3744,rows3745,rows3746,rows3747,rows3748,rows3749,rows3750,rows3751,rows3752,rows3753,rows3754,List.append_assoc,List.append_nil]
theorem partLength57 : partOps57.length=64 := by decide
theorem partStats57 : partRows57.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows57=331488 := by
  simp only [partRows57,List.length_append,MatrixRowBlocks.rows_weight_append,stats3691.1,stats3691.2,stats3692.1,stats3692.2,stats3693.1,stats3693.2,stats3694.1,stats3694.2,stats3695.1,stats3695.2,stats3696.1,stats3696.2,stats3697.1,stats3697.2,stats3698.1,stats3698.2,stats3699.1,stats3699.2,stats3700.1,stats3700.2,stats3701.1,stats3701.2,stats3702.1,stats3702.2,stats3703.1,stats3703.2,stats3704.1,stats3704.2,stats3705.1,stats3705.2,stats3706.1,stats3706.2,stats3707.1,stats3707.2,stats3708.1,stats3708.2,stats3709.1,stats3709.2,stats3710.1,stats3710.2,stats3711.1,stats3711.2,stats3712.1,stats3712.2,stats3713.1,stats3713.2,stats3714.1,stats3714.2,stats3715.1,stats3715.2,stats3716.1,stats3716.2,stats3717.1,stats3717.2,stats3718.1,stats3718.2,stats3719.1,stats3719.2,stats3720.1,stats3720.2,stats3721.1,stats3721.2,stats3722.1,stats3722.2,stats3723.1,stats3723.2,stats3724.1,stats3724.2,stats3725.1,stats3725.2,stats3726.1,stats3726.2,stats3727.1,stats3727.2,stats3728.1,stats3728.2,stats3729.1,stats3729.2,stats3730.1,stats3730.2,stats3731.1,stats3731.2,stats3732.1,stats3732.2,stats3733.1,stats3733.2,stats3734.1,stats3734.2,stats3735.1,stats3735.2,stats3736.1,stats3736.2,stats3737.1,stats3737.2,stats3738.1,stats3738.2,stats3739.1,stats3739.2,stats3740.1,stats3740.2,stats3741.1,stats3741.2,stats3742.1,stats3742.2,stats3743.1,stats3743.2,stats3744.1,stats3744.2,stats3745.1,stats3745.2,stats3746.1,stats3746.2,stats3747.1,stats3747.2,stats3748.1,stats3748.2,stats3749.1,stats3749.2,stats3750.1,stats3750.2,stats3751.1,stats3751.2,stats3752.1,stats3752.2,stats3753.1,stats3753.2,stats3754.1,stats3754.2]
  decide
end FrameHashControllerCheckedRows
