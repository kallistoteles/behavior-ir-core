import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData61
import PairedPathRoundInstructionMatrixData62
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3936 : actualRows3936=WordField.canonicalRows actualModulus 3936 (.bxor 616 3935) := by core033_kernel_decide
theorem stats3936 : actualRows3936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3936=7428 := by core033_kernel_decide
theorem rows3937 : actualRows3937=WordField.canonicalRows actualModulus 3937 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3937 : actualRows3937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3937=2820 := by core033_kernel_decide
theorem rows3938 : actualRows3938=WordField.canonicalRows actualModulus 3938 (.bnot 3937) := by core033_kernel_decide
theorem stats3938 : actualRows3938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3938=6276 := by core033_kernel_decide
theorem rows3939 : actualRows3939=WordField.canonicalRows actualModulus 3939 (.badd 3936 3938) := by core033_kernel_decide
theorem stats3939 : actualRows3939.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3939=5388 := by core033_kernel_decide
theorem rows3940 : actualRows3940=WordField.canonicalRows actualModulus 3940 (.bnot 3939) := by core033_kernel_decide
theorem stats3940 : actualRows3940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3940=6276 := by core033_kernel_decide
theorem rows3941 : actualRows3941=WordField.canonicalRows actualModulus 3941 (.band 3934 3940) := by core033_kernel_decide
theorem stats3941 : actualRows3941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3941=5124 := by core033_kernel_decide
theorem rows3942 : actualRows3942=WordField.canonicalRows actualModulus 3942 (.bxor 3929 3941) := by core033_kernel_decide
theorem stats3942 : actualRows3942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3942=7428 := by core033_kernel_decide
theorem rows3943 : actualRows3943=WordField.canonicalRows actualModulus 3943 (.shr 3942 31) := by core033_kernel_decide
theorem stats3943 : actualRows3943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3943=2892 := by core033_kernel_decide
theorem rows3944 : actualRows3944=WordField.canonicalRows actualModulus 3944 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3944 : actualRows3944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3944=2892 := by core033_kernel_decide
theorem rows3945 : actualRows3945=WordField.canonicalRows actualModulus 3945 (.bxor 3943 3944) := by core033_kernel_decide
theorem stats3945 : actualRows3945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3945=7428 := by core033_kernel_decide
theorem rows3946 : actualRows3946=WordField.canonicalRows actualModulus 3946 (.bnot 3945) := by core033_kernel_decide
theorem stats3946 : actualRows3946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3946=6276 := by core033_kernel_decide
theorem rows3947 : actualRows3947=WordField.canonicalRows actualModulus 3947 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3947 : actualRows3947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3947=2892 := by core033_kernel_decide
theorem rows3948 : actualRows3948=WordField.canonicalRows actualModulus 3948 (.badd 3946 3947) := by core033_kernel_decide
theorem stats3948 : actualRows3948.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3948=5388 := by core033_kernel_decide
theorem rows3949 : actualRows3949=WordField.canonicalRows actualModulus 3949 (.bnot 3948) := by core033_kernel_decide
theorem stats3949 : actualRows3949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3949=6276 := by core033_kernel_decide
theorem rows3950 : actualRows3950=WordField.canonicalRows actualModulus 3950 (.band 3949 1883) := by core033_kernel_decide
theorem stats3950 : actualRows3950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3950=5124 := by core033_kernel_decide
theorem rows3951 : actualRows3951=WordField.canonicalRows actualModulus 3951 (.bxor 3924 3950) := by core033_kernel_decide
theorem stats3951 : actualRows3951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3951=7428 := by core033_kernel_decide
theorem rows3952 : actualRows3952=WordField.canonicalRows actualModulus 3952 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3952 : actualRows3952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3952=2892 := by core033_kernel_decide
theorem rows3953 : actualRows3953=WordField.canonicalRows actualModulus 3953 (.bxor 616 3952) := by core033_kernel_decide
theorem stats3953 : actualRows3953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3953=7428 := by core033_kernel_decide
theorem rows3954 : actualRows3954=WordField.canonicalRows actualModulus 3954 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3954 : actualRows3954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3954=2820 := by core033_kernel_decide
theorem rows3955 : actualRows3955=WordField.canonicalRows actualModulus 3955 (.bnot 3954) := by core033_kernel_decide
theorem stats3955 : actualRows3955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3955=6276 := by core033_kernel_decide
theorem rows3956 : actualRows3956=WordField.canonicalRows actualModulus 3956 (.band 3953 3955) := by core033_kernel_decide
theorem stats3956 : actualRows3956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3956=5124 := by core033_kernel_decide
theorem rows3957 : actualRows3957=WordField.canonicalRows actualModulus 3957 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3957 : actualRows3957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3957=2892 := by core033_kernel_decide
theorem rows3958 : actualRows3958=WordField.canonicalRows actualModulus 3958 (.bxor 616 3957) := by core033_kernel_decide
theorem stats3958 : actualRows3958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3958=7428 := by core033_kernel_decide
theorem rows3959 : actualRows3959=WordField.canonicalRows actualModulus 3959 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3959 : actualRows3959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3959=2820 := by core033_kernel_decide
theorem rows3960 : actualRows3960=WordField.canonicalRows actualModulus 3960 (.bnot 3959) := by core033_kernel_decide
theorem stats3960 : actualRows3960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3960=6276 := by core033_kernel_decide
theorem rows3961 : actualRows3961=WordField.canonicalRows actualModulus 3961 (.bxor 3958 3960) := by core033_kernel_decide
theorem stats3961 : actualRows3961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3961=7428 := by core033_kernel_decide
theorem rows3962 : actualRows3962=WordField.canonicalRows actualModulus 3962 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3962 : actualRows3962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3962=2892 := by core033_kernel_decide
theorem rows3963 : actualRows3963=WordField.canonicalRows actualModulus 3963 (.bxor 616 3962) := by core033_kernel_decide
theorem stats3963 : actualRows3963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3963=7428 := by core033_kernel_decide
theorem rows3964 : actualRows3964=WordField.canonicalRows actualModulus 3964 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3964 : actualRows3964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3964=2820 := by core033_kernel_decide
theorem rows3965 : actualRows3965=WordField.canonicalRows actualModulus 3965 (.bnot 3964) := by core033_kernel_decide
theorem stats3965 : actualRows3965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3965=6276 := by core033_kernel_decide
theorem rows3966 : actualRows3966=WordField.canonicalRows actualModulus 3966 (.badd 3963 3965) := by core033_kernel_decide
theorem stats3966 : actualRows3966.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3966=5388 := by core033_kernel_decide
theorem rows3967 : actualRows3967=WordField.canonicalRows actualModulus 3967 (.bnot 3966) := by core033_kernel_decide
theorem stats3967 : actualRows3967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3967=6276 := by core033_kernel_decide
theorem rows3968 : actualRows3968=WordField.canonicalRows actualModulus 3968 (.band 3961 3967) := by core033_kernel_decide
theorem stats3968 : actualRows3968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3968=5124 := by core033_kernel_decide
theorem rows3969 : actualRows3969=WordField.canonicalRows actualModulus 3969 (.bxor 3956 3968) := by core033_kernel_decide
theorem stats3969 : actualRows3969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3969=7428 := by core033_kernel_decide
theorem rows3970 : actualRows3970=WordField.canonicalRows actualModulus 3970 (.shr 3969 31) := by core033_kernel_decide
theorem stats3970 : actualRows3970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3970=2892 := by core033_kernel_decide
theorem rows3971 : actualRows3971=WordField.canonicalRows actualModulus 3971 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3971 : actualRows3971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3971=2892 := by core033_kernel_decide
theorem rows3972 : actualRows3972=WordField.canonicalRows actualModulus 3972 (.bxor 3970 3971) := by core033_kernel_decide
theorem stats3972 : actualRows3972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3972=7428 := by core033_kernel_decide
theorem rows3973 : actualRows3973=WordField.canonicalRows actualModulus 3973 (.bnot 3972) := by core033_kernel_decide
theorem stats3973 : actualRows3973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3973=6276 := by core033_kernel_decide
theorem rows3974 : actualRows3974=WordField.canonicalRows actualModulus 3974 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3974 : actualRows3974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3974=2892 := by core033_kernel_decide
theorem rows3975 : actualRows3975=WordField.canonicalRows actualModulus 3975 (.badd 3973 3974) := by core033_kernel_decide
theorem stats3975 : actualRows3975.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3975=5388 := by core033_kernel_decide
theorem rows3976 : actualRows3976=WordField.canonicalRows actualModulus 3976 (.band 3975 2076) := by core033_kernel_decide
theorem stats3976 : actualRows3976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3976=5124 := by core033_kernel_decide
theorem rows3977 : actualRows3977=WordField.canonicalRows actualModulus 3977 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3977 : actualRows3977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3977=2892 := by core033_kernel_decide
theorem rows3978 : actualRows3978=WordField.canonicalRows actualModulus 3978 (.bxor 616 3977) := by core033_kernel_decide
theorem stats3978 : actualRows3978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3978=7428 := by core033_kernel_decide
theorem rows3979 : actualRows3979=WordField.canonicalRows actualModulus 3979 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3979 : actualRows3979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3979=2820 := by core033_kernel_decide
theorem rows3980 : actualRows3980=WordField.canonicalRows actualModulus 3980 (.bnot 3979) := by core033_kernel_decide
theorem stats3980 : actualRows3980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3980=6276 := by core033_kernel_decide
theorem rows3981 : actualRows3981=WordField.canonicalRows actualModulus 3981 (.band 3978 3980) := by core033_kernel_decide
theorem stats3981 : actualRows3981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3981=5124 := by core033_kernel_decide
theorem rows3982 : actualRows3982=WordField.canonicalRows actualModulus 3982 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3982 : actualRows3982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3982=2892 := by core033_kernel_decide
theorem rows3983 : actualRows3983=WordField.canonicalRows actualModulus 3983 (.bxor 616 3982) := by core033_kernel_decide
theorem stats3983 : actualRows3983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3983=7428 := by core033_kernel_decide
theorem rows3984 : actualRows3984=WordField.canonicalRows actualModulus 3984 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3984 : actualRows3984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3984=2820 := by core033_kernel_decide
theorem rows3985 : actualRows3985=WordField.canonicalRows actualModulus 3985 (.bnot 3984) := by core033_kernel_decide
theorem stats3985 : actualRows3985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3985=6276 := by core033_kernel_decide
theorem rows3986 : actualRows3986=WordField.canonicalRows actualModulus 3986 (.bxor 3983 3985) := by core033_kernel_decide
theorem stats3986 : actualRows3986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3986=7428 := by core033_kernel_decide
theorem rows3987 : actualRows3987=WordField.canonicalRows actualModulus 3987 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3987 : actualRows3987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3987=2892 := by core033_kernel_decide
theorem rows3988 : actualRows3988=WordField.canonicalRows actualModulus 3988 (.bxor 616 3987) := by core033_kernel_decide
theorem stats3988 : actualRows3988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3988=7428 := by core033_kernel_decide
theorem rows3989 : actualRows3989=WordField.canonicalRows actualModulus 3989 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3989 : actualRows3989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3989=2820 := by core033_kernel_decide
theorem rows3990 : actualRows3990=WordField.canonicalRows actualModulus 3990 (.bnot 3989) := by core033_kernel_decide
theorem stats3990 : actualRows3990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3990=6276 := by core033_kernel_decide
theorem rows3991 : actualRows3991=WordField.canonicalRows actualModulus 3991 (.badd 3988 3990) := by core033_kernel_decide
theorem stats3991 : actualRows3991.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3991=5388 := by core033_kernel_decide
theorem rows3992 : actualRows3992=WordField.canonicalRows actualModulus 3992 (.bnot 3991) := by core033_kernel_decide
theorem stats3992 : actualRows3992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3992=6276 := by core033_kernel_decide
theorem rows3993 : actualRows3993=WordField.canonicalRows actualModulus 3993 (.band 3986 3992) := by core033_kernel_decide
theorem stats3993 : actualRows3993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3993=5124 := by core033_kernel_decide
theorem rows3994 : actualRows3994=WordField.canonicalRows actualModulus 3994 (.bxor 3981 3993) := by core033_kernel_decide
theorem stats3994 : actualRows3994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3994=7428 := by core033_kernel_decide
theorem rows3995 : actualRows3995=WordField.canonicalRows actualModulus 3995 (.shr 3994 31) := by core033_kernel_decide
theorem stats3995 : actualRows3995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3995=2892 := by core033_kernel_decide
theorem rows3996 : actualRows3996=WordField.canonicalRows actualModulus 3996 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3996 : actualRows3996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3996=2892 := by core033_kernel_decide
theorem rows3997 : actualRows3997=WordField.canonicalRows actualModulus 3997 (.bxor 3995 3996) := by core033_kernel_decide
theorem stats3997 : actualRows3997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3997=7428 := by core033_kernel_decide
theorem rows3998 : actualRows3998=WordField.canonicalRows actualModulus 3998 (.bnot 3997) := by core033_kernel_decide
theorem stats3998 : actualRows3998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3998=6276 := by core033_kernel_decide
theorem rows3999 : actualRows3999=WordField.canonicalRows actualModulus 3999 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3999 : actualRows3999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3999=2892 := by core033_kernel_decide
def partRows60 : List R1CS.Row := actualRows3936++actualRows3937++actualRows3938++actualRows3939++actualRows3940++actualRows3941++actualRows3942++actualRows3943++actualRows3944++actualRows3945++actualRows3946++actualRows3947++actualRows3948++actualRows3949++actualRows3950++actualRows3951++actualRows3952++actualRows3953++actualRows3954++actualRows3955++actualRows3956++actualRows3957++actualRows3958++actualRows3959++actualRows3960++actualRows3961++actualRows3962++actualRows3963++actualRows3964++actualRows3965++actualRows3966++actualRows3967++actualRows3968++actualRows3969++actualRows3970++actualRows3971++actualRows3972++actualRows3973++actualRows3974++actualRows3975++actualRows3976++actualRows3977++actualRows3978++actualRows3979++actualRows3980++actualRows3981++actualRows3982++actualRows3983++actualRows3984++actualRows3985++actualRows3986++actualRows3987++actualRows3988++actualRows3989++actualRows3990++actualRows3991++actualRows3992++actualRows3993++actualRows3994++actualRows3995++actualRows3996++actualRows3997++actualRows3998++actualRows3999
def partOps60 : List WordIR.Op := [.bxor 616 3935,.literal (BitVec.ofNat 32 0),.bnot 3937,.badd 3936 3938,.bnot 3939,.band 3934 3940,.bxor 3929 3941,.shr 3942 31,.literal (BitVec.ofNat 32 1),.bxor 3943 3944,.bnot 3945,.literal (BitVec.ofNat 32 1),.badd 3946 3947,.bnot 3948,.band 3949 1883,.bxor 3924 3950,.literal (BitVec.ofNat 32 2),.bxor 616 3952,.literal (BitVec.ofNat 32 0),.bnot 3954,.band 3953 3955,.literal (BitVec.ofNat 32 2),.bxor 616 3957,.literal (BitVec.ofNat 32 0),.bnot 3959,.bxor 3958 3960,.literal (BitVec.ofNat 32 2),.bxor 616 3962,.literal (BitVec.ofNat 32 0),.bnot 3964,.badd 3963 3965,.bnot 3966,.band 3961 3967,.bxor 3956 3968,.shr 3969 31,.literal (BitVec.ofNat 32 1),.bxor 3970 3971,.bnot 3972,.literal (BitVec.ofNat 32 1),.badd 3973 3974,.band 3975 2076,.literal (BitVec.ofNat 32 2),.bxor 616 3977,.literal (BitVec.ofNat 32 0),.bnot 3979,.band 3978 3980,.literal (BitVec.ofNat 32 2),.bxor 616 3982,.literal (BitVec.ofNat 32 0),.bnot 3984,.bxor 3983 3985,.literal (BitVec.ofNat 32 2),.bxor 616 3987,.literal (BitVec.ofNat 32 0),.bnot 3989,.badd 3988 3990,.bnot 3991,.band 3986 3992,.bxor 3981 3993,.shr 3994 31,.literal (BitVec.ofNat 32 1),.bxor 3995 3996,.bnot 3997,.literal (BitVec.ofNat 32 1)]
theorem partExact60 : partRows60=WordField.rows actualModulus 3936 partOps60 := by
  simp only [partRows60,partOps60,WordField.rows,rows3936,rows3937,rows3938,rows3939,rows3940,rows3941,rows3942,rows3943,rows3944,rows3945,rows3946,rows3947,rows3948,rows3949,rows3950,rows3951,rows3952,rows3953,rows3954,rows3955,rows3956,rows3957,rows3958,rows3959,rows3960,rows3961,rows3962,rows3963,rows3964,rows3965,rows3966,rows3967,rows3968,rows3969,rows3970,rows3971,rows3972,rows3973,rows3974,rows3975,rows3976,rows3977,rows3978,rows3979,rows3980,rows3981,rows3982,rows3983,rows3984,rows3985,rows3986,rows3987,rows3988,rows3989,rows3990,rows3991,rows3992,rows3993,rows3994,rows3995,rows3996,rows3997,rows3998,rows3999,List.append_assoc,List.append_nil]
theorem partLength60 : partOps60.length=64 := by decide
theorem partStats60 : partRows60.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows60=332640 := by
  simp only [partRows60,List.length_append,MatrixRowBlocks.rows_weight_append,stats3936.1,stats3936.2,stats3937.1,stats3937.2,stats3938.1,stats3938.2,stats3939.1,stats3939.2,stats3940.1,stats3940.2,stats3941.1,stats3941.2,stats3942.1,stats3942.2,stats3943.1,stats3943.2,stats3944.1,stats3944.2,stats3945.1,stats3945.2,stats3946.1,stats3946.2,stats3947.1,stats3947.2,stats3948.1,stats3948.2,stats3949.1,stats3949.2,stats3950.1,stats3950.2,stats3951.1,stats3951.2,stats3952.1,stats3952.2,stats3953.1,stats3953.2,stats3954.1,stats3954.2,stats3955.1,stats3955.2,stats3956.1,stats3956.2,stats3957.1,stats3957.2,stats3958.1,stats3958.2,stats3959.1,stats3959.2,stats3960.1,stats3960.2,stats3961.1,stats3961.2,stats3962.1,stats3962.2,stats3963.1,stats3963.2,stats3964.1,stats3964.2,stats3965.1,stats3965.2,stats3966.1,stats3966.2,stats3967.1,stats3967.2,stats3968.1,stats3968.2,stats3969.1,stats3969.2,stats3970.1,stats3970.2,stats3971.1,stats3971.2,stats3972.1,stats3972.2,stats3973.1,stats3973.2,stats3974.1,stats3974.2,stats3975.1,stats3975.2,stats3976.1,stats3976.2,stats3977.1,stats3977.2,stats3978.1,stats3978.2,stats3979.1,stats3979.2,stats3980.1,stats3980.2,stats3981.1,stats3981.2,stats3982.1,stats3982.2,stats3983.1,stats3983.2,stats3984.1,stats3984.2,stats3985.1,stats3985.2,stats3986.1,stats3986.2,stats3987.1,stats3987.2,stats3988.1,stats3988.2,stats3989.1,stats3989.2,stats3990.1,stats3990.2,stats3991.1,stats3991.2,stats3992.1,stats3992.2,stats3993.1,stats3993.2,stats3994.1,stats3994.2,stats3995.1,stats3995.2,stats3996.1,stats3996.2,stats3997.1,stats3997.2,stats3998.1,stats3998.2,stats3999.1,stats3999.2]
  decide
end QuotedPairedPathRoundCheckedRows
