import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData63
import AuthenticatedBranchRoundInstructionMatrixData64
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4086 : actualRows4086=WordField.canonicalRows actualModulus 4086 (.badd 4084 4085) := by core033_kernel_decide
theorem stats4086 : actualRows4086.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4086=5388 := by core033_kernel_decide
theorem rows4087 : actualRows4087=WordField.canonicalRows actualModulus 4087 (.band 4086 2726) := by core033_kernel_decide
theorem stats4087 : actualRows4087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4087=5124 := by core033_kernel_decide
theorem rows4088 : actualRows4088=WordField.canonicalRows actualModulus 4088 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4088 : actualRows4088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4088=2892 := by core033_kernel_decide
theorem rows4089 : actualRows4089=WordField.canonicalRows actualModulus 4089 (.bxor 1299 4088) := by core033_kernel_decide
theorem stats4089 : actualRows4089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4089=7428 := by core033_kernel_decide
theorem rows4090 : actualRows4090=WordField.canonicalRows actualModulus 4090 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4090 : actualRows4090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4090=2820 := by core033_kernel_decide
theorem rows4091 : actualRows4091=WordField.canonicalRows actualModulus 4091 (.bnot 4090) := by core033_kernel_decide
theorem stats4091 : actualRows4091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4091=6276 := by core033_kernel_decide
theorem rows4092 : actualRows4092=WordField.canonicalRows actualModulus 4092 (.band 4089 4091) := by core033_kernel_decide
theorem stats4092 : actualRows4092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4092=5124 := by core033_kernel_decide
theorem rows4093 : actualRows4093=WordField.canonicalRows actualModulus 4093 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4093 : actualRows4093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4093=2892 := by core033_kernel_decide
theorem rows4094 : actualRows4094=WordField.canonicalRows actualModulus 4094 (.bxor 1299 4093) := by core033_kernel_decide
theorem stats4094 : actualRows4094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4094=7428 := by core033_kernel_decide
theorem rows4095 : actualRows4095=WordField.canonicalRows actualModulus 4095 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4095 : actualRows4095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4095=2820 := by core033_kernel_decide
theorem rows4096 : actualRows4096=WordField.canonicalRows actualModulus 4096 (.bnot 4095) := by core033_kernel_decide
theorem stats4096 : actualRows4096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4096=6276 := by core033_kernel_decide
theorem rows4097 : actualRows4097=WordField.canonicalRows actualModulus 4097 (.bxor 4094 4096) := by core033_kernel_decide
theorem stats4097 : actualRows4097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4097=7428 := by core033_kernel_decide
theorem rows4098 : actualRows4098=WordField.canonicalRows actualModulus 4098 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4098 : actualRows4098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4098=2892 := by core033_kernel_decide
theorem rows4099 : actualRows4099=WordField.canonicalRows actualModulus 4099 (.bxor 1299 4098) := by core033_kernel_decide
theorem stats4099 : actualRows4099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4099=7428 := by core033_kernel_decide
theorem rows4100 : actualRows4100=WordField.canonicalRows actualModulus 4100 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4100 : actualRows4100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4100=2820 := by core033_kernel_decide
theorem rows4101 : actualRows4101=WordField.canonicalRows actualModulus 4101 (.bnot 4100) := by core033_kernel_decide
theorem stats4101 : actualRows4101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4101=6276 := by core033_kernel_decide
theorem rows4102 : actualRows4102=WordField.canonicalRows actualModulus 4102 (.badd 4099 4101) := by core033_kernel_decide
theorem stats4102 : actualRows4102.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4102=5388 := by core033_kernel_decide
theorem rows4103 : actualRows4103=WordField.canonicalRows actualModulus 4103 (.bnot 4102) := by core033_kernel_decide
theorem stats4103 : actualRows4103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4103=6276 := by core033_kernel_decide
theorem rows4104 : actualRows4104=WordField.canonicalRows actualModulus 4104 (.band 4097 4103) := by core033_kernel_decide
theorem stats4104 : actualRows4104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4104=5124 := by core033_kernel_decide
theorem rows4105 : actualRows4105=WordField.canonicalRows actualModulus 4105 (.bxor 4092 4104) := by core033_kernel_decide
theorem stats4105 : actualRows4105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4105=7428 := by core033_kernel_decide
theorem rows4106 : actualRows4106=WordField.canonicalRows actualModulus 4106 (.shr 4105 31) := by core033_kernel_decide
theorem stats4106 : actualRows4106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4106=2892 := by core033_kernel_decide
theorem rows4107 : actualRows4107=WordField.canonicalRows actualModulus 4107 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4107 : actualRows4107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4107=2892 := by core033_kernel_decide
theorem rows4108 : actualRows4108=WordField.canonicalRows actualModulus 4108 (.bxor 4106 4107) := by core033_kernel_decide
theorem stats4108 : actualRows4108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4108=7428 := by core033_kernel_decide
theorem rows4109 : actualRows4109=WordField.canonicalRows actualModulus 4109 (.bnot 4108) := by core033_kernel_decide
theorem stats4109 : actualRows4109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4109=6276 := by core033_kernel_decide
theorem rows4110 : actualRows4110=WordField.canonicalRows actualModulus 4110 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4110 : actualRows4110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4110=2892 := by core033_kernel_decide
theorem rows4111 : actualRows4111=WordField.canonicalRows actualModulus 4111 (.badd 4109 4110) := by core033_kernel_decide
theorem stats4111 : actualRows4111.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4111=5388 := by core033_kernel_decide
theorem rows4112 : actualRows4112=WordField.canonicalRows actualModulus 4112 (.bnot 4111) := by core033_kernel_decide
theorem stats4112 : actualRows4112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4112=6276 := by core033_kernel_decide
theorem rows4113 : actualRows4113=WordField.canonicalRows actualModulus 4113 (.band 4112 2556) := by core033_kernel_decide
theorem stats4113 : actualRows4113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4113=5124 := by core033_kernel_decide
theorem rows4114 : actualRows4114=WordField.canonicalRows actualModulus 4114 (.bxor 4087 4113) := by core033_kernel_decide
theorem stats4114 : actualRows4114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4114=7428 := by core033_kernel_decide
theorem rows4115 : actualRows4115=WordField.canonicalRows actualModulus 4115 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4115 : actualRows4115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4115=2892 := by core033_kernel_decide
theorem rows4116 : actualRows4116=WordField.canonicalRows actualModulus 4116 (.bxor 1299 4115) := by core033_kernel_decide
theorem stats4116 : actualRows4116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4116=7428 := by core033_kernel_decide
theorem rows4117 : actualRows4117=WordField.canonicalRows actualModulus 4117 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4117 : actualRows4117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4117=2820 := by core033_kernel_decide
theorem rows4118 : actualRows4118=WordField.canonicalRows actualModulus 4118 (.bnot 4117) := by core033_kernel_decide
theorem stats4118 : actualRows4118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4118=6276 := by core033_kernel_decide
theorem rows4119 : actualRows4119=WordField.canonicalRows actualModulus 4119 (.band 4116 4118) := by core033_kernel_decide
theorem stats4119 : actualRows4119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4119=5124 := by core033_kernel_decide
theorem rows4120 : actualRows4120=WordField.canonicalRows actualModulus 4120 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4120 : actualRows4120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4120=2892 := by core033_kernel_decide
theorem rows4121 : actualRows4121=WordField.canonicalRows actualModulus 4121 (.bxor 1299 4120) := by core033_kernel_decide
theorem stats4121 : actualRows4121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4121=7428 := by core033_kernel_decide
theorem rows4122 : actualRows4122=WordField.canonicalRows actualModulus 4122 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4122 : actualRows4122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4122=2820 := by core033_kernel_decide
theorem rows4123 : actualRows4123=WordField.canonicalRows actualModulus 4123 (.bnot 4122) := by core033_kernel_decide
theorem stats4123 : actualRows4123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4123=6276 := by core033_kernel_decide
theorem rows4124 : actualRows4124=WordField.canonicalRows actualModulus 4124 (.bxor 4121 4123) := by core033_kernel_decide
theorem stats4124 : actualRows4124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4124=7428 := by core033_kernel_decide
theorem rows4125 : actualRows4125=WordField.canonicalRows actualModulus 4125 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4125 : actualRows4125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4125=2892 := by core033_kernel_decide
theorem rows4126 : actualRows4126=WordField.canonicalRows actualModulus 4126 (.bxor 1299 4125) := by core033_kernel_decide
theorem stats4126 : actualRows4126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4126=7428 := by core033_kernel_decide
theorem rows4127 : actualRows4127=WordField.canonicalRows actualModulus 4127 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4127 : actualRows4127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4127=2820 := by core033_kernel_decide
theorem rows4128 : actualRows4128=WordField.canonicalRows actualModulus 4128 (.bnot 4127) := by core033_kernel_decide
theorem stats4128 : actualRows4128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4128=6276 := by core033_kernel_decide
theorem rows4129 : actualRows4129=WordField.canonicalRows actualModulus 4129 (.badd 4126 4128) := by core033_kernel_decide
theorem stats4129 : actualRows4129.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4129=5388 := by core033_kernel_decide
theorem rows4130 : actualRows4130=WordField.canonicalRows actualModulus 4130 (.bnot 4129) := by core033_kernel_decide
theorem stats4130 : actualRows4130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4130=6276 := by core033_kernel_decide
theorem rows4131 : actualRows4131=WordField.canonicalRows actualModulus 4131 (.band 4124 4130) := by core033_kernel_decide
theorem stats4131 : actualRows4131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4131=5124 := by core033_kernel_decide
theorem rows4132 : actualRows4132=WordField.canonicalRows actualModulus 4132 (.bxor 4119 4131) := by core033_kernel_decide
theorem stats4132 : actualRows4132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4132=7428 := by core033_kernel_decide
theorem rows4133 : actualRows4133=WordField.canonicalRows actualModulus 4133 (.shr 4132 31) := by core033_kernel_decide
theorem stats4133 : actualRows4133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4133=2892 := by core033_kernel_decide
theorem rows4134 : actualRows4134=WordField.canonicalRows actualModulus 4134 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4134 : actualRows4134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4134=2892 := by core033_kernel_decide
theorem rows4135 : actualRows4135=WordField.canonicalRows actualModulus 4135 (.bxor 4133 4134) := by core033_kernel_decide
theorem stats4135 : actualRows4135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4135=7428 := by core033_kernel_decide
theorem rows4136 : actualRows4136=WordField.canonicalRows actualModulus 4136 (.bnot 4135) := by core033_kernel_decide
theorem stats4136 : actualRows4136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4136=6276 := by core033_kernel_decide
theorem rows4137 : actualRows4137=WordField.canonicalRows actualModulus 4137 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4137 : actualRows4137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4137=2892 := by core033_kernel_decide
theorem rows4138 : actualRows4138=WordField.canonicalRows actualModulus 4138 (.badd 4136 4137) := by core033_kernel_decide
theorem stats4138 : actualRows4138.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4138=5388 := by core033_kernel_decide
theorem rows4139 : actualRows4139=WordField.canonicalRows actualModulus 4139 (.band 4138 2729) := by core033_kernel_decide
theorem stats4139 : actualRows4139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4139=5124 := by core033_kernel_decide
theorem rows4140 : actualRows4140=WordField.canonicalRows actualModulus 4140 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4140 : actualRows4140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4140=2892 := by core033_kernel_decide
theorem rows4141 : actualRows4141=WordField.canonicalRows actualModulus 4141 (.bxor 1299 4140) := by core033_kernel_decide
theorem stats4141 : actualRows4141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4141=7428 := by core033_kernel_decide
theorem rows4142 : actualRows4142=WordField.canonicalRows actualModulus 4142 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4142 : actualRows4142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4142=2820 := by core033_kernel_decide
theorem rows4143 : actualRows4143=WordField.canonicalRows actualModulus 4143 (.bnot 4142) := by core033_kernel_decide
theorem stats4143 : actualRows4143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4143=6276 := by core033_kernel_decide
theorem rows4144 : actualRows4144=WordField.canonicalRows actualModulus 4144 (.band 4141 4143) := by core033_kernel_decide
theorem stats4144 : actualRows4144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4144=5124 := by core033_kernel_decide
theorem rows4145 : actualRows4145=WordField.canonicalRows actualModulus 4145 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4145 : actualRows4145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4145=2892 := by core033_kernel_decide
theorem rows4146 : actualRows4146=WordField.canonicalRows actualModulus 4146 (.bxor 1299 4145) := by core033_kernel_decide
theorem stats4146 : actualRows4146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4146=7428 := by core033_kernel_decide
theorem rows4147 : actualRows4147=WordField.canonicalRows actualModulus 4147 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4147 : actualRows4147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4147=2820 := by core033_kernel_decide
theorem rows4148 : actualRows4148=WordField.canonicalRows actualModulus 4148 (.bnot 4147) := by core033_kernel_decide
theorem stats4148 : actualRows4148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4148=6276 := by core033_kernel_decide
theorem rows4149 : actualRows4149=WordField.canonicalRows actualModulus 4149 (.bxor 4146 4148) := by core033_kernel_decide
theorem stats4149 : actualRows4149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4149=7428 := by core033_kernel_decide
def partRows62 : List R1CS.Row := actualRows4086++actualRows4087++actualRows4088++actualRows4089++actualRows4090++actualRows4091++actualRows4092++actualRows4093++actualRows4094++actualRows4095++actualRows4096++actualRows4097++actualRows4098++actualRows4099++actualRows4100++actualRows4101++actualRows4102++actualRows4103++actualRows4104++actualRows4105++actualRows4106++actualRows4107++actualRows4108++actualRows4109++actualRows4110++actualRows4111++actualRows4112++actualRows4113++actualRows4114++actualRows4115++actualRows4116++actualRows4117++actualRows4118++actualRows4119++actualRows4120++actualRows4121++actualRows4122++actualRows4123++actualRows4124++actualRows4125++actualRows4126++actualRows4127++actualRows4128++actualRows4129++actualRows4130++actualRows4131++actualRows4132++actualRows4133++actualRows4134++actualRows4135++actualRows4136++actualRows4137++actualRows4138++actualRows4139++actualRows4140++actualRows4141++actualRows4142++actualRows4143++actualRows4144++actualRows4145++actualRows4146++actualRows4147++actualRows4148++actualRows4149
def partOps62 : List WordIR.Op := [.badd 4084 4085,.band 4086 2726,.literal (BitVec.ofNat 32 2),.bxor 1299 4088,.literal (BitVec.ofNat 32 0),.bnot 4090,.band 4089 4091,.literal (BitVec.ofNat 32 2),.bxor 1299 4093,.literal (BitVec.ofNat 32 0),.bnot 4095,.bxor 4094 4096,.literal (BitVec.ofNat 32 2),.bxor 1299 4098,.literal (BitVec.ofNat 32 0),.bnot 4100,.badd 4099 4101,.bnot 4102,.band 4097 4103,.bxor 4092 4104,.shr 4105 31,.literal (BitVec.ofNat 32 1),.bxor 4106 4107,.bnot 4108,.literal (BitVec.ofNat 32 1),.badd 4109 4110,.bnot 4111,.band 4112 2556,.bxor 4087 4113,.literal (BitVec.ofNat 32 2),.bxor 1299 4115,.literal (BitVec.ofNat 32 0),.bnot 4117,.band 4116 4118,.literal (BitVec.ofNat 32 2),.bxor 1299 4120,.literal (BitVec.ofNat 32 0),.bnot 4122,.bxor 4121 4123,.literal (BitVec.ofNat 32 2),.bxor 1299 4125,.literal (BitVec.ofNat 32 0),.bnot 4127,.badd 4126 4128,.bnot 4129,.band 4124 4130,.bxor 4119 4131,.shr 4132 31,.literal (BitVec.ofNat 32 1),.bxor 4133 4134,.bnot 4135,.literal (BitVec.ofNat 32 1),.badd 4136 4137,.band 4138 2729,.literal (BitVec.ofNat 32 2),.bxor 1299 4140,.literal (BitVec.ofNat 32 0),.bnot 4142,.band 4141 4143,.literal (BitVec.ofNat 32 2),.bxor 1299 4145,.literal (BitVec.ofNat 32 0),.bnot 4147,.bxor 4146 4148]
theorem partExact62 : partRows62=WordField.rows actualModulus 4086 partOps62 := by
  simp only [partRows62,partOps62,WordField.rows,rows4086,rows4087,rows4088,rows4089,rows4090,rows4091,rows4092,rows4093,rows4094,rows4095,rows4096,rows4097,rows4098,rows4099,rows4100,rows4101,rows4102,rows4103,rows4104,rows4105,rows4106,rows4107,rows4108,rows4109,rows4110,rows4111,rows4112,rows4113,rows4114,rows4115,rows4116,rows4117,rows4118,rows4119,rows4120,rows4121,rows4122,rows4123,rows4124,rows4125,rows4126,rows4127,rows4128,rows4129,rows4130,rows4131,rows4132,rows4133,rows4134,rows4135,rows4136,rows4137,rows4138,rows4139,rows4140,rows4141,rows4142,rows4143,rows4144,rows4145,rows4146,rows4147,rows4148,rows4149,List.append_assoc,List.append_nil]
theorem partLength62 : partOps62.length=64 := by decide
theorem partStats62 : partRows62.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows62=331416 := by
  simp only [partRows62,List.length_append,MatrixRowBlocks.rows_weight_append,stats4086.1,stats4086.2,stats4087.1,stats4087.2,stats4088.1,stats4088.2,stats4089.1,stats4089.2,stats4090.1,stats4090.2,stats4091.1,stats4091.2,stats4092.1,stats4092.2,stats4093.1,stats4093.2,stats4094.1,stats4094.2,stats4095.1,stats4095.2,stats4096.1,stats4096.2,stats4097.1,stats4097.2,stats4098.1,stats4098.2,stats4099.1,stats4099.2,stats4100.1,stats4100.2,stats4101.1,stats4101.2,stats4102.1,stats4102.2,stats4103.1,stats4103.2,stats4104.1,stats4104.2,stats4105.1,stats4105.2,stats4106.1,stats4106.2,stats4107.1,stats4107.2,stats4108.1,stats4108.2,stats4109.1,stats4109.2,stats4110.1,stats4110.2,stats4111.1,stats4111.2,stats4112.1,stats4112.2,stats4113.1,stats4113.2,stats4114.1,stats4114.2,stats4115.1,stats4115.2,stats4116.1,stats4116.2,stats4117.1,stats4117.2,stats4118.1,stats4118.2,stats4119.1,stats4119.2,stats4120.1,stats4120.2,stats4121.1,stats4121.2,stats4122.1,stats4122.2,stats4123.1,stats4123.2,stats4124.1,stats4124.2,stats4125.1,stats4125.2,stats4126.1,stats4126.2,stats4127.1,stats4127.2,stats4128.1,stats4128.2,stats4129.1,stats4129.2,stats4130.1,stats4130.2,stats4131.1,stats4131.2,stats4132.1,stats4132.2,stats4133.1,stats4133.2,stats4134.1,stats4134.2,stats4135.1,stats4135.2,stats4136.1,stats4136.2,stats4137.1,stats4137.2,stats4138.1,stats4138.2,stats4139.1,stats4139.2,stats4140.1,stats4140.2,stats4141.1,stats4141.2,stats4142.1,stats4142.2,stats4143.1,stats4143.2,stats4144.1,stats4144.2,stats4145.1,stats4145.2,stats4146.1,stats4146.2,stats4147.1,stats4147.2,stats4148.1,stats4148.2,stats4149.1,stats4149.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
