import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData66
import AuthenticatedBranchRoundInstructionMatrixData67
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4278 : actualRows4278=WordField.canonicalRows actualModulus 4278 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4278 : actualRows4278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4278=2820 := by core033_kernel_decide
theorem rows4279 : actualRows4279=WordField.canonicalRows actualModulus 4279 (.bnot 4278) := by core033_kernel_decide
theorem stats4279 : actualRows4279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4279=6276 := by core033_kernel_decide
theorem rows4280 : actualRows4280=WordField.canonicalRows actualModulus 4280 (.bxor 4277 4279) := by core033_kernel_decide
theorem stats4280 : actualRows4280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4280=7428 := by core033_kernel_decide
theorem rows4281 : actualRows4281=WordField.canonicalRows actualModulus 4281 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4281 : actualRows4281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4281=2892 := by core033_kernel_decide
theorem rows4282 : actualRows4282=WordField.canonicalRows actualModulus 4282 (.bxor 1299 4281) := by core033_kernel_decide
theorem stats4282 : actualRows4282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4282=7428 := by core033_kernel_decide
theorem rows4283 : actualRows4283=WordField.canonicalRows actualModulus 4283 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4283 : actualRows4283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4283=2820 := by core033_kernel_decide
theorem rows4284 : actualRows4284=WordField.canonicalRows actualModulus 4284 (.bnot 4283) := by core033_kernel_decide
theorem stats4284 : actualRows4284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4284=6276 := by core033_kernel_decide
theorem rows4285 : actualRows4285=WordField.canonicalRows actualModulus 4285 (.badd 4282 4284) := by core033_kernel_decide
theorem stats4285 : actualRows4285.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4285=5388 := by core033_kernel_decide
theorem rows4286 : actualRows4286=WordField.canonicalRows actualModulus 4286 (.bnot 4285) := by core033_kernel_decide
theorem stats4286 : actualRows4286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4286=6276 := by core033_kernel_decide
theorem rows4287 : actualRows4287=WordField.canonicalRows actualModulus 4287 (.band 4280 4286) := by core033_kernel_decide
theorem stats4287 : actualRows4287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4287=5124 := by core033_kernel_decide
theorem rows4288 : actualRows4288=WordField.canonicalRows actualModulus 4288 (.bxor 4275 4287) := by core033_kernel_decide
theorem stats4288 : actualRows4288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4288=7428 := by core033_kernel_decide
theorem rows4289 : actualRows4289=WordField.canonicalRows actualModulus 4289 (.shr 4288 31) := by core033_kernel_decide
theorem stats4289 : actualRows4289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4289=2892 := by core033_kernel_decide
theorem rows4290 : actualRows4290=WordField.canonicalRows actualModulus 4290 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4290 : actualRows4290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4290=2892 := by core033_kernel_decide
theorem rows4291 : actualRows4291=WordField.canonicalRows actualModulus 4291 (.bxor 4289 4290) := by core033_kernel_decide
theorem stats4291 : actualRows4291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4291=7428 := by core033_kernel_decide
theorem rows4292 : actualRows4292=WordField.canonicalRows actualModulus 4292 (.bnot 4291) := by core033_kernel_decide
theorem stats4292 : actualRows4292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4292=6276 := by core033_kernel_decide
theorem rows4293 : actualRows4293=WordField.canonicalRows actualModulus 4293 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4293 : actualRows4293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4293=2892 := by core033_kernel_decide
theorem rows4294 : actualRows4294=WordField.canonicalRows actualModulus 4294 (.badd 4292 4293) := by core033_kernel_decide
theorem stats4294 : actualRows4294.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4294=5388 := by core033_kernel_decide
theorem rows4295 : actualRows4295=WordField.canonicalRows actualModulus 4295 (.band 4294 2738) := by core033_kernel_decide
theorem stats4295 : actualRows4295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4295=5124 := by core033_kernel_decide
theorem rows4296 : actualRows4296=WordField.canonicalRows actualModulus 4296 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4296 : actualRows4296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4296=2892 := by core033_kernel_decide
theorem rows4297 : actualRows4297=WordField.canonicalRows actualModulus 4297 (.bxor 1299 4296) := by core033_kernel_decide
theorem stats4297 : actualRows4297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4297=7428 := by core033_kernel_decide
theorem rows4298 : actualRows4298=WordField.canonicalRows actualModulus 4298 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4298 : actualRows4298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4298=2820 := by core033_kernel_decide
theorem rows4299 : actualRows4299=WordField.canonicalRows actualModulus 4299 (.bnot 4298) := by core033_kernel_decide
theorem stats4299 : actualRows4299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4299=6276 := by core033_kernel_decide
theorem rows4300 : actualRows4300=WordField.canonicalRows actualModulus 4300 (.band 4297 4299) := by core033_kernel_decide
theorem stats4300 : actualRows4300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4300=5124 := by core033_kernel_decide
theorem rows4301 : actualRows4301=WordField.canonicalRows actualModulus 4301 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4301 : actualRows4301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4301=2892 := by core033_kernel_decide
theorem rows4302 : actualRows4302=WordField.canonicalRows actualModulus 4302 (.bxor 1299 4301) := by core033_kernel_decide
theorem stats4302 : actualRows4302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4302=7428 := by core033_kernel_decide
theorem rows4303 : actualRows4303=WordField.canonicalRows actualModulus 4303 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4303 : actualRows4303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4303=2820 := by core033_kernel_decide
theorem rows4304 : actualRows4304=WordField.canonicalRows actualModulus 4304 (.bnot 4303) := by core033_kernel_decide
theorem stats4304 : actualRows4304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4304=6276 := by core033_kernel_decide
theorem rows4305 : actualRows4305=WordField.canonicalRows actualModulus 4305 (.bxor 4302 4304) := by core033_kernel_decide
theorem stats4305 : actualRows4305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4305=7428 := by core033_kernel_decide
theorem rows4306 : actualRows4306=WordField.canonicalRows actualModulus 4306 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4306 : actualRows4306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4306=2892 := by core033_kernel_decide
theorem rows4307 : actualRows4307=WordField.canonicalRows actualModulus 4307 (.bxor 1299 4306) := by core033_kernel_decide
theorem stats4307 : actualRows4307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4307=7428 := by core033_kernel_decide
theorem rows4308 : actualRows4308=WordField.canonicalRows actualModulus 4308 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4308 : actualRows4308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4308=2820 := by core033_kernel_decide
theorem rows4309 : actualRows4309=WordField.canonicalRows actualModulus 4309 (.bnot 4308) := by core033_kernel_decide
theorem stats4309 : actualRows4309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4309=6276 := by core033_kernel_decide
theorem rows4310 : actualRows4310=WordField.canonicalRows actualModulus 4310 (.badd 4307 4309) := by core033_kernel_decide
theorem stats4310 : actualRows4310.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4310=5388 := by core033_kernel_decide
theorem rows4311 : actualRows4311=WordField.canonicalRows actualModulus 4311 (.bnot 4310) := by core033_kernel_decide
theorem stats4311 : actualRows4311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4311=6276 := by core033_kernel_decide
theorem rows4312 : actualRows4312=WordField.canonicalRows actualModulus 4312 (.band 4305 4311) := by core033_kernel_decide
theorem stats4312 : actualRows4312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4312=5124 := by core033_kernel_decide
theorem rows4313 : actualRows4313=WordField.canonicalRows actualModulus 4313 (.bxor 4300 4312) := by core033_kernel_decide
theorem stats4313 : actualRows4313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4313=7428 := by core033_kernel_decide
theorem rows4314 : actualRows4314=WordField.canonicalRows actualModulus 4314 (.shr 4313 31) := by core033_kernel_decide
theorem stats4314 : actualRows4314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4314=2892 := by core033_kernel_decide
theorem rows4315 : actualRows4315=WordField.canonicalRows actualModulus 4315 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4315 : actualRows4315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4315=2892 := by core033_kernel_decide
theorem rows4316 : actualRows4316=WordField.canonicalRows actualModulus 4316 (.bxor 4314 4315) := by core033_kernel_decide
theorem stats4316 : actualRows4316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4316=7428 := by core033_kernel_decide
theorem rows4317 : actualRows4317=WordField.canonicalRows actualModulus 4317 (.bnot 4316) := by core033_kernel_decide
theorem stats4317 : actualRows4317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4317=6276 := by core033_kernel_decide
theorem rows4318 : actualRows4318=WordField.canonicalRows actualModulus 4318 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4318 : actualRows4318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4318=2892 := by core033_kernel_decide
theorem rows4319 : actualRows4319=WordField.canonicalRows actualModulus 4319 (.badd 4317 4318) := by core033_kernel_decide
theorem stats4319 : actualRows4319.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4319=5388 := by core033_kernel_decide
theorem rows4320 : actualRows4320=WordField.canonicalRows actualModulus 4320 (.bnot 4319) := by core033_kernel_decide
theorem stats4320 : actualRows4320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4320=6276 := by core033_kernel_decide
theorem rows4321 : actualRows4321=WordField.canonicalRows actualModulus 4321 (.band 4320 2560) := by core033_kernel_decide
theorem stats4321 : actualRows4321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4321=5124 := by core033_kernel_decide
theorem rows4322 : actualRows4322=WordField.canonicalRows actualModulus 4322 (.bxor 4295 4321) := by core033_kernel_decide
theorem stats4322 : actualRows4322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4322=7428 := by core033_kernel_decide
theorem rows4323 : actualRows4323=WordField.canonicalRows actualModulus 4323 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4323 : actualRows4323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4323=2892 := by core033_kernel_decide
theorem rows4324 : actualRows4324=WordField.canonicalRows actualModulus 4324 (.bxor 1299 4323) := by core033_kernel_decide
theorem stats4324 : actualRows4324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4324=7428 := by core033_kernel_decide
theorem rows4325 : actualRows4325=WordField.canonicalRows actualModulus 4325 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4325 : actualRows4325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4325=2820 := by core033_kernel_decide
theorem rows4326 : actualRows4326=WordField.canonicalRows actualModulus 4326 (.bnot 4325) := by core033_kernel_decide
theorem stats4326 : actualRows4326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4326=6276 := by core033_kernel_decide
theorem rows4327 : actualRows4327=WordField.canonicalRows actualModulus 4327 (.band 4324 4326) := by core033_kernel_decide
theorem stats4327 : actualRows4327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4327=5124 := by core033_kernel_decide
theorem rows4328 : actualRows4328=WordField.canonicalRows actualModulus 4328 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4328 : actualRows4328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4328=2892 := by core033_kernel_decide
theorem rows4329 : actualRows4329=WordField.canonicalRows actualModulus 4329 (.bxor 1299 4328) := by core033_kernel_decide
theorem stats4329 : actualRows4329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4329=7428 := by core033_kernel_decide
theorem rows4330 : actualRows4330=WordField.canonicalRows actualModulus 4330 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4330 : actualRows4330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4330=2820 := by core033_kernel_decide
theorem rows4331 : actualRows4331=WordField.canonicalRows actualModulus 4331 (.bnot 4330) := by core033_kernel_decide
theorem stats4331 : actualRows4331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4331=6276 := by core033_kernel_decide
theorem rows4332 : actualRows4332=WordField.canonicalRows actualModulus 4332 (.bxor 4329 4331) := by core033_kernel_decide
theorem stats4332 : actualRows4332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4332=7428 := by core033_kernel_decide
theorem rows4333 : actualRows4333=WordField.canonicalRows actualModulus 4333 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4333 : actualRows4333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4333=2892 := by core033_kernel_decide
theorem rows4334 : actualRows4334=WordField.canonicalRows actualModulus 4334 (.bxor 1299 4333) := by core033_kernel_decide
theorem stats4334 : actualRows4334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4334=7428 := by core033_kernel_decide
theorem rows4335 : actualRows4335=WordField.canonicalRows actualModulus 4335 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4335 : actualRows4335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4335=2820 := by core033_kernel_decide
theorem rows4336 : actualRows4336=WordField.canonicalRows actualModulus 4336 (.bnot 4335) := by core033_kernel_decide
theorem stats4336 : actualRows4336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4336=6276 := by core033_kernel_decide
theorem rows4337 : actualRows4337=WordField.canonicalRows actualModulus 4337 (.badd 4334 4336) := by core033_kernel_decide
theorem stats4337 : actualRows4337.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4337=5388 := by core033_kernel_decide
theorem rows4338 : actualRows4338=WordField.canonicalRows actualModulus 4338 (.bnot 4337) := by core033_kernel_decide
theorem stats4338 : actualRows4338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4338=6276 := by core033_kernel_decide
theorem rows4339 : actualRows4339=WordField.canonicalRows actualModulus 4339 (.band 4332 4338) := by core033_kernel_decide
theorem stats4339 : actualRows4339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4339=5124 := by core033_kernel_decide
theorem rows4340 : actualRows4340=WordField.canonicalRows actualModulus 4340 (.bxor 4327 4339) := by core033_kernel_decide
theorem stats4340 : actualRows4340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4340=7428 := by core033_kernel_decide
theorem rows4341 : actualRows4341=WordField.canonicalRows actualModulus 4341 (.shr 4340 31) := by core033_kernel_decide
theorem stats4341 : actualRows4341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4341=2892 := by core033_kernel_decide
def partRows65 : List R1CS.Row := actualRows4278++actualRows4279++actualRows4280++actualRows4281++actualRows4282++actualRows4283++actualRows4284++actualRows4285++actualRows4286++actualRows4287++actualRows4288++actualRows4289++actualRows4290++actualRows4291++actualRows4292++actualRows4293++actualRows4294++actualRows4295++actualRows4296++actualRows4297++actualRows4298++actualRows4299++actualRows4300++actualRows4301++actualRows4302++actualRows4303++actualRows4304++actualRows4305++actualRows4306++actualRows4307++actualRows4308++actualRows4309++actualRows4310++actualRows4311++actualRows4312++actualRows4313++actualRows4314++actualRows4315++actualRows4316++actualRows4317++actualRows4318++actualRows4319++actualRows4320++actualRows4321++actualRows4322++actualRows4323++actualRows4324++actualRows4325++actualRows4326++actualRows4327++actualRows4328++actualRows4329++actualRows4330++actualRows4331++actualRows4332++actualRows4333++actualRows4334++actualRows4335++actualRows4336++actualRows4337++actualRows4338++actualRows4339++actualRows4340++actualRows4341
def partOps65 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 4278,.bxor 4277 4279,.literal (BitVec.ofNat 32 2),.bxor 1299 4281,.literal (BitVec.ofNat 32 0),.bnot 4283,.badd 4282 4284,.bnot 4285,.band 4280 4286,.bxor 4275 4287,.shr 4288 31,.literal (BitVec.ofNat 32 1),.bxor 4289 4290,.bnot 4291,.literal (BitVec.ofNat 32 1),.badd 4292 4293,.band 4294 2738,.literal (BitVec.ofNat 32 2),.bxor 1299 4296,.literal (BitVec.ofNat 32 0),.bnot 4298,.band 4297 4299,.literal (BitVec.ofNat 32 2),.bxor 1299 4301,.literal (BitVec.ofNat 32 0),.bnot 4303,.bxor 4302 4304,.literal (BitVec.ofNat 32 2),.bxor 1299 4306,.literal (BitVec.ofNat 32 0),.bnot 4308,.badd 4307 4309,.bnot 4310,.band 4305 4311,.bxor 4300 4312,.shr 4313 31,.literal (BitVec.ofNat 32 1),.bxor 4314 4315,.bnot 4316,.literal (BitVec.ofNat 32 1),.badd 4317 4318,.bnot 4319,.band 4320 2560,.bxor 4295 4321,.literal (BitVec.ofNat 32 2),.bxor 1299 4323,.literal (BitVec.ofNat 32 0),.bnot 4325,.band 4324 4326,.literal (BitVec.ofNat 32 2),.bxor 1299 4328,.literal (BitVec.ofNat 32 0),.bnot 4330,.bxor 4329 4331,.literal (BitVec.ofNat 32 2),.bxor 1299 4333,.literal (BitVec.ofNat 32 0),.bnot 4335,.badd 4334 4336,.bnot 4337,.band 4332 4338,.bxor 4327 4339,.shr 4340 31]
theorem partExact65 : partRows65=WordField.rows actualModulus 4278 partOps65 := by
  simp only [partRows65,partOps65,WordField.rows,rows4278,rows4279,rows4280,rows4281,rows4282,rows4283,rows4284,rows4285,rows4286,rows4287,rows4288,rows4289,rows4290,rows4291,rows4292,rows4293,rows4294,rows4295,rows4296,rows4297,rows4298,rows4299,rows4300,rows4301,rows4302,rows4303,rows4304,rows4305,rows4306,rows4307,rows4308,rows4309,rows4310,rows4311,rows4312,rows4313,rows4314,rows4315,rows4316,rows4317,rows4318,rows4319,rows4320,rows4321,rows4322,rows4323,rows4324,rows4325,rows4326,rows4327,rows4328,rows4329,rows4330,rows4331,rows4332,rows4333,rows4334,rows4335,rows4336,rows4337,rows4338,rows4339,rows4340,rows4341,List.append_assoc,List.append_nil]
theorem partLength65 : partOps65.length=64 := by decide
theorem partStats65 : partRows65.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows65=332568 := by
  simp only [partRows65,List.length_append,MatrixRowBlocks.rows_weight_append,stats4278.1,stats4278.2,stats4279.1,stats4279.2,stats4280.1,stats4280.2,stats4281.1,stats4281.2,stats4282.1,stats4282.2,stats4283.1,stats4283.2,stats4284.1,stats4284.2,stats4285.1,stats4285.2,stats4286.1,stats4286.2,stats4287.1,stats4287.2,stats4288.1,stats4288.2,stats4289.1,stats4289.2,stats4290.1,stats4290.2,stats4291.1,stats4291.2,stats4292.1,stats4292.2,stats4293.1,stats4293.2,stats4294.1,stats4294.2,stats4295.1,stats4295.2,stats4296.1,stats4296.2,stats4297.1,stats4297.2,stats4298.1,stats4298.2,stats4299.1,stats4299.2,stats4300.1,stats4300.2,stats4301.1,stats4301.2,stats4302.1,stats4302.2,stats4303.1,stats4303.2,stats4304.1,stats4304.2,stats4305.1,stats4305.2,stats4306.1,stats4306.2,stats4307.1,stats4307.2,stats4308.1,stats4308.2,stats4309.1,stats4309.2,stats4310.1,stats4310.2,stats4311.1,stats4311.2,stats4312.1,stats4312.2,stats4313.1,stats4313.2,stats4314.1,stats4314.2,stats4315.1,stats4315.2,stats4316.1,stats4316.2,stats4317.1,stats4317.2,stats4318.1,stats4318.2,stats4319.1,stats4319.2,stats4320.1,stats4320.2,stats4321.1,stats4321.2,stats4322.1,stats4322.2,stats4323.1,stats4323.2,stats4324.1,stats4324.2,stats4325.1,stats4325.2,stats4326.1,stats4326.2,stats4327.1,stats4327.2,stats4328.1,stats4328.2,stats4329.1,stats4329.2,stats4330.1,stats4330.2,stats4331.1,stats4331.2,stats4332.1,stats4332.2,stats4333.1,stats4333.2,stats4334.1,stats4334.2,stats4335.1,stats4335.2,stats4336.1,stats4336.2,stats4337.1,stats4337.2,stats4338.1,stats4338.2,stats4339.1,stats4339.2,stats4340.1,stats4340.2,stats4341.1,stats4341.2]
  decide
end AuthenticatedBranchRoundCheckedRows
