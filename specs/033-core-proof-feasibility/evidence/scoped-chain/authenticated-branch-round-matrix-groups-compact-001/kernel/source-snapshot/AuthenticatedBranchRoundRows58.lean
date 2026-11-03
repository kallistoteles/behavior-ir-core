import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData59
import AuthenticatedBranchRoundInstructionMatrixData60
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3830 : actualRows3830=WordField.canonicalRows actualModulus 3830 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3830 : actualRows3830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3830=2820 := by core033_kernel_decide
theorem rows3831 : actualRows3831=WordField.canonicalRows actualModulus 3831 (.bnot 3830) := by core033_kernel_decide
theorem stats3831 : actualRows3831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3831=6276 := by core033_kernel_decide
theorem rows3832 : actualRows3832=WordField.canonicalRows actualModulus 3832 (.band 3829 3831) := by core033_kernel_decide
theorem stats3832 : actualRows3832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3832=5124 := by core033_kernel_decide
theorem rows3833 : actualRows3833=WordField.canonicalRows actualModulus 3833 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3833 : actualRows3833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3833=2892 := by core033_kernel_decide
theorem rows3834 : actualRows3834=WordField.canonicalRows actualModulus 3834 (.bxor 1299 3833) := by core033_kernel_decide
theorem stats3834 : actualRows3834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3834=7428 := by core033_kernel_decide
theorem rows3835 : actualRows3835=WordField.canonicalRows actualModulus 3835 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3835 : actualRows3835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3835=2820 := by core033_kernel_decide
theorem rows3836 : actualRows3836=WordField.canonicalRows actualModulus 3836 (.bnot 3835) := by core033_kernel_decide
theorem stats3836 : actualRows3836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3836=6276 := by core033_kernel_decide
theorem rows3837 : actualRows3837=WordField.canonicalRows actualModulus 3837 (.bxor 3834 3836) := by core033_kernel_decide
theorem stats3837 : actualRows3837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3837=7428 := by core033_kernel_decide
theorem rows3838 : actualRows3838=WordField.canonicalRows actualModulus 3838 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3838 : actualRows3838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3838=2892 := by core033_kernel_decide
theorem rows3839 : actualRows3839=WordField.canonicalRows actualModulus 3839 (.bxor 1299 3838) := by core033_kernel_decide
theorem stats3839 : actualRows3839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3839=7428 := by core033_kernel_decide
theorem rows3840 : actualRows3840=WordField.canonicalRows actualModulus 3840 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3840 : actualRows3840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3840=2820 := by core033_kernel_decide
theorem rows3841 : actualRows3841=WordField.canonicalRows actualModulus 3841 (.bnot 3840) := by core033_kernel_decide
theorem stats3841 : actualRows3841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3841=6276 := by core033_kernel_decide
theorem rows3842 : actualRows3842=WordField.canonicalRows actualModulus 3842 (.badd 3839 3841) := by core033_kernel_decide
theorem stats3842 : actualRows3842.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3842=5388 := by core033_kernel_decide
theorem rows3843 : actualRows3843=WordField.canonicalRows actualModulus 3843 (.bnot 3842) := by core033_kernel_decide
theorem stats3843 : actualRows3843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3843=6276 := by core033_kernel_decide
theorem rows3844 : actualRows3844=WordField.canonicalRows actualModulus 3844 (.band 3837 3843) := by core033_kernel_decide
theorem stats3844 : actualRows3844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3844=5124 := by core033_kernel_decide
theorem rows3845 : actualRows3845=WordField.canonicalRows actualModulus 3845 (.bxor 3832 3844) := by core033_kernel_decide
theorem stats3845 : actualRows3845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3845=7428 := by core033_kernel_decide
theorem rows3846 : actualRows3846=WordField.canonicalRows actualModulus 3846 (.shr 3845 31) := by core033_kernel_decide
theorem stats3846 : actualRows3846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3846=2892 := by core033_kernel_decide
theorem rows3847 : actualRows3847=WordField.canonicalRows actualModulus 3847 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3847 : actualRows3847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3847=2892 := by core033_kernel_decide
theorem rows3848 : actualRows3848=WordField.canonicalRows actualModulus 3848 (.bxor 3846 3847) := by core033_kernel_decide
theorem stats3848 : actualRows3848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3848=7428 := by core033_kernel_decide
theorem rows3849 : actualRows3849=WordField.canonicalRows actualModulus 3849 (.bnot 3848) := by core033_kernel_decide
theorem stats3849 : actualRows3849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3849=6276 := by core033_kernel_decide
theorem rows3850 : actualRows3850=WordField.canonicalRows actualModulus 3850 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3850 : actualRows3850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3850=2892 := by core033_kernel_decide
theorem rows3851 : actualRows3851=WordField.canonicalRows actualModulus 3851 (.badd 3849 3850) := by core033_kernel_decide
theorem stats3851 : actualRows3851.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3851=5388 := by core033_kernel_decide
theorem rows3852 : actualRows3852=WordField.canonicalRows actualModulus 3852 (.bnot 3851) := by core033_kernel_decide
theorem stats3852 : actualRows3852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3852=6276 := by core033_kernel_decide
theorem rows3853 : actualRows3853=WordField.canonicalRows actualModulus 3853 (.band 3852 2551) := by core033_kernel_decide
theorem stats3853 : actualRows3853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3853=5124 := by core033_kernel_decide
theorem rows3854 : actualRows3854=WordField.canonicalRows actualModulus 3854 (.bxor 3827 3853) := by core033_kernel_decide
theorem stats3854 : actualRows3854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3854=7428 := by core033_kernel_decide
theorem rows3855 : actualRows3855=WordField.canonicalRows actualModulus 3855 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3855 : actualRows3855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3855=2892 := by core033_kernel_decide
theorem rows3856 : actualRows3856=WordField.canonicalRows actualModulus 3856 (.bxor 1299 3855) := by core033_kernel_decide
theorem stats3856 : actualRows3856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3856=7428 := by core033_kernel_decide
theorem rows3857 : actualRows3857=WordField.canonicalRows actualModulus 3857 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3857 : actualRows3857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3857=2820 := by core033_kernel_decide
theorem rows3858 : actualRows3858=WordField.canonicalRows actualModulus 3858 (.bnot 3857) := by core033_kernel_decide
theorem stats3858 : actualRows3858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3858=6276 := by core033_kernel_decide
theorem rows3859 : actualRows3859=WordField.canonicalRows actualModulus 3859 (.band 3856 3858) := by core033_kernel_decide
theorem stats3859 : actualRows3859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3859=5124 := by core033_kernel_decide
theorem rows3860 : actualRows3860=WordField.canonicalRows actualModulus 3860 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3860 : actualRows3860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3860=2892 := by core033_kernel_decide
theorem rows3861 : actualRows3861=WordField.canonicalRows actualModulus 3861 (.bxor 1299 3860) := by core033_kernel_decide
theorem stats3861 : actualRows3861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3861=7428 := by core033_kernel_decide
theorem rows3862 : actualRows3862=WordField.canonicalRows actualModulus 3862 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3862 : actualRows3862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3862=2820 := by core033_kernel_decide
theorem rows3863 : actualRows3863=WordField.canonicalRows actualModulus 3863 (.bnot 3862) := by core033_kernel_decide
theorem stats3863 : actualRows3863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3863=6276 := by core033_kernel_decide
theorem rows3864 : actualRows3864=WordField.canonicalRows actualModulus 3864 (.bxor 3861 3863) := by core033_kernel_decide
theorem stats3864 : actualRows3864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3864=7428 := by core033_kernel_decide
theorem rows3865 : actualRows3865=WordField.canonicalRows actualModulus 3865 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3865 : actualRows3865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3865=2892 := by core033_kernel_decide
theorem rows3866 : actualRows3866=WordField.canonicalRows actualModulus 3866 (.bxor 1299 3865) := by core033_kernel_decide
theorem stats3866 : actualRows3866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3866=7428 := by core033_kernel_decide
theorem rows3867 : actualRows3867=WordField.canonicalRows actualModulus 3867 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3867 : actualRows3867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3867=2820 := by core033_kernel_decide
theorem rows3868 : actualRows3868=WordField.canonicalRows actualModulus 3868 (.bnot 3867) := by core033_kernel_decide
theorem stats3868 : actualRows3868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3868=6276 := by core033_kernel_decide
theorem rows3869 : actualRows3869=WordField.canonicalRows actualModulus 3869 (.badd 3866 3868) := by core033_kernel_decide
theorem stats3869 : actualRows3869.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3869=5388 := by core033_kernel_decide
theorem rows3870 : actualRows3870=WordField.canonicalRows actualModulus 3870 (.bnot 3869) := by core033_kernel_decide
theorem stats3870 : actualRows3870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3870=6276 := by core033_kernel_decide
theorem rows3871 : actualRows3871=WordField.canonicalRows actualModulus 3871 (.band 3864 3870) := by core033_kernel_decide
theorem stats3871 : actualRows3871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3871=5124 := by core033_kernel_decide
theorem rows3872 : actualRows3872=WordField.canonicalRows actualModulus 3872 (.bxor 3859 3871) := by core033_kernel_decide
theorem stats3872 : actualRows3872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3872=7428 := by core033_kernel_decide
theorem rows3873 : actualRows3873=WordField.canonicalRows actualModulus 3873 (.shr 3872 31) := by core033_kernel_decide
theorem stats3873 : actualRows3873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3873=2892 := by core033_kernel_decide
theorem rows3874 : actualRows3874=WordField.canonicalRows actualModulus 3874 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3874 : actualRows3874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3874=2892 := by core033_kernel_decide
theorem rows3875 : actualRows3875=WordField.canonicalRows actualModulus 3875 (.bxor 3873 3874) := by core033_kernel_decide
theorem stats3875 : actualRows3875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3875=7428 := by core033_kernel_decide
theorem rows3876 : actualRows3876=WordField.canonicalRows actualModulus 3876 (.bnot 3875) := by core033_kernel_decide
theorem stats3876 : actualRows3876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3876=6276 := by core033_kernel_decide
theorem rows3877 : actualRows3877=WordField.canonicalRows actualModulus 3877 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3877 : actualRows3877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3877=2892 := by core033_kernel_decide
theorem rows3878 : actualRows3878=WordField.canonicalRows actualModulus 3878 (.badd 3876 3877) := by core033_kernel_decide
theorem stats3878 : actualRows3878.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3878=5388 := by core033_kernel_decide
theorem rows3879 : actualRows3879=WordField.canonicalRows actualModulus 3879 (.band 3878 2714) := by core033_kernel_decide
theorem stats3879 : actualRows3879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3879=5124 := by core033_kernel_decide
theorem rows3880 : actualRows3880=WordField.canonicalRows actualModulus 3880 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3880 : actualRows3880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3880=2892 := by core033_kernel_decide
theorem rows3881 : actualRows3881=WordField.canonicalRows actualModulus 3881 (.bxor 1299 3880) := by core033_kernel_decide
theorem stats3881 : actualRows3881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3881=7428 := by core033_kernel_decide
theorem rows3882 : actualRows3882=WordField.canonicalRows actualModulus 3882 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3882 : actualRows3882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3882=2820 := by core033_kernel_decide
theorem rows3883 : actualRows3883=WordField.canonicalRows actualModulus 3883 (.bnot 3882) := by core033_kernel_decide
theorem stats3883 : actualRows3883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3883=6276 := by core033_kernel_decide
theorem rows3884 : actualRows3884=WordField.canonicalRows actualModulus 3884 (.band 3881 3883) := by core033_kernel_decide
theorem stats3884 : actualRows3884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3884=5124 := by core033_kernel_decide
theorem rows3885 : actualRows3885=WordField.canonicalRows actualModulus 3885 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3885 : actualRows3885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3885=2892 := by core033_kernel_decide
theorem rows3886 : actualRows3886=WordField.canonicalRows actualModulus 3886 (.bxor 1299 3885) := by core033_kernel_decide
theorem stats3886 : actualRows3886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3886=7428 := by core033_kernel_decide
theorem rows3887 : actualRows3887=WordField.canonicalRows actualModulus 3887 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3887 : actualRows3887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3887=2820 := by core033_kernel_decide
theorem rows3888 : actualRows3888=WordField.canonicalRows actualModulus 3888 (.bnot 3887) := by core033_kernel_decide
theorem stats3888 : actualRows3888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3888=6276 := by core033_kernel_decide
theorem rows3889 : actualRows3889=WordField.canonicalRows actualModulus 3889 (.bxor 3886 3888) := by core033_kernel_decide
theorem stats3889 : actualRows3889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3889=7428 := by core033_kernel_decide
theorem rows3890 : actualRows3890=WordField.canonicalRows actualModulus 3890 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3890 : actualRows3890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3890=2892 := by core033_kernel_decide
theorem rows3891 : actualRows3891=WordField.canonicalRows actualModulus 3891 (.bxor 1299 3890) := by core033_kernel_decide
theorem stats3891 : actualRows3891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3891=7428 := by core033_kernel_decide
theorem rows3892 : actualRows3892=WordField.canonicalRows actualModulus 3892 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3892 : actualRows3892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3892=2820 := by core033_kernel_decide
theorem rows3893 : actualRows3893=WordField.canonicalRows actualModulus 3893 (.bnot 3892) := by core033_kernel_decide
theorem stats3893 : actualRows3893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3893=6276 := by core033_kernel_decide
def partRows58 : List R1CS.Row := actualRows3830++actualRows3831++actualRows3832++actualRows3833++actualRows3834++actualRows3835++actualRows3836++actualRows3837++actualRows3838++actualRows3839++actualRows3840++actualRows3841++actualRows3842++actualRows3843++actualRows3844++actualRows3845++actualRows3846++actualRows3847++actualRows3848++actualRows3849++actualRows3850++actualRows3851++actualRows3852++actualRows3853++actualRows3854++actualRows3855++actualRows3856++actualRows3857++actualRows3858++actualRows3859++actualRows3860++actualRows3861++actualRows3862++actualRows3863++actualRows3864++actualRows3865++actualRows3866++actualRows3867++actualRows3868++actualRows3869++actualRows3870++actualRows3871++actualRows3872++actualRows3873++actualRows3874++actualRows3875++actualRows3876++actualRows3877++actualRows3878++actualRows3879++actualRows3880++actualRows3881++actualRows3882++actualRows3883++actualRows3884++actualRows3885++actualRows3886++actualRows3887++actualRows3888++actualRows3889++actualRows3890++actualRows3891++actualRows3892++actualRows3893
def partOps58 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 3830,.band 3829 3831,.literal (BitVec.ofNat 32 2),.bxor 1299 3833,.literal (BitVec.ofNat 32 0),.bnot 3835,.bxor 3834 3836,.literal (BitVec.ofNat 32 2),.bxor 1299 3838,.literal (BitVec.ofNat 32 0),.bnot 3840,.badd 3839 3841,.bnot 3842,.band 3837 3843,.bxor 3832 3844,.shr 3845 31,.literal (BitVec.ofNat 32 1),.bxor 3846 3847,.bnot 3848,.literal (BitVec.ofNat 32 1),.badd 3849 3850,.bnot 3851,.band 3852 2551,.bxor 3827 3853,.literal (BitVec.ofNat 32 2),.bxor 1299 3855,.literal (BitVec.ofNat 32 0),.bnot 3857,.band 3856 3858,.literal (BitVec.ofNat 32 2),.bxor 1299 3860,.literal (BitVec.ofNat 32 0),.bnot 3862,.bxor 3861 3863,.literal (BitVec.ofNat 32 2),.bxor 1299 3865,.literal (BitVec.ofNat 32 0),.bnot 3867,.badd 3866 3868,.bnot 3869,.band 3864 3870,.bxor 3859 3871,.shr 3872 31,.literal (BitVec.ofNat 32 1),.bxor 3873 3874,.bnot 3875,.literal (BitVec.ofNat 32 1),.badd 3876 3877,.band 3878 2714,.literal (BitVec.ofNat 32 2),.bxor 1299 3880,.literal (BitVec.ofNat 32 0),.bnot 3882,.band 3881 3883,.literal (BitVec.ofNat 32 2),.bxor 1299 3885,.literal (BitVec.ofNat 32 0),.bnot 3887,.bxor 3886 3888,.literal (BitVec.ofNat 32 2),.bxor 1299 3890,.literal (BitVec.ofNat 32 0),.bnot 3892]
theorem partExact58 : partRows58=WordField.rows actualModulus 3830 partOps58 := by
  simp only [partRows58,partOps58,WordField.rows,rows3830,rows3831,rows3832,rows3833,rows3834,rows3835,rows3836,rows3837,rows3838,rows3839,rows3840,rows3841,rows3842,rows3843,rows3844,rows3845,rows3846,rows3847,rows3848,rows3849,rows3850,rows3851,rows3852,rows3853,rows3854,rows3855,rows3856,rows3857,rows3858,rows3859,rows3860,rows3861,rows3862,rows3863,rows3864,rows3865,rows3866,rows3867,rows3868,rows3869,rows3870,rows3871,rows3872,rows3873,rows3874,rows3875,rows3876,rows3877,rows3878,rows3879,rows3880,rows3881,rows3882,rows3883,rows3884,rows3885,rows3886,rows3887,rows3888,rows3889,rows3890,rows3891,rows3892,rows3893,List.append_assoc,List.append_nil]
theorem partLength58 : partOps58.length=64 := by decide
theorem partStats58 : partRows58.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows58=330000 := by
  simp only [partRows58,List.length_append,MatrixRowBlocks.rows_weight_append,stats3830.1,stats3830.2,stats3831.1,stats3831.2,stats3832.1,stats3832.2,stats3833.1,stats3833.2,stats3834.1,stats3834.2,stats3835.1,stats3835.2,stats3836.1,stats3836.2,stats3837.1,stats3837.2,stats3838.1,stats3838.2,stats3839.1,stats3839.2,stats3840.1,stats3840.2,stats3841.1,stats3841.2,stats3842.1,stats3842.2,stats3843.1,stats3843.2,stats3844.1,stats3844.2,stats3845.1,stats3845.2,stats3846.1,stats3846.2,stats3847.1,stats3847.2,stats3848.1,stats3848.2,stats3849.1,stats3849.2,stats3850.1,stats3850.2,stats3851.1,stats3851.2,stats3852.1,stats3852.2,stats3853.1,stats3853.2,stats3854.1,stats3854.2,stats3855.1,stats3855.2,stats3856.1,stats3856.2,stats3857.1,stats3857.2,stats3858.1,stats3858.2,stats3859.1,stats3859.2,stats3860.1,stats3860.2,stats3861.1,stats3861.2,stats3862.1,stats3862.2,stats3863.1,stats3863.2,stats3864.1,stats3864.2,stats3865.1,stats3865.2,stats3866.1,stats3866.2,stats3867.1,stats3867.2,stats3868.1,stats3868.2,stats3869.1,stats3869.2,stats3870.1,stats3870.2,stats3871.1,stats3871.2,stats3872.1,stats3872.2,stats3873.1,stats3873.2,stats3874.1,stats3874.2,stats3875.1,stats3875.2,stats3876.1,stats3876.2,stats3877.1,stats3877.2,stats3878.1,stats3878.2,stats3879.1,stats3879.2,stats3880.1,stats3880.2,stats3881.1,stats3881.2,stats3882.1,stats3882.2,stats3883.1,stats3883.2,stats3884.1,stats3884.2,stats3885.1,stats3885.2,stats3886.1,stats3886.2,stats3887.1,stats3887.2,stats3888.1,stats3888.2,stats3889.1,stats3889.2,stats3890.1,stats3890.2,stats3891.1,stats3891.2,stats3892.1,stats3892.2,stats3893.1,stats3893.2]
  decide
end AuthenticatedBranchRoundCheckedRows
