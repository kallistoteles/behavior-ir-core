import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData59
import PairedPathRoundInstructionMatrixData60
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
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
theorem rows3819 : actualRows3819=WordField.canonicalRows actualModulus 3819 (.badd 3817 3818) := by core033_kernel_decide
theorem stats3819 : actualRows3819.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3819=5388 := by core033_kernel_decide
theorem rows3820 : actualRows3820=WordField.canonicalRows actualModulus 3820 (.band 3819 2067) := by core033_kernel_decide
theorem stats3820 : actualRows3820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3820=5124 := by core033_kernel_decide
theorem rows3821 : actualRows3821=WordField.canonicalRows actualModulus 3821 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3821 : actualRows3821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3821=2892 := by core033_kernel_decide
theorem rows3822 : actualRows3822=WordField.canonicalRows actualModulus 3822 (.bxor 616 3821) := by core033_kernel_decide
theorem stats3822 : actualRows3822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3822=7428 := by core033_kernel_decide
theorem rows3823 : actualRows3823=WordField.canonicalRows actualModulus 3823 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3823 : actualRows3823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3823=2820 := by core033_kernel_decide
theorem rows3824 : actualRows3824=WordField.canonicalRows actualModulus 3824 (.bnot 3823) := by core033_kernel_decide
theorem stats3824 : actualRows3824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3824=6276 := by core033_kernel_decide
theorem rows3825 : actualRows3825=WordField.canonicalRows actualModulus 3825 (.band 3822 3824) := by core033_kernel_decide
theorem stats3825 : actualRows3825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3825=5124 := by core033_kernel_decide
theorem rows3826 : actualRows3826=WordField.canonicalRows actualModulus 3826 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3826 : actualRows3826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3826=2892 := by core033_kernel_decide
theorem rows3827 : actualRows3827=WordField.canonicalRows actualModulus 3827 (.bxor 616 3826) := by core033_kernel_decide
theorem stats3827 : actualRows3827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3827=7428 := by core033_kernel_decide
theorem rows3828 : actualRows3828=WordField.canonicalRows actualModulus 3828 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3828 : actualRows3828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3828=2820 := by core033_kernel_decide
theorem rows3829 : actualRows3829=WordField.canonicalRows actualModulus 3829 (.bnot 3828) := by core033_kernel_decide
theorem stats3829 : actualRows3829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3829=6276 := by core033_kernel_decide
theorem rows3830 : actualRows3830=WordField.canonicalRows actualModulus 3830 (.bxor 3827 3829) := by core033_kernel_decide
theorem stats3830 : actualRows3830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3830=7428 := by core033_kernel_decide
theorem rows3831 : actualRows3831=WordField.canonicalRows actualModulus 3831 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3831 : actualRows3831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3831=2892 := by core033_kernel_decide
theorem rows3832 : actualRows3832=WordField.canonicalRows actualModulus 3832 (.bxor 616 3831) := by core033_kernel_decide
theorem stats3832 : actualRows3832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3832=7428 := by core033_kernel_decide
theorem rows3833 : actualRows3833=WordField.canonicalRows actualModulus 3833 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3833 : actualRows3833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3833=2820 := by core033_kernel_decide
theorem rows3834 : actualRows3834=WordField.canonicalRows actualModulus 3834 (.bnot 3833) := by core033_kernel_decide
theorem stats3834 : actualRows3834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3834=6276 := by core033_kernel_decide
theorem rows3835 : actualRows3835=WordField.canonicalRows actualModulus 3835 (.badd 3832 3834) := by core033_kernel_decide
theorem stats3835 : actualRows3835.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3835=5388 := by core033_kernel_decide
theorem rows3836 : actualRows3836=WordField.canonicalRows actualModulus 3836 (.bnot 3835) := by core033_kernel_decide
theorem stats3836 : actualRows3836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3836=6276 := by core033_kernel_decide
theorem rows3837 : actualRows3837=WordField.canonicalRows actualModulus 3837 (.band 3830 3836) := by core033_kernel_decide
theorem stats3837 : actualRows3837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3837=5124 := by core033_kernel_decide
theorem rows3838 : actualRows3838=WordField.canonicalRows actualModulus 3838 (.bxor 3825 3837) := by core033_kernel_decide
theorem stats3838 : actualRows3838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3838=7428 := by core033_kernel_decide
theorem rows3839 : actualRows3839=WordField.canonicalRows actualModulus 3839 (.shr 3838 31) := by core033_kernel_decide
theorem stats3839 : actualRows3839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3839=2892 := by core033_kernel_decide
theorem rows3840 : actualRows3840=WordField.canonicalRows actualModulus 3840 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3840 : actualRows3840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3840=2892 := by core033_kernel_decide
theorem rows3841 : actualRows3841=WordField.canonicalRows actualModulus 3841 (.bxor 3839 3840) := by core033_kernel_decide
theorem stats3841 : actualRows3841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3841=7428 := by core033_kernel_decide
theorem rows3842 : actualRows3842=WordField.canonicalRows actualModulus 3842 (.bnot 3841) := by core033_kernel_decide
theorem stats3842 : actualRows3842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3842=6276 := by core033_kernel_decide
theorem rows3843 : actualRows3843=WordField.canonicalRows actualModulus 3843 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3843 : actualRows3843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3843=2892 := by core033_kernel_decide
theorem rows3844 : actualRows3844=WordField.canonicalRows actualModulus 3844 (.badd 3842 3843) := by core033_kernel_decide
theorem stats3844 : actualRows3844.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3844=5388 := by core033_kernel_decide
theorem rows3845 : actualRows3845=WordField.canonicalRows actualModulus 3845 (.bnot 3844) := by core033_kernel_decide
theorem stats3845 : actualRows3845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3845=6276 := by core033_kernel_decide
theorem rows3846 : actualRows3846=WordField.canonicalRows actualModulus 3846 (.band 3845 1881) := by core033_kernel_decide
theorem stats3846 : actualRows3846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3846=5124 := by core033_kernel_decide
theorem rows3847 : actualRows3847=WordField.canonicalRows actualModulus 3847 (.bxor 3820 3846) := by core033_kernel_decide
theorem stats3847 : actualRows3847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3847=7428 := by core033_kernel_decide
theorem rows3848 : actualRows3848=WordField.canonicalRows actualModulus 3848 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3848 : actualRows3848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3848=2892 := by core033_kernel_decide
theorem rows3849 : actualRows3849=WordField.canonicalRows actualModulus 3849 (.bxor 616 3848) := by core033_kernel_decide
theorem stats3849 : actualRows3849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3849=7428 := by core033_kernel_decide
theorem rows3850 : actualRows3850=WordField.canonicalRows actualModulus 3850 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3850 : actualRows3850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3850=2820 := by core033_kernel_decide
theorem rows3851 : actualRows3851=WordField.canonicalRows actualModulus 3851 (.bnot 3850) := by core033_kernel_decide
theorem stats3851 : actualRows3851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3851=6276 := by core033_kernel_decide
theorem rows3852 : actualRows3852=WordField.canonicalRows actualModulus 3852 (.band 3849 3851) := by core033_kernel_decide
theorem stats3852 : actualRows3852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3852=5124 := by core033_kernel_decide
theorem rows3853 : actualRows3853=WordField.canonicalRows actualModulus 3853 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3853 : actualRows3853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3853=2892 := by core033_kernel_decide
theorem rows3854 : actualRows3854=WordField.canonicalRows actualModulus 3854 (.bxor 616 3853) := by core033_kernel_decide
theorem stats3854 : actualRows3854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3854=7428 := by core033_kernel_decide
theorem rows3855 : actualRows3855=WordField.canonicalRows actualModulus 3855 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3855 : actualRows3855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3855=2820 := by core033_kernel_decide
theorem rows3856 : actualRows3856=WordField.canonicalRows actualModulus 3856 (.bnot 3855) := by core033_kernel_decide
theorem stats3856 : actualRows3856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3856=6276 := by core033_kernel_decide
theorem rows3857 : actualRows3857=WordField.canonicalRows actualModulus 3857 (.bxor 3854 3856) := by core033_kernel_decide
theorem stats3857 : actualRows3857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3857=7428 := by core033_kernel_decide
theorem rows3858 : actualRows3858=WordField.canonicalRows actualModulus 3858 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3858 : actualRows3858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3858=2892 := by core033_kernel_decide
theorem rows3859 : actualRows3859=WordField.canonicalRows actualModulus 3859 (.bxor 616 3858) := by core033_kernel_decide
theorem stats3859 : actualRows3859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3859=7428 := by core033_kernel_decide
theorem rows3860 : actualRows3860=WordField.canonicalRows actualModulus 3860 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3860 : actualRows3860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3860=2820 := by core033_kernel_decide
theorem rows3861 : actualRows3861=WordField.canonicalRows actualModulus 3861 (.bnot 3860) := by core033_kernel_decide
theorem stats3861 : actualRows3861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3861=6276 := by core033_kernel_decide
theorem rows3862 : actualRows3862=WordField.canonicalRows actualModulus 3862 (.badd 3859 3861) := by core033_kernel_decide
theorem stats3862 : actualRows3862.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3862=5388 := by core033_kernel_decide
theorem rows3863 : actualRows3863=WordField.canonicalRows actualModulus 3863 (.bnot 3862) := by core033_kernel_decide
theorem stats3863 : actualRows3863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3863=6276 := by core033_kernel_decide
theorem rows3864 : actualRows3864=WordField.canonicalRows actualModulus 3864 (.band 3857 3863) := by core033_kernel_decide
theorem stats3864 : actualRows3864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3864=5124 := by core033_kernel_decide
theorem rows3865 : actualRows3865=WordField.canonicalRows actualModulus 3865 (.bxor 3852 3864) := by core033_kernel_decide
theorem stats3865 : actualRows3865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3865=7428 := by core033_kernel_decide
theorem rows3866 : actualRows3866=WordField.canonicalRows actualModulus 3866 (.shr 3865 31) := by core033_kernel_decide
theorem stats3866 : actualRows3866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3866=2892 := by core033_kernel_decide
theorem rows3867 : actualRows3867=WordField.canonicalRows actualModulus 3867 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3867 : actualRows3867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3867=2892 := by core033_kernel_decide
theorem rows3868 : actualRows3868=WordField.canonicalRows actualModulus 3868 (.bxor 3866 3867) := by core033_kernel_decide
theorem stats3868 : actualRows3868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3868=7428 := by core033_kernel_decide
theorem rows3869 : actualRows3869=WordField.canonicalRows actualModulus 3869 (.bnot 3868) := by core033_kernel_decide
theorem stats3869 : actualRows3869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3869=6276 := by core033_kernel_decide
theorem rows3870 : actualRows3870=WordField.canonicalRows actualModulus 3870 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3870 : actualRows3870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3870=2892 := by core033_kernel_decide
theorem rows3871 : actualRows3871=WordField.canonicalRows actualModulus 3871 (.badd 3869 3870) := by core033_kernel_decide
theorem stats3871 : actualRows3871.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3871=5388 := by core033_kernel_decide
def partRows58 : List R1CS.Row := actualRows3808++actualRows3809++actualRows3810++actualRows3811++actualRows3812++actualRows3813++actualRows3814++actualRows3815++actualRows3816++actualRows3817++actualRows3818++actualRows3819++actualRows3820++actualRows3821++actualRows3822++actualRows3823++actualRows3824++actualRows3825++actualRows3826++actualRows3827++actualRows3828++actualRows3829++actualRows3830++actualRows3831++actualRows3832++actualRows3833++actualRows3834++actualRows3835++actualRows3836++actualRows3837++actualRows3838++actualRows3839++actualRows3840++actualRows3841++actualRows3842++actualRows3843++actualRows3844++actualRows3845++actualRows3846++actualRows3847++actualRows3848++actualRows3849++actualRows3850++actualRows3851++actualRows3852++actualRows3853++actualRows3854++actualRows3855++actualRows3856++actualRows3857++actualRows3858++actualRows3859++actualRows3860++actualRows3861++actualRows3862++actualRows3863++actualRows3864++actualRows3865++actualRows3866++actualRows3867++actualRows3868++actualRows3869++actualRows3870++actualRows3871
def partOps58 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 3808,.badd 3807 3809,.bnot 3810,.band 3805 3811,.bxor 3800 3812,.shr 3813 31,.literal (BitVec.ofNat 32 1),.bxor 3814 3815,.bnot 3816,.literal (BitVec.ofNat 32 1),.badd 3817 3818,.band 3819 2067,.literal (BitVec.ofNat 32 2),.bxor 616 3821,.literal (BitVec.ofNat 32 0),.bnot 3823,.band 3822 3824,.literal (BitVec.ofNat 32 2),.bxor 616 3826,.literal (BitVec.ofNat 32 0),.bnot 3828,.bxor 3827 3829,.literal (BitVec.ofNat 32 2),.bxor 616 3831,.literal (BitVec.ofNat 32 0),.bnot 3833,.badd 3832 3834,.bnot 3835,.band 3830 3836,.bxor 3825 3837,.shr 3838 31,.literal (BitVec.ofNat 32 1),.bxor 3839 3840,.bnot 3841,.literal (BitVec.ofNat 32 1),.badd 3842 3843,.bnot 3844,.band 3845 1881,.bxor 3820 3846,.literal (BitVec.ofNat 32 2),.bxor 616 3848,.literal (BitVec.ofNat 32 0),.bnot 3850,.band 3849 3851,.literal (BitVec.ofNat 32 2),.bxor 616 3853,.literal (BitVec.ofNat 32 0),.bnot 3855,.bxor 3854 3856,.literal (BitVec.ofNat 32 2),.bxor 616 3858,.literal (BitVec.ofNat 32 0),.bnot 3860,.badd 3859 3861,.bnot 3862,.band 3857 3863,.bxor 3852 3864,.shr 3865 31,.literal (BitVec.ofNat 32 1),.bxor 3866 3867,.bnot 3868,.literal (BitVec.ofNat 32 1),.badd 3869 3870]
theorem partExact58 : partRows58=WordField.rows actualModulus 3808 partOps58 := by
  simp only [partRows58,partOps58,WordField.rows,rows3808,rows3809,rows3810,rows3811,rows3812,rows3813,rows3814,rows3815,rows3816,rows3817,rows3818,rows3819,rows3820,rows3821,rows3822,rows3823,rows3824,rows3825,rows3826,rows3827,rows3828,rows3829,rows3830,rows3831,rows3832,rows3833,rows3834,rows3835,rows3836,rows3837,rows3838,rows3839,rows3840,rows3841,rows3842,rows3843,rows3844,rows3845,rows3846,rows3847,rows3848,rows3849,rows3850,rows3851,rows3852,rows3853,rows3854,rows3855,rows3856,rows3857,rows3858,rows3859,rows3860,rows3861,rows3862,rows3863,rows3864,rows3865,rows3866,rows3867,rows3868,rows3869,rows3870,rows3871,List.append_assoc,List.append_nil]
theorem partLength58 : partOps58.length=64 := by decide
theorem partStats58 : partRows58.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows58=330600 := by
  simp only [partRows58,List.length_append,MatrixRowBlocks.rows_weight_append,stats3808.1,stats3808.2,stats3809.1,stats3809.2,stats3810.1,stats3810.2,stats3811.1,stats3811.2,stats3812.1,stats3812.2,stats3813.1,stats3813.2,stats3814.1,stats3814.2,stats3815.1,stats3815.2,stats3816.1,stats3816.2,stats3817.1,stats3817.2,stats3818.1,stats3818.2,stats3819.1,stats3819.2,stats3820.1,stats3820.2,stats3821.1,stats3821.2,stats3822.1,stats3822.2,stats3823.1,stats3823.2,stats3824.1,stats3824.2,stats3825.1,stats3825.2,stats3826.1,stats3826.2,stats3827.1,stats3827.2,stats3828.1,stats3828.2,stats3829.1,stats3829.2,stats3830.1,stats3830.2,stats3831.1,stats3831.2,stats3832.1,stats3832.2,stats3833.1,stats3833.2,stats3834.1,stats3834.2,stats3835.1,stats3835.2,stats3836.1,stats3836.2,stats3837.1,stats3837.2,stats3838.1,stats3838.2,stats3839.1,stats3839.2,stats3840.1,stats3840.2,stats3841.1,stats3841.2,stats3842.1,stats3842.2,stats3843.1,stats3843.2,stats3844.1,stats3844.2,stats3845.1,stats3845.2,stats3846.1,stats3846.2,stats3847.1,stats3847.2,stats3848.1,stats3848.2,stats3849.1,stats3849.2,stats3850.1,stats3850.2,stats3851.1,stats3851.2,stats3852.1,stats3852.2,stats3853.1,stats3853.2,stats3854.1,stats3854.2,stats3855.1,stats3855.2,stats3856.1,stats3856.2,stats3857.1,stats3857.2,stats3858.1,stats3858.2,stats3859.1,stats3859.2,stats3860.1,stats3860.2,stats3861.1,stats3861.2,stats3862.1,stats3862.2,stats3863.1,stats3863.2,stats3864.1,stats3864.2,stats3865.1,stats3865.2,stats3866.1,stats3866.2,stats3867.1,stats3867.2,stats3868.1,stats3868.2,stats3869.1,stats3869.2,stats3870.1,stats3870.2,stats3871.1,stats3871.2]
  decide
end PairedPathRoundCheckedRows
