import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData64
import FrameHashControllerInstructionMatrixData65
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4139 : actualRows4139=WordField.canonicalRows actualModulus 4139 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4139 : actualRows4139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4139=2820 := by core033_kernel_decide
theorem rows4140 : actualRows4140=WordField.canonicalRows actualModulus 4140 (.bnot 4139) := by core033_kernel_decide
theorem stats4140 : actualRows4140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4140=6276 := by core033_kernel_decide
theorem rows4141 : actualRows4141=WordField.canonicalRows actualModulus 4141 (.band 4138 4140) := by core033_kernel_decide
theorem stats4141 : actualRows4141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4141=5124 := by core033_kernel_decide
theorem rows4142 : actualRows4142=WordField.canonicalRows actualModulus 4142 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4142 : actualRows4142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4142=2892 := by core033_kernel_decide
theorem rows4143 : actualRows4143=WordField.canonicalRows actualModulus 4143 (.bxor 0 4142) := by core033_kernel_decide
theorem stats4143 : actualRows4143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4143=7428 := by core033_kernel_decide
theorem rows4144 : actualRows4144=WordField.canonicalRows actualModulus 4144 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4144 : actualRows4144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4144=2820 := by core033_kernel_decide
theorem rows4145 : actualRows4145=WordField.canonicalRows actualModulus 4145 (.bnot 4144) := by core033_kernel_decide
theorem stats4145 : actualRows4145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4145=6276 := by core033_kernel_decide
theorem rows4146 : actualRows4146=WordField.canonicalRows actualModulus 4146 (.bxor 4143 4145) := by core033_kernel_decide
theorem stats4146 : actualRows4146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4146=7428 := by core033_kernel_decide
theorem rows4147 : actualRows4147=WordField.canonicalRows actualModulus 4147 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4147 : actualRows4147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4147=2892 := by core033_kernel_decide
theorem rows4148 : actualRows4148=WordField.canonicalRows actualModulus 4148 (.bxor 0 4147) := by core033_kernel_decide
theorem stats4148 : actualRows4148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4148=7428 := by core033_kernel_decide
theorem rows4149 : actualRows4149=WordField.canonicalRows actualModulus 4149 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4149 : actualRows4149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4149=2820 := by core033_kernel_decide
theorem rows4150 : actualRows4150=WordField.canonicalRows actualModulus 4150 (.bnot 4149) := by core033_kernel_decide
theorem stats4150 : actualRows4150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4150=6276 := by core033_kernel_decide
theorem rows4151 : actualRows4151=WordField.canonicalRows actualModulus 4151 (.badd 4148 4150) := by core033_kernel_decide
theorem stats4151 : actualRows4151.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4151=5388 := by core033_kernel_decide
theorem rows4152 : actualRows4152=WordField.canonicalRows actualModulus 4152 (.bnot 4151) := by core033_kernel_decide
theorem stats4152 : actualRows4152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4152=6276 := by core033_kernel_decide
theorem rows4153 : actualRows4153=WordField.canonicalRows actualModulus 4153 (.band 4146 4152) := by core033_kernel_decide
theorem stats4153 : actualRows4153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4153=5124 := by core033_kernel_decide
theorem rows4154 : actualRows4154=WordField.canonicalRows actualModulus 4154 (.bxor 4141 4153) := by core033_kernel_decide
theorem stats4154 : actualRows4154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4154=7428 := by core033_kernel_decide
theorem rows4155 : actualRows4155=WordField.canonicalRows actualModulus 4155 (.shr 4154 31) := by core033_kernel_decide
theorem stats4155 : actualRows4155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4155=2892 := by core033_kernel_decide
theorem rows4156 : actualRows4156=WordField.canonicalRows actualModulus 4156 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4156 : actualRows4156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4156=2892 := by core033_kernel_decide
theorem rows4157 : actualRows4157=WordField.canonicalRows actualModulus 4157 (.bxor 4155 4156) := by core033_kernel_decide
theorem stats4157 : actualRows4157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4157=7428 := by core033_kernel_decide
theorem rows4158 : actualRows4158=WordField.canonicalRows actualModulus 4158 (.bnot 4157) := by core033_kernel_decide
theorem stats4158 : actualRows4158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4158=6276 := by core033_kernel_decide
theorem rows4159 : actualRows4159=WordField.canonicalRows actualModulus 4159 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4159 : actualRows4159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4159=2892 := by core033_kernel_decide
theorem rows4160 : actualRows4160=WordField.canonicalRows actualModulus 4160 (.badd 4158 4159) := by core033_kernel_decide
theorem stats4160 : actualRows4160.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4160=5388 := by core033_kernel_decide
theorem rows4161 : actualRows4161=WordField.canonicalRows actualModulus 4161 (.bnot 4160) := by core033_kernel_decide
theorem stats4161 : actualRows4161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4161=6276 := by core033_kernel_decide
theorem rows4162 : actualRows4162=WordField.canonicalRows actualModulus 4162 (.band 4161 917) := by core033_kernel_decide
theorem stats4162 : actualRows4162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4162=5124 := by core033_kernel_decide
theorem rows4163 : actualRows4163=WordField.canonicalRows actualModulus 4163 (.bxor 4136 4162) := by core033_kernel_decide
theorem stats4163 : actualRows4163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4163=7428 := by core033_kernel_decide
theorem rows4164 : actualRows4164=WordField.canonicalRows actualModulus 4164 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4164 : actualRows4164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4164=2892 := by core033_kernel_decide
theorem rows4165 : actualRows4165=WordField.canonicalRows actualModulus 4165 (.bxor 0 4164) := by core033_kernel_decide
theorem stats4165 : actualRows4165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4165=7428 := by core033_kernel_decide
theorem rows4166 : actualRows4166=WordField.canonicalRows actualModulus 4166 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4166 : actualRows4166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4166=2820 := by core033_kernel_decide
theorem rows4167 : actualRows4167=WordField.canonicalRows actualModulus 4167 (.bnot 4166) := by core033_kernel_decide
theorem stats4167 : actualRows4167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4167=6276 := by core033_kernel_decide
theorem rows4168 : actualRows4168=WordField.canonicalRows actualModulus 4168 (.band 4165 4167) := by core033_kernel_decide
theorem stats4168 : actualRows4168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4168=5124 := by core033_kernel_decide
theorem rows4169 : actualRows4169=WordField.canonicalRows actualModulus 4169 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4169 : actualRows4169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4169=2892 := by core033_kernel_decide
theorem rows4170 : actualRows4170=WordField.canonicalRows actualModulus 4170 (.bxor 0 4169) := by core033_kernel_decide
theorem stats4170 : actualRows4170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4170=7428 := by core033_kernel_decide
theorem rows4171 : actualRows4171=WordField.canonicalRows actualModulus 4171 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4171 : actualRows4171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4171=2820 := by core033_kernel_decide
theorem rows4172 : actualRows4172=WordField.canonicalRows actualModulus 4172 (.bnot 4171) := by core033_kernel_decide
theorem stats4172 : actualRows4172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4172=6276 := by core033_kernel_decide
theorem rows4173 : actualRows4173=WordField.canonicalRows actualModulus 4173 (.bxor 4170 4172) := by core033_kernel_decide
theorem stats4173 : actualRows4173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4173=7428 := by core033_kernel_decide
theorem rows4174 : actualRows4174=WordField.canonicalRows actualModulus 4174 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4174 : actualRows4174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4174=2892 := by core033_kernel_decide
theorem rows4175 : actualRows4175=WordField.canonicalRows actualModulus 4175 (.bxor 0 4174) := by core033_kernel_decide
theorem stats4175 : actualRows4175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4175=7428 := by core033_kernel_decide
theorem rows4176 : actualRows4176=WordField.canonicalRows actualModulus 4176 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4176 : actualRows4176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4176=2820 := by core033_kernel_decide
theorem rows4177 : actualRows4177=WordField.canonicalRows actualModulus 4177 (.bnot 4176) := by core033_kernel_decide
theorem stats4177 : actualRows4177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4177=6276 := by core033_kernel_decide
theorem rows4178 : actualRows4178=WordField.canonicalRows actualModulus 4178 (.badd 4175 4177) := by core033_kernel_decide
theorem stats4178 : actualRows4178.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4178=5388 := by core033_kernel_decide
theorem rows4179 : actualRows4179=WordField.canonicalRows actualModulus 4179 (.bnot 4178) := by core033_kernel_decide
theorem stats4179 : actualRows4179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4179=6276 := by core033_kernel_decide
theorem rows4180 : actualRows4180=WordField.canonicalRows actualModulus 4180 (.band 4173 4179) := by core033_kernel_decide
theorem stats4180 : actualRows4180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4180=5124 := by core033_kernel_decide
theorem rows4181 : actualRows4181=WordField.canonicalRows actualModulus 4181 (.bxor 4168 4180) := by core033_kernel_decide
theorem stats4181 : actualRows4181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4181=7428 := by core033_kernel_decide
theorem rows4182 : actualRows4182=WordField.canonicalRows actualModulus 4182 (.shr 4181 31) := by core033_kernel_decide
theorem stats4182 : actualRows4182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4182=2892 := by core033_kernel_decide
theorem rows4183 : actualRows4183=WordField.canonicalRows actualModulus 4183 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4183 : actualRows4183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4183=2892 := by core033_kernel_decide
theorem rows4184 : actualRows4184=WordField.canonicalRows actualModulus 4184 (.bxor 4182 4183) := by core033_kernel_decide
theorem stats4184 : actualRows4184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4184=7428 := by core033_kernel_decide
theorem rows4185 : actualRows4185=WordField.canonicalRows actualModulus 4185 (.bnot 4184) := by core033_kernel_decide
theorem stats4185 : actualRows4185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4185=6276 := by core033_kernel_decide
theorem rows4186 : actualRows4186=WordField.canonicalRows actualModulus 4186 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4186 : actualRows4186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4186=2892 := by core033_kernel_decide
theorem rows4187 : actualRows4187=WordField.canonicalRows actualModulus 4187 (.badd 4185 4186) := by core033_kernel_decide
theorem stats4187 : actualRows4187.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4187=5388 := by core033_kernel_decide
theorem rows4188 : actualRows4188=WordField.canonicalRows actualModulus 4188 (.band 4187 1112) := by core033_kernel_decide
theorem stats4188 : actualRows4188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4188=5124 := by core033_kernel_decide
theorem rows4189 : actualRows4189=WordField.canonicalRows actualModulus 4189 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4189 : actualRows4189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4189=2892 := by core033_kernel_decide
theorem rows4190 : actualRows4190=WordField.canonicalRows actualModulus 4190 (.bxor 0 4189) := by core033_kernel_decide
theorem stats4190 : actualRows4190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4190=7428 := by core033_kernel_decide
theorem rows4191 : actualRows4191=WordField.canonicalRows actualModulus 4191 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4191 : actualRows4191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4191=2820 := by core033_kernel_decide
theorem rows4192 : actualRows4192=WordField.canonicalRows actualModulus 4192 (.bnot 4191) := by core033_kernel_decide
theorem stats4192 : actualRows4192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4192=6276 := by core033_kernel_decide
theorem rows4193 : actualRows4193=WordField.canonicalRows actualModulus 4193 (.band 4190 4192) := by core033_kernel_decide
theorem stats4193 : actualRows4193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4193=5124 := by core033_kernel_decide
theorem rows4194 : actualRows4194=WordField.canonicalRows actualModulus 4194 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4194 : actualRows4194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4194=2892 := by core033_kernel_decide
theorem rows4195 : actualRows4195=WordField.canonicalRows actualModulus 4195 (.bxor 0 4194) := by core033_kernel_decide
theorem stats4195 : actualRows4195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4195=7428 := by core033_kernel_decide
theorem rows4196 : actualRows4196=WordField.canonicalRows actualModulus 4196 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4196 : actualRows4196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4196=2820 := by core033_kernel_decide
theorem rows4197 : actualRows4197=WordField.canonicalRows actualModulus 4197 (.bnot 4196) := by core033_kernel_decide
theorem stats4197 : actualRows4197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4197=6276 := by core033_kernel_decide
theorem rows4198 : actualRows4198=WordField.canonicalRows actualModulus 4198 (.bxor 4195 4197) := by core033_kernel_decide
theorem stats4198 : actualRows4198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4198=7428 := by core033_kernel_decide
theorem rows4199 : actualRows4199=WordField.canonicalRows actualModulus 4199 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4199 : actualRows4199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4199=2892 := by core033_kernel_decide
theorem rows4200 : actualRows4200=WordField.canonicalRows actualModulus 4200 (.bxor 0 4199) := by core033_kernel_decide
theorem stats4200 : actualRows4200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4200=7428 := by core033_kernel_decide
theorem rows4201 : actualRows4201=WordField.canonicalRows actualModulus 4201 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4201 : actualRows4201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4201=2820 := by core033_kernel_decide
theorem rows4202 : actualRows4202=WordField.canonicalRows actualModulus 4202 (.bnot 4201) := by core033_kernel_decide
theorem stats4202 : actualRows4202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4202=6276 := by core033_kernel_decide
def partRows64 : List R1CS.Row := actualRows4139++actualRows4140++actualRows4141++actualRows4142++actualRows4143++actualRows4144++actualRows4145++actualRows4146++actualRows4147++actualRows4148++actualRows4149++actualRows4150++actualRows4151++actualRows4152++actualRows4153++actualRows4154++actualRows4155++actualRows4156++actualRows4157++actualRows4158++actualRows4159++actualRows4160++actualRows4161++actualRows4162++actualRows4163++actualRows4164++actualRows4165++actualRows4166++actualRows4167++actualRows4168++actualRows4169++actualRows4170++actualRows4171++actualRows4172++actualRows4173++actualRows4174++actualRows4175++actualRows4176++actualRows4177++actualRows4178++actualRows4179++actualRows4180++actualRows4181++actualRows4182++actualRows4183++actualRows4184++actualRows4185++actualRows4186++actualRows4187++actualRows4188++actualRows4189++actualRows4190++actualRows4191++actualRows4192++actualRows4193++actualRows4194++actualRows4195++actualRows4196++actualRows4197++actualRows4198++actualRows4199++actualRows4200++actualRows4201++actualRows4202
def partOps64 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 4139,.band 4138 4140,.literal (BitVec.ofNat 32 2),.bxor 0 4142,.literal (BitVec.ofNat 32 0),.bnot 4144,.bxor 4143 4145,.literal (BitVec.ofNat 32 2),.bxor 0 4147,.literal (BitVec.ofNat 32 0),.bnot 4149,.badd 4148 4150,.bnot 4151,.band 4146 4152,.bxor 4141 4153,.shr 4154 31,.literal (BitVec.ofNat 32 1),.bxor 4155 4156,.bnot 4157,.literal (BitVec.ofNat 32 1),.badd 4158 4159,.bnot 4160,.band 4161 917,.bxor 4136 4162,.literal (BitVec.ofNat 32 2),.bxor 0 4164,.literal (BitVec.ofNat 32 0),.bnot 4166,.band 4165 4167,.literal (BitVec.ofNat 32 2),.bxor 0 4169,.literal (BitVec.ofNat 32 0),.bnot 4171,.bxor 4170 4172,.literal (BitVec.ofNat 32 2),.bxor 0 4174,.literal (BitVec.ofNat 32 0),.bnot 4176,.badd 4175 4177,.bnot 4178,.band 4173 4179,.bxor 4168 4180,.shr 4181 31,.literal (BitVec.ofNat 32 1),.bxor 4182 4183,.bnot 4184,.literal (BitVec.ofNat 32 1),.badd 4185 4186,.band 4187 1112,.literal (BitVec.ofNat 32 2),.bxor 0 4189,.literal (BitVec.ofNat 32 0),.bnot 4191,.band 4190 4192,.literal (BitVec.ofNat 32 2),.bxor 0 4194,.literal (BitVec.ofNat 32 0),.bnot 4196,.bxor 4195 4197,.literal (BitVec.ofNat 32 2),.bxor 0 4199,.literal (BitVec.ofNat 32 0),.bnot 4201]
theorem partExact64 : partRows64=WordField.rows actualModulus 4139 partOps64 := by
  simp only [partRows64,partOps64,WordField.rows,rows4139,rows4140,rows4141,rows4142,rows4143,rows4144,rows4145,rows4146,rows4147,rows4148,rows4149,rows4150,rows4151,rows4152,rows4153,rows4154,rows4155,rows4156,rows4157,rows4158,rows4159,rows4160,rows4161,rows4162,rows4163,rows4164,rows4165,rows4166,rows4167,rows4168,rows4169,rows4170,rows4171,rows4172,rows4173,rows4174,rows4175,rows4176,rows4177,rows4178,rows4179,rows4180,rows4181,rows4182,rows4183,rows4184,rows4185,rows4186,rows4187,rows4188,rows4189,rows4190,rows4191,rows4192,rows4193,rows4194,rows4195,rows4196,rows4197,rows4198,rows4199,rows4200,rows4201,rows4202,List.append_assoc,List.append_nil]
theorem partLength64 : partOps64.length=64 := by decide
theorem partStats64 : partRows64.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows64=330000 := by
  simp only [partRows64,List.length_append,MatrixRowBlocks.rows_weight_append,stats4139.1,stats4139.2,stats4140.1,stats4140.2,stats4141.1,stats4141.2,stats4142.1,stats4142.2,stats4143.1,stats4143.2,stats4144.1,stats4144.2,stats4145.1,stats4145.2,stats4146.1,stats4146.2,stats4147.1,stats4147.2,stats4148.1,stats4148.2,stats4149.1,stats4149.2,stats4150.1,stats4150.2,stats4151.1,stats4151.2,stats4152.1,stats4152.2,stats4153.1,stats4153.2,stats4154.1,stats4154.2,stats4155.1,stats4155.2,stats4156.1,stats4156.2,stats4157.1,stats4157.2,stats4158.1,stats4158.2,stats4159.1,stats4159.2,stats4160.1,stats4160.2,stats4161.1,stats4161.2,stats4162.1,stats4162.2,stats4163.1,stats4163.2,stats4164.1,stats4164.2,stats4165.1,stats4165.2,stats4166.1,stats4166.2,stats4167.1,stats4167.2,stats4168.1,stats4168.2,stats4169.1,stats4169.2,stats4170.1,stats4170.2,stats4171.1,stats4171.2,stats4172.1,stats4172.2,stats4173.1,stats4173.2,stats4174.1,stats4174.2,stats4175.1,stats4175.2,stats4176.1,stats4176.2,stats4177.1,stats4177.2,stats4178.1,stats4178.2,stats4179.1,stats4179.2,stats4180.1,stats4180.2,stats4181.1,stats4181.2,stats4182.1,stats4182.2,stats4183.1,stats4183.2,stats4184.1,stats4184.2,stats4185.1,stats4185.2,stats4186.1,stats4186.2,stats4187.1,stats4187.2,stats4188.1,stats4188.2,stats4189.1,stats4189.2,stats4190.1,stats4190.2,stats4191.1,stats4191.2,stats4192.1,stats4192.2,stats4193.1,stats4193.2,stats4194.1,stats4194.2,stats4195.1,stats4195.2,stats4196.1,stats4196.2,stats4197.1,stats4197.2,stats4198.1,stats4198.2,stats4199.1,stats4199.2,stats4200.1,stats4200.2,stats4201.1,stats4201.2,stats4202.1,stats4202.2]
  decide
end FrameHashControllerCheckedRows
