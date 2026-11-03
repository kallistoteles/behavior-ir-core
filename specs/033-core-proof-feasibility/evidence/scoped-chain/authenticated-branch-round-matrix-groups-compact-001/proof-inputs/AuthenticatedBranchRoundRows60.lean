import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData61
import AuthenticatedBranchRoundInstructionMatrixData62
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3958 : actualRows3958=WordField.canonicalRows actualModulus 3958 (.bxor 3931 3957) := by core033_kernel_decide
theorem stats3958 : actualRows3958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3958=7428 := by core033_kernel_decide
theorem rows3959 : actualRows3959=WordField.canonicalRows actualModulus 3959 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3959 : actualRows3959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3959=2892 := by core033_kernel_decide
theorem rows3960 : actualRows3960=WordField.canonicalRows actualModulus 3960 (.bxor 1299 3959) := by core033_kernel_decide
theorem stats3960 : actualRows3960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3960=7428 := by core033_kernel_decide
theorem rows3961 : actualRows3961=WordField.canonicalRows actualModulus 3961 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3961 : actualRows3961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3961=2820 := by core033_kernel_decide
theorem rows3962 : actualRows3962=WordField.canonicalRows actualModulus 3962 (.bnot 3961) := by core033_kernel_decide
theorem stats3962 : actualRows3962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3962=6276 := by core033_kernel_decide
theorem rows3963 : actualRows3963=WordField.canonicalRows actualModulus 3963 (.band 3960 3962) := by core033_kernel_decide
theorem stats3963 : actualRows3963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3963=5124 := by core033_kernel_decide
theorem rows3964 : actualRows3964=WordField.canonicalRows actualModulus 3964 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3964 : actualRows3964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3964=2892 := by core033_kernel_decide
theorem rows3965 : actualRows3965=WordField.canonicalRows actualModulus 3965 (.bxor 1299 3964) := by core033_kernel_decide
theorem stats3965 : actualRows3965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3965=7428 := by core033_kernel_decide
theorem rows3966 : actualRows3966=WordField.canonicalRows actualModulus 3966 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3966 : actualRows3966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3966=2820 := by core033_kernel_decide
theorem rows3967 : actualRows3967=WordField.canonicalRows actualModulus 3967 (.bnot 3966) := by core033_kernel_decide
theorem stats3967 : actualRows3967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3967=6276 := by core033_kernel_decide
theorem rows3968 : actualRows3968=WordField.canonicalRows actualModulus 3968 (.bxor 3965 3967) := by core033_kernel_decide
theorem stats3968 : actualRows3968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3968=7428 := by core033_kernel_decide
theorem rows3969 : actualRows3969=WordField.canonicalRows actualModulus 3969 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3969 : actualRows3969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3969=2892 := by core033_kernel_decide
theorem rows3970 : actualRows3970=WordField.canonicalRows actualModulus 3970 (.bxor 1299 3969) := by core033_kernel_decide
theorem stats3970 : actualRows3970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3970=7428 := by core033_kernel_decide
theorem rows3971 : actualRows3971=WordField.canonicalRows actualModulus 3971 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3971 : actualRows3971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3971=2820 := by core033_kernel_decide
theorem rows3972 : actualRows3972=WordField.canonicalRows actualModulus 3972 (.bnot 3971) := by core033_kernel_decide
theorem stats3972 : actualRows3972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3972=6276 := by core033_kernel_decide
theorem rows3973 : actualRows3973=WordField.canonicalRows actualModulus 3973 (.badd 3970 3972) := by core033_kernel_decide
theorem stats3973 : actualRows3973.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3973=5388 := by core033_kernel_decide
theorem rows3974 : actualRows3974=WordField.canonicalRows actualModulus 3974 (.bnot 3973) := by core033_kernel_decide
theorem stats3974 : actualRows3974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3974=6276 := by core033_kernel_decide
theorem rows3975 : actualRows3975=WordField.canonicalRows actualModulus 3975 (.band 3968 3974) := by core033_kernel_decide
theorem stats3975 : actualRows3975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3975=5124 := by core033_kernel_decide
theorem rows3976 : actualRows3976=WordField.canonicalRows actualModulus 3976 (.bxor 3963 3975) := by core033_kernel_decide
theorem stats3976 : actualRows3976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3976=7428 := by core033_kernel_decide
theorem rows3977 : actualRows3977=WordField.canonicalRows actualModulus 3977 (.shr 3976 31) := by core033_kernel_decide
theorem stats3977 : actualRows3977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3977=2892 := by core033_kernel_decide
theorem rows3978 : actualRows3978=WordField.canonicalRows actualModulus 3978 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3978 : actualRows3978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3978=2892 := by core033_kernel_decide
theorem rows3979 : actualRows3979=WordField.canonicalRows actualModulus 3979 (.bxor 3977 3978) := by core033_kernel_decide
theorem stats3979 : actualRows3979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3979=7428 := by core033_kernel_decide
theorem rows3980 : actualRows3980=WordField.canonicalRows actualModulus 3980 (.bnot 3979) := by core033_kernel_decide
theorem stats3980 : actualRows3980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3980=6276 := by core033_kernel_decide
theorem rows3981 : actualRows3981=WordField.canonicalRows actualModulus 3981 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3981 : actualRows3981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3981=2892 := by core033_kernel_decide
theorem rows3982 : actualRows3982=WordField.canonicalRows actualModulus 3982 (.badd 3980 3981) := by core033_kernel_decide
theorem stats3982 : actualRows3982.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3982=5388 := by core033_kernel_decide
theorem rows3983 : actualRows3983=WordField.canonicalRows actualModulus 3983 (.band 3982 2720) := by core033_kernel_decide
theorem stats3983 : actualRows3983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3983=5124 := by core033_kernel_decide
theorem rows3984 : actualRows3984=WordField.canonicalRows actualModulus 3984 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3984 : actualRows3984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3984=2892 := by core033_kernel_decide
theorem rows3985 : actualRows3985=WordField.canonicalRows actualModulus 3985 (.bxor 1299 3984) := by core033_kernel_decide
theorem stats3985 : actualRows3985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3985=7428 := by core033_kernel_decide
theorem rows3986 : actualRows3986=WordField.canonicalRows actualModulus 3986 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3986 : actualRows3986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3986=2820 := by core033_kernel_decide
theorem rows3987 : actualRows3987=WordField.canonicalRows actualModulus 3987 (.bnot 3986) := by core033_kernel_decide
theorem stats3987 : actualRows3987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3987=6276 := by core033_kernel_decide
theorem rows3988 : actualRows3988=WordField.canonicalRows actualModulus 3988 (.band 3985 3987) := by core033_kernel_decide
theorem stats3988 : actualRows3988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3988=5124 := by core033_kernel_decide
theorem rows3989 : actualRows3989=WordField.canonicalRows actualModulus 3989 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3989 : actualRows3989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3989=2892 := by core033_kernel_decide
theorem rows3990 : actualRows3990=WordField.canonicalRows actualModulus 3990 (.bxor 1299 3989) := by core033_kernel_decide
theorem stats3990 : actualRows3990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3990=7428 := by core033_kernel_decide
theorem rows3991 : actualRows3991=WordField.canonicalRows actualModulus 3991 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3991 : actualRows3991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3991=2820 := by core033_kernel_decide
theorem rows3992 : actualRows3992=WordField.canonicalRows actualModulus 3992 (.bnot 3991) := by core033_kernel_decide
theorem stats3992 : actualRows3992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3992=6276 := by core033_kernel_decide
theorem rows3993 : actualRows3993=WordField.canonicalRows actualModulus 3993 (.bxor 3990 3992) := by core033_kernel_decide
theorem stats3993 : actualRows3993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3993=7428 := by core033_kernel_decide
theorem rows3994 : actualRows3994=WordField.canonicalRows actualModulus 3994 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3994 : actualRows3994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3994=2892 := by core033_kernel_decide
theorem rows3995 : actualRows3995=WordField.canonicalRows actualModulus 3995 (.bxor 1299 3994) := by core033_kernel_decide
theorem stats3995 : actualRows3995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3995=7428 := by core033_kernel_decide
theorem rows3996 : actualRows3996=WordField.canonicalRows actualModulus 3996 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3996 : actualRows3996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3996=2820 := by core033_kernel_decide
theorem rows3997 : actualRows3997=WordField.canonicalRows actualModulus 3997 (.bnot 3996) := by core033_kernel_decide
theorem stats3997 : actualRows3997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3997=6276 := by core033_kernel_decide
theorem rows3998 : actualRows3998=WordField.canonicalRows actualModulus 3998 (.badd 3995 3997) := by core033_kernel_decide
theorem stats3998 : actualRows3998.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3998=5388 := by core033_kernel_decide
theorem rows3999 : actualRows3999=WordField.canonicalRows actualModulus 3999 (.bnot 3998) := by core033_kernel_decide
theorem stats3999 : actualRows3999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3999=6276 := by core033_kernel_decide
theorem rows4000 : actualRows4000=WordField.canonicalRows actualModulus 4000 (.band 3993 3999) := by core033_kernel_decide
theorem stats4000 : actualRows4000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4000=5124 := by core033_kernel_decide
theorem rows4001 : actualRows4001=WordField.canonicalRows actualModulus 4001 (.bxor 3988 4000) := by core033_kernel_decide
theorem stats4001 : actualRows4001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4001=7428 := by core033_kernel_decide
theorem rows4002 : actualRows4002=WordField.canonicalRows actualModulus 4002 (.shr 4001 31) := by core033_kernel_decide
theorem stats4002 : actualRows4002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4002=2892 := by core033_kernel_decide
theorem rows4003 : actualRows4003=WordField.canonicalRows actualModulus 4003 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4003 : actualRows4003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4003=2892 := by core033_kernel_decide
theorem rows4004 : actualRows4004=WordField.canonicalRows actualModulus 4004 (.bxor 4002 4003) := by core033_kernel_decide
theorem stats4004 : actualRows4004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4004=7428 := by core033_kernel_decide
theorem rows4005 : actualRows4005=WordField.canonicalRows actualModulus 4005 (.bnot 4004) := by core033_kernel_decide
theorem stats4005 : actualRows4005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4005=6276 := by core033_kernel_decide
theorem rows4006 : actualRows4006=WordField.canonicalRows actualModulus 4006 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4006 : actualRows4006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4006=2892 := by core033_kernel_decide
theorem rows4007 : actualRows4007=WordField.canonicalRows actualModulus 4007 (.badd 4005 4006) := by core033_kernel_decide
theorem stats4007 : actualRows4007.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4007=5388 := by core033_kernel_decide
theorem rows4008 : actualRows4008=WordField.canonicalRows actualModulus 4008 (.bnot 4007) := by core033_kernel_decide
theorem stats4008 : actualRows4008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4008=6276 := by core033_kernel_decide
theorem rows4009 : actualRows4009=WordField.canonicalRows actualModulus 4009 (.band 4008 2554) := by core033_kernel_decide
theorem stats4009 : actualRows4009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4009=5124 := by core033_kernel_decide
theorem rows4010 : actualRows4010=WordField.canonicalRows actualModulus 4010 (.bxor 3983 4009) := by core033_kernel_decide
theorem stats4010 : actualRows4010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4010=7428 := by core033_kernel_decide
theorem rows4011 : actualRows4011=WordField.canonicalRows actualModulus 4011 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4011 : actualRows4011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4011=2892 := by core033_kernel_decide
theorem rows4012 : actualRows4012=WordField.canonicalRows actualModulus 4012 (.bxor 1299 4011) := by core033_kernel_decide
theorem stats4012 : actualRows4012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4012=7428 := by core033_kernel_decide
theorem rows4013 : actualRows4013=WordField.canonicalRows actualModulus 4013 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4013 : actualRows4013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4013=2820 := by core033_kernel_decide
theorem rows4014 : actualRows4014=WordField.canonicalRows actualModulus 4014 (.bnot 4013) := by core033_kernel_decide
theorem stats4014 : actualRows4014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4014=6276 := by core033_kernel_decide
theorem rows4015 : actualRows4015=WordField.canonicalRows actualModulus 4015 (.band 4012 4014) := by core033_kernel_decide
theorem stats4015 : actualRows4015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4015=5124 := by core033_kernel_decide
theorem rows4016 : actualRows4016=WordField.canonicalRows actualModulus 4016 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4016 : actualRows4016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4016=2892 := by core033_kernel_decide
theorem rows4017 : actualRows4017=WordField.canonicalRows actualModulus 4017 (.bxor 1299 4016) := by core033_kernel_decide
theorem stats4017 : actualRows4017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4017=7428 := by core033_kernel_decide
theorem rows4018 : actualRows4018=WordField.canonicalRows actualModulus 4018 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4018 : actualRows4018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4018=2820 := by core033_kernel_decide
theorem rows4019 : actualRows4019=WordField.canonicalRows actualModulus 4019 (.bnot 4018) := by core033_kernel_decide
theorem stats4019 : actualRows4019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4019=6276 := by core033_kernel_decide
theorem rows4020 : actualRows4020=WordField.canonicalRows actualModulus 4020 (.bxor 4017 4019) := by core033_kernel_decide
theorem stats4020 : actualRows4020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4020=7428 := by core033_kernel_decide
theorem rows4021 : actualRows4021=WordField.canonicalRows actualModulus 4021 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4021 : actualRows4021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4021=2892 := by core033_kernel_decide
def partRows60 : List R1CS.Row := actualRows3958++actualRows3959++actualRows3960++actualRows3961++actualRows3962++actualRows3963++actualRows3964++actualRows3965++actualRows3966++actualRows3967++actualRows3968++actualRows3969++actualRows3970++actualRows3971++actualRows3972++actualRows3973++actualRows3974++actualRows3975++actualRows3976++actualRows3977++actualRows3978++actualRows3979++actualRows3980++actualRows3981++actualRows3982++actualRows3983++actualRows3984++actualRows3985++actualRows3986++actualRows3987++actualRows3988++actualRows3989++actualRows3990++actualRows3991++actualRows3992++actualRows3993++actualRows3994++actualRows3995++actualRows3996++actualRows3997++actualRows3998++actualRows3999++actualRows4000++actualRows4001++actualRows4002++actualRows4003++actualRows4004++actualRows4005++actualRows4006++actualRows4007++actualRows4008++actualRows4009++actualRows4010++actualRows4011++actualRows4012++actualRows4013++actualRows4014++actualRows4015++actualRows4016++actualRows4017++actualRows4018++actualRows4019++actualRows4020++actualRows4021
def partOps60 : List WordIR.Op := [.bxor 3931 3957,.literal (BitVec.ofNat 32 2),.bxor 1299 3959,.literal (BitVec.ofNat 32 0),.bnot 3961,.band 3960 3962,.literal (BitVec.ofNat 32 2),.bxor 1299 3964,.literal (BitVec.ofNat 32 0),.bnot 3966,.bxor 3965 3967,.literal (BitVec.ofNat 32 2),.bxor 1299 3969,.literal (BitVec.ofNat 32 0),.bnot 3971,.badd 3970 3972,.bnot 3973,.band 3968 3974,.bxor 3963 3975,.shr 3976 31,.literal (BitVec.ofNat 32 1),.bxor 3977 3978,.bnot 3979,.literal (BitVec.ofNat 32 1),.badd 3980 3981,.band 3982 2720,.literal (BitVec.ofNat 32 2),.bxor 1299 3984,.literal (BitVec.ofNat 32 0),.bnot 3986,.band 3985 3987,.literal (BitVec.ofNat 32 2),.bxor 1299 3989,.literal (BitVec.ofNat 32 0),.bnot 3991,.bxor 3990 3992,.literal (BitVec.ofNat 32 2),.bxor 1299 3994,.literal (BitVec.ofNat 32 0),.bnot 3996,.badd 3995 3997,.bnot 3998,.band 3993 3999,.bxor 3988 4000,.shr 4001 31,.literal (BitVec.ofNat 32 1),.bxor 4002 4003,.bnot 4004,.literal (BitVec.ofNat 32 1),.badd 4005 4006,.bnot 4007,.band 4008 2554,.bxor 3983 4009,.literal (BitVec.ofNat 32 2),.bxor 1299 4011,.literal (BitVec.ofNat 32 0),.bnot 4013,.band 4012 4014,.literal (BitVec.ofNat 32 2),.bxor 1299 4016,.literal (BitVec.ofNat 32 0),.bnot 4018,.bxor 4017 4019,.literal (BitVec.ofNat 32 2)]
theorem partExact60 : partRows60=WordField.rows actualModulus 3958 partOps60 := by
  simp only [partRows60,partOps60,WordField.rows,rows3958,rows3959,rows3960,rows3961,rows3962,rows3963,rows3964,rows3965,rows3966,rows3967,rows3968,rows3969,rows3970,rows3971,rows3972,rows3973,rows3974,rows3975,rows3976,rows3977,rows3978,rows3979,rows3980,rows3981,rows3982,rows3983,rows3984,rows3985,rows3986,rows3987,rows3988,rows3989,rows3990,rows3991,rows3992,rows3993,rows3994,rows3995,rows3996,rows3997,rows3998,rows3999,rows4000,rows4001,rows4002,rows4003,rows4004,rows4005,rows4006,rows4007,rows4008,rows4009,rows4010,rows4011,rows4012,rows4013,rows4014,rows4015,rows4016,rows4017,rows4018,rows4019,rows4020,rows4021,List.append_assoc,List.append_nil]
theorem partLength60 : partOps60.length=64 := by decide
theorem partStats60 : partRows60.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows60=331224 := by
  simp only [partRows60,List.length_append,MatrixRowBlocks.rows_weight_append,stats3958.1,stats3958.2,stats3959.1,stats3959.2,stats3960.1,stats3960.2,stats3961.1,stats3961.2,stats3962.1,stats3962.2,stats3963.1,stats3963.2,stats3964.1,stats3964.2,stats3965.1,stats3965.2,stats3966.1,stats3966.2,stats3967.1,stats3967.2,stats3968.1,stats3968.2,stats3969.1,stats3969.2,stats3970.1,stats3970.2,stats3971.1,stats3971.2,stats3972.1,stats3972.2,stats3973.1,stats3973.2,stats3974.1,stats3974.2,stats3975.1,stats3975.2,stats3976.1,stats3976.2,stats3977.1,stats3977.2,stats3978.1,stats3978.2,stats3979.1,stats3979.2,stats3980.1,stats3980.2,stats3981.1,stats3981.2,stats3982.1,stats3982.2,stats3983.1,stats3983.2,stats3984.1,stats3984.2,stats3985.1,stats3985.2,stats3986.1,stats3986.2,stats3987.1,stats3987.2,stats3988.1,stats3988.2,stats3989.1,stats3989.2,stats3990.1,stats3990.2,stats3991.1,stats3991.2,stats3992.1,stats3992.2,stats3993.1,stats3993.2,stats3994.1,stats3994.2,stats3995.1,stats3995.2,stats3996.1,stats3996.2,stats3997.1,stats3997.2,stats3998.1,stats3998.2,stats3999.1,stats3999.2,stats4000.1,stats4000.2,stats4001.1,stats4001.2,stats4002.1,stats4002.2,stats4003.1,stats4003.2,stats4004.1,stats4004.2,stats4005.1,stats4005.2,stats4006.1,stats4006.2,stats4007.1,stats4007.2,stats4008.1,stats4008.2,stats4009.1,stats4009.2,stats4010.1,stats4010.2,stats4011.1,stats4011.2,stats4012.1,stats4012.2,stats4013.1,stats4013.2,stats4014.1,stats4014.2,stats4015.1,stats4015.2,stats4016.1,stats4016.2,stats4017.1,stats4017.2,stats4018.1,stats4018.2,stats4019.1,stats4019.2,stats4020.1,stats4020.2,stats4021.1,stats4021.2]
  decide
end AuthenticatedBranchRoundCheckedRows
