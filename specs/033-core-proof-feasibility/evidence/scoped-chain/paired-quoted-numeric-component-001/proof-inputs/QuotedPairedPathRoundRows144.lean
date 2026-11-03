import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData145
import PairedPathRoundInstructionMatrixData146
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9312 : actualRows9312=WordField.canonicalRows actualModulus 9312 (.badd 9306 9311) := by core033_kernel_decide
theorem stats9312 : actualRows9312.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9312=5388 := by core033_kernel_decide
theorem rows9313 : actualRows9313=WordField.canonicalRows actualModulus 9313 (.badd 9301 9312) := by core033_kernel_decide
theorem stats9313 : actualRows9313.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9313=5388 := by core033_kernel_decide
theorem rows9314 : actualRows9314=WordField.canonicalRows actualModulus 9314 (.badd 9205 9301) := by core033_kernel_decide
theorem stats9314 : actualRows9314.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9314=5388 := by core033_kernel_decide
theorem rows9315 : actualRows9315=WordField.canonicalRows actualModulus 9315 (.rotr 9314 6) := by core033_kernel_decide
theorem stats9315 : actualRows9315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9315=5124 := by core033_kernel_decide
theorem rows9316 : actualRows9316=WordField.canonicalRows actualModulus 9316 (.rotr 9314 11) := by core033_kernel_decide
theorem stats9316 : actualRows9316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9316=5124 := by core033_kernel_decide
theorem rows9317 : actualRows9317=WordField.canonicalRows actualModulus 9317 (.bxor 9315 9316) := by core033_kernel_decide
theorem stats9317 : actualRows9317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9317=7428 := by core033_kernel_decide
theorem rows9318 : actualRows9318=WordField.canonicalRows actualModulus 9318 (.rotr 9314 25) := by core033_kernel_decide
theorem stats9318 : actualRows9318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9318=5124 := by core033_kernel_decide
theorem rows9319 : actualRows9319=WordField.canonicalRows actualModulus 9319 (.bxor 9317 9318) := by core033_kernel_decide
theorem stats9319 : actualRows9319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9319=7428 := by core033_kernel_decide
theorem rows9320 : actualRows9320=WordField.canonicalRows actualModulus 9320 (.badd 9233 9319) := by core033_kernel_decide
theorem stats9320 : actualRows9320.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9320=5388 := by core033_kernel_decide
theorem rows9321 : actualRows9321=WordField.canonicalRows actualModulus 9321 (.band 9314 9287) := by core033_kernel_decide
theorem stats9321 : actualRows9321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9321=5124 := by core033_kernel_decide
theorem rows9322 : actualRows9322=WordField.canonicalRows actualModulus 9322 (.bnot 9314) := by core033_kernel_decide
theorem stats9322 : actualRows9322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9322=6276 := by core033_kernel_decide
theorem rows9323 : actualRows9323=WordField.canonicalRows actualModulus 9323 (.band 9322 9260) := by core033_kernel_decide
theorem stats9323 : actualRows9323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9323=5124 := by core033_kernel_decide
theorem rows9324 : actualRows9324=WordField.canonicalRows actualModulus 9324 (.bxor 9321 9323) := by core033_kernel_decide
theorem stats9324 : actualRows9324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9324=7428 := by core033_kernel_decide
theorem rows9325 : actualRows9325=WordField.canonicalRows actualModulus 9325 (.badd 9320 9324) := by core033_kernel_decide
theorem stats9325 : actualRows9325.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9325=5388 := by core033_kernel_decide
theorem rows9326 : actualRows9326=WordField.canonicalRows actualModulus 9326 (.literal (BitVec.ofNat 32 4094571909)) := by core033_kernel_decide
theorem stats9326 : actualRows9326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9326=3900 := by core033_kernel_decide
theorem rows9327 : actualRows9327=WordField.canonicalRows actualModulus 9327 (.badd 9325 9326) := by core033_kernel_decide
theorem stats9327 : actualRows9327.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9327=5388 := by core033_kernel_decide
theorem rows9328 : actualRows9328=WordField.canonicalRows actualModulus 9328 (.badd 9327 7851) := by core033_kernel_decide
theorem stats9328 : actualRows9328.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9328=5388 := by core033_kernel_decide
theorem rows9329 : actualRows9329=WordField.canonicalRows actualModulus 9329 (.rotr 9313 2) := by core033_kernel_decide
theorem stats9329 : actualRows9329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9329=5124 := by core033_kernel_decide
theorem rows9330 : actualRows9330=WordField.canonicalRows actualModulus 9330 (.rotr 9313 13) := by core033_kernel_decide
theorem stats9330 : actualRows9330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9330=5124 := by core033_kernel_decide
theorem rows9331 : actualRows9331=WordField.canonicalRows actualModulus 9331 (.bxor 9329 9330) := by core033_kernel_decide
theorem stats9331 : actualRows9331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9331=7428 := by core033_kernel_decide
theorem rows9332 : actualRows9332=WordField.canonicalRows actualModulus 9332 (.rotr 9313 22) := by core033_kernel_decide
theorem stats9332 : actualRows9332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9332=5124 := by core033_kernel_decide
theorem rows9333 : actualRows9333=WordField.canonicalRows actualModulus 9333 (.bxor 9331 9332) := by core033_kernel_decide
theorem stats9333 : actualRows9333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9333=7428 := by core033_kernel_decide
theorem rows9334 : actualRows9334=WordField.canonicalRows actualModulus 9334 (.band 9313 9286) := by core033_kernel_decide
theorem stats9334 : actualRows9334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9334=5124 := by core033_kernel_decide
theorem rows9335 : actualRows9335=WordField.canonicalRows actualModulus 9335 (.band 9313 9259) := by core033_kernel_decide
theorem stats9335 : actualRows9335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9335=5124 := by core033_kernel_decide
theorem rows9336 : actualRows9336=WordField.canonicalRows actualModulus 9336 (.bxor 9334 9335) := by core033_kernel_decide
theorem stats9336 : actualRows9336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9336=7428 := by core033_kernel_decide
theorem rows9337 : actualRows9337=WordField.canonicalRows actualModulus 9337 (.band 9286 9259) := by core033_kernel_decide
theorem stats9337 : actualRows9337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9337=5124 := by core033_kernel_decide
theorem rows9338 : actualRows9338=WordField.canonicalRows actualModulus 9338 (.bxor 9336 9337) := by core033_kernel_decide
theorem stats9338 : actualRows9338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9338=7428 := by core033_kernel_decide
theorem rows9339 : actualRows9339=WordField.canonicalRows actualModulus 9339 (.badd 9333 9338) := by core033_kernel_decide
theorem stats9339 : actualRows9339.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9339=5388 := by core033_kernel_decide
theorem rows9340 : actualRows9340=WordField.canonicalRows actualModulus 9340 (.badd 9328 9339) := by core033_kernel_decide
theorem stats9340 : actualRows9340.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9340=5388 := by core033_kernel_decide
theorem rows9341 : actualRows9341=WordField.canonicalRows actualModulus 9341 (.badd 9232 9328) := by core033_kernel_decide
theorem stats9341 : actualRows9341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9341=5388 := by core033_kernel_decide
theorem rows9342 : actualRows9342=WordField.canonicalRows actualModulus 9342 (.rotr 9341 6) := by core033_kernel_decide
theorem stats9342 : actualRows9342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9342=5124 := by core033_kernel_decide
theorem rows9343 : actualRows9343=WordField.canonicalRows actualModulus 9343 (.rotr 9341 11) := by core033_kernel_decide
theorem stats9343 : actualRows9343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9343=5124 := by core033_kernel_decide
theorem rows9344 : actualRows9344=WordField.canonicalRows actualModulus 9344 (.bxor 9342 9343) := by core033_kernel_decide
theorem stats9344 : actualRows9344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9344=7428 := by core033_kernel_decide
theorem rows9345 : actualRows9345=WordField.canonicalRows actualModulus 9345 (.rotr 9341 25) := by core033_kernel_decide
theorem stats9345 : actualRows9345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9345=5124 := by core033_kernel_decide
theorem rows9346 : actualRows9346=WordField.canonicalRows actualModulus 9346 (.bxor 9344 9345) := by core033_kernel_decide
theorem stats9346 : actualRows9346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9346=7428 := by core033_kernel_decide
theorem rows9347 : actualRows9347=WordField.canonicalRows actualModulus 9347 (.badd 9260 9346) := by core033_kernel_decide
theorem stats9347 : actualRows9347.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9347=5388 := by core033_kernel_decide
theorem rows9348 : actualRows9348=WordField.canonicalRows actualModulus 9348 (.band 9341 9314) := by core033_kernel_decide
theorem stats9348 : actualRows9348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9348=5124 := by core033_kernel_decide
theorem rows9349 : actualRows9349=WordField.canonicalRows actualModulus 9349 (.bnot 9341) := by core033_kernel_decide
theorem stats9349 : actualRows9349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9349=6276 := by core033_kernel_decide
theorem rows9350 : actualRows9350=WordField.canonicalRows actualModulus 9350 (.band 9349 9287) := by core033_kernel_decide
theorem stats9350 : actualRows9350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9350=5124 := by core033_kernel_decide
theorem rows9351 : actualRows9351=WordField.canonicalRows actualModulus 9351 (.bxor 9348 9350) := by core033_kernel_decide
theorem stats9351 : actualRows9351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9351=7428 := by core033_kernel_decide
theorem rows9352 : actualRows9352=WordField.canonicalRows actualModulus 9352 (.badd 9347 9351) := by core033_kernel_decide
theorem stats9352 : actualRows9352.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9352=5388 := by core033_kernel_decide
theorem rows9353 : actualRows9353=WordField.canonicalRows actualModulus 9353 (.literal (BitVec.ofNat 32 275423344)) := by core033_kernel_decide
theorem stats9353 : actualRows9353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9353=3540 := by core033_kernel_decide
theorem rows9354 : actualRows9354=WordField.canonicalRows actualModulus 9354 (.badd 9352 9353) := by core033_kernel_decide
theorem stats9354 : actualRows9354.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9354=5388 := by core033_kernel_decide
theorem rows9355 : actualRows9355=WordField.canonicalRows actualModulus 9355 (.badd 9354 7864) := by core033_kernel_decide
theorem stats9355 : actualRows9355.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9355=5388 := by core033_kernel_decide
theorem rows9356 : actualRows9356=WordField.canonicalRows actualModulus 9356 (.rotr 9340 2) := by core033_kernel_decide
theorem stats9356 : actualRows9356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9356=5124 := by core033_kernel_decide
theorem rows9357 : actualRows9357=WordField.canonicalRows actualModulus 9357 (.rotr 9340 13) := by core033_kernel_decide
theorem stats9357 : actualRows9357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9357=5124 := by core033_kernel_decide
theorem rows9358 : actualRows9358=WordField.canonicalRows actualModulus 9358 (.bxor 9356 9357) := by core033_kernel_decide
theorem stats9358 : actualRows9358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9358=7428 := by core033_kernel_decide
theorem rows9359 : actualRows9359=WordField.canonicalRows actualModulus 9359 (.rotr 9340 22) := by core033_kernel_decide
theorem stats9359 : actualRows9359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9359=5124 := by core033_kernel_decide
theorem rows9360 : actualRows9360=WordField.canonicalRows actualModulus 9360 (.bxor 9358 9359) := by core033_kernel_decide
theorem stats9360 : actualRows9360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9360=7428 := by core033_kernel_decide
theorem rows9361 : actualRows9361=WordField.canonicalRows actualModulus 9361 (.band 9340 9313) := by core033_kernel_decide
theorem stats9361 : actualRows9361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9361=5124 := by core033_kernel_decide
theorem rows9362 : actualRows9362=WordField.canonicalRows actualModulus 9362 (.band 9340 9286) := by core033_kernel_decide
theorem stats9362 : actualRows9362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9362=5124 := by core033_kernel_decide
theorem rows9363 : actualRows9363=WordField.canonicalRows actualModulus 9363 (.bxor 9361 9362) := by core033_kernel_decide
theorem stats9363 : actualRows9363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9363=7428 := by core033_kernel_decide
theorem rows9364 : actualRows9364=WordField.canonicalRows actualModulus 9364 (.band 9313 9286) := by core033_kernel_decide
theorem stats9364 : actualRows9364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9364=5124 := by core033_kernel_decide
theorem rows9365 : actualRows9365=WordField.canonicalRows actualModulus 9365 (.bxor 9363 9364) := by core033_kernel_decide
theorem stats9365 : actualRows9365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9365=7428 := by core033_kernel_decide
theorem rows9366 : actualRows9366=WordField.canonicalRows actualModulus 9366 (.badd 9360 9365) := by core033_kernel_decide
theorem stats9366 : actualRows9366.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9366=5388 := by core033_kernel_decide
theorem rows9367 : actualRows9367=WordField.canonicalRows actualModulus 9367 (.badd 9355 9366) := by core033_kernel_decide
theorem stats9367 : actualRows9367.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9367=5388 := by core033_kernel_decide
theorem rows9368 : actualRows9368=WordField.canonicalRows actualModulus 9368 (.badd 9259 9355) := by core033_kernel_decide
theorem stats9368 : actualRows9368.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9368=5388 := by core033_kernel_decide
theorem rows9369 : actualRows9369=WordField.canonicalRows actualModulus 9369 (.rotr 9368 6) := by core033_kernel_decide
theorem stats9369 : actualRows9369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9369=5124 := by core033_kernel_decide
theorem rows9370 : actualRows9370=WordField.canonicalRows actualModulus 9370 (.rotr 9368 11) := by core033_kernel_decide
theorem stats9370 : actualRows9370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9370=5124 := by core033_kernel_decide
theorem rows9371 : actualRows9371=WordField.canonicalRows actualModulus 9371 (.bxor 9369 9370) := by core033_kernel_decide
theorem stats9371 : actualRows9371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9371=7428 := by core033_kernel_decide
theorem rows9372 : actualRows9372=WordField.canonicalRows actualModulus 9372 (.rotr 9368 25) := by core033_kernel_decide
theorem stats9372 : actualRows9372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9372=5124 := by core033_kernel_decide
theorem rows9373 : actualRows9373=WordField.canonicalRows actualModulus 9373 (.bxor 9371 9372) := by core033_kernel_decide
theorem stats9373 : actualRows9373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9373=7428 := by core033_kernel_decide
theorem rows9374 : actualRows9374=WordField.canonicalRows actualModulus 9374 (.badd 9287 9373) := by core033_kernel_decide
theorem stats9374 : actualRows9374.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9374=5388 := by core033_kernel_decide
theorem rows9375 : actualRows9375=WordField.canonicalRows actualModulus 9375 (.band 9368 9341) := by core033_kernel_decide
theorem stats9375 : actualRows9375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9375=5124 := by core033_kernel_decide
def partRows144 : List R1CS.Row := actualRows9312++actualRows9313++actualRows9314++actualRows9315++actualRows9316++actualRows9317++actualRows9318++actualRows9319++actualRows9320++actualRows9321++actualRows9322++actualRows9323++actualRows9324++actualRows9325++actualRows9326++actualRows9327++actualRows9328++actualRows9329++actualRows9330++actualRows9331++actualRows9332++actualRows9333++actualRows9334++actualRows9335++actualRows9336++actualRows9337++actualRows9338++actualRows9339++actualRows9340++actualRows9341++actualRows9342++actualRows9343++actualRows9344++actualRows9345++actualRows9346++actualRows9347++actualRows9348++actualRows9349++actualRows9350++actualRows9351++actualRows9352++actualRows9353++actualRows9354++actualRows9355++actualRows9356++actualRows9357++actualRows9358++actualRows9359++actualRows9360++actualRows9361++actualRows9362++actualRows9363++actualRows9364++actualRows9365++actualRows9366++actualRows9367++actualRows9368++actualRows9369++actualRows9370++actualRows9371++actualRows9372++actualRows9373++actualRows9374++actualRows9375
def partOps144 : List WordIR.Op := [.badd 9306 9311,.badd 9301 9312,.badd 9205 9301,.rotr 9314 6,.rotr 9314 11,.bxor 9315 9316,.rotr 9314 25,.bxor 9317 9318,.badd 9233 9319,.band 9314 9287,.bnot 9314,.band 9322 9260,.bxor 9321 9323,.badd 9320 9324,.literal (BitVec.ofNat 32 4094571909),.badd 9325 9326,.badd 9327 7851,.rotr 9313 2,.rotr 9313 13,.bxor 9329 9330,.rotr 9313 22,.bxor 9331 9332,.band 9313 9286,.band 9313 9259,.bxor 9334 9335,.band 9286 9259,.bxor 9336 9337,.badd 9333 9338,.badd 9328 9339,.badd 9232 9328,.rotr 9341 6,.rotr 9341 11,.bxor 9342 9343,.rotr 9341 25,.bxor 9344 9345,.badd 9260 9346,.band 9341 9314,.bnot 9341,.band 9349 9287,.bxor 9348 9350,.badd 9347 9351,.literal (BitVec.ofNat 32 275423344),.badd 9352 9353,.badd 9354 7864,.rotr 9340 2,.rotr 9340 13,.bxor 9356 9357,.rotr 9340 22,.bxor 9358 9359,.band 9340 9313,.band 9340 9286,.bxor 9361 9362,.band 9313 9286,.bxor 9363 9364,.badd 9360 9365,.badd 9355 9366,.badd 9259 9355,.rotr 9368 6,.rotr 9368 11,.bxor 9369 9370,.rotr 9368 25,.bxor 9371 9372,.badd 9287 9373,.band 9368 9341]
theorem partExact144 : partRows144=WordField.rows actualModulus 9312 partOps144 := by
  simp only [partRows144,partOps144,WordField.rows,rows9312,rows9313,rows9314,rows9315,rows9316,rows9317,rows9318,rows9319,rows9320,rows9321,rows9322,rows9323,rows9324,rows9325,rows9326,rows9327,rows9328,rows9329,rows9330,rows9331,rows9332,rows9333,rows9334,rows9335,rows9336,rows9337,rows9338,rows9339,rows9340,rows9341,rows9342,rows9343,rows9344,rows9345,rows9346,rows9347,rows9348,rows9349,rows9350,rows9351,rows9352,rows9353,rows9354,rows9355,rows9356,rows9357,rows9358,rows9359,rows9360,rows9361,rows9362,rows9363,rows9364,rows9365,rows9366,rows9367,rows9368,rows9369,rows9370,rows9371,rows9372,rows9373,rows9374,rows9375,List.append_assoc,List.append_nil]
theorem partLength144 : partOps144.length=64 := by decide
theorem partStats144 : partRows144.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows144=369048 := by
  simp only [partRows144,List.length_append,MatrixRowBlocks.rows_weight_append,stats9312.1,stats9312.2,stats9313.1,stats9313.2,stats9314.1,stats9314.2,stats9315.1,stats9315.2,stats9316.1,stats9316.2,stats9317.1,stats9317.2,stats9318.1,stats9318.2,stats9319.1,stats9319.2,stats9320.1,stats9320.2,stats9321.1,stats9321.2,stats9322.1,stats9322.2,stats9323.1,stats9323.2,stats9324.1,stats9324.2,stats9325.1,stats9325.2,stats9326.1,stats9326.2,stats9327.1,stats9327.2,stats9328.1,stats9328.2,stats9329.1,stats9329.2,stats9330.1,stats9330.2,stats9331.1,stats9331.2,stats9332.1,stats9332.2,stats9333.1,stats9333.2,stats9334.1,stats9334.2,stats9335.1,stats9335.2,stats9336.1,stats9336.2,stats9337.1,stats9337.2,stats9338.1,stats9338.2,stats9339.1,stats9339.2,stats9340.1,stats9340.2,stats9341.1,stats9341.2,stats9342.1,stats9342.2,stats9343.1,stats9343.2,stats9344.1,stats9344.2,stats9345.1,stats9345.2,stats9346.1,stats9346.2,stats9347.1,stats9347.2,stats9348.1,stats9348.2,stats9349.1,stats9349.2,stats9350.1,stats9350.2,stats9351.1,stats9351.2,stats9352.1,stats9352.2,stats9353.1,stats9353.2,stats9354.1,stats9354.2,stats9355.1,stats9355.2,stats9356.1,stats9356.2,stats9357.1,stats9357.2,stats9358.1,stats9358.2,stats9359.1,stats9359.2,stats9360.1,stats9360.2,stats9361.1,stats9361.2,stats9362.1,stats9362.2,stats9363.1,stats9363.2,stats9364.1,stats9364.2,stats9365.1,stats9365.2,stats9366.1,stats9366.2,stats9367.1,stats9367.2,stats9368.1,stats9368.2,stats9369.1,stats9369.2,stats9370.1,stats9370.2,stats9371.1,stats9371.2,stats9372.1,stats9372.2,stats9373.1,stats9373.2,stats9374.1,stats9374.2,stats9375.1,stats9375.2]
  decide
end QuotedPairedPathRoundCheckedRows
