import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData67
import PairedPathRoundInstructionMatrixData68
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4320 : actualRows4320=WordField.canonicalRows actualModulus 4320 (.band 4317 4319) := by core033_kernel_decide
theorem stats4320 : actualRows4320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4320=5124 := by core033_kernel_decide
theorem rows4321 : actualRows4321=WordField.canonicalRows actualModulus 4321 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4321 : actualRows4321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4321=2892 := by core033_kernel_decide
theorem rows4322 : actualRows4322=WordField.canonicalRows actualModulus 4322 (.bxor 616 4321) := by core033_kernel_decide
theorem stats4322 : actualRows4322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4322=7428 := by core033_kernel_decide
theorem rows4323 : actualRows4323=WordField.canonicalRows actualModulus 4323 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4323 : actualRows4323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4323=2820 := by core033_kernel_decide
theorem rows4324 : actualRows4324=WordField.canonicalRows actualModulus 4324 (.bnot 4323) := by core033_kernel_decide
theorem stats4324 : actualRows4324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4324=6276 := by core033_kernel_decide
theorem rows4325 : actualRows4325=WordField.canonicalRows actualModulus 4325 (.bxor 4322 4324) := by core033_kernel_decide
theorem stats4325 : actualRows4325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4325=7428 := by core033_kernel_decide
theorem rows4326 : actualRows4326=WordField.canonicalRows actualModulus 4326 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4326 : actualRows4326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4326=2892 := by core033_kernel_decide
theorem rows4327 : actualRows4327=WordField.canonicalRows actualModulus 4327 (.bxor 616 4326) := by core033_kernel_decide
theorem stats4327 : actualRows4327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4327=7428 := by core033_kernel_decide
theorem rows4328 : actualRows4328=WordField.canonicalRows actualModulus 4328 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4328 : actualRows4328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4328=2820 := by core033_kernel_decide
theorem rows4329 : actualRows4329=WordField.canonicalRows actualModulus 4329 (.bnot 4328) := by core033_kernel_decide
theorem stats4329 : actualRows4329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4329=6276 := by core033_kernel_decide
theorem rows4330 : actualRows4330=WordField.canonicalRows actualModulus 4330 (.badd 4327 4329) := by core033_kernel_decide
theorem stats4330 : actualRows4330.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4330=5388 := by core033_kernel_decide
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
theorem rows4340 : actualRows4340=WordField.canonicalRows actualModulus 4340 (.band 4339 2097) := by core033_kernel_decide
theorem stats4340 : actualRows4340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4340=5124 := by core033_kernel_decide
theorem rows4341 : actualRows4341=WordField.canonicalRows actualModulus 4341 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4341 : actualRows4341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4341=2892 := by core033_kernel_decide
theorem rows4342 : actualRows4342=WordField.canonicalRows actualModulus 4342 (.bxor 616 4341) := by core033_kernel_decide
theorem stats4342 : actualRows4342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4342=7428 := by core033_kernel_decide
theorem rows4343 : actualRows4343=WordField.canonicalRows actualModulus 4343 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4343 : actualRows4343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4343=2820 := by core033_kernel_decide
theorem rows4344 : actualRows4344=WordField.canonicalRows actualModulus 4344 (.bnot 4343) := by core033_kernel_decide
theorem stats4344 : actualRows4344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4344=6276 := by core033_kernel_decide
theorem rows4345 : actualRows4345=WordField.canonicalRows actualModulus 4345 (.band 4342 4344) := by core033_kernel_decide
theorem stats4345 : actualRows4345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4345=5124 := by core033_kernel_decide
theorem rows4346 : actualRows4346=WordField.canonicalRows actualModulus 4346 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4346 : actualRows4346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4346=2892 := by core033_kernel_decide
theorem rows4347 : actualRows4347=WordField.canonicalRows actualModulus 4347 (.bxor 616 4346) := by core033_kernel_decide
theorem stats4347 : actualRows4347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4347=7428 := by core033_kernel_decide
theorem rows4348 : actualRows4348=WordField.canonicalRows actualModulus 4348 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4348 : actualRows4348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4348=2820 := by core033_kernel_decide
theorem rows4349 : actualRows4349=WordField.canonicalRows actualModulus 4349 (.bnot 4348) := by core033_kernel_decide
theorem stats4349 : actualRows4349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4349=6276 := by core033_kernel_decide
theorem rows4350 : actualRows4350=WordField.canonicalRows actualModulus 4350 (.bxor 4347 4349) := by core033_kernel_decide
theorem stats4350 : actualRows4350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4350=7428 := by core033_kernel_decide
theorem rows4351 : actualRows4351=WordField.canonicalRows actualModulus 4351 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4351 : actualRows4351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4351=2892 := by core033_kernel_decide
theorem rows4352 : actualRows4352=WordField.canonicalRows actualModulus 4352 (.bxor 616 4351) := by core033_kernel_decide
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
theorem rows4366 : actualRows4366=WordField.canonicalRows actualModulus 4366 (.band 4365 1905) := by core033_kernel_decide
theorem stats4366 : actualRows4366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4366=5124 := by core033_kernel_decide
theorem rows4367 : actualRows4367=WordField.canonicalRows actualModulus 4367 (.bxor 4340 4366) := by core033_kernel_decide
theorem stats4367 : actualRows4367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4367=7428 := by core033_kernel_decide
theorem rows4368 : actualRows4368=WordField.canonicalRows actualModulus 4368 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4368 : actualRows4368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4368=2892 := by core033_kernel_decide
theorem rows4369 : actualRows4369=WordField.canonicalRows actualModulus 4369 (.bxor 616 4368) := by core033_kernel_decide
theorem stats4369 : actualRows4369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4369=7428 := by core033_kernel_decide
theorem rows4370 : actualRows4370=WordField.canonicalRows actualModulus 4370 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4370 : actualRows4370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4370=2820 := by core033_kernel_decide
theorem rows4371 : actualRows4371=WordField.canonicalRows actualModulus 4371 (.bnot 4370) := by core033_kernel_decide
theorem stats4371 : actualRows4371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4371=6276 := by core033_kernel_decide
theorem rows4372 : actualRows4372=WordField.canonicalRows actualModulus 4372 (.band 4369 4371) := by core033_kernel_decide
theorem stats4372 : actualRows4372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4372=5124 := by core033_kernel_decide
theorem rows4373 : actualRows4373=WordField.canonicalRows actualModulus 4373 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4373 : actualRows4373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4373=2892 := by core033_kernel_decide
theorem rows4374 : actualRows4374=WordField.canonicalRows actualModulus 4374 (.bxor 616 4373) := by core033_kernel_decide
theorem stats4374 : actualRows4374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4374=7428 := by core033_kernel_decide
theorem rows4375 : actualRows4375=WordField.canonicalRows actualModulus 4375 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4375 : actualRows4375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4375=2820 := by core033_kernel_decide
theorem rows4376 : actualRows4376=WordField.canonicalRows actualModulus 4376 (.bnot 4375) := by core033_kernel_decide
theorem stats4376 : actualRows4376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4376=6276 := by core033_kernel_decide
theorem rows4377 : actualRows4377=WordField.canonicalRows actualModulus 4377 (.bxor 4374 4376) := by core033_kernel_decide
theorem stats4377 : actualRows4377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4377=7428 := by core033_kernel_decide
theorem rows4378 : actualRows4378=WordField.canonicalRows actualModulus 4378 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4378 : actualRows4378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4378=2892 := by core033_kernel_decide
theorem rows4379 : actualRows4379=WordField.canonicalRows actualModulus 4379 (.bxor 616 4378) := by core033_kernel_decide
theorem stats4379 : actualRows4379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4379=7428 := by core033_kernel_decide
theorem rows4380 : actualRows4380=WordField.canonicalRows actualModulus 4380 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4380 : actualRows4380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4380=2820 := by core033_kernel_decide
theorem rows4381 : actualRows4381=WordField.canonicalRows actualModulus 4381 (.bnot 4380) := by core033_kernel_decide
theorem stats4381 : actualRows4381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4381=6276 := by core033_kernel_decide
theorem rows4382 : actualRows4382=WordField.canonicalRows actualModulus 4382 (.badd 4379 4381) := by core033_kernel_decide
theorem stats4382 : actualRows4382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4382=5388 := by core033_kernel_decide
theorem rows4383 : actualRows4383=WordField.canonicalRows actualModulus 4383 (.bnot 4382) := by core033_kernel_decide
theorem stats4383 : actualRows4383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4383=6276 := by core033_kernel_decide
def partRows66 : List R1CS.Row := actualRows4320++actualRows4321++actualRows4322++actualRows4323++actualRows4324++actualRows4325++actualRows4326++actualRows4327++actualRows4328++actualRows4329++actualRows4330++actualRows4331++actualRows4332++actualRows4333++actualRows4334++actualRows4335++actualRows4336++actualRows4337++actualRows4338++actualRows4339++actualRows4340++actualRows4341++actualRows4342++actualRows4343++actualRows4344++actualRows4345++actualRows4346++actualRows4347++actualRows4348++actualRows4349++actualRows4350++actualRows4351++actualRows4352++actualRows4353++actualRows4354++actualRows4355++actualRows4356++actualRows4357++actualRows4358++actualRows4359++actualRows4360++actualRows4361++actualRows4362++actualRows4363++actualRows4364++actualRows4365++actualRows4366++actualRows4367++actualRows4368++actualRows4369++actualRows4370++actualRows4371++actualRows4372++actualRows4373++actualRows4374++actualRows4375++actualRows4376++actualRows4377++actualRows4378++actualRows4379++actualRows4380++actualRows4381++actualRows4382++actualRows4383
def partOps66 : List WordIR.Op := [.band 4317 4319,.literal (BitVec.ofNat 32 2),.bxor 616 4321,.literal (BitVec.ofNat 32 0),.bnot 4323,.bxor 4322 4324,.literal (BitVec.ofNat 32 2),.bxor 616 4326,.literal (BitVec.ofNat 32 0),.bnot 4328,.badd 4327 4329,.bnot 4330,.band 4325 4331,.bxor 4320 4332,.shr 4333 31,.literal (BitVec.ofNat 32 1),.bxor 4334 4335,.bnot 4336,.literal (BitVec.ofNat 32 1),.badd 4337 4338,.band 4339 2097,.literal (BitVec.ofNat 32 2),.bxor 616 4341,.literal (BitVec.ofNat 32 0),.bnot 4343,.band 4342 4344,.literal (BitVec.ofNat 32 2),.bxor 616 4346,.literal (BitVec.ofNat 32 0),.bnot 4348,.bxor 4347 4349,.literal (BitVec.ofNat 32 2),.bxor 616 4351,.literal (BitVec.ofNat 32 0),.bnot 4353,.badd 4352 4354,.bnot 4355,.band 4350 4356,.bxor 4345 4357,.shr 4358 31,.literal (BitVec.ofNat 32 1),.bxor 4359 4360,.bnot 4361,.literal (BitVec.ofNat 32 1),.badd 4362 4363,.bnot 4364,.band 4365 1905,.bxor 4340 4366,.literal (BitVec.ofNat 32 2),.bxor 616 4368,.literal (BitVec.ofNat 32 0),.bnot 4370,.band 4369 4371,.literal (BitVec.ofNat 32 2),.bxor 616 4373,.literal (BitVec.ofNat 32 0),.bnot 4375,.bxor 4374 4376,.literal (BitVec.ofNat 32 2),.bxor 616 4378,.literal (BitVec.ofNat 32 0),.bnot 4380,.badd 4379 4381,.bnot 4382]
theorem partExact66 : partRows66=WordField.rows actualModulus 4320 partOps66 := by
  simp only [partRows66,partOps66,WordField.rows,rows4320,rows4321,rows4322,rows4323,rows4324,rows4325,rows4326,rows4327,rows4328,rows4329,rows4330,rows4331,rows4332,rows4333,rows4334,rows4335,rows4336,rows4337,rows4338,rows4339,rows4340,rows4341,rows4342,rows4343,rows4344,rows4345,rows4346,rows4347,rows4348,rows4349,rows4350,rows4351,rows4352,rows4353,rows4354,rows4355,rows4356,rows4357,rows4358,rows4359,rows4360,rows4361,rows4362,rows4363,rows4364,rows4365,rows4366,rows4367,rows4368,rows4369,rows4370,rows4371,rows4372,rows4373,rows4374,rows4375,rows4376,rows4377,rows4378,rows4379,rows4380,rows4381,rows4382,rows4383,List.append_assoc,List.append_nil]
theorem partLength66 : partOps66.length=64 := by decide
theorem partStats66 : partRows66.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows66=332568 := by
  simp only [partRows66,List.length_append,MatrixRowBlocks.rows_weight_append,stats4320.1,stats4320.2,stats4321.1,stats4321.2,stats4322.1,stats4322.2,stats4323.1,stats4323.2,stats4324.1,stats4324.2,stats4325.1,stats4325.2,stats4326.1,stats4326.2,stats4327.1,stats4327.2,stats4328.1,stats4328.2,stats4329.1,stats4329.2,stats4330.1,stats4330.2,stats4331.1,stats4331.2,stats4332.1,stats4332.2,stats4333.1,stats4333.2,stats4334.1,stats4334.2,stats4335.1,stats4335.2,stats4336.1,stats4336.2,stats4337.1,stats4337.2,stats4338.1,stats4338.2,stats4339.1,stats4339.2,stats4340.1,stats4340.2,stats4341.1,stats4341.2,stats4342.1,stats4342.2,stats4343.1,stats4343.2,stats4344.1,stats4344.2,stats4345.1,stats4345.2,stats4346.1,stats4346.2,stats4347.1,stats4347.2,stats4348.1,stats4348.2,stats4349.1,stats4349.2,stats4350.1,stats4350.2,stats4351.1,stats4351.2,stats4352.1,stats4352.2,stats4353.1,stats4353.2,stats4354.1,stats4354.2,stats4355.1,stats4355.2,stats4356.1,stats4356.2,stats4357.1,stats4357.2,stats4358.1,stats4358.2,stats4359.1,stats4359.2,stats4360.1,stats4360.2,stats4361.1,stats4361.2,stats4362.1,stats4362.2,stats4363.1,stats4363.2,stats4364.1,stats4364.2,stats4365.1,stats4365.2,stats4366.1,stats4366.2,stats4367.1,stats4367.2,stats4368.1,stats4368.2,stats4369.1,stats4369.2,stats4370.1,stats4370.2,stats4371.1,stats4371.2,stats4372.1,stats4372.2,stats4373.1,stats4373.2,stats4374.1,stats4374.2,stats4375.1,stats4375.2,stats4376.1,stats4376.2,stats4377.1,stats4377.2,stats4378.1,stats4378.2,stats4379.1,stats4379.2,stats4380.1,stats4380.2,stats4381.1,stats4381.2,stats4382.1,stats4382.2,stats4383.1,stats4383.2]
  decide
end PairedPathRoundCheckedRows
