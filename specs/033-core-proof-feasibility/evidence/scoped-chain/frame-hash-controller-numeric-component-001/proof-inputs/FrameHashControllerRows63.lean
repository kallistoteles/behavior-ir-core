import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData63
import FrameHashControllerInstructionMatrixData64
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4075 : actualRows4075=WordField.canonicalRows actualModulus 4075 (.bnot 4074) := by core033_kernel_decide
theorem stats4075 : actualRows4075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4075=6276 := by core033_kernel_decide
theorem rows4076 : actualRows4076=WordField.canonicalRows actualModulus 4076 (.band 4069 4075) := by core033_kernel_decide
theorem stats4076 : actualRows4076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4076=5124 := by core033_kernel_decide
theorem rows4077 : actualRows4077=WordField.canonicalRows actualModulus 4077 (.bxor 4064 4076) := by core033_kernel_decide
theorem stats4077 : actualRows4077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4077=7428 := by core033_kernel_decide
theorem rows4078 : actualRows4078=WordField.canonicalRows actualModulus 4078 (.shr 4077 31) := by core033_kernel_decide
theorem stats4078 : actualRows4078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4078=2892 := by core033_kernel_decide
theorem rows4079 : actualRows4079=WordField.canonicalRows actualModulus 4079 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4079 : actualRows4079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4079=2892 := by core033_kernel_decide
theorem rows4080 : actualRows4080=WordField.canonicalRows actualModulus 4080 (.bxor 4078 4079) := by core033_kernel_decide
theorem stats4080 : actualRows4080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4080=7428 := by core033_kernel_decide
theorem rows4081 : actualRows4081=WordField.canonicalRows actualModulus 4081 (.bnot 4080) := by core033_kernel_decide
theorem stats4081 : actualRows4081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4081=6276 := by core033_kernel_decide
theorem rows4082 : actualRows4082=WordField.canonicalRows actualModulus 4082 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4082 : actualRows4082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4082=2892 := by core033_kernel_decide
theorem rows4083 : actualRows4083=WordField.canonicalRows actualModulus 4083 (.badd 4081 4082) := by core033_kernel_decide
theorem stats4083 : actualRows4083.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4083=5388 := by core033_kernel_decide
theorem rows4084 : actualRows4084=WordField.canonicalRows actualModulus 4084 (.band 4083 1106) := by core033_kernel_decide
theorem stats4084 : actualRows4084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4084=5124 := by core033_kernel_decide
theorem rows4085 : actualRows4085=WordField.canonicalRows actualModulus 4085 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4085 : actualRows4085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4085=2892 := by core033_kernel_decide
theorem rows4086 : actualRows4086=WordField.canonicalRows actualModulus 4086 (.bxor 0 4085) := by core033_kernel_decide
theorem stats4086 : actualRows4086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4086=7428 := by core033_kernel_decide
theorem rows4087 : actualRows4087=WordField.canonicalRows actualModulus 4087 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4087 : actualRows4087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4087=2820 := by core033_kernel_decide
theorem rows4088 : actualRows4088=WordField.canonicalRows actualModulus 4088 (.bnot 4087) := by core033_kernel_decide
theorem stats4088 : actualRows4088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4088=6276 := by core033_kernel_decide
theorem rows4089 : actualRows4089=WordField.canonicalRows actualModulus 4089 (.band 4086 4088) := by core033_kernel_decide
theorem stats4089 : actualRows4089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4089=5124 := by core033_kernel_decide
theorem rows4090 : actualRows4090=WordField.canonicalRows actualModulus 4090 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4090 : actualRows4090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4090=2892 := by core033_kernel_decide
theorem rows4091 : actualRows4091=WordField.canonicalRows actualModulus 4091 (.bxor 0 4090) := by core033_kernel_decide
theorem stats4091 : actualRows4091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4091=7428 := by core033_kernel_decide
theorem rows4092 : actualRows4092=WordField.canonicalRows actualModulus 4092 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4092 : actualRows4092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4092=2820 := by core033_kernel_decide
theorem rows4093 : actualRows4093=WordField.canonicalRows actualModulus 4093 (.bnot 4092) := by core033_kernel_decide
theorem stats4093 : actualRows4093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4093=6276 := by core033_kernel_decide
theorem rows4094 : actualRows4094=WordField.canonicalRows actualModulus 4094 (.bxor 4091 4093) := by core033_kernel_decide
theorem stats4094 : actualRows4094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4094=7428 := by core033_kernel_decide
theorem rows4095 : actualRows4095=WordField.canonicalRows actualModulus 4095 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4095 : actualRows4095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4095=2892 := by core033_kernel_decide
theorem rows4096 : actualRows4096=WordField.canonicalRows actualModulus 4096 (.bxor 0 4095) := by core033_kernel_decide
theorem stats4096 : actualRows4096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4096=7428 := by core033_kernel_decide
theorem rows4097 : actualRows4097=WordField.canonicalRows actualModulus 4097 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4097 : actualRows4097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4097=2820 := by core033_kernel_decide
theorem rows4098 : actualRows4098=WordField.canonicalRows actualModulus 4098 (.bnot 4097) := by core033_kernel_decide
theorem stats4098 : actualRows4098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4098=6276 := by core033_kernel_decide
theorem rows4099 : actualRows4099=WordField.canonicalRows actualModulus 4099 (.badd 4096 4098) := by core033_kernel_decide
theorem stats4099 : actualRows4099.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4099=5388 := by core033_kernel_decide
theorem rows4100 : actualRows4100=WordField.canonicalRows actualModulus 4100 (.bnot 4099) := by core033_kernel_decide
theorem stats4100 : actualRows4100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4100=6276 := by core033_kernel_decide
theorem rows4101 : actualRows4101=WordField.canonicalRows actualModulus 4101 (.band 4094 4100) := by core033_kernel_decide
theorem stats4101 : actualRows4101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4101=5124 := by core033_kernel_decide
theorem rows4102 : actualRows4102=WordField.canonicalRows actualModulus 4102 (.bxor 4089 4101) := by core033_kernel_decide
theorem stats4102 : actualRows4102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4102=7428 := by core033_kernel_decide
theorem rows4103 : actualRows4103=WordField.canonicalRows actualModulus 4103 (.shr 4102 31) := by core033_kernel_decide
theorem stats4103 : actualRows4103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4103=2892 := by core033_kernel_decide
theorem rows4104 : actualRows4104=WordField.canonicalRows actualModulus 4104 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4104 : actualRows4104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4104=2892 := by core033_kernel_decide
theorem rows4105 : actualRows4105=WordField.canonicalRows actualModulus 4105 (.bxor 4103 4104) := by core033_kernel_decide
theorem stats4105 : actualRows4105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4105=7428 := by core033_kernel_decide
theorem rows4106 : actualRows4106=WordField.canonicalRows actualModulus 4106 (.bnot 4105) := by core033_kernel_decide
theorem stats4106 : actualRows4106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4106=6276 := by core033_kernel_decide
theorem rows4107 : actualRows4107=WordField.canonicalRows actualModulus 4107 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4107 : actualRows4107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4107=2892 := by core033_kernel_decide
theorem rows4108 : actualRows4108=WordField.canonicalRows actualModulus 4108 (.badd 4106 4107) := by core033_kernel_decide
theorem stats4108 : actualRows4108.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4108=5388 := by core033_kernel_decide
theorem rows4109 : actualRows4109=WordField.canonicalRows actualModulus 4109 (.bnot 4108) := by core033_kernel_decide
theorem stats4109 : actualRows4109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4109=6276 := by core033_kernel_decide
theorem rows4110 : actualRows4110=WordField.canonicalRows actualModulus 4110 (.band 4109 914) := by core033_kernel_decide
theorem stats4110 : actualRows4110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4110=5124 := by core033_kernel_decide
theorem rows4111 : actualRows4111=WordField.canonicalRows actualModulus 4111 (.bxor 4084 4110) := by core033_kernel_decide
theorem stats4111 : actualRows4111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4111=7428 := by core033_kernel_decide
theorem rows4112 : actualRows4112=WordField.canonicalRows actualModulus 4112 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4112 : actualRows4112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4112=2892 := by core033_kernel_decide
theorem rows4113 : actualRows4113=WordField.canonicalRows actualModulus 4113 (.bxor 0 4112) := by core033_kernel_decide
theorem stats4113 : actualRows4113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4113=7428 := by core033_kernel_decide
theorem rows4114 : actualRows4114=WordField.canonicalRows actualModulus 4114 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4114 : actualRows4114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4114=2820 := by core033_kernel_decide
theorem rows4115 : actualRows4115=WordField.canonicalRows actualModulus 4115 (.bnot 4114) := by core033_kernel_decide
theorem stats4115 : actualRows4115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4115=6276 := by core033_kernel_decide
theorem rows4116 : actualRows4116=WordField.canonicalRows actualModulus 4116 (.band 4113 4115) := by core033_kernel_decide
theorem stats4116 : actualRows4116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4116=5124 := by core033_kernel_decide
theorem rows4117 : actualRows4117=WordField.canonicalRows actualModulus 4117 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4117 : actualRows4117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4117=2892 := by core033_kernel_decide
theorem rows4118 : actualRows4118=WordField.canonicalRows actualModulus 4118 (.bxor 0 4117) := by core033_kernel_decide
theorem stats4118 : actualRows4118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4118=7428 := by core033_kernel_decide
theorem rows4119 : actualRows4119=WordField.canonicalRows actualModulus 4119 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4119 : actualRows4119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4119=2820 := by core033_kernel_decide
theorem rows4120 : actualRows4120=WordField.canonicalRows actualModulus 4120 (.bnot 4119) := by core033_kernel_decide
theorem stats4120 : actualRows4120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4120=6276 := by core033_kernel_decide
theorem rows4121 : actualRows4121=WordField.canonicalRows actualModulus 4121 (.bxor 4118 4120) := by core033_kernel_decide
theorem stats4121 : actualRows4121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4121=7428 := by core033_kernel_decide
theorem rows4122 : actualRows4122=WordField.canonicalRows actualModulus 4122 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4122 : actualRows4122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4122=2892 := by core033_kernel_decide
theorem rows4123 : actualRows4123=WordField.canonicalRows actualModulus 4123 (.bxor 0 4122) := by core033_kernel_decide
theorem stats4123 : actualRows4123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4123=7428 := by core033_kernel_decide
theorem rows4124 : actualRows4124=WordField.canonicalRows actualModulus 4124 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4124 : actualRows4124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4124=2820 := by core033_kernel_decide
theorem rows4125 : actualRows4125=WordField.canonicalRows actualModulus 4125 (.bnot 4124) := by core033_kernel_decide
theorem stats4125 : actualRows4125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4125=6276 := by core033_kernel_decide
theorem rows4126 : actualRows4126=WordField.canonicalRows actualModulus 4126 (.badd 4123 4125) := by core033_kernel_decide
theorem stats4126 : actualRows4126.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4126=5388 := by core033_kernel_decide
theorem rows4127 : actualRows4127=WordField.canonicalRows actualModulus 4127 (.bnot 4126) := by core033_kernel_decide
theorem stats4127 : actualRows4127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4127=6276 := by core033_kernel_decide
theorem rows4128 : actualRows4128=WordField.canonicalRows actualModulus 4128 (.band 4121 4127) := by core033_kernel_decide
theorem stats4128 : actualRows4128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4128=5124 := by core033_kernel_decide
theorem rows4129 : actualRows4129=WordField.canonicalRows actualModulus 4129 (.bxor 4116 4128) := by core033_kernel_decide
theorem stats4129 : actualRows4129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4129=7428 := by core033_kernel_decide
theorem rows4130 : actualRows4130=WordField.canonicalRows actualModulus 4130 (.shr 4129 31) := by core033_kernel_decide
theorem stats4130 : actualRows4130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4130=2892 := by core033_kernel_decide
theorem rows4131 : actualRows4131=WordField.canonicalRows actualModulus 4131 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4131 : actualRows4131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4131=2892 := by core033_kernel_decide
theorem rows4132 : actualRows4132=WordField.canonicalRows actualModulus 4132 (.bxor 4130 4131) := by core033_kernel_decide
theorem stats4132 : actualRows4132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4132=7428 := by core033_kernel_decide
theorem rows4133 : actualRows4133=WordField.canonicalRows actualModulus 4133 (.bnot 4132) := by core033_kernel_decide
theorem stats4133 : actualRows4133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4133=6276 := by core033_kernel_decide
theorem rows4134 : actualRows4134=WordField.canonicalRows actualModulus 4134 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4134 : actualRows4134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4134=2892 := by core033_kernel_decide
theorem rows4135 : actualRows4135=WordField.canonicalRows actualModulus 4135 (.badd 4133 4134) := by core033_kernel_decide
theorem stats4135 : actualRows4135.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4135=5388 := by core033_kernel_decide
theorem rows4136 : actualRows4136=WordField.canonicalRows actualModulus 4136 (.band 4135 1109) := by core033_kernel_decide
theorem stats4136 : actualRows4136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4136=5124 := by core033_kernel_decide
theorem rows4137 : actualRows4137=WordField.canonicalRows actualModulus 4137 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4137 : actualRows4137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4137=2892 := by core033_kernel_decide
theorem rows4138 : actualRows4138=WordField.canonicalRows actualModulus 4138 (.bxor 0 4137) := by core033_kernel_decide
theorem stats4138 : actualRows4138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4138=7428 := by core033_kernel_decide
def partRows63 : List R1CS.Row := actualRows4075++actualRows4076++actualRows4077++actualRows4078++actualRows4079++actualRows4080++actualRows4081++actualRows4082++actualRows4083++actualRows4084++actualRows4085++actualRows4086++actualRows4087++actualRows4088++actualRows4089++actualRows4090++actualRows4091++actualRows4092++actualRows4093++actualRows4094++actualRows4095++actualRows4096++actualRows4097++actualRows4098++actualRows4099++actualRows4100++actualRows4101++actualRows4102++actualRows4103++actualRows4104++actualRows4105++actualRows4106++actualRows4107++actualRows4108++actualRows4109++actualRows4110++actualRows4111++actualRows4112++actualRows4113++actualRows4114++actualRows4115++actualRows4116++actualRows4117++actualRows4118++actualRows4119++actualRows4120++actualRows4121++actualRows4122++actualRows4123++actualRows4124++actualRows4125++actualRows4126++actualRows4127++actualRows4128++actualRows4129++actualRows4130++actualRows4131++actualRows4132++actualRows4133++actualRows4134++actualRows4135++actualRows4136++actualRows4137++actualRows4138
def partOps63 : List WordIR.Op := [.bnot 4074,.band 4069 4075,.bxor 4064 4076,.shr 4077 31,.literal (BitVec.ofNat 32 1),.bxor 4078 4079,.bnot 4080,.literal (BitVec.ofNat 32 1),.badd 4081 4082,.band 4083 1106,.literal (BitVec.ofNat 32 2),.bxor 0 4085,.literal (BitVec.ofNat 32 0),.bnot 4087,.band 4086 4088,.literal (BitVec.ofNat 32 2),.bxor 0 4090,.literal (BitVec.ofNat 32 0),.bnot 4092,.bxor 4091 4093,.literal (BitVec.ofNat 32 2),.bxor 0 4095,.literal (BitVec.ofNat 32 0),.bnot 4097,.badd 4096 4098,.bnot 4099,.band 4094 4100,.bxor 4089 4101,.shr 4102 31,.literal (BitVec.ofNat 32 1),.bxor 4103 4104,.bnot 4105,.literal (BitVec.ofNat 32 1),.badd 4106 4107,.bnot 4108,.band 4109 914,.bxor 4084 4110,.literal (BitVec.ofNat 32 2),.bxor 0 4112,.literal (BitVec.ofNat 32 0),.bnot 4114,.band 4113 4115,.literal (BitVec.ofNat 32 2),.bxor 0 4117,.literal (BitVec.ofNat 32 0),.bnot 4119,.bxor 4118 4120,.literal (BitVec.ofNat 32 2),.bxor 0 4122,.literal (BitVec.ofNat 32 0),.bnot 4124,.badd 4123 4125,.bnot 4126,.band 4121 4127,.bxor 4116 4128,.shr 4129 31,.literal (BitVec.ofNat 32 1),.bxor 4130 4131,.bnot 4132,.literal (BitVec.ofNat 32 1),.badd 4133 4134,.band 4135 1109,.literal (BitVec.ofNat 32 2),.bxor 0 4137]
theorem partExact63 : partRows63=WordField.rows actualModulus 4075 partOps63 := by
  simp only [partRows63,partOps63,WordField.rows,rows4075,rows4076,rows4077,rows4078,rows4079,rows4080,rows4081,rows4082,rows4083,rows4084,rows4085,rows4086,rows4087,rows4088,rows4089,rows4090,rows4091,rows4092,rows4093,rows4094,rows4095,rows4096,rows4097,rows4098,rows4099,rows4100,rows4101,rows4102,rows4103,rows4104,rows4105,rows4106,rows4107,rows4108,rows4109,rows4110,rows4111,rows4112,rows4113,rows4114,rows4115,rows4116,rows4117,rows4118,rows4119,rows4120,rows4121,rows4122,rows4123,rows4124,rows4125,rows4126,rows4127,rows4128,rows4129,rows4130,rows4131,rows4132,rows4133,rows4134,rows4135,rows4136,rows4137,rows4138,List.append_assoc,List.append_nil]
theorem partLength63 : partOps63.length=64 := by decide
theorem partStats63 : partRows63.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows63=331560 := by
  simp only [partRows63,List.length_append,MatrixRowBlocks.rows_weight_append,stats4075.1,stats4075.2,stats4076.1,stats4076.2,stats4077.1,stats4077.2,stats4078.1,stats4078.2,stats4079.1,stats4079.2,stats4080.1,stats4080.2,stats4081.1,stats4081.2,stats4082.1,stats4082.2,stats4083.1,stats4083.2,stats4084.1,stats4084.2,stats4085.1,stats4085.2,stats4086.1,stats4086.2,stats4087.1,stats4087.2,stats4088.1,stats4088.2,stats4089.1,stats4089.2,stats4090.1,stats4090.2,stats4091.1,stats4091.2,stats4092.1,stats4092.2,stats4093.1,stats4093.2,stats4094.1,stats4094.2,stats4095.1,stats4095.2,stats4096.1,stats4096.2,stats4097.1,stats4097.2,stats4098.1,stats4098.2,stats4099.1,stats4099.2,stats4100.1,stats4100.2,stats4101.1,stats4101.2,stats4102.1,stats4102.2,stats4103.1,stats4103.2,stats4104.1,stats4104.2,stats4105.1,stats4105.2,stats4106.1,stats4106.2,stats4107.1,stats4107.2,stats4108.1,stats4108.2,stats4109.1,stats4109.2,stats4110.1,stats4110.2,stats4111.1,stats4111.2,stats4112.1,stats4112.2,stats4113.1,stats4113.2,stats4114.1,stats4114.2,stats4115.1,stats4115.2,stats4116.1,stats4116.2,stats4117.1,stats4117.2,stats4118.1,stats4118.2,stats4119.1,stats4119.2,stats4120.1,stats4120.2,stats4121.1,stats4121.2,stats4122.1,stats4122.2,stats4123.1,stats4123.2,stats4124.1,stats4124.2,stats4125.1,stats4125.2,stats4126.1,stats4126.2,stats4127.1,stats4127.2,stats4128.1,stats4128.2,stats4129.1,stats4129.2,stats4130.1,stats4130.2,stats4131.1,stats4131.2,stats4132.1,stats4132.2,stats4133.1,stats4133.2,stats4134.1,stats4134.2,stats4135.1,stats4135.2,stats4136.1,stats4136.2,stats4137.1,stats4137.2,stats4138.1,stats4138.2]
  decide
end FrameHashControllerCheckedRows
