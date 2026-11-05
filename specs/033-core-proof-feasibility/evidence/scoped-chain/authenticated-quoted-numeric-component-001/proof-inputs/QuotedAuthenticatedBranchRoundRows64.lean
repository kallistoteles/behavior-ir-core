import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData65
import AuthenticatedBranchRoundInstructionMatrixData66
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4214 : actualRows4214=WordField.canonicalRows actualModulus 4214 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4214 : actualRows4214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4214=2892 := by core033_kernel_decide
theorem rows4215 : actualRows4215=WordField.canonicalRows actualModulus 4215 (.badd 4213 4214) := by core033_kernel_decide
theorem stats4215 : actualRows4215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4215=5388 := by core033_kernel_decide
theorem rows4216 : actualRows4216=WordField.canonicalRows actualModulus 4216 (.bnot 4215) := by core033_kernel_decide
theorem stats4216 : actualRows4216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4216=6276 := by core033_kernel_decide
theorem rows4217 : actualRows4217=WordField.canonicalRows actualModulus 4217 (.band 4216 2558) := by core033_kernel_decide
theorem stats4217 : actualRows4217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4217=5124 := by core033_kernel_decide
theorem rows4218 : actualRows4218=WordField.canonicalRows actualModulus 4218 (.bxor 4191 4217) := by core033_kernel_decide
theorem stats4218 : actualRows4218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4218=7428 := by core033_kernel_decide
theorem rows4219 : actualRows4219=WordField.canonicalRows actualModulus 4219 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4219 : actualRows4219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4219=2892 := by core033_kernel_decide
theorem rows4220 : actualRows4220=WordField.canonicalRows actualModulus 4220 (.bxor 1299 4219) := by core033_kernel_decide
theorem stats4220 : actualRows4220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4220=7428 := by core033_kernel_decide
theorem rows4221 : actualRows4221=WordField.canonicalRows actualModulus 4221 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4221 : actualRows4221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4221=2820 := by core033_kernel_decide
theorem rows4222 : actualRows4222=WordField.canonicalRows actualModulus 4222 (.bnot 4221) := by core033_kernel_decide
theorem stats4222 : actualRows4222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4222=6276 := by core033_kernel_decide
theorem rows4223 : actualRows4223=WordField.canonicalRows actualModulus 4223 (.band 4220 4222) := by core033_kernel_decide
theorem stats4223 : actualRows4223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4223=5124 := by core033_kernel_decide
theorem rows4224 : actualRows4224=WordField.canonicalRows actualModulus 4224 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4224 : actualRows4224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4224=2892 := by core033_kernel_decide
theorem rows4225 : actualRows4225=WordField.canonicalRows actualModulus 4225 (.bxor 1299 4224) := by core033_kernel_decide
theorem stats4225 : actualRows4225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4225=7428 := by core033_kernel_decide
theorem rows4226 : actualRows4226=WordField.canonicalRows actualModulus 4226 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4226 : actualRows4226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4226=2820 := by core033_kernel_decide
theorem rows4227 : actualRows4227=WordField.canonicalRows actualModulus 4227 (.bnot 4226) := by core033_kernel_decide
theorem stats4227 : actualRows4227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4227=6276 := by core033_kernel_decide
theorem rows4228 : actualRows4228=WordField.canonicalRows actualModulus 4228 (.bxor 4225 4227) := by core033_kernel_decide
theorem stats4228 : actualRows4228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4228=7428 := by core033_kernel_decide
theorem rows4229 : actualRows4229=WordField.canonicalRows actualModulus 4229 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4229 : actualRows4229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4229=2892 := by core033_kernel_decide
theorem rows4230 : actualRows4230=WordField.canonicalRows actualModulus 4230 (.bxor 1299 4229) := by core033_kernel_decide
theorem stats4230 : actualRows4230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4230=7428 := by core033_kernel_decide
theorem rows4231 : actualRows4231=WordField.canonicalRows actualModulus 4231 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4231 : actualRows4231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4231=2820 := by core033_kernel_decide
theorem rows4232 : actualRows4232=WordField.canonicalRows actualModulus 4232 (.bnot 4231) := by core033_kernel_decide
theorem stats4232 : actualRows4232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4232=6276 := by core033_kernel_decide
theorem rows4233 : actualRows4233=WordField.canonicalRows actualModulus 4233 (.badd 4230 4232) := by core033_kernel_decide
theorem stats4233 : actualRows4233.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4233=5388 := by core033_kernel_decide
theorem rows4234 : actualRows4234=WordField.canonicalRows actualModulus 4234 (.bnot 4233) := by core033_kernel_decide
theorem stats4234 : actualRows4234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4234=6276 := by core033_kernel_decide
theorem rows4235 : actualRows4235=WordField.canonicalRows actualModulus 4235 (.band 4228 4234) := by core033_kernel_decide
theorem stats4235 : actualRows4235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4235=5124 := by core033_kernel_decide
theorem rows4236 : actualRows4236=WordField.canonicalRows actualModulus 4236 (.bxor 4223 4235) := by core033_kernel_decide
theorem stats4236 : actualRows4236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4236=7428 := by core033_kernel_decide
theorem rows4237 : actualRows4237=WordField.canonicalRows actualModulus 4237 (.shr 4236 31) := by core033_kernel_decide
theorem stats4237 : actualRows4237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4237=2892 := by core033_kernel_decide
theorem rows4238 : actualRows4238=WordField.canonicalRows actualModulus 4238 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4238 : actualRows4238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4238=2892 := by core033_kernel_decide
theorem rows4239 : actualRows4239=WordField.canonicalRows actualModulus 4239 (.bxor 4237 4238) := by core033_kernel_decide
theorem stats4239 : actualRows4239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4239=7428 := by core033_kernel_decide
theorem rows4240 : actualRows4240=WordField.canonicalRows actualModulus 4240 (.bnot 4239) := by core033_kernel_decide
theorem stats4240 : actualRows4240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4240=6276 := by core033_kernel_decide
theorem rows4241 : actualRows4241=WordField.canonicalRows actualModulus 4241 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4241 : actualRows4241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4241=2892 := by core033_kernel_decide
theorem rows4242 : actualRows4242=WordField.canonicalRows actualModulus 4242 (.badd 4240 4241) := by core033_kernel_decide
theorem stats4242 : actualRows4242.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4242=5388 := by core033_kernel_decide
theorem rows4243 : actualRows4243=WordField.canonicalRows actualModulus 4243 (.band 4242 2735) := by core033_kernel_decide
theorem stats4243 : actualRows4243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4243=5124 := by core033_kernel_decide
theorem rows4244 : actualRows4244=WordField.canonicalRows actualModulus 4244 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4244 : actualRows4244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4244=2892 := by core033_kernel_decide
theorem rows4245 : actualRows4245=WordField.canonicalRows actualModulus 4245 (.bxor 1299 4244) := by core033_kernel_decide
theorem stats4245 : actualRows4245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4245=7428 := by core033_kernel_decide
theorem rows4246 : actualRows4246=WordField.canonicalRows actualModulus 4246 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4246 : actualRows4246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4246=2820 := by core033_kernel_decide
theorem rows4247 : actualRows4247=WordField.canonicalRows actualModulus 4247 (.bnot 4246) := by core033_kernel_decide
theorem stats4247 : actualRows4247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4247=6276 := by core033_kernel_decide
theorem rows4248 : actualRows4248=WordField.canonicalRows actualModulus 4248 (.band 4245 4247) := by core033_kernel_decide
theorem stats4248 : actualRows4248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4248=5124 := by core033_kernel_decide
theorem rows4249 : actualRows4249=WordField.canonicalRows actualModulus 4249 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4249 : actualRows4249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4249=2892 := by core033_kernel_decide
theorem rows4250 : actualRows4250=WordField.canonicalRows actualModulus 4250 (.bxor 1299 4249) := by core033_kernel_decide
theorem stats4250 : actualRows4250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4250=7428 := by core033_kernel_decide
theorem rows4251 : actualRows4251=WordField.canonicalRows actualModulus 4251 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4251 : actualRows4251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4251=2820 := by core033_kernel_decide
theorem rows4252 : actualRows4252=WordField.canonicalRows actualModulus 4252 (.bnot 4251) := by core033_kernel_decide
theorem stats4252 : actualRows4252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4252=6276 := by core033_kernel_decide
theorem rows4253 : actualRows4253=WordField.canonicalRows actualModulus 4253 (.bxor 4250 4252) := by core033_kernel_decide
theorem stats4253 : actualRows4253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4253=7428 := by core033_kernel_decide
theorem rows4254 : actualRows4254=WordField.canonicalRows actualModulus 4254 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4254 : actualRows4254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4254=2892 := by core033_kernel_decide
theorem rows4255 : actualRows4255=WordField.canonicalRows actualModulus 4255 (.bxor 1299 4254) := by core033_kernel_decide
theorem stats4255 : actualRows4255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4255=7428 := by core033_kernel_decide
theorem rows4256 : actualRows4256=WordField.canonicalRows actualModulus 4256 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4256 : actualRows4256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4256=2820 := by core033_kernel_decide
theorem rows4257 : actualRows4257=WordField.canonicalRows actualModulus 4257 (.bnot 4256) := by core033_kernel_decide
theorem stats4257 : actualRows4257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4257=6276 := by core033_kernel_decide
theorem rows4258 : actualRows4258=WordField.canonicalRows actualModulus 4258 (.badd 4255 4257) := by core033_kernel_decide
theorem stats4258 : actualRows4258.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4258=5388 := by core033_kernel_decide
theorem rows4259 : actualRows4259=WordField.canonicalRows actualModulus 4259 (.bnot 4258) := by core033_kernel_decide
theorem stats4259 : actualRows4259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4259=6276 := by core033_kernel_decide
theorem rows4260 : actualRows4260=WordField.canonicalRows actualModulus 4260 (.band 4253 4259) := by core033_kernel_decide
theorem stats4260 : actualRows4260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4260=5124 := by core033_kernel_decide
theorem rows4261 : actualRows4261=WordField.canonicalRows actualModulus 4261 (.bxor 4248 4260) := by core033_kernel_decide
theorem stats4261 : actualRows4261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4261=7428 := by core033_kernel_decide
theorem rows4262 : actualRows4262=WordField.canonicalRows actualModulus 4262 (.shr 4261 31) := by core033_kernel_decide
theorem stats4262 : actualRows4262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4262=2892 := by core033_kernel_decide
theorem rows4263 : actualRows4263=WordField.canonicalRows actualModulus 4263 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4263 : actualRows4263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4263=2892 := by core033_kernel_decide
theorem rows4264 : actualRows4264=WordField.canonicalRows actualModulus 4264 (.bxor 4262 4263) := by core033_kernel_decide
theorem stats4264 : actualRows4264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4264=7428 := by core033_kernel_decide
theorem rows4265 : actualRows4265=WordField.canonicalRows actualModulus 4265 (.bnot 4264) := by core033_kernel_decide
theorem stats4265 : actualRows4265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4265=6276 := by core033_kernel_decide
theorem rows4266 : actualRows4266=WordField.canonicalRows actualModulus 4266 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4266 : actualRows4266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4266=2892 := by core033_kernel_decide
theorem rows4267 : actualRows4267=WordField.canonicalRows actualModulus 4267 (.badd 4265 4266) := by core033_kernel_decide
theorem stats4267 : actualRows4267.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4267=5388 := by core033_kernel_decide
theorem rows4268 : actualRows4268=WordField.canonicalRows actualModulus 4268 (.bnot 4267) := by core033_kernel_decide
theorem stats4268 : actualRows4268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4268=6276 := by core033_kernel_decide
theorem rows4269 : actualRows4269=WordField.canonicalRows actualModulus 4269 (.band 4268 2559) := by core033_kernel_decide
theorem stats4269 : actualRows4269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4269=5124 := by core033_kernel_decide
theorem rows4270 : actualRows4270=WordField.canonicalRows actualModulus 4270 (.bxor 4243 4269) := by core033_kernel_decide
theorem stats4270 : actualRows4270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4270=7428 := by core033_kernel_decide
theorem rows4271 : actualRows4271=WordField.canonicalRows actualModulus 4271 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4271 : actualRows4271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4271=2892 := by core033_kernel_decide
theorem rows4272 : actualRows4272=WordField.canonicalRows actualModulus 4272 (.bxor 1299 4271) := by core033_kernel_decide
theorem stats4272 : actualRows4272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4272=7428 := by core033_kernel_decide
theorem rows4273 : actualRows4273=WordField.canonicalRows actualModulus 4273 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4273 : actualRows4273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4273=2820 := by core033_kernel_decide
theorem rows4274 : actualRows4274=WordField.canonicalRows actualModulus 4274 (.bnot 4273) := by core033_kernel_decide
theorem stats4274 : actualRows4274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4274=6276 := by core033_kernel_decide
theorem rows4275 : actualRows4275=WordField.canonicalRows actualModulus 4275 (.band 4272 4274) := by core033_kernel_decide
theorem stats4275 : actualRows4275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4275=5124 := by core033_kernel_decide
theorem rows4276 : actualRows4276=WordField.canonicalRows actualModulus 4276 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4276 : actualRows4276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4276=2892 := by core033_kernel_decide
theorem rows4277 : actualRows4277=WordField.canonicalRows actualModulus 4277 (.bxor 1299 4276) := by core033_kernel_decide
theorem stats4277 : actualRows4277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4277=7428 := by core033_kernel_decide
def partRows64 : List R1CS.Row := actualRows4214++actualRows4215++actualRows4216++actualRows4217++actualRows4218++actualRows4219++actualRows4220++actualRows4221++actualRows4222++actualRows4223++actualRows4224++actualRows4225++actualRows4226++actualRows4227++actualRows4228++actualRows4229++actualRows4230++actualRows4231++actualRows4232++actualRows4233++actualRows4234++actualRows4235++actualRows4236++actualRows4237++actualRows4238++actualRows4239++actualRows4240++actualRows4241++actualRows4242++actualRows4243++actualRows4244++actualRows4245++actualRows4246++actualRows4247++actualRows4248++actualRows4249++actualRows4250++actualRows4251++actualRows4252++actualRows4253++actualRows4254++actualRows4255++actualRows4256++actualRows4257++actualRows4258++actualRows4259++actualRows4260++actualRows4261++actualRows4262++actualRows4263++actualRows4264++actualRows4265++actualRows4266++actualRows4267++actualRows4268++actualRows4269++actualRows4270++actualRows4271++actualRows4272++actualRows4273++actualRows4274++actualRows4275++actualRows4276++actualRows4277
def partOps64 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 4213 4214,.bnot 4215,.band 4216 2558,.bxor 4191 4217,.literal (BitVec.ofNat 32 2),.bxor 1299 4219,.literal (BitVec.ofNat 32 0),.bnot 4221,.band 4220 4222,.literal (BitVec.ofNat 32 2),.bxor 1299 4224,.literal (BitVec.ofNat 32 0),.bnot 4226,.bxor 4225 4227,.literal (BitVec.ofNat 32 2),.bxor 1299 4229,.literal (BitVec.ofNat 32 0),.bnot 4231,.badd 4230 4232,.bnot 4233,.band 4228 4234,.bxor 4223 4235,.shr 4236 31,.literal (BitVec.ofNat 32 1),.bxor 4237 4238,.bnot 4239,.literal (BitVec.ofNat 32 1),.badd 4240 4241,.band 4242 2735,.literal (BitVec.ofNat 32 2),.bxor 1299 4244,.literal (BitVec.ofNat 32 0),.bnot 4246,.band 4245 4247,.literal (BitVec.ofNat 32 2),.bxor 1299 4249,.literal (BitVec.ofNat 32 0),.bnot 4251,.bxor 4250 4252,.literal (BitVec.ofNat 32 2),.bxor 1299 4254,.literal (BitVec.ofNat 32 0),.bnot 4256,.badd 4255 4257,.bnot 4258,.band 4253 4259,.bxor 4248 4260,.shr 4261 31,.literal (BitVec.ofNat 32 1),.bxor 4262 4263,.bnot 4264,.literal (BitVec.ofNat 32 1),.badd 4265 4266,.bnot 4267,.band 4268 2559,.bxor 4243 4269,.literal (BitVec.ofNat 32 2),.bxor 1299 4271,.literal (BitVec.ofNat 32 0),.bnot 4273,.band 4272 4274,.literal (BitVec.ofNat 32 2),.bxor 1299 4276]
theorem partExact64 : partRows64=WordField.rows actualModulus 4214 partOps64 := by
  simp only [partRows64,partOps64,WordField.rows,rows4214,rows4215,rows4216,rows4217,rows4218,rows4219,rows4220,rows4221,rows4222,rows4223,rows4224,rows4225,rows4226,rows4227,rows4228,rows4229,rows4230,rows4231,rows4232,rows4233,rows4234,rows4235,rows4236,rows4237,rows4238,rows4239,rows4240,rows4241,rows4242,rows4243,rows4244,rows4245,rows4246,rows4247,rows4248,rows4249,rows4250,rows4251,rows4252,rows4253,rows4254,rows4255,rows4256,rows4257,rows4258,rows4259,rows4260,rows4261,rows4262,rows4263,rows4264,rows4265,rows4266,rows4267,rows4268,rows4269,rows4270,rows4271,rows4272,rows4273,rows4274,rows4275,rows4276,rows4277,List.append_assoc,List.append_nil]
theorem partLength64 : partOps64.length=64 := by decide
theorem partStats64 : partRows64.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows64=331488 := by
  simp only [partRows64,List.length_append,MatrixRowBlocks.rows_weight_append,stats4214.1,stats4214.2,stats4215.1,stats4215.2,stats4216.1,stats4216.2,stats4217.1,stats4217.2,stats4218.1,stats4218.2,stats4219.1,stats4219.2,stats4220.1,stats4220.2,stats4221.1,stats4221.2,stats4222.1,stats4222.2,stats4223.1,stats4223.2,stats4224.1,stats4224.2,stats4225.1,stats4225.2,stats4226.1,stats4226.2,stats4227.1,stats4227.2,stats4228.1,stats4228.2,stats4229.1,stats4229.2,stats4230.1,stats4230.2,stats4231.1,stats4231.2,stats4232.1,stats4232.2,stats4233.1,stats4233.2,stats4234.1,stats4234.2,stats4235.1,stats4235.2,stats4236.1,stats4236.2,stats4237.1,stats4237.2,stats4238.1,stats4238.2,stats4239.1,stats4239.2,stats4240.1,stats4240.2,stats4241.1,stats4241.2,stats4242.1,stats4242.2,stats4243.1,stats4243.2,stats4244.1,stats4244.2,stats4245.1,stats4245.2,stats4246.1,stats4246.2,stats4247.1,stats4247.2,stats4248.1,stats4248.2,stats4249.1,stats4249.2,stats4250.1,stats4250.2,stats4251.1,stats4251.2,stats4252.1,stats4252.2,stats4253.1,stats4253.2,stats4254.1,stats4254.2,stats4255.1,stats4255.2,stats4256.1,stats4256.2,stats4257.1,stats4257.2,stats4258.1,stats4258.2,stats4259.1,stats4259.2,stats4260.1,stats4260.2,stats4261.1,stats4261.2,stats4262.1,stats4262.2,stats4263.1,stats4263.2,stats4264.1,stats4264.2,stats4265.1,stats4265.2,stats4266.1,stats4266.2,stats4267.1,stats4267.2,stats4268.1,stats4268.2,stats4269.1,stats4269.2,stats4270.1,stats4270.2,stats4271.1,stats4271.2,stats4272.1,stats4272.2,stats4273.1,stats4273.2,stats4274.1,stats4274.2,stats4275.1,stats4275.2,stats4276.1,stats4276.2,stats4277.1,stats4277.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
