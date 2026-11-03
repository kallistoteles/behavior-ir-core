import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData61
import FrameHashControllerInstructionMatrixData62
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3947 : actualRows3947=WordField.canonicalRows actualModulus 3947 (.shr 3946 31) := by core033_kernel_decide
theorem stats3947 : actualRows3947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3947=2892 := by core033_kernel_decide
theorem rows3948 : actualRows3948=WordField.canonicalRows actualModulus 3948 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3948 : actualRows3948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3948=2892 := by core033_kernel_decide
theorem rows3949 : actualRows3949=WordField.canonicalRows actualModulus 3949 (.bxor 3947 3948) := by core033_kernel_decide
theorem stats3949 : actualRows3949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3949=7428 := by core033_kernel_decide
theorem rows3950 : actualRows3950=WordField.canonicalRows actualModulus 3950 (.bnot 3949) := by core033_kernel_decide
theorem stats3950 : actualRows3950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3950=6276 := by core033_kernel_decide
theorem rows3951 : actualRows3951=WordField.canonicalRows actualModulus 3951 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3951 : actualRows3951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3951=2892 := by core033_kernel_decide
theorem rows3952 : actualRows3952=WordField.canonicalRows actualModulus 3952 (.badd 3950 3951) := by core033_kernel_decide
theorem stats3952 : actualRows3952.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3952=5388 := by core033_kernel_decide
theorem rows3953 : actualRows3953=WordField.canonicalRows actualModulus 3953 (.bnot 3952) := by core033_kernel_decide
theorem stats3953 : actualRows3953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3953=6276 := by core033_kernel_decide
theorem rows3954 : actualRows3954=WordField.canonicalRows actualModulus 3954 (.band 3953 905) := by core033_kernel_decide
theorem stats3954 : actualRows3954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3954=5124 := by core033_kernel_decide
theorem rows3955 : actualRows3955=WordField.canonicalRows actualModulus 3955 (.bxor 3928 3954) := by core033_kernel_decide
theorem stats3955 : actualRows3955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3955=7428 := by core033_kernel_decide
theorem rows3956 : actualRows3956=WordField.canonicalRows actualModulus 3956 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3956 : actualRows3956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3956=2892 := by core033_kernel_decide
theorem rows3957 : actualRows3957=WordField.canonicalRows actualModulus 3957 (.bxor 0 3956) := by core033_kernel_decide
theorem stats3957 : actualRows3957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3957=7428 := by core033_kernel_decide
theorem rows3958 : actualRows3958=WordField.canonicalRows actualModulus 3958 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3958 : actualRows3958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3958=2820 := by core033_kernel_decide
theorem rows3959 : actualRows3959=WordField.canonicalRows actualModulus 3959 (.bnot 3958) := by core033_kernel_decide
theorem stats3959 : actualRows3959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3959=6276 := by core033_kernel_decide
theorem rows3960 : actualRows3960=WordField.canonicalRows actualModulus 3960 (.band 3957 3959) := by core033_kernel_decide
theorem stats3960 : actualRows3960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3960=5124 := by core033_kernel_decide
theorem rows3961 : actualRows3961=WordField.canonicalRows actualModulus 3961 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3961 : actualRows3961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3961=2892 := by core033_kernel_decide
theorem rows3962 : actualRows3962=WordField.canonicalRows actualModulus 3962 (.bxor 0 3961) := by core033_kernel_decide
theorem stats3962 : actualRows3962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3962=7428 := by core033_kernel_decide
theorem rows3963 : actualRows3963=WordField.canonicalRows actualModulus 3963 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3963 : actualRows3963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3963=2820 := by core033_kernel_decide
theorem rows3964 : actualRows3964=WordField.canonicalRows actualModulus 3964 (.bnot 3963) := by core033_kernel_decide
theorem stats3964 : actualRows3964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3964=6276 := by core033_kernel_decide
theorem rows3965 : actualRows3965=WordField.canonicalRows actualModulus 3965 (.bxor 3962 3964) := by core033_kernel_decide
theorem stats3965 : actualRows3965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3965=7428 := by core033_kernel_decide
theorem rows3966 : actualRows3966=WordField.canonicalRows actualModulus 3966 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3966 : actualRows3966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3966=2892 := by core033_kernel_decide
theorem rows3967 : actualRows3967=WordField.canonicalRows actualModulus 3967 (.bxor 0 3966) := by core033_kernel_decide
theorem stats3967 : actualRows3967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3967=7428 := by core033_kernel_decide
theorem rows3968 : actualRows3968=WordField.canonicalRows actualModulus 3968 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3968 : actualRows3968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3968=2820 := by core033_kernel_decide
theorem rows3969 : actualRows3969=WordField.canonicalRows actualModulus 3969 (.bnot 3968) := by core033_kernel_decide
theorem stats3969 : actualRows3969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3969=6276 := by core033_kernel_decide
theorem rows3970 : actualRows3970=WordField.canonicalRows actualModulus 3970 (.badd 3967 3969) := by core033_kernel_decide
theorem stats3970 : actualRows3970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3970=5388 := by core033_kernel_decide
theorem rows3971 : actualRows3971=WordField.canonicalRows actualModulus 3971 (.bnot 3970) := by core033_kernel_decide
theorem stats3971 : actualRows3971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3971=6276 := by core033_kernel_decide
theorem rows3972 : actualRows3972=WordField.canonicalRows actualModulus 3972 (.band 3965 3971) := by core033_kernel_decide
theorem stats3972 : actualRows3972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3972=5124 := by core033_kernel_decide
theorem rows3973 : actualRows3973=WordField.canonicalRows actualModulus 3973 (.bxor 3960 3972) := by core033_kernel_decide
theorem stats3973 : actualRows3973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3973=7428 := by core033_kernel_decide
theorem rows3974 : actualRows3974=WordField.canonicalRows actualModulus 3974 (.shr 3973 31) := by core033_kernel_decide
theorem stats3974 : actualRows3974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3974=2892 := by core033_kernel_decide
theorem rows3975 : actualRows3975=WordField.canonicalRows actualModulus 3975 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3975 : actualRows3975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3975=2892 := by core033_kernel_decide
theorem rows3976 : actualRows3976=WordField.canonicalRows actualModulus 3976 (.bxor 3974 3975) := by core033_kernel_decide
theorem stats3976 : actualRows3976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3976=7428 := by core033_kernel_decide
theorem rows3977 : actualRows3977=WordField.canonicalRows actualModulus 3977 (.bnot 3976) := by core033_kernel_decide
theorem stats3977 : actualRows3977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3977=6276 := by core033_kernel_decide
theorem rows3978 : actualRows3978=WordField.canonicalRows actualModulus 3978 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3978 : actualRows3978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3978=2892 := by core033_kernel_decide
theorem rows3979 : actualRows3979=WordField.canonicalRows actualModulus 3979 (.badd 3977 3978) := by core033_kernel_decide
theorem stats3979 : actualRows3979.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3979=5388 := by core033_kernel_decide
theorem rows3980 : actualRows3980=WordField.canonicalRows actualModulus 3980 (.band 3979 1100) := by core033_kernel_decide
theorem stats3980 : actualRows3980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3980=5124 := by core033_kernel_decide
theorem rows3981 : actualRows3981=WordField.canonicalRows actualModulus 3981 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3981 : actualRows3981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3981=2892 := by core033_kernel_decide
theorem rows3982 : actualRows3982=WordField.canonicalRows actualModulus 3982 (.bxor 0 3981) := by core033_kernel_decide
theorem stats3982 : actualRows3982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3982=7428 := by core033_kernel_decide
theorem rows3983 : actualRows3983=WordField.canonicalRows actualModulus 3983 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3983 : actualRows3983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3983=2820 := by core033_kernel_decide
theorem rows3984 : actualRows3984=WordField.canonicalRows actualModulus 3984 (.bnot 3983) := by core033_kernel_decide
theorem stats3984 : actualRows3984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3984=6276 := by core033_kernel_decide
theorem rows3985 : actualRows3985=WordField.canonicalRows actualModulus 3985 (.band 3982 3984) := by core033_kernel_decide
theorem stats3985 : actualRows3985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3985=5124 := by core033_kernel_decide
theorem rows3986 : actualRows3986=WordField.canonicalRows actualModulus 3986 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3986 : actualRows3986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3986=2892 := by core033_kernel_decide
theorem rows3987 : actualRows3987=WordField.canonicalRows actualModulus 3987 (.bxor 0 3986) := by core033_kernel_decide
theorem stats3987 : actualRows3987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3987=7428 := by core033_kernel_decide
theorem rows3988 : actualRows3988=WordField.canonicalRows actualModulus 3988 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3988 : actualRows3988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3988=2820 := by core033_kernel_decide
theorem rows3989 : actualRows3989=WordField.canonicalRows actualModulus 3989 (.bnot 3988) := by core033_kernel_decide
theorem stats3989 : actualRows3989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3989=6276 := by core033_kernel_decide
theorem rows3990 : actualRows3990=WordField.canonicalRows actualModulus 3990 (.bxor 3987 3989) := by core033_kernel_decide
theorem stats3990 : actualRows3990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3990=7428 := by core033_kernel_decide
theorem rows3991 : actualRows3991=WordField.canonicalRows actualModulus 3991 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3991 : actualRows3991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3991=2892 := by core033_kernel_decide
theorem rows3992 : actualRows3992=WordField.canonicalRows actualModulus 3992 (.bxor 0 3991) := by core033_kernel_decide
theorem stats3992 : actualRows3992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3992=7428 := by core033_kernel_decide
theorem rows3993 : actualRows3993=WordField.canonicalRows actualModulus 3993 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3993 : actualRows3993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3993=2820 := by core033_kernel_decide
theorem rows3994 : actualRows3994=WordField.canonicalRows actualModulus 3994 (.bnot 3993) := by core033_kernel_decide
theorem stats3994 : actualRows3994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3994=6276 := by core033_kernel_decide
theorem rows3995 : actualRows3995=WordField.canonicalRows actualModulus 3995 (.badd 3992 3994) := by core033_kernel_decide
theorem stats3995 : actualRows3995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3995=5388 := by core033_kernel_decide
theorem rows3996 : actualRows3996=WordField.canonicalRows actualModulus 3996 (.bnot 3995) := by core033_kernel_decide
theorem stats3996 : actualRows3996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3996=6276 := by core033_kernel_decide
theorem rows3997 : actualRows3997=WordField.canonicalRows actualModulus 3997 (.band 3990 3996) := by core033_kernel_decide
theorem stats3997 : actualRows3997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3997=5124 := by core033_kernel_decide
theorem rows3998 : actualRows3998=WordField.canonicalRows actualModulus 3998 (.bxor 3985 3997) := by core033_kernel_decide
theorem stats3998 : actualRows3998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3998=7428 := by core033_kernel_decide
theorem rows3999 : actualRows3999=WordField.canonicalRows actualModulus 3999 (.shr 3998 31) := by core033_kernel_decide
theorem stats3999 : actualRows3999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3999=2892 := by core033_kernel_decide
theorem rows4000 : actualRows4000=WordField.canonicalRows actualModulus 4000 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4000 : actualRows4000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4000=2892 := by core033_kernel_decide
theorem rows4001 : actualRows4001=WordField.canonicalRows actualModulus 4001 (.bxor 3999 4000) := by core033_kernel_decide
theorem stats4001 : actualRows4001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4001=7428 := by core033_kernel_decide
theorem rows4002 : actualRows4002=WordField.canonicalRows actualModulus 4002 (.bnot 4001) := by core033_kernel_decide
theorem stats4002 : actualRows4002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4002=6276 := by core033_kernel_decide
theorem rows4003 : actualRows4003=WordField.canonicalRows actualModulus 4003 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4003 : actualRows4003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4003=2892 := by core033_kernel_decide
theorem rows4004 : actualRows4004=WordField.canonicalRows actualModulus 4004 (.badd 4002 4003) := by core033_kernel_decide
theorem stats4004 : actualRows4004.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4004=5388 := by core033_kernel_decide
theorem rows4005 : actualRows4005=WordField.canonicalRows actualModulus 4005 (.bnot 4004) := by core033_kernel_decide
theorem stats4005 : actualRows4005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4005=6276 := by core033_kernel_decide
theorem rows4006 : actualRows4006=WordField.canonicalRows actualModulus 4006 (.band 4005 908) := by core033_kernel_decide
theorem stats4006 : actualRows4006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4006=5124 := by core033_kernel_decide
theorem rows4007 : actualRows4007=WordField.canonicalRows actualModulus 4007 (.bxor 3980 4006) := by core033_kernel_decide
theorem stats4007 : actualRows4007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4007=7428 := by core033_kernel_decide
theorem rows4008 : actualRows4008=WordField.canonicalRows actualModulus 4008 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4008 : actualRows4008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4008=2892 := by core033_kernel_decide
theorem rows4009 : actualRows4009=WordField.canonicalRows actualModulus 4009 (.bxor 0 4008) := by core033_kernel_decide
theorem stats4009 : actualRows4009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4009=7428 := by core033_kernel_decide
theorem rows4010 : actualRows4010=WordField.canonicalRows actualModulus 4010 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4010 : actualRows4010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4010=2820 := by core033_kernel_decide
def partRows61 : List R1CS.Row := actualRows3947++actualRows3948++actualRows3949++actualRows3950++actualRows3951++actualRows3952++actualRows3953++actualRows3954++actualRows3955++actualRows3956++actualRows3957++actualRows3958++actualRows3959++actualRows3960++actualRows3961++actualRows3962++actualRows3963++actualRows3964++actualRows3965++actualRows3966++actualRows3967++actualRows3968++actualRows3969++actualRows3970++actualRows3971++actualRows3972++actualRows3973++actualRows3974++actualRows3975++actualRows3976++actualRows3977++actualRows3978++actualRows3979++actualRows3980++actualRows3981++actualRows3982++actualRows3983++actualRows3984++actualRows3985++actualRows3986++actualRows3987++actualRows3988++actualRows3989++actualRows3990++actualRows3991++actualRows3992++actualRows3993++actualRows3994++actualRows3995++actualRows3996++actualRows3997++actualRows3998++actualRows3999++actualRows4000++actualRows4001++actualRows4002++actualRows4003++actualRows4004++actualRows4005++actualRows4006++actualRows4007++actualRows4008++actualRows4009++actualRows4010
def partOps61 : List WordIR.Op := [.shr 3946 31,.literal (BitVec.ofNat 32 1),.bxor 3947 3948,.bnot 3949,.literal (BitVec.ofNat 32 1),.badd 3950 3951,.bnot 3952,.band 3953 905,.bxor 3928 3954,.literal (BitVec.ofNat 32 2),.bxor 0 3956,.literal (BitVec.ofNat 32 0),.bnot 3958,.band 3957 3959,.literal (BitVec.ofNat 32 2),.bxor 0 3961,.literal (BitVec.ofNat 32 0),.bnot 3963,.bxor 3962 3964,.literal (BitVec.ofNat 32 2),.bxor 0 3966,.literal (BitVec.ofNat 32 0),.bnot 3968,.badd 3967 3969,.bnot 3970,.band 3965 3971,.bxor 3960 3972,.shr 3973 31,.literal (BitVec.ofNat 32 1),.bxor 3974 3975,.bnot 3976,.literal (BitVec.ofNat 32 1),.badd 3977 3978,.band 3979 1100,.literal (BitVec.ofNat 32 2),.bxor 0 3981,.literal (BitVec.ofNat 32 0),.bnot 3983,.band 3982 3984,.literal (BitVec.ofNat 32 2),.bxor 0 3986,.literal (BitVec.ofNat 32 0),.bnot 3988,.bxor 3987 3989,.literal (BitVec.ofNat 32 2),.bxor 0 3991,.literal (BitVec.ofNat 32 0),.bnot 3993,.badd 3992 3994,.bnot 3995,.band 3990 3996,.bxor 3985 3997,.shr 3998 31,.literal (BitVec.ofNat 32 1),.bxor 3999 4000,.bnot 4001,.literal (BitVec.ofNat 32 1),.badd 4002 4003,.bnot 4004,.band 4005 908,.bxor 3980 4006,.literal (BitVec.ofNat 32 2),.bxor 0 4008,.literal (BitVec.ofNat 32 0)]
theorem partExact61 : partRows61=WordField.rows actualModulus 3947 partOps61 := by
  simp only [partRows61,partOps61,WordField.rows,rows3947,rows3948,rows3949,rows3950,rows3951,rows3952,rows3953,rows3954,rows3955,rows3956,rows3957,rows3958,rows3959,rows3960,rows3961,rows3962,rows3963,rows3964,rows3965,rows3966,rows3967,rows3968,rows3969,rows3970,rows3971,rows3972,rows3973,rows3974,rows3975,rows3976,rows3977,rows3978,rows3979,rows3980,rows3981,rows3982,rows3983,rows3984,rows3985,rows3986,rows3987,rows3988,rows3989,rows3990,rows3991,rows3992,rows3993,rows3994,rows3995,rows3996,rows3997,rows3998,rows3999,rows4000,rows4001,rows4002,rows4003,rows4004,rows4005,rows4006,rows4007,rows4008,rows4009,rows4010,List.append_assoc,List.append_nil]
theorem partLength61 : partOps61.length=64 := by decide
theorem partStats61 : partRows61.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows61=329256 := by
  simp only [partRows61,List.length_append,MatrixRowBlocks.rows_weight_append,stats3947.1,stats3947.2,stats3948.1,stats3948.2,stats3949.1,stats3949.2,stats3950.1,stats3950.2,stats3951.1,stats3951.2,stats3952.1,stats3952.2,stats3953.1,stats3953.2,stats3954.1,stats3954.2,stats3955.1,stats3955.2,stats3956.1,stats3956.2,stats3957.1,stats3957.2,stats3958.1,stats3958.2,stats3959.1,stats3959.2,stats3960.1,stats3960.2,stats3961.1,stats3961.2,stats3962.1,stats3962.2,stats3963.1,stats3963.2,stats3964.1,stats3964.2,stats3965.1,stats3965.2,stats3966.1,stats3966.2,stats3967.1,stats3967.2,stats3968.1,stats3968.2,stats3969.1,stats3969.2,stats3970.1,stats3970.2,stats3971.1,stats3971.2,stats3972.1,stats3972.2,stats3973.1,stats3973.2,stats3974.1,stats3974.2,stats3975.1,stats3975.2,stats3976.1,stats3976.2,stats3977.1,stats3977.2,stats3978.1,stats3978.2,stats3979.1,stats3979.2,stats3980.1,stats3980.2,stats3981.1,stats3981.2,stats3982.1,stats3982.2,stats3983.1,stats3983.2,stats3984.1,stats3984.2,stats3985.1,stats3985.2,stats3986.1,stats3986.2,stats3987.1,stats3987.2,stats3988.1,stats3988.2,stats3989.1,stats3989.2,stats3990.1,stats3990.2,stats3991.1,stats3991.2,stats3992.1,stats3992.2,stats3993.1,stats3993.2,stats3994.1,stats3994.2,stats3995.1,stats3995.2,stats3996.1,stats3996.2,stats3997.1,stats3997.2,stats3998.1,stats3998.2,stats3999.1,stats3999.2,stats4000.1,stats4000.2,stats4001.1,stats4001.2,stats4002.1,stats4002.2,stats4003.1,stats4003.2,stats4004.1,stats4004.2,stats4005.1,stats4005.2,stats4006.1,stats4006.2,stats4007.1,stats4007.2,stats4008.1,stats4008.2,stats4009.1,stats4009.2,stats4010.1,stats4010.2]
  decide
end FrameHashControllerCheckedRows
