import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData65
import FrameHashControllerInstructionMatrixData66
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4203 : actualRows4203=WordField.canonicalRows actualModulus 4203 (.badd 4200 4202) := by core033_kernel_decide
theorem stats4203 : actualRows4203.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4203=5388 := by core033_kernel_decide
theorem rows4204 : actualRows4204=WordField.canonicalRows actualModulus 4204 (.bnot 4203) := by core033_kernel_decide
theorem stats4204 : actualRows4204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4204=6276 := by core033_kernel_decide
theorem rows4205 : actualRows4205=WordField.canonicalRows actualModulus 4205 (.band 4198 4204) := by core033_kernel_decide
theorem stats4205 : actualRows4205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4205=5124 := by core033_kernel_decide
theorem rows4206 : actualRows4206=WordField.canonicalRows actualModulus 4206 (.bxor 4193 4205) := by core033_kernel_decide
theorem stats4206 : actualRows4206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4206=7428 := by core033_kernel_decide
theorem rows4207 : actualRows4207=WordField.canonicalRows actualModulus 4207 (.shr 4206 31) := by core033_kernel_decide
theorem stats4207 : actualRows4207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4207=2892 := by core033_kernel_decide
theorem rows4208 : actualRows4208=WordField.canonicalRows actualModulus 4208 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4208 : actualRows4208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4208=2892 := by core033_kernel_decide
theorem rows4209 : actualRows4209=WordField.canonicalRows actualModulus 4209 (.bxor 4207 4208) := by core033_kernel_decide
theorem stats4209 : actualRows4209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4209=7428 := by core033_kernel_decide
theorem rows4210 : actualRows4210=WordField.canonicalRows actualModulus 4210 (.bnot 4209) := by core033_kernel_decide
theorem stats4210 : actualRows4210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4210=6276 := by core033_kernel_decide
theorem rows4211 : actualRows4211=WordField.canonicalRows actualModulus 4211 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4211 : actualRows4211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4211=2892 := by core033_kernel_decide
theorem rows4212 : actualRows4212=WordField.canonicalRows actualModulus 4212 (.badd 4210 4211) := by core033_kernel_decide
theorem stats4212 : actualRows4212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4212=5388 := by core033_kernel_decide
theorem rows4213 : actualRows4213=WordField.canonicalRows actualModulus 4213 (.bnot 4212) := by core033_kernel_decide
theorem stats4213 : actualRows4213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4213=6276 := by core033_kernel_decide
theorem rows4214 : actualRows4214=WordField.canonicalRows actualModulus 4214 (.band 4213 920) := by core033_kernel_decide
theorem stats4214 : actualRows4214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4214=5124 := by core033_kernel_decide
theorem rows4215 : actualRows4215=WordField.canonicalRows actualModulus 4215 (.bxor 4188 4214) := by core033_kernel_decide
theorem stats4215 : actualRows4215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4215=7428 := by core033_kernel_decide
theorem rows4216 : actualRows4216=WordField.canonicalRows actualModulus 4216 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4216 : actualRows4216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4216=2892 := by core033_kernel_decide
theorem rows4217 : actualRows4217=WordField.canonicalRows actualModulus 4217 (.bxor 0 4216) := by core033_kernel_decide
theorem stats4217 : actualRows4217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4217=7428 := by core033_kernel_decide
theorem rows4218 : actualRows4218=WordField.canonicalRows actualModulus 4218 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4218 : actualRows4218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4218=2820 := by core033_kernel_decide
theorem rows4219 : actualRows4219=WordField.canonicalRows actualModulus 4219 (.bnot 4218) := by core033_kernel_decide
theorem stats4219 : actualRows4219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4219=6276 := by core033_kernel_decide
theorem rows4220 : actualRows4220=WordField.canonicalRows actualModulus 4220 (.band 4217 4219) := by core033_kernel_decide
theorem stats4220 : actualRows4220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4220=5124 := by core033_kernel_decide
theorem rows4221 : actualRows4221=WordField.canonicalRows actualModulus 4221 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4221 : actualRows4221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4221=2892 := by core033_kernel_decide
theorem rows4222 : actualRows4222=WordField.canonicalRows actualModulus 4222 (.bxor 0 4221) := by core033_kernel_decide
theorem stats4222 : actualRows4222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4222=7428 := by core033_kernel_decide
theorem rows4223 : actualRows4223=WordField.canonicalRows actualModulus 4223 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4223 : actualRows4223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4223=2820 := by core033_kernel_decide
theorem rows4224 : actualRows4224=WordField.canonicalRows actualModulus 4224 (.bnot 4223) := by core033_kernel_decide
theorem stats4224 : actualRows4224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4224=6276 := by core033_kernel_decide
theorem rows4225 : actualRows4225=WordField.canonicalRows actualModulus 4225 (.bxor 4222 4224) := by core033_kernel_decide
theorem stats4225 : actualRows4225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4225=7428 := by core033_kernel_decide
theorem rows4226 : actualRows4226=WordField.canonicalRows actualModulus 4226 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4226 : actualRows4226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4226=2892 := by core033_kernel_decide
theorem rows4227 : actualRows4227=WordField.canonicalRows actualModulus 4227 (.bxor 0 4226) := by core033_kernel_decide
theorem stats4227 : actualRows4227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4227=7428 := by core033_kernel_decide
theorem rows4228 : actualRows4228=WordField.canonicalRows actualModulus 4228 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4228 : actualRows4228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4228=2820 := by core033_kernel_decide
theorem rows4229 : actualRows4229=WordField.canonicalRows actualModulus 4229 (.bnot 4228) := by core033_kernel_decide
theorem stats4229 : actualRows4229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4229=6276 := by core033_kernel_decide
theorem rows4230 : actualRows4230=WordField.canonicalRows actualModulus 4230 (.badd 4227 4229) := by core033_kernel_decide
theorem stats4230 : actualRows4230.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4230=5388 := by core033_kernel_decide
theorem rows4231 : actualRows4231=WordField.canonicalRows actualModulus 4231 (.bnot 4230) := by core033_kernel_decide
theorem stats4231 : actualRows4231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4231=6276 := by core033_kernel_decide
theorem rows4232 : actualRows4232=WordField.canonicalRows actualModulus 4232 (.band 4225 4231) := by core033_kernel_decide
theorem stats4232 : actualRows4232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4232=5124 := by core033_kernel_decide
theorem rows4233 : actualRows4233=WordField.canonicalRows actualModulus 4233 (.bxor 4220 4232) := by core033_kernel_decide
theorem stats4233 : actualRows4233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4233=7428 := by core033_kernel_decide
theorem rows4234 : actualRows4234=WordField.canonicalRows actualModulus 4234 (.shr 4233 31) := by core033_kernel_decide
theorem stats4234 : actualRows4234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4234=2892 := by core033_kernel_decide
theorem rows4235 : actualRows4235=WordField.canonicalRows actualModulus 4235 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4235 : actualRows4235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4235=2892 := by core033_kernel_decide
theorem rows4236 : actualRows4236=WordField.canonicalRows actualModulus 4236 (.bxor 4234 4235) := by core033_kernel_decide
theorem stats4236 : actualRows4236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4236=7428 := by core033_kernel_decide
theorem rows4237 : actualRows4237=WordField.canonicalRows actualModulus 4237 (.bnot 4236) := by core033_kernel_decide
theorem stats4237 : actualRows4237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4237=6276 := by core033_kernel_decide
theorem rows4238 : actualRows4238=WordField.canonicalRows actualModulus 4238 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4238 : actualRows4238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4238=2892 := by core033_kernel_decide
theorem rows4239 : actualRows4239=WordField.canonicalRows actualModulus 4239 (.badd 4237 4238) := by core033_kernel_decide
theorem stats4239 : actualRows4239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4239=5388 := by core033_kernel_decide
theorem rows4240 : actualRows4240=WordField.canonicalRows actualModulus 4240 (.band 4239 1115) := by core033_kernel_decide
theorem stats4240 : actualRows4240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4240=5124 := by core033_kernel_decide
theorem rows4241 : actualRows4241=WordField.canonicalRows actualModulus 4241 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4241 : actualRows4241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4241=2892 := by core033_kernel_decide
theorem rows4242 : actualRows4242=WordField.canonicalRows actualModulus 4242 (.bxor 0 4241) := by core033_kernel_decide
theorem stats4242 : actualRows4242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4242=7428 := by core033_kernel_decide
theorem rows4243 : actualRows4243=WordField.canonicalRows actualModulus 4243 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4243 : actualRows4243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4243=2820 := by core033_kernel_decide
theorem rows4244 : actualRows4244=WordField.canonicalRows actualModulus 4244 (.bnot 4243) := by core033_kernel_decide
theorem stats4244 : actualRows4244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4244=6276 := by core033_kernel_decide
theorem rows4245 : actualRows4245=WordField.canonicalRows actualModulus 4245 (.band 4242 4244) := by core033_kernel_decide
theorem stats4245 : actualRows4245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4245=5124 := by core033_kernel_decide
theorem rows4246 : actualRows4246=WordField.canonicalRows actualModulus 4246 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4246 : actualRows4246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4246=2892 := by core033_kernel_decide
theorem rows4247 : actualRows4247=WordField.canonicalRows actualModulus 4247 (.bxor 0 4246) := by core033_kernel_decide
theorem stats4247 : actualRows4247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4247=7428 := by core033_kernel_decide
theorem rows4248 : actualRows4248=WordField.canonicalRows actualModulus 4248 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4248 : actualRows4248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4248=2820 := by core033_kernel_decide
theorem rows4249 : actualRows4249=WordField.canonicalRows actualModulus 4249 (.bnot 4248) := by core033_kernel_decide
theorem stats4249 : actualRows4249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4249=6276 := by core033_kernel_decide
theorem rows4250 : actualRows4250=WordField.canonicalRows actualModulus 4250 (.bxor 4247 4249) := by core033_kernel_decide
theorem stats4250 : actualRows4250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4250=7428 := by core033_kernel_decide
theorem rows4251 : actualRows4251=WordField.canonicalRows actualModulus 4251 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4251 : actualRows4251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4251=2892 := by core033_kernel_decide
theorem rows4252 : actualRows4252=WordField.canonicalRows actualModulus 4252 (.bxor 0 4251) := by core033_kernel_decide
theorem stats4252 : actualRows4252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4252=7428 := by core033_kernel_decide
theorem rows4253 : actualRows4253=WordField.canonicalRows actualModulus 4253 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4253 : actualRows4253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4253=2820 := by core033_kernel_decide
theorem rows4254 : actualRows4254=WordField.canonicalRows actualModulus 4254 (.bnot 4253) := by core033_kernel_decide
theorem stats4254 : actualRows4254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4254=6276 := by core033_kernel_decide
theorem rows4255 : actualRows4255=WordField.canonicalRows actualModulus 4255 (.badd 4252 4254) := by core033_kernel_decide
theorem stats4255 : actualRows4255.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4255=5388 := by core033_kernel_decide
theorem rows4256 : actualRows4256=WordField.canonicalRows actualModulus 4256 (.bnot 4255) := by core033_kernel_decide
theorem stats4256 : actualRows4256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4256=6276 := by core033_kernel_decide
theorem rows4257 : actualRows4257=WordField.canonicalRows actualModulus 4257 (.band 4250 4256) := by core033_kernel_decide
theorem stats4257 : actualRows4257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4257=5124 := by core033_kernel_decide
theorem rows4258 : actualRows4258=WordField.canonicalRows actualModulus 4258 (.bxor 4245 4257) := by core033_kernel_decide
theorem stats4258 : actualRows4258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4258=7428 := by core033_kernel_decide
theorem rows4259 : actualRows4259=WordField.canonicalRows actualModulus 4259 (.shr 4258 31) := by core033_kernel_decide
theorem stats4259 : actualRows4259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4259=2892 := by core033_kernel_decide
theorem rows4260 : actualRows4260=WordField.canonicalRows actualModulus 4260 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4260 : actualRows4260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4260=2892 := by core033_kernel_decide
theorem rows4261 : actualRows4261=WordField.canonicalRows actualModulus 4261 (.bxor 4259 4260) := by core033_kernel_decide
theorem stats4261 : actualRows4261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4261=7428 := by core033_kernel_decide
theorem rows4262 : actualRows4262=WordField.canonicalRows actualModulus 4262 (.bnot 4261) := by core033_kernel_decide
theorem stats4262 : actualRows4262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4262=6276 := by core033_kernel_decide
theorem rows4263 : actualRows4263=WordField.canonicalRows actualModulus 4263 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4263 : actualRows4263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4263=2892 := by core033_kernel_decide
theorem rows4264 : actualRows4264=WordField.canonicalRows actualModulus 4264 (.badd 4262 4263) := by core033_kernel_decide
theorem stats4264 : actualRows4264.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4264=5388 := by core033_kernel_decide
theorem rows4265 : actualRows4265=WordField.canonicalRows actualModulus 4265 (.bnot 4264) := by core033_kernel_decide
theorem stats4265 : actualRows4265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4265=6276 := by core033_kernel_decide
theorem rows4266 : actualRows4266=WordField.canonicalRows actualModulus 4266 (.band 4265 923) := by core033_kernel_decide
theorem stats4266 : actualRows4266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4266=5124 := by core033_kernel_decide
def partRows65 : List R1CS.Row := actualRows4203++actualRows4204++actualRows4205++actualRows4206++actualRows4207++actualRows4208++actualRows4209++actualRows4210++actualRows4211++actualRows4212++actualRows4213++actualRows4214++actualRows4215++actualRows4216++actualRows4217++actualRows4218++actualRows4219++actualRows4220++actualRows4221++actualRows4222++actualRows4223++actualRows4224++actualRows4225++actualRows4226++actualRows4227++actualRows4228++actualRows4229++actualRows4230++actualRows4231++actualRows4232++actualRows4233++actualRows4234++actualRows4235++actualRows4236++actualRows4237++actualRows4238++actualRows4239++actualRows4240++actualRows4241++actualRows4242++actualRows4243++actualRows4244++actualRows4245++actualRows4246++actualRows4247++actualRows4248++actualRows4249++actualRows4250++actualRows4251++actualRows4252++actualRows4253++actualRows4254++actualRows4255++actualRows4256++actualRows4257++actualRows4258++actualRows4259++actualRows4260++actualRows4261++actualRows4262++actualRows4263++actualRows4264++actualRows4265++actualRows4266
def partOps65 : List WordIR.Op := [.badd 4200 4202,.bnot 4203,.band 4198 4204,.bxor 4193 4205,.shr 4206 31,.literal (BitVec.ofNat 32 1),.bxor 4207 4208,.bnot 4209,.literal (BitVec.ofNat 32 1),.badd 4210 4211,.bnot 4212,.band 4213 920,.bxor 4188 4214,.literal (BitVec.ofNat 32 2),.bxor 0 4216,.literal (BitVec.ofNat 32 0),.bnot 4218,.band 4217 4219,.literal (BitVec.ofNat 32 2),.bxor 0 4221,.literal (BitVec.ofNat 32 0),.bnot 4223,.bxor 4222 4224,.literal (BitVec.ofNat 32 2),.bxor 0 4226,.literal (BitVec.ofNat 32 0),.bnot 4228,.badd 4227 4229,.bnot 4230,.band 4225 4231,.bxor 4220 4232,.shr 4233 31,.literal (BitVec.ofNat 32 1),.bxor 4234 4235,.bnot 4236,.literal (BitVec.ofNat 32 1),.badd 4237 4238,.band 4239 1115,.literal (BitVec.ofNat 32 2),.bxor 0 4241,.literal (BitVec.ofNat 32 0),.bnot 4243,.band 4242 4244,.literal (BitVec.ofNat 32 2),.bxor 0 4246,.literal (BitVec.ofNat 32 0),.bnot 4248,.bxor 4247 4249,.literal (BitVec.ofNat 32 2),.bxor 0 4251,.literal (BitVec.ofNat 32 0),.bnot 4253,.badd 4252 4254,.bnot 4255,.band 4250 4256,.bxor 4245 4257,.shr 4258 31,.literal (BitVec.ofNat 32 1),.bxor 4259 4260,.bnot 4261,.literal (BitVec.ofNat 32 1),.badd 4262 4263,.bnot 4264,.band 4265 923]
theorem partExact65 : partRows65=WordField.rows actualModulus 4203 partOps65 := by
  simp only [partRows65,partOps65,WordField.rows,rows4203,rows4204,rows4205,rows4206,rows4207,rows4208,rows4209,rows4210,rows4211,rows4212,rows4213,rows4214,rows4215,rows4216,rows4217,rows4218,rows4219,rows4220,rows4221,rows4222,rows4223,rows4224,rows4225,rows4226,rows4227,rows4228,rows4229,rows4230,rows4231,rows4232,rows4233,rows4234,rows4235,rows4236,rows4237,rows4238,rows4239,rows4240,rows4241,rows4242,rows4243,rows4244,rows4245,rows4246,rows4247,rows4248,rows4249,rows4250,rows4251,rows4252,rows4253,rows4254,rows4255,rows4256,rows4257,rows4258,rows4259,rows4260,rows4261,rows4262,rows4263,rows4264,rows4265,rows4266,List.append_assoc,List.append_nil]
theorem partLength65 : partOps65.length=64 := by decide
theorem partStats65 : partRows65.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows65=332904 := by
  simp only [partRows65,List.length_append,MatrixRowBlocks.rows_weight_append,stats4203.1,stats4203.2,stats4204.1,stats4204.2,stats4205.1,stats4205.2,stats4206.1,stats4206.2,stats4207.1,stats4207.2,stats4208.1,stats4208.2,stats4209.1,stats4209.2,stats4210.1,stats4210.2,stats4211.1,stats4211.2,stats4212.1,stats4212.2,stats4213.1,stats4213.2,stats4214.1,stats4214.2,stats4215.1,stats4215.2,stats4216.1,stats4216.2,stats4217.1,stats4217.2,stats4218.1,stats4218.2,stats4219.1,stats4219.2,stats4220.1,stats4220.2,stats4221.1,stats4221.2,stats4222.1,stats4222.2,stats4223.1,stats4223.2,stats4224.1,stats4224.2,stats4225.1,stats4225.2,stats4226.1,stats4226.2,stats4227.1,stats4227.2,stats4228.1,stats4228.2,stats4229.1,stats4229.2,stats4230.1,stats4230.2,stats4231.1,stats4231.2,stats4232.1,stats4232.2,stats4233.1,stats4233.2,stats4234.1,stats4234.2,stats4235.1,stats4235.2,stats4236.1,stats4236.2,stats4237.1,stats4237.2,stats4238.1,stats4238.2,stats4239.1,stats4239.2,stats4240.1,stats4240.2,stats4241.1,stats4241.2,stats4242.1,stats4242.2,stats4243.1,stats4243.2,stats4244.1,stats4244.2,stats4245.1,stats4245.2,stats4246.1,stats4246.2,stats4247.1,stats4247.2,stats4248.1,stats4248.2,stats4249.1,stats4249.2,stats4250.1,stats4250.2,stats4251.1,stats4251.2,stats4252.1,stats4252.2,stats4253.1,stats4253.2,stats4254.1,stats4254.2,stats4255.1,stats4255.2,stats4256.1,stats4256.2,stats4257.1,stats4257.2,stats4258.1,stats4258.2,stats4259.1,stats4259.2,stats4260.1,stats4260.2,stats4261.1,stats4261.2,stats4262.1,stats4262.2,stats4263.1,stats4263.2,stats4264.1,stats4264.2,stats4265.1,stats4265.2,stats4266.1,stats4266.2]
  decide
end FrameHashControllerCheckedRows
