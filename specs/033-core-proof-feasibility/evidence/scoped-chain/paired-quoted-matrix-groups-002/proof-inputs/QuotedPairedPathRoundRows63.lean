import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData64
import PairedPathRoundInstructionMatrixData65
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4128 : actualRows4128=WordField.canonicalRows actualModulus 4128 (.bxor 4126 4127) := by core033_kernel_decide
theorem stats4128 : actualRows4128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4128=7428 := by core033_kernel_decide
theorem rows4129 : actualRows4129=WordField.canonicalRows actualModulus 4129 (.bnot 4128) := by core033_kernel_decide
theorem stats4129 : actualRows4129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4129=6276 := by core033_kernel_decide
theorem rows4130 : actualRows4130=WordField.canonicalRows actualModulus 4130 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4130 : actualRows4130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4130=2892 := by core033_kernel_decide
theorem rows4131 : actualRows4131=WordField.canonicalRows actualModulus 4131 (.badd 4129 4130) := by core033_kernel_decide
theorem stats4131 : actualRows4131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4131=5388 := by core033_kernel_decide
theorem rows4132 : actualRows4132=WordField.canonicalRows actualModulus 4132 (.band 4131 2085) := by core033_kernel_decide
theorem stats4132 : actualRows4132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4132=5124 := by core033_kernel_decide
theorem rows4133 : actualRows4133=WordField.canonicalRows actualModulus 4133 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4133 : actualRows4133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4133=2892 := by core033_kernel_decide
theorem rows4134 : actualRows4134=WordField.canonicalRows actualModulus 4134 (.bxor 616 4133) := by core033_kernel_decide
theorem stats4134 : actualRows4134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4134=7428 := by core033_kernel_decide
theorem rows4135 : actualRows4135=WordField.canonicalRows actualModulus 4135 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4135 : actualRows4135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4135=2820 := by core033_kernel_decide
theorem rows4136 : actualRows4136=WordField.canonicalRows actualModulus 4136 (.bnot 4135) := by core033_kernel_decide
theorem stats4136 : actualRows4136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4136=6276 := by core033_kernel_decide
theorem rows4137 : actualRows4137=WordField.canonicalRows actualModulus 4137 (.band 4134 4136) := by core033_kernel_decide
theorem stats4137 : actualRows4137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4137=5124 := by core033_kernel_decide
theorem rows4138 : actualRows4138=WordField.canonicalRows actualModulus 4138 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4138 : actualRows4138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4138=2892 := by core033_kernel_decide
theorem rows4139 : actualRows4139=WordField.canonicalRows actualModulus 4139 (.bxor 616 4138) := by core033_kernel_decide
theorem stats4139 : actualRows4139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4139=7428 := by core033_kernel_decide
theorem rows4140 : actualRows4140=WordField.canonicalRows actualModulus 4140 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4140 : actualRows4140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4140=2820 := by core033_kernel_decide
theorem rows4141 : actualRows4141=WordField.canonicalRows actualModulus 4141 (.bnot 4140) := by core033_kernel_decide
theorem stats4141 : actualRows4141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4141=6276 := by core033_kernel_decide
theorem rows4142 : actualRows4142=WordField.canonicalRows actualModulus 4142 (.bxor 4139 4141) := by core033_kernel_decide
theorem stats4142 : actualRows4142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4142=7428 := by core033_kernel_decide
theorem rows4143 : actualRows4143=WordField.canonicalRows actualModulus 4143 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4143 : actualRows4143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4143=2892 := by core033_kernel_decide
theorem rows4144 : actualRows4144=WordField.canonicalRows actualModulus 4144 (.bxor 616 4143) := by core033_kernel_decide
theorem stats4144 : actualRows4144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4144=7428 := by core033_kernel_decide
theorem rows4145 : actualRows4145=WordField.canonicalRows actualModulus 4145 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4145 : actualRows4145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4145=2820 := by core033_kernel_decide
theorem rows4146 : actualRows4146=WordField.canonicalRows actualModulus 4146 (.bnot 4145) := by core033_kernel_decide
theorem stats4146 : actualRows4146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4146=6276 := by core033_kernel_decide
theorem rows4147 : actualRows4147=WordField.canonicalRows actualModulus 4147 (.badd 4144 4146) := by core033_kernel_decide
theorem stats4147 : actualRows4147.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4147=5388 := by core033_kernel_decide
theorem rows4148 : actualRows4148=WordField.canonicalRows actualModulus 4148 (.bnot 4147) := by core033_kernel_decide
theorem stats4148 : actualRows4148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4148=6276 := by core033_kernel_decide
theorem rows4149 : actualRows4149=WordField.canonicalRows actualModulus 4149 (.band 4142 4148) := by core033_kernel_decide
theorem stats4149 : actualRows4149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4149=5124 := by core033_kernel_decide
theorem rows4150 : actualRows4150=WordField.canonicalRows actualModulus 4150 (.bxor 4137 4149) := by core033_kernel_decide
theorem stats4150 : actualRows4150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4150=7428 := by core033_kernel_decide
theorem rows4151 : actualRows4151=WordField.canonicalRows actualModulus 4151 (.shr 4150 31) := by core033_kernel_decide
theorem stats4151 : actualRows4151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4151=2892 := by core033_kernel_decide
theorem rows4152 : actualRows4152=WordField.canonicalRows actualModulus 4152 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4152 : actualRows4152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4152=2892 := by core033_kernel_decide
theorem rows4153 : actualRows4153=WordField.canonicalRows actualModulus 4153 (.bxor 4151 4152) := by core033_kernel_decide
theorem stats4153 : actualRows4153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4153=7428 := by core033_kernel_decide
theorem rows4154 : actualRows4154=WordField.canonicalRows actualModulus 4154 (.bnot 4153) := by core033_kernel_decide
theorem stats4154 : actualRows4154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4154=6276 := by core033_kernel_decide
theorem rows4155 : actualRows4155=WordField.canonicalRows actualModulus 4155 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4155 : actualRows4155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4155=2892 := by core033_kernel_decide
theorem rows4156 : actualRows4156=WordField.canonicalRows actualModulus 4156 (.badd 4154 4155) := by core033_kernel_decide
theorem stats4156 : actualRows4156.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4156=5388 := by core033_kernel_decide
theorem rows4157 : actualRows4157=WordField.canonicalRows actualModulus 4157 (.bnot 4156) := by core033_kernel_decide
theorem stats4157 : actualRows4157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4157=6276 := by core033_kernel_decide
theorem rows4158 : actualRows4158=WordField.canonicalRows actualModulus 4158 (.band 4157 1893) := by core033_kernel_decide
theorem stats4158 : actualRows4158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4158=5124 := by core033_kernel_decide
theorem rows4159 : actualRows4159=WordField.canonicalRows actualModulus 4159 (.bxor 4132 4158) := by core033_kernel_decide
theorem stats4159 : actualRows4159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4159=7428 := by core033_kernel_decide
theorem rows4160 : actualRows4160=WordField.canonicalRows actualModulus 4160 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4160 : actualRows4160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4160=2892 := by core033_kernel_decide
theorem rows4161 : actualRows4161=WordField.canonicalRows actualModulus 4161 (.bxor 616 4160) := by core033_kernel_decide
theorem stats4161 : actualRows4161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4161=7428 := by core033_kernel_decide
theorem rows4162 : actualRows4162=WordField.canonicalRows actualModulus 4162 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4162 : actualRows4162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4162=2820 := by core033_kernel_decide
theorem rows4163 : actualRows4163=WordField.canonicalRows actualModulus 4163 (.bnot 4162) := by core033_kernel_decide
theorem stats4163 : actualRows4163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4163=6276 := by core033_kernel_decide
theorem rows4164 : actualRows4164=WordField.canonicalRows actualModulus 4164 (.band 4161 4163) := by core033_kernel_decide
theorem stats4164 : actualRows4164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4164=5124 := by core033_kernel_decide
theorem rows4165 : actualRows4165=WordField.canonicalRows actualModulus 4165 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4165 : actualRows4165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4165=2892 := by core033_kernel_decide
theorem rows4166 : actualRows4166=WordField.canonicalRows actualModulus 4166 (.bxor 616 4165) := by core033_kernel_decide
theorem stats4166 : actualRows4166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4166=7428 := by core033_kernel_decide
theorem rows4167 : actualRows4167=WordField.canonicalRows actualModulus 4167 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4167 : actualRows4167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4167=2820 := by core033_kernel_decide
theorem rows4168 : actualRows4168=WordField.canonicalRows actualModulus 4168 (.bnot 4167) := by core033_kernel_decide
theorem stats4168 : actualRows4168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4168=6276 := by core033_kernel_decide
theorem rows4169 : actualRows4169=WordField.canonicalRows actualModulus 4169 (.bxor 4166 4168) := by core033_kernel_decide
theorem stats4169 : actualRows4169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4169=7428 := by core033_kernel_decide
theorem rows4170 : actualRows4170=WordField.canonicalRows actualModulus 4170 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4170 : actualRows4170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4170=2892 := by core033_kernel_decide
theorem rows4171 : actualRows4171=WordField.canonicalRows actualModulus 4171 (.bxor 616 4170) := by core033_kernel_decide
theorem stats4171 : actualRows4171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4171=7428 := by core033_kernel_decide
theorem rows4172 : actualRows4172=WordField.canonicalRows actualModulus 4172 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4172 : actualRows4172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4172=2820 := by core033_kernel_decide
theorem rows4173 : actualRows4173=WordField.canonicalRows actualModulus 4173 (.bnot 4172) := by core033_kernel_decide
theorem stats4173 : actualRows4173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4173=6276 := by core033_kernel_decide
theorem rows4174 : actualRows4174=WordField.canonicalRows actualModulus 4174 (.badd 4171 4173) := by core033_kernel_decide
theorem stats4174 : actualRows4174.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4174=5388 := by core033_kernel_decide
theorem rows4175 : actualRows4175=WordField.canonicalRows actualModulus 4175 (.bnot 4174) := by core033_kernel_decide
theorem stats4175 : actualRows4175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4175=6276 := by core033_kernel_decide
theorem rows4176 : actualRows4176=WordField.canonicalRows actualModulus 4176 (.band 4169 4175) := by core033_kernel_decide
theorem stats4176 : actualRows4176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4176=5124 := by core033_kernel_decide
theorem rows4177 : actualRows4177=WordField.canonicalRows actualModulus 4177 (.bxor 4164 4176) := by core033_kernel_decide
theorem stats4177 : actualRows4177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4177=7428 := by core033_kernel_decide
theorem rows4178 : actualRows4178=WordField.canonicalRows actualModulus 4178 (.shr 4177 31) := by core033_kernel_decide
theorem stats4178 : actualRows4178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4178=2892 := by core033_kernel_decide
theorem rows4179 : actualRows4179=WordField.canonicalRows actualModulus 4179 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4179 : actualRows4179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4179=2892 := by core033_kernel_decide
theorem rows4180 : actualRows4180=WordField.canonicalRows actualModulus 4180 (.bxor 4178 4179) := by core033_kernel_decide
theorem stats4180 : actualRows4180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4180=7428 := by core033_kernel_decide
theorem rows4181 : actualRows4181=WordField.canonicalRows actualModulus 4181 (.bnot 4180) := by core033_kernel_decide
theorem stats4181 : actualRows4181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4181=6276 := by core033_kernel_decide
theorem rows4182 : actualRows4182=WordField.canonicalRows actualModulus 4182 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4182 : actualRows4182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4182=2892 := by core033_kernel_decide
theorem rows4183 : actualRows4183=WordField.canonicalRows actualModulus 4183 (.badd 4181 4182) := by core033_kernel_decide
theorem stats4183 : actualRows4183.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4183=5388 := by core033_kernel_decide
theorem rows4184 : actualRows4184=WordField.canonicalRows actualModulus 4184 (.band 4183 2088) := by core033_kernel_decide
theorem stats4184 : actualRows4184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4184=5124 := by core033_kernel_decide
theorem rows4185 : actualRows4185=WordField.canonicalRows actualModulus 4185 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4185 : actualRows4185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4185=2892 := by core033_kernel_decide
theorem rows4186 : actualRows4186=WordField.canonicalRows actualModulus 4186 (.bxor 616 4185) := by core033_kernel_decide
theorem stats4186 : actualRows4186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4186=7428 := by core033_kernel_decide
theorem rows4187 : actualRows4187=WordField.canonicalRows actualModulus 4187 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4187 : actualRows4187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4187=2820 := by core033_kernel_decide
theorem rows4188 : actualRows4188=WordField.canonicalRows actualModulus 4188 (.bnot 4187) := by core033_kernel_decide
theorem stats4188 : actualRows4188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4188=6276 := by core033_kernel_decide
theorem rows4189 : actualRows4189=WordField.canonicalRows actualModulus 4189 (.band 4186 4188) := by core033_kernel_decide
theorem stats4189 : actualRows4189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4189=5124 := by core033_kernel_decide
theorem rows4190 : actualRows4190=WordField.canonicalRows actualModulus 4190 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4190 : actualRows4190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4190=2892 := by core033_kernel_decide
theorem rows4191 : actualRows4191=WordField.canonicalRows actualModulus 4191 (.bxor 616 4190) := by core033_kernel_decide
theorem stats4191 : actualRows4191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4191=7428 := by core033_kernel_decide
def partRows63 : List R1CS.Row := actualRows4128++actualRows4129++actualRows4130++actualRows4131++actualRows4132++actualRows4133++actualRows4134++actualRows4135++actualRows4136++actualRows4137++actualRows4138++actualRows4139++actualRows4140++actualRows4141++actualRows4142++actualRows4143++actualRows4144++actualRows4145++actualRows4146++actualRows4147++actualRows4148++actualRows4149++actualRows4150++actualRows4151++actualRows4152++actualRows4153++actualRows4154++actualRows4155++actualRows4156++actualRows4157++actualRows4158++actualRows4159++actualRows4160++actualRows4161++actualRows4162++actualRows4163++actualRows4164++actualRows4165++actualRows4166++actualRows4167++actualRows4168++actualRows4169++actualRows4170++actualRows4171++actualRows4172++actualRows4173++actualRows4174++actualRows4175++actualRows4176++actualRows4177++actualRows4178++actualRows4179++actualRows4180++actualRows4181++actualRows4182++actualRows4183++actualRows4184++actualRows4185++actualRows4186++actualRows4187++actualRows4188++actualRows4189++actualRows4190++actualRows4191
def partOps63 : List WordIR.Op := [.bxor 4126 4127,.bnot 4128,.literal (BitVec.ofNat 32 1),.badd 4129 4130,.band 4131 2085,.literal (BitVec.ofNat 32 2),.bxor 616 4133,.literal (BitVec.ofNat 32 0),.bnot 4135,.band 4134 4136,.literal (BitVec.ofNat 32 2),.bxor 616 4138,.literal (BitVec.ofNat 32 0),.bnot 4140,.bxor 4139 4141,.literal (BitVec.ofNat 32 2),.bxor 616 4143,.literal (BitVec.ofNat 32 0),.bnot 4145,.badd 4144 4146,.bnot 4147,.band 4142 4148,.bxor 4137 4149,.shr 4150 31,.literal (BitVec.ofNat 32 1),.bxor 4151 4152,.bnot 4153,.literal (BitVec.ofNat 32 1),.badd 4154 4155,.bnot 4156,.band 4157 1893,.bxor 4132 4158,.literal (BitVec.ofNat 32 2),.bxor 616 4160,.literal (BitVec.ofNat 32 0),.bnot 4162,.band 4161 4163,.literal (BitVec.ofNat 32 2),.bxor 616 4165,.literal (BitVec.ofNat 32 0),.bnot 4167,.bxor 4166 4168,.literal (BitVec.ofNat 32 2),.bxor 616 4170,.literal (BitVec.ofNat 32 0),.bnot 4172,.badd 4171 4173,.bnot 4174,.band 4169 4175,.bxor 4164 4176,.shr 4177 31,.literal (BitVec.ofNat 32 1),.bxor 4178 4179,.bnot 4180,.literal (BitVec.ofNat 32 1),.badd 4181 4182,.band 4183 2088,.literal (BitVec.ofNat 32 2),.bxor 616 4185,.literal (BitVec.ofNat 32 0),.bnot 4187,.band 4186 4188,.literal (BitVec.ofNat 32 2),.bxor 616 4190]
theorem partExact63 : partRows63=WordField.rows actualModulus 4128 partOps63 := by
  simp only [partRows63,partOps63,WordField.rows,rows4128,rows4129,rows4130,rows4131,rows4132,rows4133,rows4134,rows4135,rows4136,rows4137,rows4138,rows4139,rows4140,rows4141,rows4142,rows4143,rows4144,rows4145,rows4146,rows4147,rows4148,rows4149,rows4150,rows4151,rows4152,rows4153,rows4154,rows4155,rows4156,rows4157,rows4158,rows4159,rows4160,rows4161,rows4162,rows4163,rows4164,rows4165,rows4166,rows4167,rows4168,rows4169,rows4170,rows4171,rows4172,rows4173,rows4174,rows4175,rows4176,rows4177,rows4178,rows4179,rows4180,rows4181,rows4182,rows4183,rows4184,rows4185,rows4186,rows4187,rows4188,rows4189,rows4190,rows4191,List.append_assoc,List.append_nil]
theorem partLength63 : partOps63.length=64 := by decide
theorem partStats63 : partRows63.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows63=331488 := by
  simp only [partRows63,List.length_append,MatrixRowBlocks.rows_weight_append,stats4128.1,stats4128.2,stats4129.1,stats4129.2,stats4130.1,stats4130.2,stats4131.1,stats4131.2,stats4132.1,stats4132.2,stats4133.1,stats4133.2,stats4134.1,stats4134.2,stats4135.1,stats4135.2,stats4136.1,stats4136.2,stats4137.1,stats4137.2,stats4138.1,stats4138.2,stats4139.1,stats4139.2,stats4140.1,stats4140.2,stats4141.1,stats4141.2,stats4142.1,stats4142.2,stats4143.1,stats4143.2,stats4144.1,stats4144.2,stats4145.1,stats4145.2,stats4146.1,stats4146.2,stats4147.1,stats4147.2,stats4148.1,stats4148.2,stats4149.1,stats4149.2,stats4150.1,stats4150.2,stats4151.1,stats4151.2,stats4152.1,stats4152.2,stats4153.1,stats4153.2,stats4154.1,stats4154.2,stats4155.1,stats4155.2,stats4156.1,stats4156.2,stats4157.1,stats4157.2,stats4158.1,stats4158.2,stats4159.1,stats4159.2,stats4160.1,stats4160.2,stats4161.1,stats4161.2,stats4162.1,stats4162.2,stats4163.1,stats4163.2,stats4164.1,stats4164.2,stats4165.1,stats4165.2,stats4166.1,stats4166.2,stats4167.1,stats4167.2,stats4168.1,stats4168.2,stats4169.1,stats4169.2,stats4170.1,stats4170.2,stats4171.1,stats4171.2,stats4172.1,stats4172.2,stats4173.1,stats4173.2,stats4174.1,stats4174.2,stats4175.1,stats4175.2,stats4176.1,stats4176.2,stats4177.1,stats4177.2,stats4178.1,stats4178.2,stats4179.1,stats4179.2,stats4180.1,stats4180.2,stats4181.1,stats4181.2,stats4182.1,stats4182.2,stats4183.1,stats4183.2,stats4184.1,stats4184.2,stats4185.1,stats4185.2,stats4186.1,stats4186.2,stats4187.1,stats4187.2,stats4188.1,stats4188.2,stats4189.1,stats4189.2,stats4190.1,stats4190.2,stats4191.1,stats4191.2]
  decide
end QuotedPairedPathRoundCheckedRows
