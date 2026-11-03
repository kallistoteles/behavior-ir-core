import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData60
import AuthenticatedBranchRoundInstructionMatrixData61
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3894 : actualRows3894=WordField.canonicalRows actualModulus 3894 (.badd 3891 3893) := by core033_kernel_decide
theorem stats3894 : actualRows3894.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3894=5388 := by core033_kernel_decide
theorem rows3895 : actualRows3895=WordField.canonicalRows actualModulus 3895 (.bnot 3894) := by core033_kernel_decide
theorem stats3895 : actualRows3895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3895=6276 := by core033_kernel_decide
theorem rows3896 : actualRows3896=WordField.canonicalRows actualModulus 3896 (.band 3889 3895) := by core033_kernel_decide
theorem stats3896 : actualRows3896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3896=5124 := by core033_kernel_decide
theorem rows3897 : actualRows3897=WordField.canonicalRows actualModulus 3897 (.bxor 3884 3896) := by core033_kernel_decide
theorem stats3897 : actualRows3897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3897=7428 := by core033_kernel_decide
theorem rows3898 : actualRows3898=WordField.canonicalRows actualModulus 3898 (.shr 3897 31) := by core033_kernel_decide
theorem stats3898 : actualRows3898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3898=2892 := by core033_kernel_decide
theorem rows3899 : actualRows3899=WordField.canonicalRows actualModulus 3899 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3899 : actualRows3899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3899=2892 := by core033_kernel_decide
theorem rows3900 : actualRows3900=WordField.canonicalRows actualModulus 3900 (.bxor 3898 3899) := by core033_kernel_decide
theorem stats3900 : actualRows3900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3900=7428 := by core033_kernel_decide
theorem rows3901 : actualRows3901=WordField.canonicalRows actualModulus 3901 (.bnot 3900) := by core033_kernel_decide
theorem stats3901 : actualRows3901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3901=6276 := by core033_kernel_decide
theorem rows3902 : actualRows3902=WordField.canonicalRows actualModulus 3902 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3902 : actualRows3902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3902=2892 := by core033_kernel_decide
theorem rows3903 : actualRows3903=WordField.canonicalRows actualModulus 3903 (.badd 3901 3902) := by core033_kernel_decide
theorem stats3903 : actualRows3903.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3903=5388 := by core033_kernel_decide
theorem rows3904 : actualRows3904=WordField.canonicalRows actualModulus 3904 (.bnot 3903) := by core033_kernel_decide
theorem stats3904 : actualRows3904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3904=6276 := by core033_kernel_decide
theorem rows3905 : actualRows3905=WordField.canonicalRows actualModulus 3905 (.band 3904 2552) := by core033_kernel_decide
theorem stats3905 : actualRows3905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3905=5124 := by core033_kernel_decide
theorem rows3906 : actualRows3906=WordField.canonicalRows actualModulus 3906 (.bxor 3879 3905) := by core033_kernel_decide
theorem stats3906 : actualRows3906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3906=7428 := by core033_kernel_decide
theorem rows3907 : actualRows3907=WordField.canonicalRows actualModulus 3907 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3907 : actualRows3907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3907=2892 := by core033_kernel_decide
theorem rows3908 : actualRows3908=WordField.canonicalRows actualModulus 3908 (.bxor 1299 3907) := by core033_kernel_decide
theorem stats3908 : actualRows3908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3908=7428 := by core033_kernel_decide
theorem rows3909 : actualRows3909=WordField.canonicalRows actualModulus 3909 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3909 : actualRows3909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3909=2820 := by core033_kernel_decide
theorem rows3910 : actualRows3910=WordField.canonicalRows actualModulus 3910 (.bnot 3909) := by core033_kernel_decide
theorem stats3910 : actualRows3910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3910=6276 := by core033_kernel_decide
theorem rows3911 : actualRows3911=WordField.canonicalRows actualModulus 3911 (.band 3908 3910) := by core033_kernel_decide
theorem stats3911 : actualRows3911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3911=5124 := by core033_kernel_decide
theorem rows3912 : actualRows3912=WordField.canonicalRows actualModulus 3912 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3912 : actualRows3912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3912=2892 := by core033_kernel_decide
theorem rows3913 : actualRows3913=WordField.canonicalRows actualModulus 3913 (.bxor 1299 3912) := by core033_kernel_decide
theorem stats3913 : actualRows3913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3913=7428 := by core033_kernel_decide
theorem rows3914 : actualRows3914=WordField.canonicalRows actualModulus 3914 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3914 : actualRows3914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3914=2820 := by core033_kernel_decide
theorem rows3915 : actualRows3915=WordField.canonicalRows actualModulus 3915 (.bnot 3914) := by core033_kernel_decide
theorem stats3915 : actualRows3915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3915=6276 := by core033_kernel_decide
theorem rows3916 : actualRows3916=WordField.canonicalRows actualModulus 3916 (.bxor 3913 3915) := by core033_kernel_decide
theorem stats3916 : actualRows3916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3916=7428 := by core033_kernel_decide
theorem rows3917 : actualRows3917=WordField.canonicalRows actualModulus 3917 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3917 : actualRows3917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3917=2892 := by core033_kernel_decide
theorem rows3918 : actualRows3918=WordField.canonicalRows actualModulus 3918 (.bxor 1299 3917) := by core033_kernel_decide
theorem stats3918 : actualRows3918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3918=7428 := by core033_kernel_decide
theorem rows3919 : actualRows3919=WordField.canonicalRows actualModulus 3919 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3919 : actualRows3919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3919=2820 := by core033_kernel_decide
theorem rows3920 : actualRows3920=WordField.canonicalRows actualModulus 3920 (.bnot 3919) := by core033_kernel_decide
theorem stats3920 : actualRows3920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3920=6276 := by core033_kernel_decide
theorem rows3921 : actualRows3921=WordField.canonicalRows actualModulus 3921 (.badd 3918 3920) := by core033_kernel_decide
theorem stats3921 : actualRows3921.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3921=5388 := by core033_kernel_decide
theorem rows3922 : actualRows3922=WordField.canonicalRows actualModulus 3922 (.bnot 3921) := by core033_kernel_decide
theorem stats3922 : actualRows3922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3922=6276 := by core033_kernel_decide
theorem rows3923 : actualRows3923=WordField.canonicalRows actualModulus 3923 (.band 3916 3922) := by core033_kernel_decide
theorem stats3923 : actualRows3923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3923=5124 := by core033_kernel_decide
theorem rows3924 : actualRows3924=WordField.canonicalRows actualModulus 3924 (.bxor 3911 3923) := by core033_kernel_decide
theorem stats3924 : actualRows3924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3924=7428 := by core033_kernel_decide
theorem rows3925 : actualRows3925=WordField.canonicalRows actualModulus 3925 (.shr 3924 31) := by core033_kernel_decide
theorem stats3925 : actualRows3925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3925=2892 := by core033_kernel_decide
theorem rows3926 : actualRows3926=WordField.canonicalRows actualModulus 3926 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3926 : actualRows3926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3926=2892 := by core033_kernel_decide
theorem rows3927 : actualRows3927=WordField.canonicalRows actualModulus 3927 (.bxor 3925 3926) := by core033_kernel_decide
theorem stats3927 : actualRows3927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3927=7428 := by core033_kernel_decide
theorem rows3928 : actualRows3928=WordField.canonicalRows actualModulus 3928 (.bnot 3927) := by core033_kernel_decide
theorem stats3928 : actualRows3928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3928=6276 := by core033_kernel_decide
theorem rows3929 : actualRows3929=WordField.canonicalRows actualModulus 3929 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3929 : actualRows3929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3929=2892 := by core033_kernel_decide
theorem rows3930 : actualRows3930=WordField.canonicalRows actualModulus 3930 (.badd 3928 3929) := by core033_kernel_decide
theorem stats3930 : actualRows3930.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3930=5388 := by core033_kernel_decide
theorem rows3931 : actualRows3931=WordField.canonicalRows actualModulus 3931 (.band 3930 2717) := by core033_kernel_decide
theorem stats3931 : actualRows3931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3931=5124 := by core033_kernel_decide
theorem rows3932 : actualRows3932=WordField.canonicalRows actualModulus 3932 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3932 : actualRows3932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3932=2892 := by core033_kernel_decide
theorem rows3933 : actualRows3933=WordField.canonicalRows actualModulus 3933 (.bxor 1299 3932) := by core033_kernel_decide
theorem stats3933 : actualRows3933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3933=7428 := by core033_kernel_decide
theorem rows3934 : actualRows3934=WordField.canonicalRows actualModulus 3934 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3934 : actualRows3934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3934=2820 := by core033_kernel_decide
theorem rows3935 : actualRows3935=WordField.canonicalRows actualModulus 3935 (.bnot 3934) := by core033_kernel_decide
theorem stats3935 : actualRows3935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3935=6276 := by core033_kernel_decide
theorem rows3936 : actualRows3936=WordField.canonicalRows actualModulus 3936 (.band 3933 3935) := by core033_kernel_decide
theorem stats3936 : actualRows3936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3936=5124 := by core033_kernel_decide
theorem rows3937 : actualRows3937=WordField.canonicalRows actualModulus 3937 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3937 : actualRows3937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3937=2892 := by core033_kernel_decide
theorem rows3938 : actualRows3938=WordField.canonicalRows actualModulus 3938 (.bxor 1299 3937) := by core033_kernel_decide
theorem stats3938 : actualRows3938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3938=7428 := by core033_kernel_decide
theorem rows3939 : actualRows3939=WordField.canonicalRows actualModulus 3939 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3939 : actualRows3939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3939=2820 := by core033_kernel_decide
theorem rows3940 : actualRows3940=WordField.canonicalRows actualModulus 3940 (.bnot 3939) := by core033_kernel_decide
theorem stats3940 : actualRows3940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3940=6276 := by core033_kernel_decide
theorem rows3941 : actualRows3941=WordField.canonicalRows actualModulus 3941 (.bxor 3938 3940) := by core033_kernel_decide
theorem stats3941 : actualRows3941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3941=7428 := by core033_kernel_decide
theorem rows3942 : actualRows3942=WordField.canonicalRows actualModulus 3942 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3942 : actualRows3942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3942=2892 := by core033_kernel_decide
theorem rows3943 : actualRows3943=WordField.canonicalRows actualModulus 3943 (.bxor 1299 3942) := by core033_kernel_decide
theorem stats3943 : actualRows3943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3943=7428 := by core033_kernel_decide
theorem rows3944 : actualRows3944=WordField.canonicalRows actualModulus 3944 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3944 : actualRows3944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3944=2820 := by core033_kernel_decide
theorem rows3945 : actualRows3945=WordField.canonicalRows actualModulus 3945 (.bnot 3944) := by core033_kernel_decide
theorem stats3945 : actualRows3945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3945=6276 := by core033_kernel_decide
theorem rows3946 : actualRows3946=WordField.canonicalRows actualModulus 3946 (.badd 3943 3945) := by core033_kernel_decide
theorem stats3946 : actualRows3946.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3946=5388 := by core033_kernel_decide
theorem rows3947 : actualRows3947=WordField.canonicalRows actualModulus 3947 (.bnot 3946) := by core033_kernel_decide
theorem stats3947 : actualRows3947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3947=6276 := by core033_kernel_decide
theorem rows3948 : actualRows3948=WordField.canonicalRows actualModulus 3948 (.band 3941 3947) := by core033_kernel_decide
theorem stats3948 : actualRows3948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3948=5124 := by core033_kernel_decide
theorem rows3949 : actualRows3949=WordField.canonicalRows actualModulus 3949 (.bxor 3936 3948) := by core033_kernel_decide
theorem stats3949 : actualRows3949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3949=7428 := by core033_kernel_decide
theorem rows3950 : actualRows3950=WordField.canonicalRows actualModulus 3950 (.shr 3949 31) := by core033_kernel_decide
theorem stats3950 : actualRows3950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3950=2892 := by core033_kernel_decide
theorem rows3951 : actualRows3951=WordField.canonicalRows actualModulus 3951 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3951 : actualRows3951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3951=2892 := by core033_kernel_decide
theorem rows3952 : actualRows3952=WordField.canonicalRows actualModulus 3952 (.bxor 3950 3951) := by core033_kernel_decide
theorem stats3952 : actualRows3952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3952=7428 := by core033_kernel_decide
theorem rows3953 : actualRows3953=WordField.canonicalRows actualModulus 3953 (.bnot 3952) := by core033_kernel_decide
theorem stats3953 : actualRows3953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3953=6276 := by core033_kernel_decide
theorem rows3954 : actualRows3954=WordField.canonicalRows actualModulus 3954 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3954 : actualRows3954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3954=2892 := by core033_kernel_decide
theorem rows3955 : actualRows3955=WordField.canonicalRows actualModulus 3955 (.badd 3953 3954) := by core033_kernel_decide
theorem stats3955 : actualRows3955.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3955=5388 := by core033_kernel_decide
theorem rows3956 : actualRows3956=WordField.canonicalRows actualModulus 3956 (.bnot 3955) := by core033_kernel_decide
theorem stats3956 : actualRows3956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3956=6276 := by core033_kernel_decide
theorem rows3957 : actualRows3957=WordField.canonicalRows actualModulus 3957 (.band 3956 2553) := by core033_kernel_decide
theorem stats3957 : actualRows3957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3957=5124 := by core033_kernel_decide
def partRows59 : List R1CS.Row := actualRows3894++actualRows3895++actualRows3896++actualRows3897++actualRows3898++actualRows3899++actualRows3900++actualRows3901++actualRows3902++actualRows3903++actualRows3904++actualRows3905++actualRows3906++actualRows3907++actualRows3908++actualRows3909++actualRows3910++actualRows3911++actualRows3912++actualRows3913++actualRows3914++actualRows3915++actualRows3916++actualRows3917++actualRows3918++actualRows3919++actualRows3920++actualRows3921++actualRows3922++actualRows3923++actualRows3924++actualRows3925++actualRows3926++actualRows3927++actualRows3928++actualRows3929++actualRows3930++actualRows3931++actualRows3932++actualRows3933++actualRows3934++actualRows3935++actualRows3936++actualRows3937++actualRows3938++actualRows3939++actualRows3940++actualRows3941++actualRows3942++actualRows3943++actualRows3944++actualRows3945++actualRows3946++actualRows3947++actualRows3948++actualRows3949++actualRows3950++actualRows3951++actualRows3952++actualRows3953++actualRows3954++actualRows3955++actualRows3956++actualRows3957
def partOps59 : List WordIR.Op := [.badd 3891 3893,.bnot 3894,.band 3889 3895,.bxor 3884 3896,.shr 3897 31,.literal (BitVec.ofNat 32 1),.bxor 3898 3899,.bnot 3900,.literal (BitVec.ofNat 32 1),.badd 3901 3902,.bnot 3903,.band 3904 2552,.bxor 3879 3905,.literal (BitVec.ofNat 32 2),.bxor 1299 3907,.literal (BitVec.ofNat 32 0),.bnot 3909,.band 3908 3910,.literal (BitVec.ofNat 32 2),.bxor 1299 3912,.literal (BitVec.ofNat 32 0),.bnot 3914,.bxor 3913 3915,.literal (BitVec.ofNat 32 2),.bxor 1299 3917,.literal (BitVec.ofNat 32 0),.bnot 3919,.badd 3918 3920,.bnot 3921,.band 3916 3922,.bxor 3911 3923,.shr 3924 31,.literal (BitVec.ofNat 32 1),.bxor 3925 3926,.bnot 3927,.literal (BitVec.ofNat 32 1),.badd 3928 3929,.band 3930 2717,.literal (BitVec.ofNat 32 2),.bxor 1299 3932,.literal (BitVec.ofNat 32 0),.bnot 3934,.band 3933 3935,.literal (BitVec.ofNat 32 2),.bxor 1299 3937,.literal (BitVec.ofNat 32 0),.bnot 3939,.bxor 3938 3940,.literal (BitVec.ofNat 32 2),.bxor 1299 3942,.literal (BitVec.ofNat 32 0),.bnot 3944,.badd 3943 3945,.bnot 3946,.band 3941 3947,.bxor 3936 3948,.shr 3949 31,.literal (BitVec.ofNat 32 1),.bxor 3950 3951,.bnot 3952,.literal (BitVec.ofNat 32 1),.badd 3953 3954,.bnot 3955,.band 3956 2553]
theorem partExact59 : partRows59=WordField.rows actualModulus 3894 partOps59 := by
  simp only [partRows59,partOps59,WordField.rows,rows3894,rows3895,rows3896,rows3897,rows3898,rows3899,rows3900,rows3901,rows3902,rows3903,rows3904,rows3905,rows3906,rows3907,rows3908,rows3909,rows3910,rows3911,rows3912,rows3913,rows3914,rows3915,rows3916,rows3917,rows3918,rows3919,rows3920,rows3921,rows3922,rows3923,rows3924,rows3925,rows3926,rows3927,rows3928,rows3929,rows3930,rows3931,rows3932,rows3933,rows3934,rows3935,rows3936,rows3937,rows3938,rows3939,rows3940,rows3941,rows3942,rows3943,rows3944,rows3945,rows3946,rows3947,rows3948,rows3949,rows3950,rows3951,rows3952,rows3953,rows3954,rows3955,rows3956,rows3957,List.append_assoc,List.append_nil]
theorem partLength59 : partOps59.length=64 := by decide
theorem partStats59 : partRows59.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows59=332904 := by
  simp only [partRows59,List.length_append,MatrixRowBlocks.rows_weight_append,stats3894.1,stats3894.2,stats3895.1,stats3895.2,stats3896.1,stats3896.2,stats3897.1,stats3897.2,stats3898.1,stats3898.2,stats3899.1,stats3899.2,stats3900.1,stats3900.2,stats3901.1,stats3901.2,stats3902.1,stats3902.2,stats3903.1,stats3903.2,stats3904.1,stats3904.2,stats3905.1,stats3905.2,stats3906.1,stats3906.2,stats3907.1,stats3907.2,stats3908.1,stats3908.2,stats3909.1,stats3909.2,stats3910.1,stats3910.2,stats3911.1,stats3911.2,stats3912.1,stats3912.2,stats3913.1,stats3913.2,stats3914.1,stats3914.2,stats3915.1,stats3915.2,stats3916.1,stats3916.2,stats3917.1,stats3917.2,stats3918.1,stats3918.2,stats3919.1,stats3919.2,stats3920.1,stats3920.2,stats3921.1,stats3921.2,stats3922.1,stats3922.2,stats3923.1,stats3923.2,stats3924.1,stats3924.2,stats3925.1,stats3925.2,stats3926.1,stats3926.2,stats3927.1,stats3927.2,stats3928.1,stats3928.2,stats3929.1,stats3929.2,stats3930.1,stats3930.2,stats3931.1,stats3931.2,stats3932.1,stats3932.2,stats3933.1,stats3933.2,stats3934.1,stats3934.2,stats3935.1,stats3935.2,stats3936.1,stats3936.2,stats3937.1,stats3937.2,stats3938.1,stats3938.2,stats3939.1,stats3939.2,stats3940.1,stats3940.2,stats3941.1,stats3941.2,stats3942.1,stats3942.2,stats3943.1,stats3943.2,stats3944.1,stats3944.2,stats3945.1,stats3945.2,stats3946.1,stats3946.2,stats3947.1,stats3947.2,stats3948.1,stats3948.2,stats3949.1,stats3949.2,stats3950.1,stats3950.2,stats3951.1,stats3951.2,stats3952.1,stats3952.2,stats3953.1,stats3953.2,stats3954.1,stats3954.2,stats3955.1,stats3955.2,stats3956.1,stats3956.2,stats3957.1,stats3957.2]
  decide
end AuthenticatedBranchRoundCheckedRows
