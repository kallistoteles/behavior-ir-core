import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData63
import PairedPathRoundInstructionMatrixData64
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4064 : actualRows4064=WordField.canonicalRows actualModulus 4064 (.bnot 4063) := by core033_kernel_decide
theorem stats4064 : actualRows4064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4064=6276 := by core033_kernel_decide
theorem rows4065 : actualRows4065=WordField.canonicalRows actualModulus 4065 (.bxor 4062 4064) := by core033_kernel_decide
theorem stats4065 : actualRows4065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4065=7428 := by core033_kernel_decide
theorem rows4066 : actualRows4066=WordField.canonicalRows actualModulus 4066 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4066 : actualRows4066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4066=2892 := by core033_kernel_decide
theorem rows4067 : actualRows4067=WordField.canonicalRows actualModulus 4067 (.bxor 616 4066) := by core033_kernel_decide
theorem stats4067 : actualRows4067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4067=7428 := by core033_kernel_decide
theorem rows4068 : actualRows4068=WordField.canonicalRows actualModulus 4068 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4068 : actualRows4068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4068=2820 := by core033_kernel_decide
theorem rows4069 : actualRows4069=WordField.canonicalRows actualModulus 4069 (.bnot 4068) := by core033_kernel_decide
theorem stats4069 : actualRows4069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4069=6276 := by core033_kernel_decide
theorem rows4070 : actualRows4070=WordField.canonicalRows actualModulus 4070 (.badd 4067 4069) := by core033_kernel_decide
theorem stats4070 : actualRows4070.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4070=5388 := by core033_kernel_decide
theorem rows4071 : actualRows4071=WordField.canonicalRows actualModulus 4071 (.bnot 4070) := by core033_kernel_decide
theorem stats4071 : actualRows4071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4071=6276 := by core033_kernel_decide
theorem rows4072 : actualRows4072=WordField.canonicalRows actualModulus 4072 (.band 4065 4071) := by core033_kernel_decide
theorem stats4072 : actualRows4072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4072=5124 := by core033_kernel_decide
theorem rows4073 : actualRows4073=WordField.canonicalRows actualModulus 4073 (.bxor 4060 4072) := by core033_kernel_decide
theorem stats4073 : actualRows4073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4073=7428 := by core033_kernel_decide
theorem rows4074 : actualRows4074=WordField.canonicalRows actualModulus 4074 (.shr 4073 31) := by core033_kernel_decide
theorem stats4074 : actualRows4074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4074=2892 := by core033_kernel_decide
theorem rows4075 : actualRows4075=WordField.canonicalRows actualModulus 4075 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4075 : actualRows4075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4075=2892 := by core033_kernel_decide
theorem rows4076 : actualRows4076=WordField.canonicalRows actualModulus 4076 (.bxor 4074 4075) := by core033_kernel_decide
theorem stats4076 : actualRows4076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4076=7428 := by core033_kernel_decide
theorem rows4077 : actualRows4077=WordField.canonicalRows actualModulus 4077 (.bnot 4076) := by core033_kernel_decide
theorem stats4077 : actualRows4077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4077=6276 := by core033_kernel_decide
theorem rows4078 : actualRows4078=WordField.canonicalRows actualModulus 4078 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4078 : actualRows4078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4078=2892 := by core033_kernel_decide
theorem rows4079 : actualRows4079=WordField.canonicalRows actualModulus 4079 (.badd 4077 4078) := by core033_kernel_decide
theorem stats4079 : actualRows4079.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4079=5388 := by core033_kernel_decide
theorem rows4080 : actualRows4080=WordField.canonicalRows actualModulus 4080 (.band 4079 2082) := by core033_kernel_decide
theorem stats4080 : actualRows4080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4080=5124 := by core033_kernel_decide
theorem rows4081 : actualRows4081=WordField.canonicalRows actualModulus 4081 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4081 : actualRows4081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4081=2892 := by core033_kernel_decide
theorem rows4082 : actualRows4082=WordField.canonicalRows actualModulus 4082 (.bxor 616 4081) := by core033_kernel_decide
theorem stats4082 : actualRows4082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4082=7428 := by core033_kernel_decide
theorem rows4083 : actualRows4083=WordField.canonicalRows actualModulus 4083 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4083 : actualRows4083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4083=2820 := by core033_kernel_decide
theorem rows4084 : actualRows4084=WordField.canonicalRows actualModulus 4084 (.bnot 4083) := by core033_kernel_decide
theorem stats4084 : actualRows4084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4084=6276 := by core033_kernel_decide
theorem rows4085 : actualRows4085=WordField.canonicalRows actualModulus 4085 (.band 4082 4084) := by core033_kernel_decide
theorem stats4085 : actualRows4085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4085=5124 := by core033_kernel_decide
theorem rows4086 : actualRows4086=WordField.canonicalRows actualModulus 4086 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4086 : actualRows4086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4086=2892 := by core033_kernel_decide
theorem rows4087 : actualRows4087=WordField.canonicalRows actualModulus 4087 (.bxor 616 4086) := by core033_kernel_decide
theorem stats4087 : actualRows4087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4087=7428 := by core033_kernel_decide
theorem rows4088 : actualRows4088=WordField.canonicalRows actualModulus 4088 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4088 : actualRows4088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4088=2820 := by core033_kernel_decide
theorem rows4089 : actualRows4089=WordField.canonicalRows actualModulus 4089 (.bnot 4088) := by core033_kernel_decide
theorem stats4089 : actualRows4089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4089=6276 := by core033_kernel_decide
theorem rows4090 : actualRows4090=WordField.canonicalRows actualModulus 4090 (.bxor 4087 4089) := by core033_kernel_decide
theorem stats4090 : actualRows4090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4090=7428 := by core033_kernel_decide
theorem rows4091 : actualRows4091=WordField.canonicalRows actualModulus 4091 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4091 : actualRows4091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4091=2892 := by core033_kernel_decide
theorem rows4092 : actualRows4092=WordField.canonicalRows actualModulus 4092 (.bxor 616 4091) := by core033_kernel_decide
theorem stats4092 : actualRows4092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4092=7428 := by core033_kernel_decide
theorem rows4093 : actualRows4093=WordField.canonicalRows actualModulus 4093 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4093 : actualRows4093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4093=2820 := by core033_kernel_decide
theorem rows4094 : actualRows4094=WordField.canonicalRows actualModulus 4094 (.bnot 4093) := by core033_kernel_decide
theorem stats4094 : actualRows4094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4094=6276 := by core033_kernel_decide
theorem rows4095 : actualRows4095=WordField.canonicalRows actualModulus 4095 (.badd 4092 4094) := by core033_kernel_decide
theorem stats4095 : actualRows4095.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4095=5388 := by core033_kernel_decide
theorem rows4096 : actualRows4096=WordField.canonicalRows actualModulus 4096 (.bnot 4095) := by core033_kernel_decide
theorem stats4096 : actualRows4096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4096=6276 := by core033_kernel_decide
theorem rows4097 : actualRows4097=WordField.canonicalRows actualModulus 4097 (.band 4090 4096) := by core033_kernel_decide
theorem stats4097 : actualRows4097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4097=5124 := by core033_kernel_decide
theorem rows4098 : actualRows4098=WordField.canonicalRows actualModulus 4098 (.bxor 4085 4097) := by core033_kernel_decide
theorem stats4098 : actualRows4098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4098=7428 := by core033_kernel_decide
theorem rows4099 : actualRows4099=WordField.canonicalRows actualModulus 4099 (.shr 4098 31) := by core033_kernel_decide
theorem stats4099 : actualRows4099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4099=2892 := by core033_kernel_decide
theorem rows4100 : actualRows4100=WordField.canonicalRows actualModulus 4100 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4100 : actualRows4100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4100=2892 := by core033_kernel_decide
theorem rows4101 : actualRows4101=WordField.canonicalRows actualModulus 4101 (.bxor 4099 4100) := by core033_kernel_decide
theorem stats4101 : actualRows4101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4101=7428 := by core033_kernel_decide
theorem rows4102 : actualRows4102=WordField.canonicalRows actualModulus 4102 (.bnot 4101) := by core033_kernel_decide
theorem stats4102 : actualRows4102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4102=6276 := by core033_kernel_decide
theorem rows4103 : actualRows4103=WordField.canonicalRows actualModulus 4103 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4103 : actualRows4103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4103=2892 := by core033_kernel_decide
theorem rows4104 : actualRows4104=WordField.canonicalRows actualModulus 4104 (.badd 4102 4103) := by core033_kernel_decide
theorem stats4104 : actualRows4104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4104=5388 := by core033_kernel_decide
theorem rows4105 : actualRows4105=WordField.canonicalRows actualModulus 4105 (.bnot 4104) := by core033_kernel_decide
theorem stats4105 : actualRows4105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4105=6276 := by core033_kernel_decide
theorem rows4106 : actualRows4106=WordField.canonicalRows actualModulus 4106 (.band 4105 1890) := by core033_kernel_decide
theorem stats4106 : actualRows4106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4106=5124 := by core033_kernel_decide
theorem rows4107 : actualRows4107=WordField.canonicalRows actualModulus 4107 (.bxor 4080 4106) := by core033_kernel_decide
theorem stats4107 : actualRows4107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4107=7428 := by core033_kernel_decide
theorem rows4108 : actualRows4108=WordField.canonicalRows actualModulus 4108 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4108 : actualRows4108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4108=2892 := by core033_kernel_decide
theorem rows4109 : actualRows4109=WordField.canonicalRows actualModulus 4109 (.bxor 616 4108) := by core033_kernel_decide
theorem stats4109 : actualRows4109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4109=7428 := by core033_kernel_decide
theorem rows4110 : actualRows4110=WordField.canonicalRows actualModulus 4110 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4110 : actualRows4110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4110=2820 := by core033_kernel_decide
theorem rows4111 : actualRows4111=WordField.canonicalRows actualModulus 4111 (.bnot 4110) := by core033_kernel_decide
theorem stats4111 : actualRows4111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4111=6276 := by core033_kernel_decide
theorem rows4112 : actualRows4112=WordField.canonicalRows actualModulus 4112 (.band 4109 4111) := by core033_kernel_decide
theorem stats4112 : actualRows4112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4112=5124 := by core033_kernel_decide
theorem rows4113 : actualRows4113=WordField.canonicalRows actualModulus 4113 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4113 : actualRows4113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4113=2892 := by core033_kernel_decide
theorem rows4114 : actualRows4114=WordField.canonicalRows actualModulus 4114 (.bxor 616 4113) := by core033_kernel_decide
theorem stats4114 : actualRows4114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4114=7428 := by core033_kernel_decide
theorem rows4115 : actualRows4115=WordField.canonicalRows actualModulus 4115 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4115 : actualRows4115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4115=2820 := by core033_kernel_decide
theorem rows4116 : actualRows4116=WordField.canonicalRows actualModulus 4116 (.bnot 4115) := by core033_kernel_decide
theorem stats4116 : actualRows4116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4116=6276 := by core033_kernel_decide
theorem rows4117 : actualRows4117=WordField.canonicalRows actualModulus 4117 (.bxor 4114 4116) := by core033_kernel_decide
theorem stats4117 : actualRows4117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4117=7428 := by core033_kernel_decide
theorem rows4118 : actualRows4118=WordField.canonicalRows actualModulus 4118 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4118 : actualRows4118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4118=2892 := by core033_kernel_decide
theorem rows4119 : actualRows4119=WordField.canonicalRows actualModulus 4119 (.bxor 616 4118) := by core033_kernel_decide
theorem stats4119 : actualRows4119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4119=7428 := by core033_kernel_decide
theorem rows4120 : actualRows4120=WordField.canonicalRows actualModulus 4120 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4120 : actualRows4120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4120=2820 := by core033_kernel_decide
theorem rows4121 : actualRows4121=WordField.canonicalRows actualModulus 4121 (.bnot 4120) := by core033_kernel_decide
theorem stats4121 : actualRows4121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4121=6276 := by core033_kernel_decide
theorem rows4122 : actualRows4122=WordField.canonicalRows actualModulus 4122 (.badd 4119 4121) := by core033_kernel_decide
theorem stats4122 : actualRows4122.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4122=5388 := by core033_kernel_decide
theorem rows4123 : actualRows4123=WordField.canonicalRows actualModulus 4123 (.bnot 4122) := by core033_kernel_decide
theorem stats4123 : actualRows4123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4123=6276 := by core033_kernel_decide
theorem rows4124 : actualRows4124=WordField.canonicalRows actualModulus 4124 (.band 4117 4123) := by core033_kernel_decide
theorem stats4124 : actualRows4124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4124=5124 := by core033_kernel_decide
theorem rows4125 : actualRows4125=WordField.canonicalRows actualModulus 4125 (.bxor 4112 4124) := by core033_kernel_decide
theorem stats4125 : actualRows4125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4125=7428 := by core033_kernel_decide
theorem rows4126 : actualRows4126=WordField.canonicalRows actualModulus 4126 (.shr 4125 31) := by core033_kernel_decide
theorem stats4126 : actualRows4126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4126=2892 := by core033_kernel_decide
theorem rows4127 : actualRows4127=WordField.canonicalRows actualModulus 4127 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4127 : actualRows4127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4127=2892 := by core033_kernel_decide
def partRows62 : List R1CS.Row := actualRows4064++actualRows4065++actualRows4066++actualRows4067++actualRows4068++actualRows4069++actualRows4070++actualRows4071++actualRows4072++actualRows4073++actualRows4074++actualRows4075++actualRows4076++actualRows4077++actualRows4078++actualRows4079++actualRows4080++actualRows4081++actualRows4082++actualRows4083++actualRows4084++actualRows4085++actualRows4086++actualRows4087++actualRows4088++actualRows4089++actualRows4090++actualRows4091++actualRows4092++actualRows4093++actualRows4094++actualRows4095++actualRows4096++actualRows4097++actualRows4098++actualRows4099++actualRows4100++actualRows4101++actualRows4102++actualRows4103++actualRows4104++actualRows4105++actualRows4106++actualRows4107++actualRows4108++actualRows4109++actualRows4110++actualRows4111++actualRows4112++actualRows4113++actualRows4114++actualRows4115++actualRows4116++actualRows4117++actualRows4118++actualRows4119++actualRows4120++actualRows4121++actualRows4122++actualRows4123++actualRows4124++actualRows4125++actualRows4126++actualRows4127
def partOps62 : List WordIR.Op := [.bnot 4063,.bxor 4062 4064,.literal (BitVec.ofNat 32 2),.bxor 616 4066,.literal (BitVec.ofNat 32 0),.bnot 4068,.badd 4067 4069,.bnot 4070,.band 4065 4071,.bxor 4060 4072,.shr 4073 31,.literal (BitVec.ofNat 32 1),.bxor 4074 4075,.bnot 4076,.literal (BitVec.ofNat 32 1),.badd 4077 4078,.band 4079 2082,.literal (BitVec.ofNat 32 2),.bxor 616 4081,.literal (BitVec.ofNat 32 0),.bnot 4083,.band 4082 4084,.literal (BitVec.ofNat 32 2),.bxor 616 4086,.literal (BitVec.ofNat 32 0),.bnot 4088,.bxor 4087 4089,.literal (BitVec.ofNat 32 2),.bxor 616 4091,.literal (BitVec.ofNat 32 0),.bnot 4093,.badd 4092 4094,.bnot 4095,.band 4090 4096,.bxor 4085 4097,.shr 4098 31,.literal (BitVec.ofNat 32 1),.bxor 4099 4100,.bnot 4101,.literal (BitVec.ofNat 32 1),.badd 4102 4103,.bnot 4104,.band 4105 1890,.bxor 4080 4106,.literal (BitVec.ofNat 32 2),.bxor 616 4108,.literal (BitVec.ofNat 32 0),.bnot 4110,.band 4109 4111,.literal (BitVec.ofNat 32 2),.bxor 616 4113,.literal (BitVec.ofNat 32 0),.bnot 4115,.bxor 4114 4116,.literal (BitVec.ofNat 32 2),.bxor 616 4118,.literal (BitVec.ofNat 32 0),.bnot 4120,.badd 4119 4121,.bnot 4122,.band 4117 4123,.bxor 4112 4124,.shr 4125 31,.literal (BitVec.ofNat 32 1)]
theorem partExact62 : partRows62=WordField.rows actualModulus 4064 partOps62 := by
  simp only [partRows62,partOps62,WordField.rows,rows4064,rows4065,rows4066,rows4067,rows4068,rows4069,rows4070,rows4071,rows4072,rows4073,rows4074,rows4075,rows4076,rows4077,rows4078,rows4079,rows4080,rows4081,rows4082,rows4083,rows4084,rows4085,rows4086,rows4087,rows4088,rows4089,rows4090,rows4091,rows4092,rows4093,rows4094,rows4095,rows4096,rows4097,rows4098,rows4099,rows4100,rows4101,rows4102,rows4103,rows4104,rows4105,rows4106,rows4107,rows4108,rows4109,rows4110,rows4111,rows4112,rows4113,rows4114,rows4115,rows4116,rows4117,rows4118,rows4119,rows4120,rows4121,rows4122,rows4123,rows4124,rows4125,rows4126,rows4127,List.append_assoc,List.append_nil]
theorem partLength62 : partOps62.length=64 := by decide
theorem partStats62 : partRows62.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows62=332640 := by
  simp only [partRows62,List.length_append,MatrixRowBlocks.rows_weight_append,stats4064.1,stats4064.2,stats4065.1,stats4065.2,stats4066.1,stats4066.2,stats4067.1,stats4067.2,stats4068.1,stats4068.2,stats4069.1,stats4069.2,stats4070.1,stats4070.2,stats4071.1,stats4071.2,stats4072.1,stats4072.2,stats4073.1,stats4073.2,stats4074.1,stats4074.2,stats4075.1,stats4075.2,stats4076.1,stats4076.2,stats4077.1,stats4077.2,stats4078.1,stats4078.2,stats4079.1,stats4079.2,stats4080.1,stats4080.2,stats4081.1,stats4081.2,stats4082.1,stats4082.2,stats4083.1,stats4083.2,stats4084.1,stats4084.2,stats4085.1,stats4085.2,stats4086.1,stats4086.2,stats4087.1,stats4087.2,stats4088.1,stats4088.2,stats4089.1,stats4089.2,stats4090.1,stats4090.2,stats4091.1,stats4091.2,stats4092.1,stats4092.2,stats4093.1,stats4093.2,stats4094.1,stats4094.2,stats4095.1,stats4095.2,stats4096.1,stats4096.2,stats4097.1,stats4097.2,stats4098.1,stats4098.2,stats4099.1,stats4099.2,stats4100.1,stats4100.2,stats4101.1,stats4101.2,stats4102.1,stats4102.2,stats4103.1,stats4103.2,stats4104.1,stats4104.2,stats4105.1,stats4105.2,stats4106.1,stats4106.2,stats4107.1,stats4107.2,stats4108.1,stats4108.2,stats4109.1,stats4109.2,stats4110.1,stats4110.2,stats4111.1,stats4111.2,stats4112.1,stats4112.2,stats4113.1,stats4113.2,stats4114.1,stats4114.2,stats4115.1,stats4115.2,stats4116.1,stats4116.2,stats4117.1,stats4117.2,stats4118.1,stats4118.2,stats4119.1,stats4119.2,stats4120.1,stats4120.2,stats4121.1,stats4121.2,stats4122.1,stats4122.2,stats4123.1,stats4123.2,stats4124.1,stats4124.2,stats4125.1,stats4125.2,stats4126.1,stats4126.2,stats4127.1,stats4127.2]
  decide
end PairedPathRoundCheckedRows
