import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData67
import PathRoundDispatchInstructionMatrixData68
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4331 : actualRows4331=WordField.canonicalRows actualModulus 4331 (.bnot 4330) := by core033_kernel_decide
theorem stats4331 : actualRows4331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4331=6276 := by core033_kernel_decide
theorem rows4332 : actualRows4332=WordField.canonicalRows actualModulus 4332 (.band 4325 4331) := by core033_kernel_decide
theorem stats4332 : actualRows4332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4332=5124 := by core033_kernel_decide
theorem rows4333 : actualRows4333=WordField.canonicalRows actualModulus 4333 (.bxor 4320 4332) := by core033_kernel_decide
theorem stats4333 : actualRows4333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4333=7428 := by core033_kernel_decide
theorem rows4334 : actualRows4334=WordField.canonicalRows actualModulus 4334 (.shr 4333 31) := by core033_kernel_decide
theorem stats4334 : actualRows4334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4334=2892 := by core033_kernel_decide
theorem rows4335 : actualRows4335=WordField.canonicalRows actualModulus 4335 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4335 : actualRows4335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4335=2892 := by core033_kernel_decide
theorem rows4336 : actualRows4336=WordField.canonicalRows actualModulus 4336 (.bxor 4334 4335) := by core033_kernel_decide
theorem stats4336 : actualRows4336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4336=7428 := by core033_kernel_decide
theorem rows4337 : actualRows4337=WordField.canonicalRows actualModulus 4337 (.bnot 4336) := by core033_kernel_decide
theorem stats4337 : actualRows4337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4337=6276 := by core033_kernel_decide
theorem rows4338 : actualRows4338=WordField.canonicalRows actualModulus 4338 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4338 : actualRows4338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4338=2892 := by core033_kernel_decide
theorem rows4339 : actualRows4339=WordField.canonicalRows actualModulus 4339 (.badd 4337 4338) := by core033_kernel_decide
theorem stats4339 : actualRows4339.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4339=5388 := by core033_kernel_decide
theorem rows4340 : actualRows4340=WordField.canonicalRows actualModulus 4340 (.band 4339 1607) := by core033_kernel_decide
theorem stats4340 : actualRows4340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4340=5124 := by core033_kernel_decide
theorem rows4341 : actualRows4341=WordField.canonicalRows actualModulus 4341 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4341 : actualRows4341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4341=2892 := by core033_kernel_decide
theorem rows4342 : actualRows4342=WordField.canonicalRows actualModulus 4342 (.bxor 96 4341) := by core033_kernel_decide
theorem stats4342 : actualRows4342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4342=7428 := by core033_kernel_decide
theorem rows4343 : actualRows4343=WordField.canonicalRows actualModulus 4343 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4343 : actualRows4343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4343=2820 := by core033_kernel_decide
theorem rows4344 : actualRows4344=WordField.canonicalRows actualModulus 4344 (.bnot 4343) := by core033_kernel_decide
theorem stats4344 : actualRows4344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4344=6276 := by core033_kernel_decide
theorem rows4345 : actualRows4345=WordField.canonicalRows actualModulus 4345 (.band 4342 4344) := by core033_kernel_decide
theorem stats4345 : actualRows4345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4345=5124 := by core033_kernel_decide
theorem rows4346 : actualRows4346=WordField.canonicalRows actualModulus 4346 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4346 : actualRows4346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4346=2892 := by core033_kernel_decide
theorem rows4347 : actualRows4347=WordField.canonicalRows actualModulus 4347 (.bxor 96 4346) := by core033_kernel_decide
theorem stats4347 : actualRows4347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4347=7428 := by core033_kernel_decide
theorem rows4348 : actualRows4348=WordField.canonicalRows actualModulus 4348 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4348 : actualRows4348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4348=2820 := by core033_kernel_decide
theorem rows4349 : actualRows4349=WordField.canonicalRows actualModulus 4349 (.bnot 4348) := by core033_kernel_decide
theorem stats4349 : actualRows4349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4349=6276 := by core033_kernel_decide
theorem rows4350 : actualRows4350=WordField.canonicalRows actualModulus 4350 (.bxor 4347 4349) := by core033_kernel_decide
theorem stats4350 : actualRows4350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4350=7428 := by core033_kernel_decide
theorem rows4351 : actualRows4351=WordField.canonicalRows actualModulus 4351 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4351 : actualRows4351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4351=2892 := by core033_kernel_decide
theorem rows4352 : actualRows4352=WordField.canonicalRows actualModulus 4352 (.bxor 96 4351) := by core033_kernel_decide
theorem stats4352 : actualRows4352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4352=7428 := by core033_kernel_decide
theorem rows4353 : actualRows4353=WordField.canonicalRows actualModulus 4353 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4353 : actualRows4353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4353=2820 := by core033_kernel_decide
theorem rows4354 : actualRows4354=WordField.canonicalRows actualModulus 4354 (.bnot 4353) := by core033_kernel_decide
theorem stats4354 : actualRows4354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4354=6276 := by core033_kernel_decide
theorem rows4355 : actualRows4355=WordField.canonicalRows actualModulus 4355 (.badd 4352 4354) := by core033_kernel_decide
theorem stats4355 : actualRows4355.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4355=5388 := by core033_kernel_decide
theorem rows4356 : actualRows4356=WordField.canonicalRows actualModulus 4356 (.bnot 4355) := by core033_kernel_decide
theorem stats4356 : actualRows4356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4356=6276 := by core033_kernel_decide
theorem rows4357 : actualRows4357=WordField.canonicalRows actualModulus 4357 (.band 4350 4356) := by core033_kernel_decide
theorem stats4357 : actualRows4357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4357=5124 := by core033_kernel_decide
theorem rows4358 : actualRows4358=WordField.canonicalRows actualModulus 4358 (.bxor 4345 4357) := by core033_kernel_decide
theorem stats4358 : actualRows4358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4358=7428 := by core033_kernel_decide
theorem rows4359 : actualRows4359=WordField.canonicalRows actualModulus 4359 (.shr 4358 31) := by core033_kernel_decide
theorem stats4359 : actualRows4359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4359=2892 := by core033_kernel_decide
theorem rows4360 : actualRows4360=WordField.canonicalRows actualModulus 4360 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4360 : actualRows4360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4360=2892 := by core033_kernel_decide
theorem rows4361 : actualRows4361=WordField.canonicalRows actualModulus 4361 (.bxor 4359 4360) := by core033_kernel_decide
theorem stats4361 : actualRows4361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4361=7428 := by core033_kernel_decide
theorem rows4362 : actualRows4362=WordField.canonicalRows actualModulus 4362 (.bnot 4361) := by core033_kernel_decide
theorem stats4362 : actualRows4362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4362=6276 := by core033_kernel_decide
theorem rows4363 : actualRows4363=WordField.canonicalRows actualModulus 4363 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4363 : actualRows4363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4363=2892 := by core033_kernel_decide
theorem rows4364 : actualRows4364=WordField.canonicalRows actualModulus 4364 (.badd 4362 4363) := by core033_kernel_decide
theorem stats4364 : actualRows4364.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4364=5388 := by core033_kernel_decide
theorem rows4365 : actualRows4365=WordField.canonicalRows actualModulus 4365 (.bnot 4364) := by core033_kernel_decide
theorem stats4365 : actualRows4365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4365=6276 := by core033_kernel_decide
theorem rows4366 : actualRows4366=WordField.canonicalRows actualModulus 4366 (.band 4365 1415) := by core033_kernel_decide
theorem stats4366 : actualRows4366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4366=5124 := by core033_kernel_decide
theorem rows4367 : actualRows4367=WordField.canonicalRows actualModulus 4367 (.bxor 4340 4366) := by core033_kernel_decide
theorem stats4367 : actualRows4367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4367=7428 := by core033_kernel_decide
theorem rows4368 : actualRows4368=WordField.canonicalRows actualModulus 4368 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4368 : actualRows4368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4368=2892 := by core033_kernel_decide
theorem rows4369 : actualRows4369=WordField.canonicalRows actualModulus 4369 (.bxor 96 4368) := by core033_kernel_decide
theorem stats4369 : actualRows4369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4369=7428 := by core033_kernel_decide
theorem rows4370 : actualRows4370=WordField.canonicalRows actualModulus 4370 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4370 : actualRows4370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4370=2820 := by core033_kernel_decide
theorem rows4371 : actualRows4371=WordField.canonicalRows actualModulus 4371 (.bnot 4370) := by core033_kernel_decide
theorem stats4371 : actualRows4371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4371=6276 := by core033_kernel_decide
theorem rows4372 : actualRows4372=WordField.canonicalRows actualModulus 4372 (.band 4369 4371) := by core033_kernel_decide
theorem stats4372 : actualRows4372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4372=5124 := by core033_kernel_decide
theorem rows4373 : actualRows4373=WordField.canonicalRows actualModulus 4373 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4373 : actualRows4373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4373=2892 := by core033_kernel_decide
theorem rows4374 : actualRows4374=WordField.canonicalRows actualModulus 4374 (.bxor 96 4373) := by core033_kernel_decide
theorem stats4374 : actualRows4374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4374=7428 := by core033_kernel_decide
theorem rows4375 : actualRows4375=WordField.canonicalRows actualModulus 4375 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4375 : actualRows4375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4375=2820 := by core033_kernel_decide
theorem rows4376 : actualRows4376=WordField.canonicalRows actualModulus 4376 (.bnot 4375) := by core033_kernel_decide
theorem stats4376 : actualRows4376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4376=6276 := by core033_kernel_decide
theorem rows4377 : actualRows4377=WordField.canonicalRows actualModulus 4377 (.bxor 4374 4376) := by core033_kernel_decide
theorem stats4377 : actualRows4377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4377=7428 := by core033_kernel_decide
theorem rows4378 : actualRows4378=WordField.canonicalRows actualModulus 4378 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4378 : actualRows4378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4378=2892 := by core033_kernel_decide
theorem rows4379 : actualRows4379=WordField.canonicalRows actualModulus 4379 (.bxor 96 4378) := by core033_kernel_decide
theorem stats4379 : actualRows4379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4379=7428 := by core033_kernel_decide
theorem rows4380 : actualRows4380=WordField.canonicalRows actualModulus 4380 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4380 : actualRows4380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4380=2820 := by core033_kernel_decide
theorem rows4381 : actualRows4381=WordField.canonicalRows actualModulus 4381 (.bnot 4380) := by core033_kernel_decide
theorem stats4381 : actualRows4381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4381=6276 := by core033_kernel_decide
theorem rows4382 : actualRows4382=WordField.canonicalRows actualModulus 4382 (.badd 4379 4381) := by core033_kernel_decide
theorem stats4382 : actualRows4382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4382=5388 := by core033_kernel_decide
theorem rows4383 : actualRows4383=WordField.canonicalRows actualModulus 4383 (.bnot 4382) := by core033_kernel_decide
theorem stats4383 : actualRows4383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4383=6276 := by core033_kernel_decide
theorem rows4384 : actualRows4384=WordField.canonicalRows actualModulus 4384 (.band 4377 4383) := by core033_kernel_decide
theorem stats4384 : actualRows4384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4384=5124 := by core033_kernel_decide
theorem rows4385 : actualRows4385=WordField.canonicalRows actualModulus 4385 (.bxor 4372 4384) := by core033_kernel_decide
theorem stats4385 : actualRows4385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4385=7428 := by core033_kernel_decide
theorem rows4386 : actualRows4386=WordField.canonicalRows actualModulus 4386 (.shr 4385 31) := by core033_kernel_decide
theorem stats4386 : actualRows4386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4386=2892 := by core033_kernel_decide
theorem rows4387 : actualRows4387=WordField.canonicalRows actualModulus 4387 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4387 : actualRows4387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4387=2892 := by core033_kernel_decide
theorem rows4388 : actualRows4388=WordField.canonicalRows actualModulus 4388 (.bxor 4386 4387) := by core033_kernel_decide
theorem stats4388 : actualRows4388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4388=7428 := by core033_kernel_decide
theorem rows4389 : actualRows4389=WordField.canonicalRows actualModulus 4389 (.bnot 4388) := by core033_kernel_decide
theorem stats4389 : actualRows4389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4389=6276 := by core033_kernel_decide
theorem rows4390 : actualRows4390=WordField.canonicalRows actualModulus 4390 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4390 : actualRows4390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4390=2892 := by core033_kernel_decide
theorem rows4391 : actualRows4391=WordField.canonicalRows actualModulus 4391 (.badd 4389 4390) := by core033_kernel_decide
theorem stats4391 : actualRows4391.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4391=5388 := by core033_kernel_decide
theorem rows4392 : actualRows4392=WordField.canonicalRows actualModulus 4392 (.band 4391 1610) := by core033_kernel_decide
theorem stats4392 : actualRows4392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4392=5124 := by core033_kernel_decide
theorem rows4393 : actualRows4393=WordField.canonicalRows actualModulus 4393 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4393 : actualRows4393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4393=2892 := by core033_kernel_decide
theorem rows4394 : actualRows4394=WordField.canonicalRows actualModulus 4394 (.bxor 96 4393) := by core033_kernel_decide
theorem stats4394 : actualRows4394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4394=7428 := by core033_kernel_decide
def partRows67 : List R1CS.Row := actualRows4331++actualRows4332++actualRows4333++actualRows4334++actualRows4335++actualRows4336++actualRows4337++actualRows4338++actualRows4339++actualRows4340++actualRows4341++actualRows4342++actualRows4343++actualRows4344++actualRows4345++actualRows4346++actualRows4347++actualRows4348++actualRows4349++actualRows4350++actualRows4351++actualRows4352++actualRows4353++actualRows4354++actualRows4355++actualRows4356++actualRows4357++actualRows4358++actualRows4359++actualRows4360++actualRows4361++actualRows4362++actualRows4363++actualRows4364++actualRows4365++actualRows4366++actualRows4367++actualRows4368++actualRows4369++actualRows4370++actualRows4371++actualRows4372++actualRows4373++actualRows4374++actualRows4375++actualRows4376++actualRows4377++actualRows4378++actualRows4379++actualRows4380++actualRows4381++actualRows4382++actualRows4383++actualRows4384++actualRows4385++actualRows4386++actualRows4387++actualRows4388++actualRows4389++actualRows4390++actualRows4391++actualRows4392++actualRows4393++actualRows4394
def partOps67 : List WordIR.Op := [.bnot 4330,.band 4325 4331,.bxor 4320 4332,.shr 4333 31,.literal (BitVec.ofNat 32 1),.bxor 4334 4335,.bnot 4336,.literal (BitVec.ofNat 32 1),.badd 4337 4338,.band 4339 1607,.literal (BitVec.ofNat 32 2),.bxor 96 4341,.literal (BitVec.ofNat 32 0),.bnot 4343,.band 4342 4344,.literal (BitVec.ofNat 32 2),.bxor 96 4346,.literal (BitVec.ofNat 32 0),.bnot 4348,.bxor 4347 4349,.literal (BitVec.ofNat 32 2),.bxor 96 4351,.literal (BitVec.ofNat 32 0),.bnot 4353,.badd 4352 4354,.bnot 4355,.band 4350 4356,.bxor 4345 4357,.shr 4358 31,.literal (BitVec.ofNat 32 1),.bxor 4359 4360,.bnot 4361,.literal (BitVec.ofNat 32 1),.badd 4362 4363,.bnot 4364,.band 4365 1415,.bxor 4340 4366,.literal (BitVec.ofNat 32 2),.bxor 96 4368,.literal (BitVec.ofNat 32 0),.bnot 4370,.band 4369 4371,.literal (BitVec.ofNat 32 2),.bxor 96 4373,.literal (BitVec.ofNat 32 0),.bnot 4375,.bxor 4374 4376,.literal (BitVec.ofNat 32 2),.bxor 96 4378,.literal (BitVec.ofNat 32 0),.bnot 4380,.badd 4379 4381,.bnot 4382,.band 4377 4383,.bxor 4372 4384,.shr 4385 31,.literal (BitVec.ofNat 32 1),.bxor 4386 4387,.bnot 4388,.literal (BitVec.ofNat 32 1),.badd 4389 4390,.band 4391 1610,.literal (BitVec.ofNat 32 2),.bxor 96 4393]
theorem partExact67 : partRows67=WordField.rows actualModulus 4331 partOps67 := by
  simp only [partRows67,partOps67,WordField.rows,rows4331,rows4332,rows4333,rows4334,rows4335,rows4336,rows4337,rows4338,rows4339,rows4340,rows4341,rows4342,rows4343,rows4344,rows4345,rows4346,rows4347,rows4348,rows4349,rows4350,rows4351,rows4352,rows4353,rows4354,rows4355,rows4356,rows4357,rows4358,rows4359,rows4360,rows4361,rows4362,rows4363,rows4364,rows4365,rows4366,rows4367,rows4368,rows4369,rows4370,rows4371,rows4372,rows4373,rows4374,rows4375,rows4376,rows4377,rows4378,rows4379,rows4380,rows4381,rows4382,rows4383,rows4384,rows4385,rows4386,rows4387,rows4388,rows4389,rows4390,rows4391,rows4392,rows4393,rows4394,List.append_assoc,List.append_nil]
theorem partLength67 : partOps67.length=64 := by decide
theorem partStats67 : partRows67.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows67=331560 := by
  simp only [partRows67,List.length_append,MatrixRowBlocks.rows_weight_append,stats4331.1,stats4331.2,stats4332.1,stats4332.2,stats4333.1,stats4333.2,stats4334.1,stats4334.2,stats4335.1,stats4335.2,stats4336.1,stats4336.2,stats4337.1,stats4337.2,stats4338.1,stats4338.2,stats4339.1,stats4339.2,stats4340.1,stats4340.2,stats4341.1,stats4341.2,stats4342.1,stats4342.2,stats4343.1,stats4343.2,stats4344.1,stats4344.2,stats4345.1,stats4345.2,stats4346.1,stats4346.2,stats4347.1,stats4347.2,stats4348.1,stats4348.2,stats4349.1,stats4349.2,stats4350.1,stats4350.2,stats4351.1,stats4351.2,stats4352.1,stats4352.2,stats4353.1,stats4353.2,stats4354.1,stats4354.2,stats4355.1,stats4355.2,stats4356.1,stats4356.2,stats4357.1,stats4357.2,stats4358.1,stats4358.2,stats4359.1,stats4359.2,stats4360.1,stats4360.2,stats4361.1,stats4361.2,stats4362.1,stats4362.2,stats4363.1,stats4363.2,stats4364.1,stats4364.2,stats4365.1,stats4365.2,stats4366.1,stats4366.2,stats4367.1,stats4367.2,stats4368.1,stats4368.2,stats4369.1,stats4369.2,stats4370.1,stats4370.2,stats4371.1,stats4371.2,stats4372.1,stats4372.2,stats4373.1,stats4373.2,stats4374.1,stats4374.2,stats4375.1,stats4375.2,stats4376.1,stats4376.2,stats4377.1,stats4377.2,stats4378.1,stats4378.2,stats4379.1,stats4379.2,stats4380.1,stats4380.2,stats4381.1,stats4381.2,stats4382.1,stats4382.2,stats4383.1,stats4383.2,stats4384.1,stats4384.2,stats4385.1,stats4385.2,stats4386.1,stats4386.2,stats4387.1,stats4387.2,stats4388.1,stats4388.2,stats4389.1,stats4389.2,stats4390.1,stats4390.2,stats4391.1,stats4391.2,stats4392.1,stats4392.2,stats4393.1,stats4393.2,stats4394.1,stats4394.2]
  decide
end PathRoundDispatchCheckedRows
