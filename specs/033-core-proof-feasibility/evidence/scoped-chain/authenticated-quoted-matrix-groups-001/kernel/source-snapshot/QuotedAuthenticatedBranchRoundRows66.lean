import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData67
import AuthenticatedBranchRoundInstructionMatrixData68
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4342 : actualRows4342=WordField.canonicalRows actualModulus 4342 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4342 : actualRows4342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4342=2892 := by core033_kernel_decide
theorem rows4343 : actualRows4343=WordField.canonicalRows actualModulus 4343 (.bxor 4341 4342) := by core033_kernel_decide
theorem stats4343 : actualRows4343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4343=7428 := by core033_kernel_decide
theorem rows4344 : actualRows4344=WordField.canonicalRows actualModulus 4344 (.bnot 4343) := by core033_kernel_decide
theorem stats4344 : actualRows4344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4344=6276 := by core033_kernel_decide
theorem rows4345 : actualRows4345=WordField.canonicalRows actualModulus 4345 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4345 : actualRows4345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4345=2892 := by core033_kernel_decide
theorem rows4346 : actualRows4346=WordField.canonicalRows actualModulus 4346 (.badd 4344 4345) := by core033_kernel_decide
theorem stats4346 : actualRows4346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4346=5388 := by core033_kernel_decide
theorem rows4347 : actualRows4347=WordField.canonicalRows actualModulus 4347 (.band 4346 2741) := by core033_kernel_decide
theorem stats4347 : actualRows4347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4347=5124 := by core033_kernel_decide
theorem rows4348 : actualRows4348=WordField.canonicalRows actualModulus 4348 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4348 : actualRows4348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4348=2892 := by core033_kernel_decide
theorem rows4349 : actualRows4349=WordField.canonicalRows actualModulus 4349 (.bxor 1299 4348) := by core033_kernel_decide
theorem stats4349 : actualRows4349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4349=7428 := by core033_kernel_decide
theorem rows4350 : actualRows4350=WordField.canonicalRows actualModulus 4350 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4350 : actualRows4350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4350=2820 := by core033_kernel_decide
theorem rows4351 : actualRows4351=WordField.canonicalRows actualModulus 4351 (.bnot 4350) := by core033_kernel_decide
theorem stats4351 : actualRows4351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4351=6276 := by core033_kernel_decide
theorem rows4352 : actualRows4352=WordField.canonicalRows actualModulus 4352 (.band 4349 4351) := by core033_kernel_decide
theorem stats4352 : actualRows4352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4352=5124 := by core033_kernel_decide
theorem rows4353 : actualRows4353=WordField.canonicalRows actualModulus 4353 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4353 : actualRows4353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4353=2892 := by core033_kernel_decide
theorem rows4354 : actualRows4354=WordField.canonicalRows actualModulus 4354 (.bxor 1299 4353) := by core033_kernel_decide
theorem stats4354 : actualRows4354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4354=7428 := by core033_kernel_decide
theorem rows4355 : actualRows4355=WordField.canonicalRows actualModulus 4355 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4355 : actualRows4355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4355=2820 := by core033_kernel_decide
theorem rows4356 : actualRows4356=WordField.canonicalRows actualModulus 4356 (.bnot 4355) := by core033_kernel_decide
theorem stats4356 : actualRows4356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4356=6276 := by core033_kernel_decide
theorem rows4357 : actualRows4357=WordField.canonicalRows actualModulus 4357 (.bxor 4354 4356) := by core033_kernel_decide
theorem stats4357 : actualRows4357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4357=7428 := by core033_kernel_decide
theorem rows4358 : actualRows4358=WordField.canonicalRows actualModulus 4358 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4358 : actualRows4358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4358=2892 := by core033_kernel_decide
theorem rows4359 : actualRows4359=WordField.canonicalRows actualModulus 4359 (.bxor 1299 4358) := by core033_kernel_decide
theorem stats4359 : actualRows4359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4359=7428 := by core033_kernel_decide
theorem rows4360 : actualRows4360=WordField.canonicalRows actualModulus 4360 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4360 : actualRows4360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4360=2820 := by core033_kernel_decide
theorem rows4361 : actualRows4361=WordField.canonicalRows actualModulus 4361 (.bnot 4360) := by core033_kernel_decide
theorem stats4361 : actualRows4361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4361=6276 := by core033_kernel_decide
theorem rows4362 : actualRows4362=WordField.canonicalRows actualModulus 4362 (.badd 4359 4361) := by core033_kernel_decide
theorem stats4362 : actualRows4362.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4362=5388 := by core033_kernel_decide
theorem rows4363 : actualRows4363=WordField.canonicalRows actualModulus 4363 (.bnot 4362) := by core033_kernel_decide
theorem stats4363 : actualRows4363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4363=6276 := by core033_kernel_decide
theorem rows4364 : actualRows4364=WordField.canonicalRows actualModulus 4364 (.band 4357 4363) := by core033_kernel_decide
theorem stats4364 : actualRows4364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4364=5124 := by core033_kernel_decide
theorem rows4365 : actualRows4365=WordField.canonicalRows actualModulus 4365 (.bxor 4352 4364) := by core033_kernel_decide
theorem stats4365 : actualRows4365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4365=7428 := by core033_kernel_decide
theorem rows4366 : actualRows4366=WordField.canonicalRows actualModulus 4366 (.shr 4365 31) := by core033_kernel_decide
theorem stats4366 : actualRows4366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4366=2892 := by core033_kernel_decide
theorem rows4367 : actualRows4367=WordField.canonicalRows actualModulus 4367 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4367 : actualRows4367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4367=2892 := by core033_kernel_decide
theorem rows4368 : actualRows4368=WordField.canonicalRows actualModulus 4368 (.bxor 4366 4367) := by core033_kernel_decide
theorem stats4368 : actualRows4368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4368=7428 := by core033_kernel_decide
theorem rows4369 : actualRows4369=WordField.canonicalRows actualModulus 4369 (.bnot 4368) := by core033_kernel_decide
theorem stats4369 : actualRows4369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4369=6276 := by core033_kernel_decide
theorem rows4370 : actualRows4370=WordField.canonicalRows actualModulus 4370 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4370 : actualRows4370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4370=2892 := by core033_kernel_decide
theorem rows4371 : actualRows4371=WordField.canonicalRows actualModulus 4371 (.badd 4369 4370) := by core033_kernel_decide
theorem stats4371 : actualRows4371.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4371=5388 := by core033_kernel_decide
theorem rows4372 : actualRows4372=WordField.canonicalRows actualModulus 4372 (.bnot 4371) := by core033_kernel_decide
theorem stats4372 : actualRows4372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4372=6276 := by core033_kernel_decide
theorem rows4373 : actualRows4373=WordField.canonicalRows actualModulus 4373 (.band 4372 2561) := by core033_kernel_decide
theorem stats4373 : actualRows4373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4373=5124 := by core033_kernel_decide
theorem rows4374 : actualRows4374=WordField.canonicalRows actualModulus 4374 (.bxor 4347 4373) := by core033_kernel_decide
theorem stats4374 : actualRows4374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4374=7428 := by core033_kernel_decide
theorem rows4375 : actualRows4375=WordField.canonicalRows actualModulus 4375 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4375 : actualRows4375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4375=2892 := by core033_kernel_decide
theorem rows4376 : actualRows4376=WordField.canonicalRows actualModulus 4376 (.bxor 1299 4375) := by core033_kernel_decide
theorem stats4376 : actualRows4376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4376=7428 := by core033_kernel_decide
theorem rows4377 : actualRows4377=WordField.canonicalRows actualModulus 4377 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4377 : actualRows4377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4377=2820 := by core033_kernel_decide
theorem rows4378 : actualRows4378=WordField.canonicalRows actualModulus 4378 (.bnot 4377) := by core033_kernel_decide
theorem stats4378 : actualRows4378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4378=6276 := by core033_kernel_decide
theorem rows4379 : actualRows4379=WordField.canonicalRows actualModulus 4379 (.band 4376 4378) := by core033_kernel_decide
theorem stats4379 : actualRows4379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4379=5124 := by core033_kernel_decide
theorem rows4380 : actualRows4380=WordField.canonicalRows actualModulus 4380 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4380 : actualRows4380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4380=2892 := by core033_kernel_decide
theorem rows4381 : actualRows4381=WordField.canonicalRows actualModulus 4381 (.bxor 1299 4380) := by core033_kernel_decide
theorem stats4381 : actualRows4381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4381=7428 := by core033_kernel_decide
theorem rows4382 : actualRows4382=WordField.canonicalRows actualModulus 4382 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4382 : actualRows4382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4382=2820 := by core033_kernel_decide
theorem rows4383 : actualRows4383=WordField.canonicalRows actualModulus 4383 (.bnot 4382) := by core033_kernel_decide
theorem stats4383 : actualRows4383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4383=6276 := by core033_kernel_decide
theorem rows4384 : actualRows4384=WordField.canonicalRows actualModulus 4384 (.bxor 4381 4383) := by core033_kernel_decide
theorem stats4384 : actualRows4384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4384=7428 := by core033_kernel_decide
theorem rows4385 : actualRows4385=WordField.canonicalRows actualModulus 4385 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4385 : actualRows4385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4385=2892 := by core033_kernel_decide
theorem rows4386 : actualRows4386=WordField.canonicalRows actualModulus 4386 (.bxor 1299 4385) := by core033_kernel_decide
theorem stats4386 : actualRows4386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4386=7428 := by core033_kernel_decide
theorem rows4387 : actualRows4387=WordField.canonicalRows actualModulus 4387 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4387 : actualRows4387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4387=2820 := by core033_kernel_decide
theorem rows4388 : actualRows4388=WordField.canonicalRows actualModulus 4388 (.bnot 4387) := by core033_kernel_decide
theorem stats4388 : actualRows4388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4388=6276 := by core033_kernel_decide
theorem rows4389 : actualRows4389=WordField.canonicalRows actualModulus 4389 (.badd 4386 4388) := by core033_kernel_decide
theorem stats4389 : actualRows4389.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4389=5388 := by core033_kernel_decide
theorem rows4390 : actualRows4390=WordField.canonicalRows actualModulus 4390 (.bnot 4389) := by core033_kernel_decide
theorem stats4390 : actualRows4390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4390=6276 := by core033_kernel_decide
theorem rows4391 : actualRows4391=WordField.canonicalRows actualModulus 4391 (.band 4384 4390) := by core033_kernel_decide
theorem stats4391 : actualRows4391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4391=5124 := by core033_kernel_decide
theorem rows4392 : actualRows4392=WordField.canonicalRows actualModulus 4392 (.bxor 4379 4391) := by core033_kernel_decide
theorem stats4392 : actualRows4392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4392=7428 := by core033_kernel_decide
theorem rows4393 : actualRows4393=WordField.canonicalRows actualModulus 4393 (.shr 4392 31) := by core033_kernel_decide
theorem stats4393 : actualRows4393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4393=2892 := by core033_kernel_decide
theorem rows4394 : actualRows4394=WordField.canonicalRows actualModulus 4394 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4394 : actualRows4394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4394=2892 := by core033_kernel_decide
theorem rows4395 : actualRows4395=WordField.canonicalRows actualModulus 4395 (.bxor 4393 4394) := by core033_kernel_decide
theorem stats4395 : actualRows4395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4395=7428 := by core033_kernel_decide
theorem rows4396 : actualRows4396=WordField.canonicalRows actualModulus 4396 (.bnot 4395) := by core033_kernel_decide
theorem stats4396 : actualRows4396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4396=6276 := by core033_kernel_decide
theorem rows4397 : actualRows4397=WordField.canonicalRows actualModulus 4397 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4397 : actualRows4397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4397=2892 := by core033_kernel_decide
theorem rows4398 : actualRows4398=WordField.canonicalRows actualModulus 4398 (.badd 4396 4397) := by core033_kernel_decide
theorem stats4398 : actualRows4398.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4398=5388 := by core033_kernel_decide
theorem rows4399 : actualRows4399=WordField.canonicalRows actualModulus 4399 (.band 4398 2744) := by core033_kernel_decide
theorem stats4399 : actualRows4399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4399=5124 := by core033_kernel_decide
theorem rows4400 : actualRows4400=WordField.canonicalRows actualModulus 4400 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4400 : actualRows4400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4400=2892 := by core033_kernel_decide
theorem rows4401 : actualRows4401=WordField.canonicalRows actualModulus 4401 (.bxor 1299 4400) := by core033_kernel_decide
theorem stats4401 : actualRows4401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4401=7428 := by core033_kernel_decide
theorem rows4402 : actualRows4402=WordField.canonicalRows actualModulus 4402 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4402 : actualRows4402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4402=2820 := by core033_kernel_decide
theorem rows4403 : actualRows4403=WordField.canonicalRows actualModulus 4403 (.bnot 4402) := by core033_kernel_decide
theorem stats4403 : actualRows4403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4403=6276 := by core033_kernel_decide
theorem rows4404 : actualRows4404=WordField.canonicalRows actualModulus 4404 (.band 4401 4403) := by core033_kernel_decide
theorem stats4404 : actualRows4404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4404=5124 := by core033_kernel_decide
theorem rows4405 : actualRows4405=WordField.canonicalRows actualModulus 4405 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4405 : actualRows4405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4405=2892 := by core033_kernel_decide
def partRows66 : List R1CS.Row := actualRows4342++actualRows4343++actualRows4344++actualRows4345++actualRows4346++actualRows4347++actualRows4348++actualRows4349++actualRows4350++actualRows4351++actualRows4352++actualRows4353++actualRows4354++actualRows4355++actualRows4356++actualRows4357++actualRows4358++actualRows4359++actualRows4360++actualRows4361++actualRows4362++actualRows4363++actualRows4364++actualRows4365++actualRows4366++actualRows4367++actualRows4368++actualRows4369++actualRows4370++actualRows4371++actualRows4372++actualRows4373++actualRows4374++actualRows4375++actualRows4376++actualRows4377++actualRows4378++actualRows4379++actualRows4380++actualRows4381++actualRows4382++actualRows4383++actualRows4384++actualRows4385++actualRows4386++actualRows4387++actualRows4388++actualRows4389++actualRows4390++actualRows4391++actualRows4392++actualRows4393++actualRows4394++actualRows4395++actualRows4396++actualRows4397++actualRows4398++actualRows4399++actualRows4400++actualRows4401++actualRows4402++actualRows4403++actualRows4404++actualRows4405
def partOps66 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 4341 4342,.bnot 4343,.literal (BitVec.ofNat 32 1),.badd 4344 4345,.band 4346 2741,.literal (BitVec.ofNat 32 2),.bxor 1299 4348,.literal (BitVec.ofNat 32 0),.bnot 4350,.band 4349 4351,.literal (BitVec.ofNat 32 2),.bxor 1299 4353,.literal (BitVec.ofNat 32 0),.bnot 4355,.bxor 4354 4356,.literal (BitVec.ofNat 32 2),.bxor 1299 4358,.literal (BitVec.ofNat 32 0),.bnot 4360,.badd 4359 4361,.bnot 4362,.band 4357 4363,.bxor 4352 4364,.shr 4365 31,.literal (BitVec.ofNat 32 1),.bxor 4366 4367,.bnot 4368,.literal (BitVec.ofNat 32 1),.badd 4369 4370,.bnot 4371,.band 4372 2561,.bxor 4347 4373,.literal (BitVec.ofNat 32 2),.bxor 1299 4375,.literal (BitVec.ofNat 32 0),.bnot 4377,.band 4376 4378,.literal (BitVec.ofNat 32 2),.bxor 1299 4380,.literal (BitVec.ofNat 32 0),.bnot 4382,.bxor 4381 4383,.literal (BitVec.ofNat 32 2),.bxor 1299 4385,.literal (BitVec.ofNat 32 0),.bnot 4387,.badd 4386 4388,.bnot 4389,.band 4384 4390,.bxor 4379 4391,.shr 4392 31,.literal (BitVec.ofNat 32 1),.bxor 4393 4394,.bnot 4395,.literal (BitVec.ofNat 32 1),.badd 4396 4397,.band 4398 2744,.literal (BitVec.ofNat 32 2),.bxor 1299 4400,.literal (BitVec.ofNat 32 0),.bnot 4402,.band 4401 4403,.literal (BitVec.ofNat 32 2)]
theorem partExact66 : partRows66=WordField.rows actualModulus 4342 partOps66 := by
  simp only [partRows66,partOps66,WordField.rows,rows4342,rows4343,rows4344,rows4345,rows4346,rows4347,rows4348,rows4349,rows4350,rows4351,rows4352,rows4353,rows4354,rows4355,rows4356,rows4357,rows4358,rows4359,rows4360,rows4361,rows4362,rows4363,rows4364,rows4365,rows4366,rows4367,rows4368,rows4369,rows4370,rows4371,rows4372,rows4373,rows4374,rows4375,rows4376,rows4377,rows4378,rows4379,rows4380,rows4381,rows4382,rows4383,rows4384,rows4385,rows4386,rows4387,rows4388,rows4389,rows4390,rows4391,rows4392,rows4393,rows4394,rows4395,rows4396,rows4397,rows4398,rows4399,rows4400,rows4401,rows4402,rows4403,rows4404,rows4405,List.append_assoc,List.append_nil]
theorem partLength66 : partOps66.length=64 := by decide
theorem partStats66 : partRows66.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows66=326952 := by
  simp only [partRows66,List.length_append,MatrixRowBlocks.rows_weight_append,stats4342.1,stats4342.2,stats4343.1,stats4343.2,stats4344.1,stats4344.2,stats4345.1,stats4345.2,stats4346.1,stats4346.2,stats4347.1,stats4347.2,stats4348.1,stats4348.2,stats4349.1,stats4349.2,stats4350.1,stats4350.2,stats4351.1,stats4351.2,stats4352.1,stats4352.2,stats4353.1,stats4353.2,stats4354.1,stats4354.2,stats4355.1,stats4355.2,stats4356.1,stats4356.2,stats4357.1,stats4357.2,stats4358.1,stats4358.2,stats4359.1,stats4359.2,stats4360.1,stats4360.2,stats4361.1,stats4361.2,stats4362.1,stats4362.2,stats4363.1,stats4363.2,stats4364.1,stats4364.2,stats4365.1,stats4365.2,stats4366.1,stats4366.2,stats4367.1,stats4367.2,stats4368.1,stats4368.2,stats4369.1,stats4369.2,stats4370.1,stats4370.2,stats4371.1,stats4371.2,stats4372.1,stats4372.2,stats4373.1,stats4373.2,stats4374.1,stats4374.2,stats4375.1,stats4375.2,stats4376.1,stats4376.2,stats4377.1,stats4377.2,stats4378.1,stats4378.2,stats4379.1,stats4379.2,stats4380.1,stats4380.2,stats4381.1,stats4381.2,stats4382.1,stats4382.2,stats4383.1,stats4383.2,stats4384.1,stats4384.2,stats4385.1,stats4385.2,stats4386.1,stats4386.2,stats4387.1,stats4387.2,stats4388.1,stats4388.2,stats4389.1,stats4389.2,stats4390.1,stats4390.2,stats4391.1,stats4391.2,stats4392.1,stats4392.2,stats4393.1,stats4393.2,stats4394.1,stats4394.2,stats4395.1,stats4395.2,stats4396.1,stats4396.2,stats4397.1,stats4397.2,stats4398.1,stats4398.2,stats4399.1,stats4399.2,stats4400.1,stats4400.2,stats4401.1,stats4401.2,stats4402.1,stats4402.2,stats4403.1,stats4403.2,stats4404.1,stats4404.2,stats4405.1,stats4405.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
