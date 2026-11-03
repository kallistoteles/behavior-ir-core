import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData64
import AuthenticatedBranchRoundInstructionMatrixData65
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4150 : actualRows4150=WordField.canonicalRows actualModulus 4150 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4150 : actualRows4150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4150=2892 := by core033_kernel_decide
theorem rows4151 : actualRows4151=WordField.canonicalRows actualModulus 4151 (.bxor 1299 4150) := by core033_kernel_decide
theorem stats4151 : actualRows4151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4151=7428 := by core033_kernel_decide
theorem rows4152 : actualRows4152=WordField.canonicalRows actualModulus 4152 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4152 : actualRows4152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4152=2820 := by core033_kernel_decide
theorem rows4153 : actualRows4153=WordField.canonicalRows actualModulus 4153 (.bnot 4152) := by core033_kernel_decide
theorem stats4153 : actualRows4153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4153=6276 := by core033_kernel_decide
theorem rows4154 : actualRows4154=WordField.canonicalRows actualModulus 4154 (.badd 4151 4153) := by core033_kernel_decide
theorem stats4154 : actualRows4154.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4154=5388 := by core033_kernel_decide
theorem rows4155 : actualRows4155=WordField.canonicalRows actualModulus 4155 (.bnot 4154) := by core033_kernel_decide
theorem stats4155 : actualRows4155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4155=6276 := by core033_kernel_decide
theorem rows4156 : actualRows4156=WordField.canonicalRows actualModulus 4156 (.band 4149 4155) := by core033_kernel_decide
theorem stats4156 : actualRows4156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4156=5124 := by core033_kernel_decide
theorem rows4157 : actualRows4157=WordField.canonicalRows actualModulus 4157 (.bxor 4144 4156) := by core033_kernel_decide
theorem stats4157 : actualRows4157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4157=7428 := by core033_kernel_decide
theorem rows4158 : actualRows4158=WordField.canonicalRows actualModulus 4158 (.shr 4157 31) := by core033_kernel_decide
theorem stats4158 : actualRows4158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4158=2892 := by core033_kernel_decide
theorem rows4159 : actualRows4159=WordField.canonicalRows actualModulus 4159 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4159 : actualRows4159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4159=2892 := by core033_kernel_decide
theorem rows4160 : actualRows4160=WordField.canonicalRows actualModulus 4160 (.bxor 4158 4159) := by core033_kernel_decide
theorem stats4160 : actualRows4160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4160=7428 := by core033_kernel_decide
theorem rows4161 : actualRows4161=WordField.canonicalRows actualModulus 4161 (.bnot 4160) := by core033_kernel_decide
theorem stats4161 : actualRows4161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4161=6276 := by core033_kernel_decide
theorem rows4162 : actualRows4162=WordField.canonicalRows actualModulus 4162 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4162 : actualRows4162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4162=2892 := by core033_kernel_decide
theorem rows4163 : actualRows4163=WordField.canonicalRows actualModulus 4163 (.badd 4161 4162) := by core033_kernel_decide
theorem stats4163 : actualRows4163.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4163=5388 := by core033_kernel_decide
theorem rows4164 : actualRows4164=WordField.canonicalRows actualModulus 4164 (.bnot 4163) := by core033_kernel_decide
theorem stats4164 : actualRows4164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4164=6276 := by core033_kernel_decide
theorem rows4165 : actualRows4165=WordField.canonicalRows actualModulus 4165 (.band 4164 2557) := by core033_kernel_decide
theorem stats4165 : actualRows4165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4165=5124 := by core033_kernel_decide
theorem rows4166 : actualRows4166=WordField.canonicalRows actualModulus 4166 (.bxor 4139 4165) := by core033_kernel_decide
theorem stats4166 : actualRows4166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4166=7428 := by core033_kernel_decide
theorem rows4167 : actualRows4167=WordField.canonicalRows actualModulus 4167 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4167 : actualRows4167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4167=2892 := by core033_kernel_decide
theorem rows4168 : actualRows4168=WordField.canonicalRows actualModulus 4168 (.bxor 1299 4167) := by core033_kernel_decide
theorem stats4168 : actualRows4168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4168=7428 := by core033_kernel_decide
theorem rows4169 : actualRows4169=WordField.canonicalRows actualModulus 4169 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4169 : actualRows4169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4169=2820 := by core033_kernel_decide
theorem rows4170 : actualRows4170=WordField.canonicalRows actualModulus 4170 (.bnot 4169) := by core033_kernel_decide
theorem stats4170 : actualRows4170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4170=6276 := by core033_kernel_decide
theorem rows4171 : actualRows4171=WordField.canonicalRows actualModulus 4171 (.band 4168 4170) := by core033_kernel_decide
theorem stats4171 : actualRows4171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4171=5124 := by core033_kernel_decide
theorem rows4172 : actualRows4172=WordField.canonicalRows actualModulus 4172 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4172 : actualRows4172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4172=2892 := by core033_kernel_decide
theorem rows4173 : actualRows4173=WordField.canonicalRows actualModulus 4173 (.bxor 1299 4172) := by core033_kernel_decide
theorem stats4173 : actualRows4173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4173=7428 := by core033_kernel_decide
theorem rows4174 : actualRows4174=WordField.canonicalRows actualModulus 4174 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4174 : actualRows4174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4174=2820 := by core033_kernel_decide
theorem rows4175 : actualRows4175=WordField.canonicalRows actualModulus 4175 (.bnot 4174) := by core033_kernel_decide
theorem stats4175 : actualRows4175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4175=6276 := by core033_kernel_decide
theorem rows4176 : actualRows4176=WordField.canonicalRows actualModulus 4176 (.bxor 4173 4175) := by core033_kernel_decide
theorem stats4176 : actualRows4176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4176=7428 := by core033_kernel_decide
theorem rows4177 : actualRows4177=WordField.canonicalRows actualModulus 4177 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4177 : actualRows4177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4177=2892 := by core033_kernel_decide
theorem rows4178 : actualRows4178=WordField.canonicalRows actualModulus 4178 (.bxor 1299 4177) := by core033_kernel_decide
theorem stats4178 : actualRows4178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4178=7428 := by core033_kernel_decide
theorem rows4179 : actualRows4179=WordField.canonicalRows actualModulus 4179 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4179 : actualRows4179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4179=2820 := by core033_kernel_decide
theorem rows4180 : actualRows4180=WordField.canonicalRows actualModulus 4180 (.bnot 4179) := by core033_kernel_decide
theorem stats4180 : actualRows4180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4180=6276 := by core033_kernel_decide
theorem rows4181 : actualRows4181=WordField.canonicalRows actualModulus 4181 (.badd 4178 4180) := by core033_kernel_decide
theorem stats4181 : actualRows4181.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4181=5388 := by core033_kernel_decide
theorem rows4182 : actualRows4182=WordField.canonicalRows actualModulus 4182 (.bnot 4181) := by core033_kernel_decide
theorem stats4182 : actualRows4182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4182=6276 := by core033_kernel_decide
theorem rows4183 : actualRows4183=WordField.canonicalRows actualModulus 4183 (.band 4176 4182) := by core033_kernel_decide
theorem stats4183 : actualRows4183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4183=5124 := by core033_kernel_decide
theorem rows4184 : actualRows4184=WordField.canonicalRows actualModulus 4184 (.bxor 4171 4183) := by core033_kernel_decide
theorem stats4184 : actualRows4184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4184=7428 := by core033_kernel_decide
theorem rows4185 : actualRows4185=WordField.canonicalRows actualModulus 4185 (.shr 4184 31) := by core033_kernel_decide
theorem stats4185 : actualRows4185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4185=2892 := by core033_kernel_decide
theorem rows4186 : actualRows4186=WordField.canonicalRows actualModulus 4186 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4186 : actualRows4186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4186=2892 := by core033_kernel_decide
theorem rows4187 : actualRows4187=WordField.canonicalRows actualModulus 4187 (.bxor 4185 4186) := by core033_kernel_decide
theorem stats4187 : actualRows4187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4187=7428 := by core033_kernel_decide
theorem rows4188 : actualRows4188=WordField.canonicalRows actualModulus 4188 (.bnot 4187) := by core033_kernel_decide
theorem stats4188 : actualRows4188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4188=6276 := by core033_kernel_decide
theorem rows4189 : actualRows4189=WordField.canonicalRows actualModulus 4189 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4189 : actualRows4189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4189=2892 := by core033_kernel_decide
theorem rows4190 : actualRows4190=WordField.canonicalRows actualModulus 4190 (.badd 4188 4189) := by core033_kernel_decide
theorem stats4190 : actualRows4190.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4190=5388 := by core033_kernel_decide
theorem rows4191 : actualRows4191=WordField.canonicalRows actualModulus 4191 (.band 4190 2732) := by core033_kernel_decide
theorem stats4191 : actualRows4191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4191=5124 := by core033_kernel_decide
theorem rows4192 : actualRows4192=WordField.canonicalRows actualModulus 4192 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4192 : actualRows4192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4192=2892 := by core033_kernel_decide
theorem rows4193 : actualRows4193=WordField.canonicalRows actualModulus 4193 (.bxor 1299 4192) := by core033_kernel_decide
theorem stats4193 : actualRows4193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4193=7428 := by core033_kernel_decide
theorem rows4194 : actualRows4194=WordField.canonicalRows actualModulus 4194 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4194 : actualRows4194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4194=2820 := by core033_kernel_decide
theorem rows4195 : actualRows4195=WordField.canonicalRows actualModulus 4195 (.bnot 4194) := by core033_kernel_decide
theorem stats4195 : actualRows4195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4195=6276 := by core033_kernel_decide
theorem rows4196 : actualRows4196=WordField.canonicalRows actualModulus 4196 (.band 4193 4195) := by core033_kernel_decide
theorem stats4196 : actualRows4196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4196=5124 := by core033_kernel_decide
theorem rows4197 : actualRows4197=WordField.canonicalRows actualModulus 4197 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4197 : actualRows4197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4197=2892 := by core033_kernel_decide
theorem rows4198 : actualRows4198=WordField.canonicalRows actualModulus 4198 (.bxor 1299 4197) := by core033_kernel_decide
theorem stats4198 : actualRows4198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4198=7428 := by core033_kernel_decide
theorem rows4199 : actualRows4199=WordField.canonicalRows actualModulus 4199 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4199 : actualRows4199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4199=2820 := by core033_kernel_decide
theorem rows4200 : actualRows4200=WordField.canonicalRows actualModulus 4200 (.bnot 4199) := by core033_kernel_decide
theorem stats4200 : actualRows4200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4200=6276 := by core033_kernel_decide
theorem rows4201 : actualRows4201=WordField.canonicalRows actualModulus 4201 (.bxor 4198 4200) := by core033_kernel_decide
theorem stats4201 : actualRows4201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4201=7428 := by core033_kernel_decide
theorem rows4202 : actualRows4202=WordField.canonicalRows actualModulus 4202 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4202 : actualRows4202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4202=2892 := by core033_kernel_decide
theorem rows4203 : actualRows4203=WordField.canonicalRows actualModulus 4203 (.bxor 1299 4202) := by core033_kernel_decide
theorem stats4203 : actualRows4203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4203=7428 := by core033_kernel_decide
theorem rows4204 : actualRows4204=WordField.canonicalRows actualModulus 4204 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4204 : actualRows4204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4204=2820 := by core033_kernel_decide
theorem rows4205 : actualRows4205=WordField.canonicalRows actualModulus 4205 (.bnot 4204) := by core033_kernel_decide
theorem stats4205 : actualRows4205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4205=6276 := by core033_kernel_decide
theorem rows4206 : actualRows4206=WordField.canonicalRows actualModulus 4206 (.badd 4203 4205) := by core033_kernel_decide
theorem stats4206 : actualRows4206.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4206=5388 := by core033_kernel_decide
theorem rows4207 : actualRows4207=WordField.canonicalRows actualModulus 4207 (.bnot 4206) := by core033_kernel_decide
theorem stats4207 : actualRows4207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4207=6276 := by core033_kernel_decide
theorem rows4208 : actualRows4208=WordField.canonicalRows actualModulus 4208 (.band 4201 4207) := by core033_kernel_decide
theorem stats4208 : actualRows4208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4208=5124 := by core033_kernel_decide
theorem rows4209 : actualRows4209=WordField.canonicalRows actualModulus 4209 (.bxor 4196 4208) := by core033_kernel_decide
theorem stats4209 : actualRows4209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4209=7428 := by core033_kernel_decide
theorem rows4210 : actualRows4210=WordField.canonicalRows actualModulus 4210 (.shr 4209 31) := by core033_kernel_decide
theorem stats4210 : actualRows4210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4210=2892 := by core033_kernel_decide
theorem rows4211 : actualRows4211=WordField.canonicalRows actualModulus 4211 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4211 : actualRows4211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4211=2892 := by core033_kernel_decide
theorem rows4212 : actualRows4212=WordField.canonicalRows actualModulus 4212 (.bxor 4210 4211) := by core033_kernel_decide
theorem stats4212 : actualRows4212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4212=7428 := by core033_kernel_decide
theorem rows4213 : actualRows4213=WordField.canonicalRows actualModulus 4213 (.bnot 4212) := by core033_kernel_decide
theorem stats4213 : actualRows4213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4213=6276 := by core033_kernel_decide
def partRows63 : List R1CS.Row := actualRows4150++actualRows4151++actualRows4152++actualRows4153++actualRows4154++actualRows4155++actualRows4156++actualRows4157++actualRows4158++actualRows4159++actualRows4160++actualRows4161++actualRows4162++actualRows4163++actualRows4164++actualRows4165++actualRows4166++actualRows4167++actualRows4168++actualRows4169++actualRows4170++actualRows4171++actualRows4172++actualRows4173++actualRows4174++actualRows4175++actualRows4176++actualRows4177++actualRows4178++actualRows4179++actualRows4180++actualRows4181++actualRows4182++actualRows4183++actualRows4184++actualRows4185++actualRows4186++actualRows4187++actualRows4188++actualRows4189++actualRows4190++actualRows4191++actualRows4192++actualRows4193++actualRows4194++actualRows4195++actualRows4196++actualRows4197++actualRows4198++actualRows4199++actualRows4200++actualRows4201++actualRows4202++actualRows4203++actualRows4204++actualRows4205++actualRows4206++actualRows4207++actualRows4208++actualRows4209++actualRows4210++actualRows4211++actualRows4212++actualRows4213
def partOps63 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 1299 4150,.literal (BitVec.ofNat 32 0),.bnot 4152,.badd 4151 4153,.bnot 4154,.band 4149 4155,.bxor 4144 4156,.shr 4157 31,.literal (BitVec.ofNat 32 1),.bxor 4158 4159,.bnot 4160,.literal (BitVec.ofNat 32 1),.badd 4161 4162,.bnot 4163,.band 4164 2557,.bxor 4139 4165,.literal (BitVec.ofNat 32 2),.bxor 1299 4167,.literal (BitVec.ofNat 32 0),.bnot 4169,.band 4168 4170,.literal (BitVec.ofNat 32 2),.bxor 1299 4172,.literal (BitVec.ofNat 32 0),.bnot 4174,.bxor 4173 4175,.literal (BitVec.ofNat 32 2),.bxor 1299 4177,.literal (BitVec.ofNat 32 0),.bnot 4179,.badd 4178 4180,.bnot 4181,.band 4176 4182,.bxor 4171 4183,.shr 4184 31,.literal (BitVec.ofNat 32 1),.bxor 4185 4186,.bnot 4187,.literal (BitVec.ofNat 32 1),.badd 4188 4189,.band 4190 2732,.literal (BitVec.ofNat 32 2),.bxor 1299 4192,.literal (BitVec.ofNat 32 0),.bnot 4194,.band 4193 4195,.literal (BitVec.ofNat 32 2),.bxor 1299 4197,.literal (BitVec.ofNat 32 0),.bnot 4199,.bxor 4198 4200,.literal (BitVec.ofNat 32 2),.bxor 1299 4202,.literal (BitVec.ofNat 32 0),.bnot 4204,.badd 4203 4205,.bnot 4206,.band 4201 4207,.bxor 4196 4208,.shr 4209 31,.literal (BitVec.ofNat 32 1),.bxor 4210 4211,.bnot 4212]
theorem partExact63 : partRows63=WordField.rows actualModulus 4150 partOps63 := by
  simp only [partRows63,partOps63,WordField.rows,rows4150,rows4151,rows4152,rows4153,rows4154,rows4155,rows4156,rows4157,rows4158,rows4159,rows4160,rows4161,rows4162,rows4163,rows4164,rows4165,rows4166,rows4167,rows4168,rows4169,rows4170,rows4171,rows4172,rows4173,rows4174,rows4175,rows4176,rows4177,rows4178,rows4179,rows4180,rows4181,rows4182,rows4183,rows4184,rows4185,rows4186,rows4187,rows4188,rows4189,rows4190,rows4191,rows4192,rows4193,rows4194,rows4195,rows4196,rows4197,rows4198,rows4199,rows4200,rows4201,rows4202,rows4203,rows4204,rows4205,rows4206,rows4207,rows4208,rows4209,rows4210,rows4211,rows4212,rows4213,List.append_assoc,List.append_nil]
theorem partLength63 : partOps63.length=64 := by decide
theorem partStats63 : partRows63.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows63=332640 := by
  simp only [partRows63,List.length_append,MatrixRowBlocks.rows_weight_append,stats4150.1,stats4150.2,stats4151.1,stats4151.2,stats4152.1,stats4152.2,stats4153.1,stats4153.2,stats4154.1,stats4154.2,stats4155.1,stats4155.2,stats4156.1,stats4156.2,stats4157.1,stats4157.2,stats4158.1,stats4158.2,stats4159.1,stats4159.2,stats4160.1,stats4160.2,stats4161.1,stats4161.2,stats4162.1,stats4162.2,stats4163.1,stats4163.2,stats4164.1,stats4164.2,stats4165.1,stats4165.2,stats4166.1,stats4166.2,stats4167.1,stats4167.2,stats4168.1,stats4168.2,stats4169.1,stats4169.2,stats4170.1,stats4170.2,stats4171.1,stats4171.2,stats4172.1,stats4172.2,stats4173.1,stats4173.2,stats4174.1,stats4174.2,stats4175.1,stats4175.2,stats4176.1,stats4176.2,stats4177.1,stats4177.2,stats4178.1,stats4178.2,stats4179.1,stats4179.2,stats4180.1,stats4180.2,stats4181.1,stats4181.2,stats4182.1,stats4182.2,stats4183.1,stats4183.2,stats4184.1,stats4184.2,stats4185.1,stats4185.2,stats4186.1,stats4186.2,stats4187.1,stats4187.2,stats4188.1,stats4188.2,stats4189.1,stats4189.2,stats4190.1,stats4190.2,stats4191.1,stats4191.2,stats4192.1,stats4192.2,stats4193.1,stats4193.2,stats4194.1,stats4194.2,stats4195.1,stats4195.2,stats4196.1,stats4196.2,stats4197.1,stats4197.2,stats4198.1,stats4198.2,stats4199.1,stats4199.2,stats4200.1,stats4200.2,stats4201.1,stats4201.2,stats4202.1,stats4202.2,stats4203.1,stats4203.2,stats4204.1,stats4204.2,stats4205.1,stats4205.2,stats4206.1,stats4206.2,stats4207.1,stats4207.2,stats4208.1,stats4208.2,stats4209.1,stats4209.2,stats4210.1,stats4210.2,stats4211.1,stats4211.2,stats4212.1,stats4212.2,stats4213.1,stats4213.2]
  decide
end AuthenticatedBranchRoundCheckedRows
