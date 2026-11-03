import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData60
import PairedPathRoundInstructionMatrixData61
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3872 : actualRows3872=WordField.canonicalRows actualModulus 3872 (.band 3871 2070) := by core033_kernel_decide
theorem stats3872 : actualRows3872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3872=5124 := by core033_kernel_decide
theorem rows3873 : actualRows3873=WordField.canonicalRows actualModulus 3873 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3873 : actualRows3873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3873=2892 := by core033_kernel_decide
theorem rows3874 : actualRows3874=WordField.canonicalRows actualModulus 3874 (.bxor 616 3873) := by core033_kernel_decide
theorem stats3874 : actualRows3874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3874=7428 := by core033_kernel_decide
theorem rows3875 : actualRows3875=WordField.canonicalRows actualModulus 3875 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3875 : actualRows3875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3875=2820 := by core033_kernel_decide
theorem rows3876 : actualRows3876=WordField.canonicalRows actualModulus 3876 (.bnot 3875) := by core033_kernel_decide
theorem stats3876 : actualRows3876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3876=6276 := by core033_kernel_decide
theorem rows3877 : actualRows3877=WordField.canonicalRows actualModulus 3877 (.band 3874 3876) := by core033_kernel_decide
theorem stats3877 : actualRows3877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3877=5124 := by core033_kernel_decide
theorem rows3878 : actualRows3878=WordField.canonicalRows actualModulus 3878 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3878 : actualRows3878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3878=2892 := by core033_kernel_decide
theorem rows3879 : actualRows3879=WordField.canonicalRows actualModulus 3879 (.bxor 616 3878) := by core033_kernel_decide
theorem stats3879 : actualRows3879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3879=7428 := by core033_kernel_decide
theorem rows3880 : actualRows3880=WordField.canonicalRows actualModulus 3880 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3880 : actualRows3880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3880=2820 := by core033_kernel_decide
theorem rows3881 : actualRows3881=WordField.canonicalRows actualModulus 3881 (.bnot 3880) := by core033_kernel_decide
theorem stats3881 : actualRows3881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3881=6276 := by core033_kernel_decide
theorem rows3882 : actualRows3882=WordField.canonicalRows actualModulus 3882 (.bxor 3879 3881) := by core033_kernel_decide
theorem stats3882 : actualRows3882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3882=7428 := by core033_kernel_decide
theorem rows3883 : actualRows3883=WordField.canonicalRows actualModulus 3883 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3883 : actualRows3883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3883=2892 := by core033_kernel_decide
theorem rows3884 : actualRows3884=WordField.canonicalRows actualModulus 3884 (.bxor 616 3883) := by core033_kernel_decide
theorem stats3884 : actualRows3884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3884=7428 := by core033_kernel_decide
theorem rows3885 : actualRows3885=WordField.canonicalRows actualModulus 3885 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3885 : actualRows3885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3885=2820 := by core033_kernel_decide
theorem rows3886 : actualRows3886=WordField.canonicalRows actualModulus 3886 (.bnot 3885) := by core033_kernel_decide
theorem stats3886 : actualRows3886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3886=6276 := by core033_kernel_decide
theorem rows3887 : actualRows3887=WordField.canonicalRows actualModulus 3887 (.badd 3884 3886) := by core033_kernel_decide
theorem stats3887 : actualRows3887.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3887=5388 := by core033_kernel_decide
theorem rows3888 : actualRows3888=WordField.canonicalRows actualModulus 3888 (.bnot 3887) := by core033_kernel_decide
theorem stats3888 : actualRows3888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3888=6276 := by core033_kernel_decide
theorem rows3889 : actualRows3889=WordField.canonicalRows actualModulus 3889 (.band 3882 3888) := by core033_kernel_decide
theorem stats3889 : actualRows3889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3889=5124 := by core033_kernel_decide
theorem rows3890 : actualRows3890=WordField.canonicalRows actualModulus 3890 (.bxor 3877 3889) := by core033_kernel_decide
theorem stats3890 : actualRows3890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3890=7428 := by core033_kernel_decide
theorem rows3891 : actualRows3891=WordField.canonicalRows actualModulus 3891 (.shr 3890 31) := by core033_kernel_decide
theorem stats3891 : actualRows3891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3891=2892 := by core033_kernel_decide
theorem rows3892 : actualRows3892=WordField.canonicalRows actualModulus 3892 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3892 : actualRows3892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3892=2892 := by core033_kernel_decide
theorem rows3893 : actualRows3893=WordField.canonicalRows actualModulus 3893 (.bxor 3891 3892) := by core033_kernel_decide
theorem stats3893 : actualRows3893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3893=7428 := by core033_kernel_decide
theorem rows3894 : actualRows3894=WordField.canonicalRows actualModulus 3894 (.bnot 3893) := by core033_kernel_decide
theorem stats3894 : actualRows3894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3894=6276 := by core033_kernel_decide
theorem rows3895 : actualRows3895=WordField.canonicalRows actualModulus 3895 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3895 : actualRows3895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3895=2892 := by core033_kernel_decide
theorem rows3896 : actualRows3896=WordField.canonicalRows actualModulus 3896 (.badd 3894 3895) := by core033_kernel_decide
theorem stats3896 : actualRows3896.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3896=5388 := by core033_kernel_decide
theorem rows3897 : actualRows3897=WordField.canonicalRows actualModulus 3897 (.bnot 3896) := by core033_kernel_decide
theorem stats3897 : actualRows3897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3897=6276 := by core033_kernel_decide
theorem rows3898 : actualRows3898=WordField.canonicalRows actualModulus 3898 (.band 3897 1882) := by core033_kernel_decide
theorem stats3898 : actualRows3898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3898=5124 := by core033_kernel_decide
theorem rows3899 : actualRows3899=WordField.canonicalRows actualModulus 3899 (.bxor 3872 3898) := by core033_kernel_decide
theorem stats3899 : actualRows3899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3899=7428 := by core033_kernel_decide
theorem rows3900 : actualRows3900=WordField.canonicalRows actualModulus 3900 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3900 : actualRows3900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3900=2892 := by core033_kernel_decide
theorem rows3901 : actualRows3901=WordField.canonicalRows actualModulus 3901 (.bxor 616 3900) := by core033_kernel_decide
theorem stats3901 : actualRows3901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3901=7428 := by core033_kernel_decide
theorem rows3902 : actualRows3902=WordField.canonicalRows actualModulus 3902 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3902 : actualRows3902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3902=2820 := by core033_kernel_decide
theorem rows3903 : actualRows3903=WordField.canonicalRows actualModulus 3903 (.bnot 3902) := by core033_kernel_decide
theorem stats3903 : actualRows3903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3903=6276 := by core033_kernel_decide
theorem rows3904 : actualRows3904=WordField.canonicalRows actualModulus 3904 (.band 3901 3903) := by core033_kernel_decide
theorem stats3904 : actualRows3904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3904=5124 := by core033_kernel_decide
theorem rows3905 : actualRows3905=WordField.canonicalRows actualModulus 3905 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3905 : actualRows3905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3905=2892 := by core033_kernel_decide
theorem rows3906 : actualRows3906=WordField.canonicalRows actualModulus 3906 (.bxor 616 3905) := by core033_kernel_decide
theorem stats3906 : actualRows3906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3906=7428 := by core033_kernel_decide
theorem rows3907 : actualRows3907=WordField.canonicalRows actualModulus 3907 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3907 : actualRows3907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3907=2820 := by core033_kernel_decide
theorem rows3908 : actualRows3908=WordField.canonicalRows actualModulus 3908 (.bnot 3907) := by core033_kernel_decide
theorem stats3908 : actualRows3908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3908=6276 := by core033_kernel_decide
theorem rows3909 : actualRows3909=WordField.canonicalRows actualModulus 3909 (.bxor 3906 3908) := by core033_kernel_decide
theorem stats3909 : actualRows3909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3909=7428 := by core033_kernel_decide
theorem rows3910 : actualRows3910=WordField.canonicalRows actualModulus 3910 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3910 : actualRows3910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3910=2892 := by core033_kernel_decide
theorem rows3911 : actualRows3911=WordField.canonicalRows actualModulus 3911 (.bxor 616 3910) := by core033_kernel_decide
theorem stats3911 : actualRows3911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3911=7428 := by core033_kernel_decide
theorem rows3912 : actualRows3912=WordField.canonicalRows actualModulus 3912 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3912 : actualRows3912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3912=2820 := by core033_kernel_decide
theorem rows3913 : actualRows3913=WordField.canonicalRows actualModulus 3913 (.bnot 3912) := by core033_kernel_decide
theorem stats3913 : actualRows3913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3913=6276 := by core033_kernel_decide
theorem rows3914 : actualRows3914=WordField.canonicalRows actualModulus 3914 (.badd 3911 3913) := by core033_kernel_decide
theorem stats3914 : actualRows3914.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3914=5388 := by core033_kernel_decide
theorem rows3915 : actualRows3915=WordField.canonicalRows actualModulus 3915 (.bnot 3914) := by core033_kernel_decide
theorem stats3915 : actualRows3915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3915=6276 := by core033_kernel_decide
theorem rows3916 : actualRows3916=WordField.canonicalRows actualModulus 3916 (.band 3909 3915) := by core033_kernel_decide
theorem stats3916 : actualRows3916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3916=5124 := by core033_kernel_decide
theorem rows3917 : actualRows3917=WordField.canonicalRows actualModulus 3917 (.bxor 3904 3916) := by core033_kernel_decide
theorem stats3917 : actualRows3917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3917=7428 := by core033_kernel_decide
theorem rows3918 : actualRows3918=WordField.canonicalRows actualModulus 3918 (.shr 3917 31) := by core033_kernel_decide
theorem stats3918 : actualRows3918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3918=2892 := by core033_kernel_decide
theorem rows3919 : actualRows3919=WordField.canonicalRows actualModulus 3919 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3919 : actualRows3919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3919=2892 := by core033_kernel_decide
theorem rows3920 : actualRows3920=WordField.canonicalRows actualModulus 3920 (.bxor 3918 3919) := by core033_kernel_decide
theorem stats3920 : actualRows3920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3920=7428 := by core033_kernel_decide
theorem rows3921 : actualRows3921=WordField.canonicalRows actualModulus 3921 (.bnot 3920) := by core033_kernel_decide
theorem stats3921 : actualRows3921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3921=6276 := by core033_kernel_decide
theorem rows3922 : actualRows3922=WordField.canonicalRows actualModulus 3922 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3922 : actualRows3922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3922=2892 := by core033_kernel_decide
theorem rows3923 : actualRows3923=WordField.canonicalRows actualModulus 3923 (.badd 3921 3922) := by core033_kernel_decide
theorem stats3923 : actualRows3923.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3923=5388 := by core033_kernel_decide
theorem rows3924 : actualRows3924=WordField.canonicalRows actualModulus 3924 (.band 3923 2073) := by core033_kernel_decide
theorem stats3924 : actualRows3924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3924=5124 := by core033_kernel_decide
theorem rows3925 : actualRows3925=WordField.canonicalRows actualModulus 3925 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3925 : actualRows3925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3925=2892 := by core033_kernel_decide
theorem rows3926 : actualRows3926=WordField.canonicalRows actualModulus 3926 (.bxor 616 3925) := by core033_kernel_decide
theorem stats3926 : actualRows3926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3926=7428 := by core033_kernel_decide
theorem rows3927 : actualRows3927=WordField.canonicalRows actualModulus 3927 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3927 : actualRows3927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3927=2820 := by core033_kernel_decide
theorem rows3928 : actualRows3928=WordField.canonicalRows actualModulus 3928 (.bnot 3927) := by core033_kernel_decide
theorem stats3928 : actualRows3928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3928=6276 := by core033_kernel_decide
theorem rows3929 : actualRows3929=WordField.canonicalRows actualModulus 3929 (.band 3926 3928) := by core033_kernel_decide
theorem stats3929 : actualRows3929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3929=5124 := by core033_kernel_decide
theorem rows3930 : actualRows3930=WordField.canonicalRows actualModulus 3930 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3930 : actualRows3930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3930=2892 := by core033_kernel_decide
theorem rows3931 : actualRows3931=WordField.canonicalRows actualModulus 3931 (.bxor 616 3930) := by core033_kernel_decide
theorem stats3931 : actualRows3931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3931=7428 := by core033_kernel_decide
theorem rows3932 : actualRows3932=WordField.canonicalRows actualModulus 3932 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3932 : actualRows3932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3932=2820 := by core033_kernel_decide
theorem rows3933 : actualRows3933=WordField.canonicalRows actualModulus 3933 (.bnot 3932) := by core033_kernel_decide
theorem stats3933 : actualRows3933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3933=6276 := by core033_kernel_decide
theorem rows3934 : actualRows3934=WordField.canonicalRows actualModulus 3934 (.bxor 3931 3933) := by core033_kernel_decide
theorem stats3934 : actualRows3934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3934=7428 := by core033_kernel_decide
theorem rows3935 : actualRows3935=WordField.canonicalRows actualModulus 3935 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3935 : actualRows3935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3935=2892 := by core033_kernel_decide
def partRows59 : List R1CS.Row := actualRows3872++actualRows3873++actualRows3874++actualRows3875++actualRows3876++actualRows3877++actualRows3878++actualRows3879++actualRows3880++actualRows3881++actualRows3882++actualRows3883++actualRows3884++actualRows3885++actualRows3886++actualRows3887++actualRows3888++actualRows3889++actualRows3890++actualRows3891++actualRows3892++actualRows3893++actualRows3894++actualRows3895++actualRows3896++actualRows3897++actualRows3898++actualRows3899++actualRows3900++actualRows3901++actualRows3902++actualRows3903++actualRows3904++actualRows3905++actualRows3906++actualRows3907++actualRows3908++actualRows3909++actualRows3910++actualRows3911++actualRows3912++actualRows3913++actualRows3914++actualRows3915++actualRows3916++actualRows3917++actualRows3918++actualRows3919++actualRows3920++actualRows3921++actualRows3922++actualRows3923++actualRows3924++actualRows3925++actualRows3926++actualRows3927++actualRows3928++actualRows3929++actualRows3930++actualRows3931++actualRows3932++actualRows3933++actualRows3934++actualRows3935
def partOps59 : List WordIR.Op := [.band 3871 2070,.literal (BitVec.ofNat 32 2),.bxor 616 3873,.literal (BitVec.ofNat 32 0),.bnot 3875,.band 3874 3876,.literal (BitVec.ofNat 32 2),.bxor 616 3878,.literal (BitVec.ofNat 32 0),.bnot 3880,.bxor 3879 3881,.literal (BitVec.ofNat 32 2),.bxor 616 3883,.literal (BitVec.ofNat 32 0),.bnot 3885,.badd 3884 3886,.bnot 3887,.band 3882 3888,.bxor 3877 3889,.shr 3890 31,.literal (BitVec.ofNat 32 1),.bxor 3891 3892,.bnot 3893,.literal (BitVec.ofNat 32 1),.badd 3894 3895,.bnot 3896,.band 3897 1882,.bxor 3872 3898,.literal (BitVec.ofNat 32 2),.bxor 616 3900,.literal (BitVec.ofNat 32 0),.bnot 3902,.band 3901 3903,.literal (BitVec.ofNat 32 2),.bxor 616 3905,.literal (BitVec.ofNat 32 0),.bnot 3907,.bxor 3906 3908,.literal (BitVec.ofNat 32 2),.bxor 616 3910,.literal (BitVec.ofNat 32 0),.bnot 3912,.badd 3911 3913,.bnot 3914,.band 3909 3915,.bxor 3904 3916,.shr 3917 31,.literal (BitVec.ofNat 32 1),.bxor 3918 3919,.bnot 3920,.literal (BitVec.ofNat 32 1),.badd 3921 3922,.band 3923 2073,.literal (BitVec.ofNat 32 2),.bxor 616 3925,.literal (BitVec.ofNat 32 0),.bnot 3927,.band 3926 3928,.literal (BitVec.ofNat 32 2),.bxor 616 3930,.literal (BitVec.ofNat 32 0),.bnot 3932,.bxor 3931 3933,.literal (BitVec.ofNat 32 2)]
theorem partExact59 : partRows59=WordField.rows actualModulus 3872 partOps59 := by
  simp only [partRows59,partOps59,WordField.rows,rows3872,rows3873,rows3874,rows3875,rows3876,rows3877,rows3878,rows3879,rows3880,rows3881,rows3882,rows3883,rows3884,rows3885,rows3886,rows3887,rows3888,rows3889,rows3890,rows3891,rows3892,rows3893,rows3894,rows3895,rows3896,rows3897,rows3898,rows3899,rows3900,rows3901,rows3902,rows3903,rows3904,rows3905,rows3906,rows3907,rows3908,rows3909,rows3910,rows3911,rows3912,rows3913,rows3914,rows3915,rows3916,rows3917,rows3918,rows3919,rows3920,rows3921,rows3922,rows3923,rows3924,rows3925,rows3926,rows3927,rows3928,rows3929,rows3930,rows3931,rows3932,rows3933,rows3934,rows3935,List.append_assoc,List.append_nil]
theorem partLength59 : partOps59.length=64 := by decide
theorem partStats59 : partRows59.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows59=328920 := by
  simp only [partRows59,List.length_append,MatrixRowBlocks.rows_weight_append,stats3872.1,stats3872.2,stats3873.1,stats3873.2,stats3874.1,stats3874.2,stats3875.1,stats3875.2,stats3876.1,stats3876.2,stats3877.1,stats3877.2,stats3878.1,stats3878.2,stats3879.1,stats3879.2,stats3880.1,stats3880.2,stats3881.1,stats3881.2,stats3882.1,stats3882.2,stats3883.1,stats3883.2,stats3884.1,stats3884.2,stats3885.1,stats3885.2,stats3886.1,stats3886.2,stats3887.1,stats3887.2,stats3888.1,stats3888.2,stats3889.1,stats3889.2,stats3890.1,stats3890.2,stats3891.1,stats3891.2,stats3892.1,stats3892.2,stats3893.1,stats3893.2,stats3894.1,stats3894.2,stats3895.1,stats3895.2,stats3896.1,stats3896.2,stats3897.1,stats3897.2,stats3898.1,stats3898.2,stats3899.1,stats3899.2,stats3900.1,stats3900.2,stats3901.1,stats3901.2,stats3902.1,stats3902.2,stats3903.1,stats3903.2,stats3904.1,stats3904.2,stats3905.1,stats3905.2,stats3906.1,stats3906.2,stats3907.1,stats3907.2,stats3908.1,stats3908.2,stats3909.1,stats3909.2,stats3910.1,stats3910.2,stats3911.1,stats3911.2,stats3912.1,stats3912.2,stats3913.1,stats3913.2,stats3914.1,stats3914.2,stats3915.1,stats3915.2,stats3916.1,stats3916.2,stats3917.1,stats3917.2,stats3918.1,stats3918.2,stats3919.1,stats3919.2,stats3920.1,stats3920.2,stats3921.1,stats3921.2,stats3922.1,stats3922.2,stats3923.1,stats3923.2,stats3924.1,stats3924.2,stats3925.1,stats3925.2,stats3926.1,stats3926.2,stats3927.1,stats3927.2,stats3928.1,stats3928.2,stats3929.1,stats3929.2,stats3930.1,stats3930.2,stats3931.1,stats3931.2,stats3932.1,stats3932.2,stats3933.1,stats3933.2,stats3934.1,stats3934.2,stats3935.1,stats3935.2]
  decide
end QuotedPairedPathRoundCheckedRows
