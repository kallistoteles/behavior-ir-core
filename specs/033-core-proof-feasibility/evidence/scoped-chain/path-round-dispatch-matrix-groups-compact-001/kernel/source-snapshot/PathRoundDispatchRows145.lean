import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData145
import PathRoundDispatchInstructionMatrixData146
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9323 : actualRows9323=WordField.canonicalRows actualModulus 9323 (.bnot 9322) := by core033_kernel_decide
theorem stats9323 : actualRows9323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9323=6276 := by core033_kernel_decide
theorem rows9324 : actualRows9324=WordField.canonicalRows actualModulus 9324 (.bxor 9321 9323) := by core033_kernel_decide
theorem stats9324 : actualRows9324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9324=7428 := by core033_kernel_decide
theorem rows9325 : actualRows9325=WordField.canonicalRows actualModulus 9325 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9325 : actualRows9325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9325=2892 := by core033_kernel_decide
theorem rows9326 : actualRows9326=WordField.canonicalRows actualModulus 9326 (.bxor 96 9325) := by core033_kernel_decide
theorem stats9326 : actualRows9326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9326=7428 := by core033_kernel_decide
theorem rows9327 : actualRows9327=WordField.canonicalRows actualModulus 9327 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9327 : actualRows9327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9327=2820 := by core033_kernel_decide
theorem rows9328 : actualRows9328=WordField.canonicalRows actualModulus 9328 (.bnot 9327) := by core033_kernel_decide
theorem stats9328 : actualRows9328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9328=6276 := by core033_kernel_decide
theorem rows9329 : actualRows9329=WordField.canonicalRows actualModulus 9329 (.badd 9326 9328) := by core033_kernel_decide
theorem stats9329 : actualRows9329.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9329=5388 := by core033_kernel_decide
theorem rows9330 : actualRows9330=WordField.canonicalRows actualModulus 9330 (.bnot 9329) := by core033_kernel_decide
theorem stats9330 : actualRows9330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9330=6276 := by core033_kernel_decide
theorem rows9331 : actualRows9331=WordField.canonicalRows actualModulus 9331 (.band 9324 9330) := by core033_kernel_decide
theorem stats9331 : actualRows9331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9331=5124 := by core033_kernel_decide
theorem rows9332 : actualRows9332=WordField.canonicalRows actualModulus 9332 (.bxor 9319 9331) := by core033_kernel_decide
theorem stats9332 : actualRows9332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9332=7428 := by core033_kernel_decide
theorem rows9333 : actualRows9333=WordField.canonicalRows actualModulus 9333 (.shr 9332 31) := by core033_kernel_decide
theorem stats9333 : actualRows9333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9333=2892 := by core033_kernel_decide
theorem rows9334 : actualRows9334=WordField.canonicalRows actualModulus 9334 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9334 : actualRows9334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9334=2892 := by core033_kernel_decide
theorem rows9335 : actualRows9335=WordField.canonicalRows actualModulus 9335 (.bxor 9333 9334) := by core033_kernel_decide
theorem stats9335 : actualRows9335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9335=7428 := by core033_kernel_decide
theorem rows9336 : actualRows9336=WordField.canonicalRows actualModulus 9336 (.bnot 9335) := by core033_kernel_decide
theorem stats9336 : actualRows9336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9336=6276 := by core033_kernel_decide
theorem rows9337 : actualRows9337=WordField.canonicalRows actualModulus 9337 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9337 : actualRows9337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9337=2892 := by core033_kernel_decide
theorem rows9338 : actualRows9338=WordField.canonicalRows actualModulus 9338 (.badd 9336 9337) := by core033_kernel_decide
theorem stats9338 : actualRows9338.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9338=5388 := by core033_kernel_decide
theorem rows9339 : actualRows9339=WordField.canonicalRows actualModulus 9339 (.bnot 9338) := by core033_kernel_decide
theorem stats9339 : actualRows9339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9339=6276 := by core033_kernel_decide
theorem rows9340 : actualRows9340=WordField.canonicalRows actualModulus 9340 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9340 : actualRows9340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9340=2892 := by core033_kernel_decide
theorem rows9341 : actualRows9341=WordField.canonicalRows actualModulus 9341 (.band 9339 9340) := by core033_kernel_decide
theorem stats9341 : actualRows9341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9341=5124 := by core033_kernel_decide
theorem rows9342 : actualRows9342=WordField.canonicalRows actualModulus 9342 (.bxor 9314 9341) := by core033_kernel_decide
theorem stats9342 : actualRows9342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9342=7428 := by core033_kernel_decide
theorem rows9343 : actualRows9343=WordField.canonicalRows actualModulus 9343 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9343 : actualRows9343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9343=2892 := by core033_kernel_decide
theorem rows9344 : actualRows9344=WordField.canonicalRows actualModulus 9344 (.bxor 96 9343) := by core033_kernel_decide
theorem stats9344 : actualRows9344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9344=7428 := by core033_kernel_decide
theorem rows9345 : actualRows9345=WordField.canonicalRows actualModulus 9345 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9345 : actualRows9345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9345=2820 := by core033_kernel_decide
theorem rows9346 : actualRows9346=WordField.canonicalRows actualModulus 9346 (.bnot 9345) := by core033_kernel_decide
theorem stats9346 : actualRows9346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9346=6276 := by core033_kernel_decide
theorem rows9347 : actualRows9347=WordField.canonicalRows actualModulus 9347 (.band 9344 9346) := by core033_kernel_decide
theorem stats9347 : actualRows9347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9347=5124 := by core033_kernel_decide
theorem rows9348 : actualRows9348=WordField.canonicalRows actualModulus 9348 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9348 : actualRows9348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9348=2892 := by core033_kernel_decide
theorem rows9349 : actualRows9349=WordField.canonicalRows actualModulus 9349 (.bxor 96 9348) := by core033_kernel_decide
theorem stats9349 : actualRows9349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9349=7428 := by core033_kernel_decide
theorem rows9350 : actualRows9350=WordField.canonicalRows actualModulus 9350 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9350 : actualRows9350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9350=2820 := by core033_kernel_decide
theorem rows9351 : actualRows9351=WordField.canonicalRows actualModulus 9351 (.bnot 9350) := by core033_kernel_decide
theorem stats9351 : actualRows9351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9351=6276 := by core033_kernel_decide
theorem rows9352 : actualRows9352=WordField.canonicalRows actualModulus 9352 (.bxor 9349 9351) := by core033_kernel_decide
theorem stats9352 : actualRows9352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9352=7428 := by core033_kernel_decide
theorem rows9353 : actualRows9353=WordField.canonicalRows actualModulus 9353 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9353 : actualRows9353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9353=2892 := by core033_kernel_decide
theorem rows9354 : actualRows9354=WordField.canonicalRows actualModulus 9354 (.bxor 96 9353) := by core033_kernel_decide
theorem stats9354 : actualRows9354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9354=7428 := by core033_kernel_decide
theorem rows9355 : actualRows9355=WordField.canonicalRows actualModulus 9355 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9355 : actualRows9355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9355=2820 := by core033_kernel_decide
theorem rows9356 : actualRows9356=WordField.canonicalRows actualModulus 9356 (.bnot 9355) := by core033_kernel_decide
theorem stats9356 : actualRows9356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9356=6276 := by core033_kernel_decide
theorem rows9357 : actualRows9357=WordField.canonicalRows actualModulus 9357 (.badd 9354 9356) := by core033_kernel_decide
theorem stats9357 : actualRows9357.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9357=5388 := by core033_kernel_decide
theorem rows9358 : actualRows9358=WordField.canonicalRows actualModulus 9358 (.bnot 9357) := by core033_kernel_decide
theorem stats9358 : actualRows9358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9358=6276 := by core033_kernel_decide
theorem rows9359 : actualRows9359=WordField.canonicalRows actualModulus 9359 (.band 9352 9358) := by core033_kernel_decide
theorem stats9359 : actualRows9359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9359=5124 := by core033_kernel_decide
theorem rows9360 : actualRows9360=WordField.canonicalRows actualModulus 9360 (.bxor 9347 9359) := by core033_kernel_decide
theorem stats9360 : actualRows9360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9360=7428 := by core033_kernel_decide
theorem rows9361 : actualRows9361=WordField.canonicalRows actualModulus 9361 (.shr 9360 31) := by core033_kernel_decide
theorem stats9361 : actualRows9361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9361=2892 := by core033_kernel_decide
theorem rows9362 : actualRows9362=WordField.canonicalRows actualModulus 9362 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9362 : actualRows9362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9362=2892 := by core033_kernel_decide
theorem rows9363 : actualRows9363=WordField.canonicalRows actualModulus 9363 (.bxor 9361 9362) := by core033_kernel_decide
theorem stats9363 : actualRows9363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9363=7428 := by core033_kernel_decide
theorem rows9364 : actualRows9364=WordField.canonicalRows actualModulus 9364 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9364 : actualRows9364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9364=2892 := by core033_kernel_decide
theorem rows9365 : actualRows9365=WordField.canonicalRows actualModulus 9365 (.bxor 96 9364) := by core033_kernel_decide
theorem stats9365 : actualRows9365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9365=7428 := by core033_kernel_decide
theorem rows9366 : actualRows9366=WordField.canonicalRows actualModulus 9366 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9366 : actualRows9366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9366=2820 := by core033_kernel_decide
theorem rows9367 : actualRows9367=WordField.canonicalRows actualModulus 9367 (.bnot 9366) := by core033_kernel_decide
theorem stats9367 : actualRows9367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9367=6276 := by core033_kernel_decide
theorem rows9368 : actualRows9368=WordField.canonicalRows actualModulus 9368 (.band 9365 9367) := by core033_kernel_decide
theorem stats9368 : actualRows9368.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9368=5124 := by core033_kernel_decide
theorem rows9369 : actualRows9369=WordField.canonicalRows actualModulus 9369 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9369 : actualRows9369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9369=2892 := by core033_kernel_decide
theorem rows9370 : actualRows9370=WordField.canonicalRows actualModulus 9370 (.bxor 96 9369) := by core033_kernel_decide
theorem stats9370 : actualRows9370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9370=7428 := by core033_kernel_decide
theorem rows9371 : actualRows9371=WordField.canonicalRows actualModulus 9371 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9371 : actualRows9371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9371=2820 := by core033_kernel_decide
theorem rows9372 : actualRows9372=WordField.canonicalRows actualModulus 9372 (.bnot 9371) := by core033_kernel_decide
theorem stats9372 : actualRows9372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9372=6276 := by core033_kernel_decide
theorem rows9373 : actualRows9373=WordField.canonicalRows actualModulus 9373 (.bxor 9370 9372) := by core033_kernel_decide
theorem stats9373 : actualRows9373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9373=7428 := by core033_kernel_decide
theorem rows9374 : actualRows9374=WordField.canonicalRows actualModulus 9374 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9374 : actualRows9374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9374=2892 := by core033_kernel_decide
theorem rows9375 : actualRows9375=WordField.canonicalRows actualModulus 9375 (.bxor 96 9374) := by core033_kernel_decide
theorem stats9375 : actualRows9375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9375=7428 := by core033_kernel_decide
theorem rows9376 : actualRows9376=WordField.canonicalRows actualModulus 9376 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9376 : actualRows9376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9376=2820 := by core033_kernel_decide
theorem rows9377 : actualRows9377=WordField.canonicalRows actualModulus 9377 (.bnot 9376) := by core033_kernel_decide
theorem stats9377 : actualRows9377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9377=6276 := by core033_kernel_decide
theorem rows9378 : actualRows9378=WordField.canonicalRows actualModulus 9378 (.badd 9375 9377) := by core033_kernel_decide
theorem stats9378 : actualRows9378.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9378=5388 := by core033_kernel_decide
theorem rows9379 : actualRows9379=WordField.canonicalRows actualModulus 9379 (.bnot 9378) := by core033_kernel_decide
theorem stats9379 : actualRows9379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9379=6276 := by core033_kernel_decide
theorem rows9380 : actualRows9380=WordField.canonicalRows actualModulus 9380 (.band 9373 9379) := by core033_kernel_decide
theorem stats9380 : actualRows9380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9380=5124 := by core033_kernel_decide
theorem rows9381 : actualRows9381=WordField.canonicalRows actualModulus 9381 (.bxor 9368 9380) := by core033_kernel_decide
theorem stats9381 : actualRows9381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9381=7428 := by core033_kernel_decide
theorem rows9382 : actualRows9382=WordField.canonicalRows actualModulus 9382 (.shr 9381 31) := by core033_kernel_decide
theorem stats9382 : actualRows9382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9382=2892 := by core033_kernel_decide
theorem rows9383 : actualRows9383=WordField.canonicalRows actualModulus 9383 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9383 : actualRows9383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9383=2892 := by core033_kernel_decide
theorem rows9384 : actualRows9384=WordField.canonicalRows actualModulus 9384 (.bxor 9382 9383) := by core033_kernel_decide
theorem stats9384 : actualRows9384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9384=7428 := by core033_kernel_decide
theorem rows9385 : actualRows9385=WordField.canonicalRows actualModulus 9385 (.bxor 9363 9384) := by core033_kernel_decide
theorem stats9385 : actualRows9385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9385=7428 := by core033_kernel_decide
theorem rows9386 : actualRows9386=WordField.canonicalRows actualModulus 9386 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9386 : actualRows9386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9386=2964 := by core033_kernel_decide
def partRows145 : List R1CS.Row := actualRows9323++actualRows9324++actualRows9325++actualRows9326++actualRows9327++actualRows9328++actualRows9329++actualRows9330++actualRows9331++actualRows9332++actualRows9333++actualRows9334++actualRows9335++actualRows9336++actualRows9337++actualRows9338++actualRows9339++actualRows9340++actualRows9341++actualRows9342++actualRows9343++actualRows9344++actualRows9345++actualRows9346++actualRows9347++actualRows9348++actualRows9349++actualRows9350++actualRows9351++actualRows9352++actualRows9353++actualRows9354++actualRows9355++actualRows9356++actualRows9357++actualRows9358++actualRows9359++actualRows9360++actualRows9361++actualRows9362++actualRows9363++actualRows9364++actualRows9365++actualRows9366++actualRows9367++actualRows9368++actualRows9369++actualRows9370++actualRows9371++actualRows9372++actualRows9373++actualRows9374++actualRows9375++actualRows9376++actualRows9377++actualRows9378++actualRows9379++actualRows9380++actualRows9381++actualRows9382++actualRows9383++actualRows9384++actualRows9385++actualRows9386
def partOps145 : List WordIR.Op := [.bnot 9322,.bxor 9321 9323,.literal (BitVec.ofNat 32 2),.bxor 96 9325,.literal (BitVec.ofNat 32 0),.bnot 9327,.badd 9326 9328,.bnot 9329,.band 9324 9330,.bxor 9319 9331,.shr 9332 31,.literal (BitVec.ofNat 32 1),.bxor 9333 9334,.bnot 9335,.literal (BitVec.ofNat 32 1),.badd 9336 9337,.bnot 9338,.literal (BitVec.ofNat 32 2),.band 9339 9340,.bxor 9314 9341,.literal (BitVec.ofNat 32 1),.bxor 96 9343,.literal (BitVec.ofNat 32 0),.bnot 9345,.band 9344 9346,.literal (BitVec.ofNat 32 1),.bxor 96 9348,.literal (BitVec.ofNat 32 0),.bnot 9350,.bxor 9349 9351,.literal (BitVec.ofNat 32 1),.bxor 96 9353,.literal (BitVec.ofNat 32 0),.bnot 9355,.badd 9354 9356,.bnot 9357,.band 9352 9358,.bxor 9347 9359,.shr 9360 31,.literal (BitVec.ofNat 32 1),.bxor 9361 9362,.literal (BitVec.ofNat 32 2),.bxor 96 9364,.literal (BitVec.ofNat 32 0),.bnot 9366,.band 9365 9367,.literal (BitVec.ofNat 32 2),.bxor 96 9369,.literal (BitVec.ofNat 32 0),.bnot 9371,.bxor 9370 9372,.literal (BitVec.ofNat 32 2),.bxor 96 9374,.literal (BitVec.ofNat 32 0),.bnot 9376,.badd 9375 9377,.bnot 9378,.band 9373 9379,.bxor 9368 9380,.shr 9381 31,.literal (BitVec.ofNat 32 1),.bxor 9382 9383,.bxor 9363 9384,.literal (BitVec.ofNat 32 3)]
theorem partExact145 : partRows145=WordField.rows actualModulus 9323 partOps145 := by
  simp only [partRows145,partOps145,WordField.rows,rows9323,rows9324,rows9325,rows9326,rows9327,rows9328,rows9329,rows9330,rows9331,rows9332,rows9333,rows9334,rows9335,rows9336,rows9337,rows9338,rows9339,rows9340,rows9341,rows9342,rows9343,rows9344,rows9345,rows9346,rows9347,rows9348,rows9349,rows9350,rows9351,rows9352,rows9353,rows9354,rows9355,rows9356,rows9357,rows9358,rows9359,rows9360,rows9361,rows9362,rows9363,rows9364,rows9365,rows9366,rows9367,rows9368,rows9369,rows9370,rows9371,rows9372,rows9373,rows9374,rows9375,rows9376,rows9377,rows9378,rows9379,rows9380,rows9381,rows9382,rows9383,rows9384,rows9385,rows9386,List.append_assoc,List.append_nil]
theorem partLength145 : partOps145.length=64 := by decide
theorem partStats145 : partRows145.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows145=333672 := by
  simp only [partRows145,List.length_append,MatrixRowBlocks.rows_weight_append,stats9323.1,stats9323.2,stats9324.1,stats9324.2,stats9325.1,stats9325.2,stats9326.1,stats9326.2,stats9327.1,stats9327.2,stats9328.1,stats9328.2,stats9329.1,stats9329.2,stats9330.1,stats9330.2,stats9331.1,stats9331.2,stats9332.1,stats9332.2,stats9333.1,stats9333.2,stats9334.1,stats9334.2,stats9335.1,stats9335.2,stats9336.1,stats9336.2,stats9337.1,stats9337.2,stats9338.1,stats9338.2,stats9339.1,stats9339.2,stats9340.1,stats9340.2,stats9341.1,stats9341.2,stats9342.1,stats9342.2,stats9343.1,stats9343.2,stats9344.1,stats9344.2,stats9345.1,stats9345.2,stats9346.1,stats9346.2,stats9347.1,stats9347.2,stats9348.1,stats9348.2,stats9349.1,stats9349.2,stats9350.1,stats9350.2,stats9351.1,stats9351.2,stats9352.1,stats9352.2,stats9353.1,stats9353.2,stats9354.1,stats9354.2,stats9355.1,stats9355.2,stats9356.1,stats9356.2,stats9357.1,stats9357.2,stats9358.1,stats9358.2,stats9359.1,stats9359.2,stats9360.1,stats9360.2,stats9361.1,stats9361.2,stats9362.1,stats9362.2,stats9363.1,stats9363.2,stats9364.1,stats9364.2,stats9365.1,stats9365.2,stats9366.1,stats9366.2,stats9367.1,stats9367.2,stats9368.1,stats9368.2,stats9369.1,stats9369.2,stats9370.1,stats9370.2,stats9371.1,stats9371.2,stats9372.1,stats9372.2,stats9373.1,stats9373.2,stats9374.1,stats9374.2,stats9375.1,stats9375.2,stats9376.1,stats9376.2,stats9377.1,stats9377.2,stats9378.1,stats9378.2,stats9379.1,stats9379.2,stats9380.1,stats9380.2,stats9381.1,stats9381.2,stats9382.1,stats9382.2,stats9383.1,stats9383.2,stats9384.1,stats9384.2,stats9385.1,stats9385.2,stats9386.1,stats9386.2]
  decide
end PathRoundDispatchCheckedRows
