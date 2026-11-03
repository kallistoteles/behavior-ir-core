import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData60
import FrameHashControllerInstructionMatrixData61
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3883 : actualRows3883=WordField.canonicalRows actualModulus 3883 (.bxor 0 3882) := by core033_kernel_decide
theorem stats3883 : actualRows3883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3883=7428 := by core033_kernel_decide
theorem rows3884 : actualRows3884=WordField.canonicalRows actualModulus 3884 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3884 : actualRows3884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3884=2820 := by core033_kernel_decide
theorem rows3885 : actualRows3885=WordField.canonicalRows actualModulus 3885 (.bnot 3884) := by core033_kernel_decide
theorem stats3885 : actualRows3885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3885=6276 := by core033_kernel_decide
theorem rows3886 : actualRows3886=WordField.canonicalRows actualModulus 3886 (.bxor 3883 3885) := by core033_kernel_decide
theorem stats3886 : actualRows3886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3886=7428 := by core033_kernel_decide
theorem rows3887 : actualRows3887=WordField.canonicalRows actualModulus 3887 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3887 : actualRows3887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3887=2892 := by core033_kernel_decide
theorem rows3888 : actualRows3888=WordField.canonicalRows actualModulus 3888 (.bxor 0 3887) := by core033_kernel_decide
theorem stats3888 : actualRows3888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3888=7428 := by core033_kernel_decide
theorem rows3889 : actualRows3889=WordField.canonicalRows actualModulus 3889 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3889 : actualRows3889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3889=2820 := by core033_kernel_decide
theorem rows3890 : actualRows3890=WordField.canonicalRows actualModulus 3890 (.bnot 3889) := by core033_kernel_decide
theorem stats3890 : actualRows3890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3890=6276 := by core033_kernel_decide
theorem rows3891 : actualRows3891=WordField.canonicalRows actualModulus 3891 (.badd 3888 3890) := by core033_kernel_decide
theorem stats3891 : actualRows3891.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3891=5388 := by core033_kernel_decide
theorem rows3892 : actualRows3892=WordField.canonicalRows actualModulus 3892 (.bnot 3891) := by core033_kernel_decide
theorem stats3892 : actualRows3892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3892=6276 := by core033_kernel_decide
theorem rows3893 : actualRows3893=WordField.canonicalRows actualModulus 3893 (.band 3886 3892) := by core033_kernel_decide
theorem stats3893 : actualRows3893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3893=5124 := by core033_kernel_decide
theorem rows3894 : actualRows3894=WordField.canonicalRows actualModulus 3894 (.bxor 3881 3893) := by core033_kernel_decide
theorem stats3894 : actualRows3894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3894=7428 := by core033_kernel_decide
theorem rows3895 : actualRows3895=WordField.canonicalRows actualModulus 3895 (.shr 3894 31) := by core033_kernel_decide
theorem stats3895 : actualRows3895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3895=2892 := by core033_kernel_decide
theorem rows3896 : actualRows3896=WordField.canonicalRows actualModulus 3896 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3896 : actualRows3896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3896=2892 := by core033_kernel_decide
theorem rows3897 : actualRows3897=WordField.canonicalRows actualModulus 3897 (.bxor 3895 3896) := by core033_kernel_decide
theorem stats3897 : actualRows3897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3897=7428 := by core033_kernel_decide
theorem rows3898 : actualRows3898=WordField.canonicalRows actualModulus 3898 (.bnot 3897) := by core033_kernel_decide
theorem stats3898 : actualRows3898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3898=6276 := by core033_kernel_decide
theorem rows3899 : actualRows3899=WordField.canonicalRows actualModulus 3899 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3899 : actualRows3899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3899=2892 := by core033_kernel_decide
theorem rows3900 : actualRows3900=WordField.canonicalRows actualModulus 3900 (.badd 3898 3899) := by core033_kernel_decide
theorem stats3900 : actualRows3900.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3900=5388 := by core033_kernel_decide
theorem rows3901 : actualRows3901=WordField.canonicalRows actualModulus 3901 (.bnot 3900) := by core033_kernel_decide
theorem stats3901 : actualRows3901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3901=6276 := by core033_kernel_decide
theorem rows3902 : actualRows3902=WordField.canonicalRows actualModulus 3902 (.band 3901 902) := by core033_kernel_decide
theorem stats3902 : actualRows3902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3902=5124 := by core033_kernel_decide
theorem rows3903 : actualRows3903=WordField.canonicalRows actualModulus 3903 (.bxor 3876 3902) := by core033_kernel_decide
theorem stats3903 : actualRows3903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3903=7428 := by core033_kernel_decide
theorem rows3904 : actualRows3904=WordField.canonicalRows actualModulus 3904 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3904 : actualRows3904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3904=2892 := by core033_kernel_decide
theorem rows3905 : actualRows3905=WordField.canonicalRows actualModulus 3905 (.bxor 0 3904) := by core033_kernel_decide
theorem stats3905 : actualRows3905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3905=7428 := by core033_kernel_decide
theorem rows3906 : actualRows3906=WordField.canonicalRows actualModulus 3906 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3906 : actualRows3906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3906=2820 := by core033_kernel_decide
theorem rows3907 : actualRows3907=WordField.canonicalRows actualModulus 3907 (.bnot 3906) := by core033_kernel_decide
theorem stats3907 : actualRows3907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3907=6276 := by core033_kernel_decide
theorem rows3908 : actualRows3908=WordField.canonicalRows actualModulus 3908 (.band 3905 3907) := by core033_kernel_decide
theorem stats3908 : actualRows3908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3908=5124 := by core033_kernel_decide
theorem rows3909 : actualRows3909=WordField.canonicalRows actualModulus 3909 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3909 : actualRows3909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3909=2892 := by core033_kernel_decide
theorem rows3910 : actualRows3910=WordField.canonicalRows actualModulus 3910 (.bxor 0 3909) := by core033_kernel_decide
theorem stats3910 : actualRows3910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3910=7428 := by core033_kernel_decide
theorem rows3911 : actualRows3911=WordField.canonicalRows actualModulus 3911 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3911 : actualRows3911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3911=2820 := by core033_kernel_decide
theorem rows3912 : actualRows3912=WordField.canonicalRows actualModulus 3912 (.bnot 3911) := by core033_kernel_decide
theorem stats3912 : actualRows3912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3912=6276 := by core033_kernel_decide
theorem rows3913 : actualRows3913=WordField.canonicalRows actualModulus 3913 (.bxor 3910 3912) := by core033_kernel_decide
theorem stats3913 : actualRows3913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3913=7428 := by core033_kernel_decide
theorem rows3914 : actualRows3914=WordField.canonicalRows actualModulus 3914 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3914 : actualRows3914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3914=2892 := by core033_kernel_decide
theorem rows3915 : actualRows3915=WordField.canonicalRows actualModulus 3915 (.bxor 0 3914) := by core033_kernel_decide
theorem stats3915 : actualRows3915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3915=7428 := by core033_kernel_decide
theorem rows3916 : actualRows3916=WordField.canonicalRows actualModulus 3916 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3916 : actualRows3916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3916=2820 := by core033_kernel_decide
theorem rows3917 : actualRows3917=WordField.canonicalRows actualModulus 3917 (.bnot 3916) := by core033_kernel_decide
theorem stats3917 : actualRows3917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3917=6276 := by core033_kernel_decide
theorem rows3918 : actualRows3918=WordField.canonicalRows actualModulus 3918 (.badd 3915 3917) := by core033_kernel_decide
theorem stats3918 : actualRows3918.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3918=5388 := by core033_kernel_decide
theorem rows3919 : actualRows3919=WordField.canonicalRows actualModulus 3919 (.bnot 3918) := by core033_kernel_decide
theorem stats3919 : actualRows3919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3919=6276 := by core033_kernel_decide
theorem rows3920 : actualRows3920=WordField.canonicalRows actualModulus 3920 (.band 3913 3919) := by core033_kernel_decide
theorem stats3920 : actualRows3920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3920=5124 := by core033_kernel_decide
theorem rows3921 : actualRows3921=WordField.canonicalRows actualModulus 3921 (.bxor 3908 3920) := by core033_kernel_decide
theorem stats3921 : actualRows3921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3921=7428 := by core033_kernel_decide
theorem rows3922 : actualRows3922=WordField.canonicalRows actualModulus 3922 (.shr 3921 31) := by core033_kernel_decide
theorem stats3922 : actualRows3922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3922=2892 := by core033_kernel_decide
theorem rows3923 : actualRows3923=WordField.canonicalRows actualModulus 3923 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3923 : actualRows3923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3923=2892 := by core033_kernel_decide
theorem rows3924 : actualRows3924=WordField.canonicalRows actualModulus 3924 (.bxor 3922 3923) := by core033_kernel_decide
theorem stats3924 : actualRows3924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3924=7428 := by core033_kernel_decide
theorem rows3925 : actualRows3925=WordField.canonicalRows actualModulus 3925 (.bnot 3924) := by core033_kernel_decide
theorem stats3925 : actualRows3925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3925=6276 := by core033_kernel_decide
theorem rows3926 : actualRows3926=WordField.canonicalRows actualModulus 3926 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3926 : actualRows3926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3926=2892 := by core033_kernel_decide
theorem rows3927 : actualRows3927=WordField.canonicalRows actualModulus 3927 (.badd 3925 3926) := by core033_kernel_decide
theorem stats3927 : actualRows3927.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3927=5388 := by core033_kernel_decide
theorem rows3928 : actualRows3928=WordField.canonicalRows actualModulus 3928 (.band 3927 1097) := by core033_kernel_decide
theorem stats3928 : actualRows3928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3928=5124 := by core033_kernel_decide
theorem rows3929 : actualRows3929=WordField.canonicalRows actualModulus 3929 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3929 : actualRows3929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3929=2892 := by core033_kernel_decide
theorem rows3930 : actualRows3930=WordField.canonicalRows actualModulus 3930 (.bxor 0 3929) := by core033_kernel_decide
theorem stats3930 : actualRows3930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3930=7428 := by core033_kernel_decide
theorem rows3931 : actualRows3931=WordField.canonicalRows actualModulus 3931 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3931 : actualRows3931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3931=2820 := by core033_kernel_decide
theorem rows3932 : actualRows3932=WordField.canonicalRows actualModulus 3932 (.bnot 3931) := by core033_kernel_decide
theorem stats3932 : actualRows3932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3932=6276 := by core033_kernel_decide
theorem rows3933 : actualRows3933=WordField.canonicalRows actualModulus 3933 (.band 3930 3932) := by core033_kernel_decide
theorem stats3933 : actualRows3933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3933=5124 := by core033_kernel_decide
theorem rows3934 : actualRows3934=WordField.canonicalRows actualModulus 3934 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3934 : actualRows3934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3934=2892 := by core033_kernel_decide
theorem rows3935 : actualRows3935=WordField.canonicalRows actualModulus 3935 (.bxor 0 3934) := by core033_kernel_decide
theorem stats3935 : actualRows3935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3935=7428 := by core033_kernel_decide
theorem rows3936 : actualRows3936=WordField.canonicalRows actualModulus 3936 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3936 : actualRows3936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3936=2820 := by core033_kernel_decide
theorem rows3937 : actualRows3937=WordField.canonicalRows actualModulus 3937 (.bnot 3936) := by core033_kernel_decide
theorem stats3937 : actualRows3937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3937=6276 := by core033_kernel_decide
theorem rows3938 : actualRows3938=WordField.canonicalRows actualModulus 3938 (.bxor 3935 3937) := by core033_kernel_decide
theorem stats3938 : actualRows3938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3938=7428 := by core033_kernel_decide
theorem rows3939 : actualRows3939=WordField.canonicalRows actualModulus 3939 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3939 : actualRows3939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3939=2892 := by core033_kernel_decide
theorem rows3940 : actualRows3940=WordField.canonicalRows actualModulus 3940 (.bxor 0 3939) := by core033_kernel_decide
theorem stats3940 : actualRows3940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3940=7428 := by core033_kernel_decide
theorem rows3941 : actualRows3941=WordField.canonicalRows actualModulus 3941 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3941 : actualRows3941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3941=2820 := by core033_kernel_decide
theorem rows3942 : actualRows3942=WordField.canonicalRows actualModulus 3942 (.bnot 3941) := by core033_kernel_decide
theorem stats3942 : actualRows3942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3942=6276 := by core033_kernel_decide
theorem rows3943 : actualRows3943=WordField.canonicalRows actualModulus 3943 (.badd 3940 3942) := by core033_kernel_decide
theorem stats3943 : actualRows3943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3943=5388 := by core033_kernel_decide
theorem rows3944 : actualRows3944=WordField.canonicalRows actualModulus 3944 (.bnot 3943) := by core033_kernel_decide
theorem stats3944 : actualRows3944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3944=6276 := by core033_kernel_decide
theorem rows3945 : actualRows3945=WordField.canonicalRows actualModulus 3945 (.band 3938 3944) := by core033_kernel_decide
theorem stats3945 : actualRows3945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3945=5124 := by core033_kernel_decide
theorem rows3946 : actualRows3946=WordField.canonicalRows actualModulus 3946 (.bxor 3933 3945) := by core033_kernel_decide
theorem stats3946 : actualRows3946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3946=7428 := by core033_kernel_decide
def partRows60 : List R1CS.Row := actualRows3883++actualRows3884++actualRows3885++actualRows3886++actualRows3887++actualRows3888++actualRows3889++actualRows3890++actualRows3891++actualRows3892++actualRows3893++actualRows3894++actualRows3895++actualRows3896++actualRows3897++actualRows3898++actualRows3899++actualRows3900++actualRows3901++actualRows3902++actualRows3903++actualRows3904++actualRows3905++actualRows3906++actualRows3907++actualRows3908++actualRows3909++actualRows3910++actualRows3911++actualRows3912++actualRows3913++actualRows3914++actualRows3915++actualRows3916++actualRows3917++actualRows3918++actualRows3919++actualRows3920++actualRows3921++actualRows3922++actualRows3923++actualRows3924++actualRows3925++actualRows3926++actualRows3927++actualRows3928++actualRows3929++actualRows3930++actualRows3931++actualRows3932++actualRows3933++actualRows3934++actualRows3935++actualRows3936++actualRows3937++actualRows3938++actualRows3939++actualRows3940++actualRows3941++actualRows3942++actualRows3943++actualRows3944++actualRows3945++actualRows3946
def partOps60 : List WordIR.Op := [.bxor 0 3882,.literal (BitVec.ofNat 32 0),.bnot 3884,.bxor 3883 3885,.literal (BitVec.ofNat 32 2),.bxor 0 3887,.literal (BitVec.ofNat 32 0),.bnot 3889,.badd 3888 3890,.bnot 3891,.band 3886 3892,.bxor 3881 3893,.shr 3894 31,.literal (BitVec.ofNat 32 1),.bxor 3895 3896,.bnot 3897,.literal (BitVec.ofNat 32 1),.badd 3898 3899,.bnot 3900,.band 3901 902,.bxor 3876 3902,.literal (BitVec.ofNat 32 2),.bxor 0 3904,.literal (BitVec.ofNat 32 0),.bnot 3906,.band 3905 3907,.literal (BitVec.ofNat 32 2),.bxor 0 3909,.literal (BitVec.ofNat 32 0),.bnot 3911,.bxor 3910 3912,.literal (BitVec.ofNat 32 2),.bxor 0 3914,.literal (BitVec.ofNat 32 0),.bnot 3916,.badd 3915 3917,.bnot 3918,.band 3913 3919,.bxor 3908 3920,.shr 3921 31,.literal (BitVec.ofNat 32 1),.bxor 3922 3923,.bnot 3924,.literal (BitVec.ofNat 32 1),.badd 3925 3926,.band 3927 1097,.literal (BitVec.ofNat 32 2),.bxor 0 3929,.literal (BitVec.ofNat 32 0),.bnot 3931,.band 3930 3932,.literal (BitVec.ofNat 32 2),.bxor 0 3934,.literal (BitVec.ofNat 32 0),.bnot 3936,.bxor 3935 3937,.literal (BitVec.ofNat 32 2),.bxor 0 3939,.literal (BitVec.ofNat 32 0),.bnot 3941,.badd 3940 3942,.bnot 3943,.band 3938 3944,.bxor 3933 3945]
theorem partExact60 : partRows60=WordField.rows actualModulus 3883 partOps60 := by
  simp only [partRows60,partOps60,WordField.rows,rows3883,rows3884,rows3885,rows3886,rows3887,rows3888,rows3889,rows3890,rows3891,rows3892,rows3893,rows3894,rows3895,rows3896,rows3897,rows3898,rows3899,rows3900,rows3901,rows3902,rows3903,rows3904,rows3905,rows3906,rows3907,rows3908,rows3909,rows3910,rows3911,rows3912,rows3913,rows3914,rows3915,rows3916,rows3917,rows3918,rows3919,rows3920,rows3921,rows3922,rows3923,rows3924,rows3925,rows3926,rows3927,rows3928,rows3929,rows3930,rows3931,rows3932,rows3933,rows3934,rows3935,rows3936,rows3937,rows3938,rows3939,rows3940,rows3941,rows3942,rows3943,rows3944,rows3945,rows3946,List.append_assoc,List.append_nil]
theorem partLength60 : partOps60.length=64 := by decide
theorem partStats60 : partRows60.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows60=337104 := by
  simp only [partRows60,List.length_append,MatrixRowBlocks.rows_weight_append,stats3883.1,stats3883.2,stats3884.1,stats3884.2,stats3885.1,stats3885.2,stats3886.1,stats3886.2,stats3887.1,stats3887.2,stats3888.1,stats3888.2,stats3889.1,stats3889.2,stats3890.1,stats3890.2,stats3891.1,stats3891.2,stats3892.1,stats3892.2,stats3893.1,stats3893.2,stats3894.1,stats3894.2,stats3895.1,stats3895.2,stats3896.1,stats3896.2,stats3897.1,stats3897.2,stats3898.1,stats3898.2,stats3899.1,stats3899.2,stats3900.1,stats3900.2,stats3901.1,stats3901.2,stats3902.1,stats3902.2,stats3903.1,stats3903.2,stats3904.1,stats3904.2,stats3905.1,stats3905.2,stats3906.1,stats3906.2,stats3907.1,stats3907.2,stats3908.1,stats3908.2,stats3909.1,stats3909.2,stats3910.1,stats3910.2,stats3911.1,stats3911.2,stats3912.1,stats3912.2,stats3913.1,stats3913.2,stats3914.1,stats3914.2,stats3915.1,stats3915.2,stats3916.1,stats3916.2,stats3917.1,stats3917.2,stats3918.1,stats3918.2,stats3919.1,stats3919.2,stats3920.1,stats3920.2,stats3921.1,stats3921.2,stats3922.1,stats3922.2,stats3923.1,stats3923.2,stats3924.1,stats3924.2,stats3925.1,stats3925.2,stats3926.1,stats3926.2,stats3927.1,stats3927.2,stats3928.1,stats3928.2,stats3929.1,stats3929.2,stats3930.1,stats3930.2,stats3931.1,stats3931.2,stats3932.1,stats3932.2,stats3933.1,stats3933.2,stats3934.1,stats3934.2,stats3935.1,stats3935.2,stats3936.1,stats3936.2,stats3937.1,stats3937.2,stats3938.1,stats3938.2,stats3939.1,stats3939.2,stats3940.1,stats3940.2,stats3941.1,stats3941.2,stats3942.1,stats3942.2,stats3943.1,stats3943.2,stats3944.1,stats3944.2,stats3945.1,stats3945.2,stats3946.1,stats3946.2]
  decide
end FrameHashControllerCheckedRows
