import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData59
import FrameHashControllerInstructionMatrixData60
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3819 : actualRows3819=WordField.canonicalRows actualModulus 3819 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3819 : actualRows3819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3819=2892 := by core033_kernel_decide
theorem rows3820 : actualRows3820=WordField.canonicalRows actualModulus 3820 (.bxor 3818 3819) := by core033_kernel_decide
theorem stats3820 : actualRows3820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3820=7428 := by core033_kernel_decide
theorem rows3821 : actualRows3821=WordField.canonicalRows actualModulus 3821 (.bnot 3820) := by core033_kernel_decide
theorem stats3821 : actualRows3821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3821=6276 := by core033_kernel_decide
theorem rows3822 : actualRows3822=WordField.canonicalRows actualModulus 3822 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3822 : actualRows3822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3822=2892 := by core033_kernel_decide
theorem rows3823 : actualRows3823=WordField.canonicalRows actualModulus 3823 (.badd 3821 3822) := by core033_kernel_decide
theorem stats3823 : actualRows3823.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3823=5388 := by core033_kernel_decide
theorem rows3824 : actualRows3824=WordField.canonicalRows actualModulus 3824 (.band 3823 1091) := by core033_kernel_decide
theorem stats3824 : actualRows3824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3824=5124 := by core033_kernel_decide
theorem rows3825 : actualRows3825=WordField.canonicalRows actualModulus 3825 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3825 : actualRows3825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3825=2892 := by core033_kernel_decide
theorem rows3826 : actualRows3826=WordField.canonicalRows actualModulus 3826 (.bxor 0 3825) := by core033_kernel_decide
theorem stats3826 : actualRows3826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3826=7428 := by core033_kernel_decide
theorem rows3827 : actualRows3827=WordField.canonicalRows actualModulus 3827 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3827 : actualRows3827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3827=2820 := by core033_kernel_decide
theorem rows3828 : actualRows3828=WordField.canonicalRows actualModulus 3828 (.bnot 3827) := by core033_kernel_decide
theorem stats3828 : actualRows3828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3828=6276 := by core033_kernel_decide
theorem rows3829 : actualRows3829=WordField.canonicalRows actualModulus 3829 (.band 3826 3828) := by core033_kernel_decide
theorem stats3829 : actualRows3829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3829=5124 := by core033_kernel_decide
theorem rows3830 : actualRows3830=WordField.canonicalRows actualModulus 3830 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3830 : actualRows3830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3830=2892 := by core033_kernel_decide
theorem rows3831 : actualRows3831=WordField.canonicalRows actualModulus 3831 (.bxor 0 3830) := by core033_kernel_decide
theorem stats3831 : actualRows3831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3831=7428 := by core033_kernel_decide
theorem rows3832 : actualRows3832=WordField.canonicalRows actualModulus 3832 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3832 : actualRows3832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3832=2820 := by core033_kernel_decide
theorem rows3833 : actualRows3833=WordField.canonicalRows actualModulus 3833 (.bnot 3832) := by core033_kernel_decide
theorem stats3833 : actualRows3833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3833=6276 := by core033_kernel_decide
theorem rows3834 : actualRows3834=WordField.canonicalRows actualModulus 3834 (.bxor 3831 3833) := by core033_kernel_decide
theorem stats3834 : actualRows3834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3834=7428 := by core033_kernel_decide
theorem rows3835 : actualRows3835=WordField.canonicalRows actualModulus 3835 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3835 : actualRows3835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3835=2892 := by core033_kernel_decide
theorem rows3836 : actualRows3836=WordField.canonicalRows actualModulus 3836 (.bxor 0 3835) := by core033_kernel_decide
theorem stats3836 : actualRows3836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3836=7428 := by core033_kernel_decide
theorem rows3837 : actualRows3837=WordField.canonicalRows actualModulus 3837 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3837 : actualRows3837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3837=2820 := by core033_kernel_decide
theorem rows3838 : actualRows3838=WordField.canonicalRows actualModulus 3838 (.bnot 3837) := by core033_kernel_decide
theorem stats3838 : actualRows3838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3838=6276 := by core033_kernel_decide
theorem rows3839 : actualRows3839=WordField.canonicalRows actualModulus 3839 (.badd 3836 3838) := by core033_kernel_decide
theorem stats3839 : actualRows3839.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3839=5388 := by core033_kernel_decide
theorem rows3840 : actualRows3840=WordField.canonicalRows actualModulus 3840 (.bnot 3839) := by core033_kernel_decide
theorem stats3840 : actualRows3840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3840=6276 := by core033_kernel_decide
theorem rows3841 : actualRows3841=WordField.canonicalRows actualModulus 3841 (.band 3834 3840) := by core033_kernel_decide
theorem stats3841 : actualRows3841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3841=5124 := by core033_kernel_decide
theorem rows3842 : actualRows3842=WordField.canonicalRows actualModulus 3842 (.bxor 3829 3841) := by core033_kernel_decide
theorem stats3842 : actualRows3842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3842=7428 := by core033_kernel_decide
theorem rows3843 : actualRows3843=WordField.canonicalRows actualModulus 3843 (.shr 3842 31) := by core033_kernel_decide
theorem stats3843 : actualRows3843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3843=2892 := by core033_kernel_decide
theorem rows3844 : actualRows3844=WordField.canonicalRows actualModulus 3844 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3844 : actualRows3844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3844=2892 := by core033_kernel_decide
theorem rows3845 : actualRows3845=WordField.canonicalRows actualModulus 3845 (.bxor 3843 3844) := by core033_kernel_decide
theorem stats3845 : actualRows3845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3845=7428 := by core033_kernel_decide
theorem rows3846 : actualRows3846=WordField.canonicalRows actualModulus 3846 (.bnot 3845) := by core033_kernel_decide
theorem stats3846 : actualRows3846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3846=6276 := by core033_kernel_decide
theorem rows3847 : actualRows3847=WordField.canonicalRows actualModulus 3847 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3847 : actualRows3847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3847=2892 := by core033_kernel_decide
theorem rows3848 : actualRows3848=WordField.canonicalRows actualModulus 3848 (.badd 3846 3847) := by core033_kernel_decide
theorem stats3848 : actualRows3848.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3848=5388 := by core033_kernel_decide
theorem rows3849 : actualRows3849=WordField.canonicalRows actualModulus 3849 (.bnot 3848) := by core033_kernel_decide
theorem stats3849 : actualRows3849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3849=6276 := by core033_kernel_decide
theorem rows3850 : actualRows3850=WordField.canonicalRows actualModulus 3850 (.band 3849 899) := by core033_kernel_decide
theorem stats3850 : actualRows3850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3850=5124 := by core033_kernel_decide
theorem rows3851 : actualRows3851=WordField.canonicalRows actualModulus 3851 (.bxor 3824 3850) := by core033_kernel_decide
theorem stats3851 : actualRows3851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3851=7428 := by core033_kernel_decide
theorem rows3852 : actualRows3852=WordField.canonicalRows actualModulus 3852 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3852 : actualRows3852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3852=2892 := by core033_kernel_decide
theorem rows3853 : actualRows3853=WordField.canonicalRows actualModulus 3853 (.bxor 0 3852) := by core033_kernel_decide
theorem stats3853 : actualRows3853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3853=7428 := by core033_kernel_decide
theorem rows3854 : actualRows3854=WordField.canonicalRows actualModulus 3854 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3854 : actualRows3854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3854=2820 := by core033_kernel_decide
theorem rows3855 : actualRows3855=WordField.canonicalRows actualModulus 3855 (.bnot 3854) := by core033_kernel_decide
theorem stats3855 : actualRows3855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3855=6276 := by core033_kernel_decide
theorem rows3856 : actualRows3856=WordField.canonicalRows actualModulus 3856 (.band 3853 3855) := by core033_kernel_decide
theorem stats3856 : actualRows3856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3856=5124 := by core033_kernel_decide
theorem rows3857 : actualRows3857=WordField.canonicalRows actualModulus 3857 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3857 : actualRows3857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3857=2892 := by core033_kernel_decide
theorem rows3858 : actualRows3858=WordField.canonicalRows actualModulus 3858 (.bxor 0 3857) := by core033_kernel_decide
theorem stats3858 : actualRows3858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3858=7428 := by core033_kernel_decide
theorem rows3859 : actualRows3859=WordField.canonicalRows actualModulus 3859 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3859 : actualRows3859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3859=2820 := by core033_kernel_decide
theorem rows3860 : actualRows3860=WordField.canonicalRows actualModulus 3860 (.bnot 3859) := by core033_kernel_decide
theorem stats3860 : actualRows3860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3860=6276 := by core033_kernel_decide
theorem rows3861 : actualRows3861=WordField.canonicalRows actualModulus 3861 (.bxor 3858 3860) := by core033_kernel_decide
theorem stats3861 : actualRows3861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3861=7428 := by core033_kernel_decide
theorem rows3862 : actualRows3862=WordField.canonicalRows actualModulus 3862 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3862 : actualRows3862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3862=2892 := by core033_kernel_decide
theorem rows3863 : actualRows3863=WordField.canonicalRows actualModulus 3863 (.bxor 0 3862) := by core033_kernel_decide
theorem stats3863 : actualRows3863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3863=7428 := by core033_kernel_decide
theorem rows3864 : actualRows3864=WordField.canonicalRows actualModulus 3864 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3864 : actualRows3864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3864=2820 := by core033_kernel_decide
theorem rows3865 : actualRows3865=WordField.canonicalRows actualModulus 3865 (.bnot 3864) := by core033_kernel_decide
theorem stats3865 : actualRows3865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3865=6276 := by core033_kernel_decide
theorem rows3866 : actualRows3866=WordField.canonicalRows actualModulus 3866 (.badd 3863 3865) := by core033_kernel_decide
theorem stats3866 : actualRows3866.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3866=5388 := by core033_kernel_decide
theorem rows3867 : actualRows3867=WordField.canonicalRows actualModulus 3867 (.bnot 3866) := by core033_kernel_decide
theorem stats3867 : actualRows3867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3867=6276 := by core033_kernel_decide
theorem rows3868 : actualRows3868=WordField.canonicalRows actualModulus 3868 (.band 3861 3867) := by core033_kernel_decide
theorem stats3868 : actualRows3868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3868=5124 := by core033_kernel_decide
theorem rows3869 : actualRows3869=WordField.canonicalRows actualModulus 3869 (.bxor 3856 3868) := by core033_kernel_decide
theorem stats3869 : actualRows3869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3869=7428 := by core033_kernel_decide
theorem rows3870 : actualRows3870=WordField.canonicalRows actualModulus 3870 (.shr 3869 31) := by core033_kernel_decide
theorem stats3870 : actualRows3870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3870=2892 := by core033_kernel_decide
theorem rows3871 : actualRows3871=WordField.canonicalRows actualModulus 3871 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3871 : actualRows3871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3871=2892 := by core033_kernel_decide
theorem rows3872 : actualRows3872=WordField.canonicalRows actualModulus 3872 (.bxor 3870 3871) := by core033_kernel_decide
theorem stats3872 : actualRows3872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3872=7428 := by core033_kernel_decide
theorem rows3873 : actualRows3873=WordField.canonicalRows actualModulus 3873 (.bnot 3872) := by core033_kernel_decide
theorem stats3873 : actualRows3873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3873=6276 := by core033_kernel_decide
theorem rows3874 : actualRows3874=WordField.canonicalRows actualModulus 3874 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3874 : actualRows3874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3874=2892 := by core033_kernel_decide
theorem rows3875 : actualRows3875=WordField.canonicalRows actualModulus 3875 (.badd 3873 3874) := by core033_kernel_decide
theorem stats3875 : actualRows3875.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3875=5388 := by core033_kernel_decide
theorem rows3876 : actualRows3876=WordField.canonicalRows actualModulus 3876 (.band 3875 1094) := by core033_kernel_decide
theorem stats3876 : actualRows3876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3876=5124 := by core033_kernel_decide
theorem rows3877 : actualRows3877=WordField.canonicalRows actualModulus 3877 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3877 : actualRows3877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3877=2892 := by core033_kernel_decide
theorem rows3878 : actualRows3878=WordField.canonicalRows actualModulus 3878 (.bxor 0 3877) := by core033_kernel_decide
theorem stats3878 : actualRows3878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3878=7428 := by core033_kernel_decide
theorem rows3879 : actualRows3879=WordField.canonicalRows actualModulus 3879 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3879 : actualRows3879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3879=2820 := by core033_kernel_decide
theorem rows3880 : actualRows3880=WordField.canonicalRows actualModulus 3880 (.bnot 3879) := by core033_kernel_decide
theorem stats3880 : actualRows3880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3880=6276 := by core033_kernel_decide
theorem rows3881 : actualRows3881=WordField.canonicalRows actualModulus 3881 (.band 3878 3880) := by core033_kernel_decide
theorem stats3881 : actualRows3881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3881=5124 := by core033_kernel_decide
theorem rows3882 : actualRows3882=WordField.canonicalRows actualModulus 3882 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3882 : actualRows3882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3882=2892 := by core033_kernel_decide
def partRows59 : List R1CS.Row := actualRows3819++actualRows3820++actualRows3821++actualRows3822++actualRows3823++actualRows3824++actualRows3825++actualRows3826++actualRows3827++actualRows3828++actualRows3829++actualRows3830++actualRows3831++actualRows3832++actualRows3833++actualRows3834++actualRows3835++actualRows3836++actualRows3837++actualRows3838++actualRows3839++actualRows3840++actualRows3841++actualRows3842++actualRows3843++actualRows3844++actualRows3845++actualRows3846++actualRows3847++actualRows3848++actualRows3849++actualRows3850++actualRows3851++actualRows3852++actualRows3853++actualRows3854++actualRows3855++actualRows3856++actualRows3857++actualRows3858++actualRows3859++actualRows3860++actualRows3861++actualRows3862++actualRows3863++actualRows3864++actualRows3865++actualRows3866++actualRows3867++actualRows3868++actualRows3869++actualRows3870++actualRows3871++actualRows3872++actualRows3873++actualRows3874++actualRows3875++actualRows3876++actualRows3877++actualRows3878++actualRows3879++actualRows3880++actualRows3881++actualRows3882
def partOps59 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 3818 3819,.bnot 3820,.literal (BitVec.ofNat 32 1),.badd 3821 3822,.band 3823 1091,.literal (BitVec.ofNat 32 2),.bxor 0 3825,.literal (BitVec.ofNat 32 0),.bnot 3827,.band 3826 3828,.literal (BitVec.ofNat 32 2),.bxor 0 3830,.literal (BitVec.ofNat 32 0),.bnot 3832,.bxor 3831 3833,.literal (BitVec.ofNat 32 2),.bxor 0 3835,.literal (BitVec.ofNat 32 0),.bnot 3837,.badd 3836 3838,.bnot 3839,.band 3834 3840,.bxor 3829 3841,.shr 3842 31,.literal (BitVec.ofNat 32 1),.bxor 3843 3844,.bnot 3845,.literal (BitVec.ofNat 32 1),.badd 3846 3847,.bnot 3848,.band 3849 899,.bxor 3824 3850,.literal (BitVec.ofNat 32 2),.bxor 0 3852,.literal (BitVec.ofNat 32 0),.bnot 3854,.band 3853 3855,.literal (BitVec.ofNat 32 2),.bxor 0 3857,.literal (BitVec.ofNat 32 0),.bnot 3859,.bxor 3858 3860,.literal (BitVec.ofNat 32 2),.bxor 0 3862,.literal (BitVec.ofNat 32 0),.bnot 3864,.badd 3863 3865,.bnot 3866,.band 3861 3867,.bxor 3856 3868,.shr 3869 31,.literal (BitVec.ofNat 32 1),.bxor 3870 3871,.bnot 3872,.literal (BitVec.ofNat 32 1),.badd 3873 3874,.band 3875 1094,.literal (BitVec.ofNat 32 2),.bxor 0 3877,.literal (BitVec.ofNat 32 0),.bnot 3879,.band 3878 3880,.literal (BitVec.ofNat 32 2)]
theorem partExact59 : partRows59=WordField.rows actualModulus 3819 partOps59 := by
  simp only [partRows59,partOps59,WordField.rows,rows3819,rows3820,rows3821,rows3822,rows3823,rows3824,rows3825,rows3826,rows3827,rows3828,rows3829,rows3830,rows3831,rows3832,rows3833,rows3834,rows3835,rows3836,rows3837,rows3838,rows3839,rows3840,rows3841,rows3842,rows3843,rows3844,rows3845,rows3846,rows3847,rows3848,rows3849,rows3850,rows3851,rows3852,rows3853,rows3854,rows3855,rows3856,rows3857,rows3858,rows3859,rows3860,rows3861,rows3862,rows3863,rows3864,rows3865,rows3866,rows3867,rows3868,rows3869,rows3870,rows3871,rows3872,rows3873,rows3874,rows3875,rows3876,rows3877,rows3878,rows3879,rows3880,rows3881,rows3882,List.append_assoc,List.append_nil]
theorem partLength59 : partOps59.length=64 := by decide
theorem partStats59 : partRows59.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows59=326952 := by
  simp only [partRows59,List.length_append,MatrixRowBlocks.rows_weight_append,stats3819.1,stats3819.2,stats3820.1,stats3820.2,stats3821.1,stats3821.2,stats3822.1,stats3822.2,stats3823.1,stats3823.2,stats3824.1,stats3824.2,stats3825.1,stats3825.2,stats3826.1,stats3826.2,stats3827.1,stats3827.2,stats3828.1,stats3828.2,stats3829.1,stats3829.2,stats3830.1,stats3830.2,stats3831.1,stats3831.2,stats3832.1,stats3832.2,stats3833.1,stats3833.2,stats3834.1,stats3834.2,stats3835.1,stats3835.2,stats3836.1,stats3836.2,stats3837.1,stats3837.2,stats3838.1,stats3838.2,stats3839.1,stats3839.2,stats3840.1,stats3840.2,stats3841.1,stats3841.2,stats3842.1,stats3842.2,stats3843.1,stats3843.2,stats3844.1,stats3844.2,stats3845.1,stats3845.2,stats3846.1,stats3846.2,stats3847.1,stats3847.2,stats3848.1,stats3848.2,stats3849.1,stats3849.2,stats3850.1,stats3850.2,stats3851.1,stats3851.2,stats3852.1,stats3852.2,stats3853.1,stats3853.2,stats3854.1,stats3854.2,stats3855.1,stats3855.2,stats3856.1,stats3856.2,stats3857.1,stats3857.2,stats3858.1,stats3858.2,stats3859.1,stats3859.2,stats3860.1,stats3860.2,stats3861.1,stats3861.2,stats3862.1,stats3862.2,stats3863.1,stats3863.2,stats3864.1,stats3864.2,stats3865.1,stats3865.2,stats3866.1,stats3866.2,stats3867.1,stats3867.2,stats3868.1,stats3868.2,stats3869.1,stats3869.2,stats3870.1,stats3870.2,stats3871.1,stats3871.2,stats3872.1,stats3872.2,stats3873.1,stats3873.2,stats3874.1,stats3874.2,stats3875.1,stats3875.2,stats3876.1,stats3876.2,stats3877.1,stats3877.2,stats3878.1,stats3878.2,stats3879.1,stats3879.2,stats3880.1,stats3880.2,stats3881.1,stats3881.2,stats3882.1,stats3882.2]
  decide
end FrameHashControllerCheckedRows
