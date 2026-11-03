import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData145
import AuthenticatedBranchRoundInstructionMatrixData146
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9334 : actualRows9334=WordField.canonicalRows actualModulus 9334 (.literal (BitVec.ofNat 32 1249150122)) := by core033_kernel_decide
theorem stats9334 : actualRows9334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9334=3756 := by core033_kernel_decide
theorem rows9335 : actualRows9335=WordField.canonicalRows actualModulus 9335 (.badd 9333 9334) := by core033_kernel_decide
theorem stats9335 : actualRows9335.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9335=5388 := by core033_kernel_decide
theorem rows9336 : actualRows9336=WordField.canonicalRows actualModulus 9336 (.badd 9335 8209) := by core033_kernel_decide
theorem stats9336 : actualRows9336.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9336=5388 := by core033_kernel_decide
theorem rows9337 : actualRows9337=WordField.canonicalRows actualModulus 9337 (.rotr 9321 2) := by core033_kernel_decide
theorem stats9337 : actualRows9337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9337=5124 := by core033_kernel_decide
theorem rows9338 : actualRows9338=WordField.canonicalRows actualModulus 9338 (.rotr 9321 13) := by core033_kernel_decide
theorem stats9338 : actualRows9338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9338=5124 := by core033_kernel_decide
theorem rows9339 : actualRows9339=WordField.canonicalRows actualModulus 9339 (.bxor 9337 9338) := by core033_kernel_decide
theorem stats9339 : actualRows9339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9339=7428 := by core033_kernel_decide
theorem rows9340 : actualRows9340=WordField.canonicalRows actualModulus 9340 (.rotr 9321 22) := by core033_kernel_decide
theorem stats9340 : actualRows9340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9340=5124 := by core033_kernel_decide
theorem rows9341 : actualRows9341=WordField.canonicalRows actualModulus 9341 (.bxor 9339 9340) := by core033_kernel_decide
theorem stats9341 : actualRows9341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9341=7428 := by core033_kernel_decide
theorem rows9342 : actualRows9342=WordField.canonicalRows actualModulus 9342 (.band 9321 9294) := by core033_kernel_decide
theorem stats9342 : actualRows9342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9342=5124 := by core033_kernel_decide
theorem rows9343 : actualRows9343=WordField.canonicalRows actualModulus 9343 (.band 9321 9267) := by core033_kernel_decide
theorem stats9343 : actualRows9343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9343=5124 := by core033_kernel_decide
theorem rows9344 : actualRows9344=WordField.canonicalRows actualModulus 9344 (.bxor 9342 9343) := by core033_kernel_decide
theorem stats9344 : actualRows9344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9344=7428 := by core033_kernel_decide
theorem rows9345 : actualRows9345=WordField.canonicalRows actualModulus 9345 (.band 9294 9267) := by core033_kernel_decide
theorem stats9345 : actualRows9345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9345=5124 := by core033_kernel_decide
theorem rows9346 : actualRows9346=WordField.canonicalRows actualModulus 9346 (.bxor 9344 9345) := by core033_kernel_decide
theorem stats9346 : actualRows9346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9346=7428 := by core033_kernel_decide
theorem rows9347 : actualRows9347=WordField.canonicalRows actualModulus 9347 (.badd 9341 9346) := by core033_kernel_decide
theorem stats9347 : actualRows9347.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9347=5388 := by core033_kernel_decide
theorem rows9348 : actualRows9348=WordField.canonicalRows actualModulus 9348 (.badd 9336 9347) := by core033_kernel_decide
theorem stats9348 : actualRows9348.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9348=5388 := by core033_kernel_decide
theorem rows9349 : actualRows9349=WordField.canonicalRows actualModulus 9349 (.badd 9240 9336) := by core033_kernel_decide
theorem stats9349 : actualRows9349.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9349=5388 := by core033_kernel_decide
theorem rows9350 : actualRows9350=WordField.canonicalRows actualModulus 9350 (.rotr 9349 6) := by core033_kernel_decide
theorem stats9350 : actualRows9350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9350=5124 := by core033_kernel_decide
theorem rows9351 : actualRows9351=WordField.canonicalRows actualModulus 9351 (.rotr 9349 11) := by core033_kernel_decide
theorem stats9351 : actualRows9351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9351=5124 := by core033_kernel_decide
theorem rows9352 : actualRows9352=WordField.canonicalRows actualModulus 9352 (.bxor 9350 9351) := by core033_kernel_decide
theorem stats9352 : actualRows9352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9352=7428 := by core033_kernel_decide
theorem rows9353 : actualRows9353=WordField.canonicalRows actualModulus 9353 (.rotr 9349 25) := by core033_kernel_decide
theorem stats9353 : actualRows9353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9353=5124 := by core033_kernel_decide
theorem rows9354 : actualRows9354=WordField.canonicalRows actualModulus 9354 (.bxor 9352 9353) := by core033_kernel_decide
theorem stats9354 : actualRows9354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9354=7428 := by core033_kernel_decide
theorem rows9355 : actualRows9355=WordField.canonicalRows actualModulus 9355 (.badd 9268 9354) := by core033_kernel_decide
theorem stats9355 : actualRows9355.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9355=5388 := by core033_kernel_decide
theorem rows9356 : actualRows9356=WordField.canonicalRows actualModulus 9356 (.band 9349 9322) := by core033_kernel_decide
theorem stats9356 : actualRows9356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9356=5124 := by core033_kernel_decide
theorem rows9357 : actualRows9357=WordField.canonicalRows actualModulus 9357 (.bnot 9349) := by core033_kernel_decide
theorem stats9357 : actualRows9357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9357=6276 := by core033_kernel_decide
theorem rows9358 : actualRows9358=WordField.canonicalRows actualModulus 9358 (.band 9357 9295) := by core033_kernel_decide
theorem stats9358 : actualRows9358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9358=5124 := by core033_kernel_decide
theorem rows9359 : actualRows9359=WordField.canonicalRows actualModulus 9359 (.bxor 9356 9358) := by core033_kernel_decide
theorem stats9359 : actualRows9359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9359=7428 := by core033_kernel_decide
theorem rows9360 : actualRows9360=WordField.canonicalRows actualModulus 9360 (.badd 9355 9359) := by core033_kernel_decide
theorem stats9360 : actualRows9360.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9360=5388 := by core033_kernel_decide
theorem rows9361 : actualRows9361=WordField.canonicalRows actualModulus 9361 (.literal (BitVec.ofNat 32 1555081692)) := by core033_kernel_decide
theorem stats9361 : actualRows9361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9361=3972 := by core033_kernel_decide
theorem rows9362 : actualRows9362=WordField.canonicalRows actualModulus 9362 (.badd 9360 9361) := by core033_kernel_decide
theorem stats9362 : actualRows9362.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9362=5388 := by core033_kernel_decide
theorem rows9363 : actualRows9363=WordField.canonicalRows actualModulus 9363 (.badd 9362 8222) := by core033_kernel_decide
theorem stats9363 : actualRows9363.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9363=5388 := by core033_kernel_decide
theorem rows9364 : actualRows9364=WordField.canonicalRows actualModulus 9364 (.rotr 9348 2) := by core033_kernel_decide
theorem stats9364 : actualRows9364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9364=5124 := by core033_kernel_decide
theorem rows9365 : actualRows9365=WordField.canonicalRows actualModulus 9365 (.rotr 9348 13) := by core033_kernel_decide
theorem stats9365 : actualRows9365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9365=5124 := by core033_kernel_decide
theorem rows9366 : actualRows9366=WordField.canonicalRows actualModulus 9366 (.bxor 9364 9365) := by core033_kernel_decide
theorem stats9366 : actualRows9366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9366=7428 := by core033_kernel_decide
theorem rows9367 : actualRows9367=WordField.canonicalRows actualModulus 9367 (.rotr 9348 22) := by core033_kernel_decide
theorem stats9367 : actualRows9367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9367=5124 := by core033_kernel_decide
theorem rows9368 : actualRows9368=WordField.canonicalRows actualModulus 9368 (.bxor 9366 9367) := by core033_kernel_decide
theorem stats9368 : actualRows9368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9368=7428 := by core033_kernel_decide
theorem rows9369 : actualRows9369=WordField.canonicalRows actualModulus 9369 (.band 9348 9321) := by core033_kernel_decide
theorem stats9369 : actualRows9369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9369=5124 := by core033_kernel_decide
theorem rows9370 : actualRows9370=WordField.canonicalRows actualModulus 9370 (.band 9348 9294) := by core033_kernel_decide
theorem stats9370 : actualRows9370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9370=5124 := by core033_kernel_decide
theorem rows9371 : actualRows9371=WordField.canonicalRows actualModulus 9371 (.bxor 9369 9370) := by core033_kernel_decide
theorem stats9371 : actualRows9371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9371=7428 := by core033_kernel_decide
theorem rows9372 : actualRows9372=WordField.canonicalRows actualModulus 9372 (.band 9321 9294) := by core033_kernel_decide
theorem stats9372 : actualRows9372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9372=5124 := by core033_kernel_decide
theorem rows9373 : actualRows9373=WordField.canonicalRows actualModulus 9373 (.bxor 9371 9372) := by core033_kernel_decide
theorem stats9373 : actualRows9373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9373=7428 := by core033_kernel_decide
theorem rows9374 : actualRows9374=WordField.canonicalRows actualModulus 9374 (.badd 9368 9373) := by core033_kernel_decide
theorem stats9374 : actualRows9374.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9374=5388 := by core033_kernel_decide
theorem rows9375 : actualRows9375=WordField.canonicalRows actualModulus 9375 (.badd 9363 9374) := by core033_kernel_decide
theorem stats9375 : actualRows9375.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9375=5388 := by core033_kernel_decide
theorem rows9376 : actualRows9376=WordField.canonicalRows actualModulus 9376 (.badd 9267 9363) := by core033_kernel_decide
theorem stats9376 : actualRows9376.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9376=5388 := by core033_kernel_decide
theorem rows9377 : actualRows9377=WordField.canonicalRows actualModulus 9377 (.rotr 9376 6) := by core033_kernel_decide
theorem stats9377 : actualRows9377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9377=5124 := by core033_kernel_decide
theorem rows9378 : actualRows9378=WordField.canonicalRows actualModulus 9378 (.rotr 9376 11) := by core033_kernel_decide
theorem stats9378 : actualRows9378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9378=5124 := by core033_kernel_decide
theorem rows9379 : actualRows9379=WordField.canonicalRows actualModulus 9379 (.bxor 9377 9378) := by core033_kernel_decide
theorem stats9379 : actualRows9379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9379=7428 := by core033_kernel_decide
theorem rows9380 : actualRows9380=WordField.canonicalRows actualModulus 9380 (.rotr 9376 25) := by core033_kernel_decide
theorem stats9380 : actualRows9380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9380=5124 := by core033_kernel_decide
theorem rows9381 : actualRows9381=WordField.canonicalRows actualModulus 9381 (.bxor 9379 9380) := by core033_kernel_decide
theorem stats9381 : actualRows9381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9381=7428 := by core033_kernel_decide
theorem rows9382 : actualRows9382=WordField.canonicalRows actualModulus 9382 (.badd 9295 9381) := by core033_kernel_decide
theorem stats9382 : actualRows9382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9382=5388 := by core033_kernel_decide
theorem rows9383 : actualRows9383=WordField.canonicalRows actualModulus 9383 (.band 9376 9349) := by core033_kernel_decide
theorem stats9383 : actualRows9383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9383=5124 := by core033_kernel_decide
theorem rows9384 : actualRows9384=WordField.canonicalRows actualModulus 9384 (.bnot 9376) := by core033_kernel_decide
theorem stats9384 : actualRows9384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9384=6276 := by core033_kernel_decide
theorem rows9385 : actualRows9385=WordField.canonicalRows actualModulus 9385 (.band 9384 9322) := by core033_kernel_decide
theorem stats9385 : actualRows9385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9385=5124 := by core033_kernel_decide
theorem rows9386 : actualRows9386=WordField.canonicalRows actualModulus 9386 (.bxor 9383 9385) := by core033_kernel_decide
theorem stats9386 : actualRows9386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9386=7428 := by core033_kernel_decide
theorem rows9387 : actualRows9387=WordField.canonicalRows actualModulus 9387 (.badd 9382 9386) := by core033_kernel_decide
theorem stats9387 : actualRows9387.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9387=5388 := by core033_kernel_decide
theorem rows9388 : actualRows9388=WordField.canonicalRows actualModulus 9388 (.literal (BitVec.ofNat 32 1996064986)) := by core033_kernel_decide
theorem stats9388 : actualRows9388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9388=4116 := by core033_kernel_decide
theorem rows9389 : actualRows9389=WordField.canonicalRows actualModulus 9389 (.badd 9387 9388) := by core033_kernel_decide
theorem stats9389 : actualRows9389.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9389=5388 := by core033_kernel_decide
theorem rows9390 : actualRows9390=WordField.canonicalRows actualModulus 9390 (.badd 9389 8235) := by core033_kernel_decide
theorem stats9390 : actualRows9390.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9390=5388 := by core033_kernel_decide
theorem rows9391 : actualRows9391=WordField.canonicalRows actualModulus 9391 (.rotr 9375 2) := by core033_kernel_decide
theorem stats9391 : actualRows9391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9391=5124 := by core033_kernel_decide
theorem rows9392 : actualRows9392=WordField.canonicalRows actualModulus 9392 (.rotr 9375 13) := by core033_kernel_decide
theorem stats9392 : actualRows9392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9392=5124 := by core033_kernel_decide
theorem rows9393 : actualRows9393=WordField.canonicalRows actualModulus 9393 (.bxor 9391 9392) := by core033_kernel_decide
theorem stats9393 : actualRows9393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9393=7428 := by core033_kernel_decide
theorem rows9394 : actualRows9394=WordField.canonicalRows actualModulus 9394 (.rotr 9375 22) := by core033_kernel_decide
theorem stats9394 : actualRows9394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9394=5124 := by core033_kernel_decide
theorem rows9395 : actualRows9395=WordField.canonicalRows actualModulus 9395 (.bxor 9393 9394) := by core033_kernel_decide
theorem stats9395 : actualRows9395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9395=7428 := by core033_kernel_decide
theorem rows9396 : actualRows9396=WordField.canonicalRows actualModulus 9396 (.band 9375 9348) := by core033_kernel_decide
theorem stats9396 : actualRows9396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9396=5124 := by core033_kernel_decide
theorem rows9397 : actualRows9397=WordField.canonicalRows actualModulus 9397 (.band 9375 9321) := by core033_kernel_decide
theorem stats9397 : actualRows9397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9397=5124 := by core033_kernel_decide
def partRows144 : List R1CS.Row := actualRows9334++actualRows9335++actualRows9336++actualRows9337++actualRows9338++actualRows9339++actualRows9340++actualRows9341++actualRows9342++actualRows9343++actualRows9344++actualRows9345++actualRows9346++actualRows9347++actualRows9348++actualRows9349++actualRows9350++actualRows9351++actualRows9352++actualRows9353++actualRows9354++actualRows9355++actualRows9356++actualRows9357++actualRows9358++actualRows9359++actualRows9360++actualRows9361++actualRows9362++actualRows9363++actualRows9364++actualRows9365++actualRows9366++actualRows9367++actualRows9368++actualRows9369++actualRows9370++actualRows9371++actualRows9372++actualRows9373++actualRows9374++actualRows9375++actualRows9376++actualRows9377++actualRows9378++actualRows9379++actualRows9380++actualRows9381++actualRows9382++actualRows9383++actualRows9384++actualRows9385++actualRows9386++actualRows9387++actualRows9388++actualRows9389++actualRows9390++actualRows9391++actualRows9392++actualRows9393++actualRows9394++actualRows9395++actualRows9396++actualRows9397
def partOps144 : List WordIR.Op := [.literal (BitVec.ofNat 32 1249150122),.badd 9333 9334,.badd 9335 8209,.rotr 9321 2,.rotr 9321 13,.bxor 9337 9338,.rotr 9321 22,.bxor 9339 9340,.band 9321 9294,.band 9321 9267,.bxor 9342 9343,.band 9294 9267,.bxor 9344 9345,.badd 9341 9346,.badd 9336 9347,.badd 9240 9336,.rotr 9349 6,.rotr 9349 11,.bxor 9350 9351,.rotr 9349 25,.bxor 9352 9353,.badd 9268 9354,.band 9349 9322,.bnot 9349,.band 9357 9295,.bxor 9356 9358,.badd 9355 9359,.literal (BitVec.ofNat 32 1555081692),.badd 9360 9361,.badd 9362 8222,.rotr 9348 2,.rotr 9348 13,.bxor 9364 9365,.rotr 9348 22,.bxor 9366 9367,.band 9348 9321,.band 9348 9294,.bxor 9369 9370,.band 9321 9294,.bxor 9371 9372,.badd 9368 9373,.badd 9363 9374,.badd 9267 9363,.rotr 9376 6,.rotr 9376 11,.bxor 9377 9378,.rotr 9376 25,.bxor 9379 9380,.badd 9295 9381,.band 9376 9349,.bnot 9376,.band 9384 9322,.bxor 9383 9385,.badd 9382 9386,.literal (BitVec.ofNat 32 1996064986),.badd 9387 9388,.badd 9389 8235,.rotr 9375 2,.rotr 9375 13,.bxor 9391 9392,.rotr 9375 22,.bxor 9393 9394,.band 9375 9348,.band 9375 9321]
theorem partExact144 : partRows144=WordField.rows actualModulus 9334 partOps144 := by
  simp only [partRows144,partOps144,WordField.rows,rows9334,rows9335,rows9336,rows9337,rows9338,rows9339,rows9340,rows9341,rows9342,rows9343,rows9344,rows9345,rows9346,rows9347,rows9348,rows9349,rows9350,rows9351,rows9352,rows9353,rows9354,rows9355,rows9356,rows9357,rows9358,rows9359,rows9360,rows9361,rows9362,rows9363,rows9364,rows9365,rows9366,rows9367,rows9368,rows9369,rows9370,rows9371,rows9372,rows9373,rows9374,rows9375,rows9376,rows9377,rows9378,rows9379,rows9380,rows9381,rows9382,rows9383,rows9384,rows9385,rows9386,rows9387,rows9388,rows9389,rows9390,rows9391,rows9392,rows9393,rows9394,rows9395,rows9396,rows9397,List.append_assoc,List.append_nil]
theorem partLength144 : partOps144.length=64 := by decide
theorem partStats144 : partRows144.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows144=367800 := by
  simp only [partRows144,List.length_append,MatrixRowBlocks.rows_weight_append,stats9334.1,stats9334.2,stats9335.1,stats9335.2,stats9336.1,stats9336.2,stats9337.1,stats9337.2,stats9338.1,stats9338.2,stats9339.1,stats9339.2,stats9340.1,stats9340.2,stats9341.1,stats9341.2,stats9342.1,stats9342.2,stats9343.1,stats9343.2,stats9344.1,stats9344.2,stats9345.1,stats9345.2,stats9346.1,stats9346.2,stats9347.1,stats9347.2,stats9348.1,stats9348.2,stats9349.1,stats9349.2,stats9350.1,stats9350.2,stats9351.1,stats9351.2,stats9352.1,stats9352.2,stats9353.1,stats9353.2,stats9354.1,stats9354.2,stats9355.1,stats9355.2,stats9356.1,stats9356.2,stats9357.1,stats9357.2,stats9358.1,stats9358.2,stats9359.1,stats9359.2,stats9360.1,stats9360.2,stats9361.1,stats9361.2,stats9362.1,stats9362.2,stats9363.1,stats9363.2,stats9364.1,stats9364.2,stats9365.1,stats9365.2,stats9366.1,stats9366.2,stats9367.1,stats9367.2,stats9368.1,stats9368.2,stats9369.1,stats9369.2,stats9370.1,stats9370.2,stats9371.1,stats9371.2,stats9372.1,stats9372.2,stats9373.1,stats9373.2,stats9374.1,stats9374.2,stats9375.1,stats9375.2,stats9376.1,stats9376.2,stats9377.1,stats9377.2,stats9378.1,stats9378.2,stats9379.1,stats9379.2,stats9380.1,stats9380.2,stats9381.1,stats9381.2,stats9382.1,stats9382.2,stats9383.1,stats9383.2,stats9384.1,stats9384.2,stats9385.1,stats9385.2,stats9386.1,stats9386.2,stats9387.1,stats9387.2,stats9388.1,stats9388.2,stats9389.1,stats9389.2,stats9390.1,stats9390.2,stats9391.1,stats9391.2,stats9392.1,stats9392.2,stats9393.1,stats9393.2,stats9394.1,stats9394.2,stats9395.1,stats9395.2,stats9396.1,stats9396.2,stats9397.1,stats9397.2]
  decide
end AuthenticatedBranchRoundCheckedRows
