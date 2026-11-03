import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData130
import PathRoundDispatchInstructionMatrixData131
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8363 : actualRows8363=WordField.canonicalRows actualModulus 8363 (.rotr 8362 6) := by core033_kernel_decide
theorem stats8363 : actualRows8363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8363=5124 := by core033_kernel_decide
theorem rows8364 : actualRows8364=WordField.canonicalRows actualModulus 8364 (.rotr 8362 11) := by core033_kernel_decide
theorem stats8364 : actualRows8364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8364=5124 := by core033_kernel_decide
theorem rows8365 : actualRows8365=WordField.canonicalRows actualModulus 8365 (.bxor 8363 8364) := by core033_kernel_decide
theorem stats8365 : actualRows8365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8365=7428 := by core033_kernel_decide
theorem rows8366 : actualRows8366=WordField.canonicalRows actualModulus 8366 (.rotr 8362 25) := by core033_kernel_decide
theorem stats8366 : actualRows8366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8366=5124 := by core033_kernel_decide
theorem rows8367 : actualRows8367=WordField.canonicalRows actualModulus 8367 (.bxor 8365 8366) := by core033_kernel_decide
theorem stats8367 : actualRows8367.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8367=7428 := by core033_kernel_decide
theorem rows8368 : actualRows8368=WordField.canonicalRows actualModulus 8368 (.badd 8281 8367) := by core033_kernel_decide
theorem stats8368 : actualRows8368.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8368=5388 := by core033_kernel_decide
theorem rows8369 : actualRows8369=WordField.canonicalRows actualModulus 8369 (.band 8362 8335) := by core033_kernel_decide
theorem stats8369 : actualRows8369.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8369=5124 := by core033_kernel_decide
theorem rows8370 : actualRows8370=WordField.canonicalRows actualModulus 8370 (.bnot 8362) := by core033_kernel_decide
theorem stats8370 : actualRows8370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8370=6276 := by core033_kernel_decide
theorem rows8371 : actualRows8371=WordField.canonicalRows actualModulus 8371 (.band 8370 8308) := by core033_kernel_decide
theorem stats8371 : actualRows8371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8371=5124 := by core033_kernel_decide
theorem rows8372 : actualRows8372=WordField.canonicalRows actualModulus 8372 (.bxor 8369 8371) := by core033_kernel_decide
theorem stats8372 : actualRows8372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8372=7428 := by core033_kernel_decide
theorem rows8373 : actualRows8373=WordField.canonicalRows actualModulus 8373 (.badd 8368 8372) := by core033_kernel_decide
theorem stats8373 : actualRows8373.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8373=5388 := by core033_kernel_decide
theorem rows8374 : actualRows8374=WordField.canonicalRows actualModulus 8374 (.literal (BitVec.ofNat 32 113926993)) := by core033_kernel_decide
theorem stats8374 : actualRows8374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8374=3756 := by core033_kernel_decide
theorem rows8375 : actualRows8375=WordField.canonicalRows actualModulus 8375 (.badd 8373 8374) := by core033_kernel_decide
theorem stats8375 : actualRows8375.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8375=5388 := by core033_kernel_decide
theorem rows8376 : actualRows8376=WordField.canonicalRows actualModulus 8376 (.badd 8375 7123) := by core033_kernel_decide
theorem stats8376 : actualRows8376.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8376=5388 := by core033_kernel_decide
theorem rows8377 : actualRows8377=WordField.canonicalRows actualModulus 8377 (.rotr 8361 2) := by core033_kernel_decide
theorem stats8377 : actualRows8377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8377=5124 := by core033_kernel_decide
theorem rows8378 : actualRows8378=WordField.canonicalRows actualModulus 8378 (.rotr 8361 13) := by core033_kernel_decide
theorem stats8378 : actualRows8378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8378=5124 := by core033_kernel_decide
theorem rows8379 : actualRows8379=WordField.canonicalRows actualModulus 8379 (.bxor 8377 8378) := by core033_kernel_decide
theorem stats8379 : actualRows8379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8379=7428 := by core033_kernel_decide
theorem rows8380 : actualRows8380=WordField.canonicalRows actualModulus 8380 (.rotr 8361 22) := by core033_kernel_decide
theorem stats8380 : actualRows8380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8380=5124 := by core033_kernel_decide
theorem rows8381 : actualRows8381=WordField.canonicalRows actualModulus 8381 (.bxor 8379 8380) := by core033_kernel_decide
theorem stats8381 : actualRows8381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8381=7428 := by core033_kernel_decide
theorem rows8382 : actualRows8382=WordField.canonicalRows actualModulus 8382 (.band 8361 8334) := by core033_kernel_decide
theorem stats8382 : actualRows8382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8382=5124 := by core033_kernel_decide
theorem rows8383 : actualRows8383=WordField.canonicalRows actualModulus 8383 (.band 8361 8307) := by core033_kernel_decide
theorem stats8383 : actualRows8383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8383=5124 := by core033_kernel_decide
theorem rows8384 : actualRows8384=WordField.canonicalRows actualModulus 8384 (.bxor 8382 8383) := by core033_kernel_decide
theorem stats8384 : actualRows8384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8384=7428 := by core033_kernel_decide
theorem rows8385 : actualRows8385=WordField.canonicalRows actualModulus 8385 (.band 8334 8307) := by core033_kernel_decide
theorem stats8385 : actualRows8385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8385=5124 := by core033_kernel_decide
theorem rows8386 : actualRows8386=WordField.canonicalRows actualModulus 8386 (.bxor 8384 8385) := by core033_kernel_decide
theorem stats8386 : actualRows8386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8386=7428 := by core033_kernel_decide
theorem rows8387 : actualRows8387=WordField.canonicalRows actualModulus 8387 (.badd 8381 8386) := by core033_kernel_decide
theorem stats8387 : actualRows8387.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8387=5388 := by core033_kernel_decide
theorem rows8388 : actualRows8388=WordField.canonicalRows actualModulus 8388 (.badd 8376 8387) := by core033_kernel_decide
theorem stats8388 : actualRows8388.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8388=5388 := by core033_kernel_decide
theorem rows8389 : actualRows8389=WordField.canonicalRows actualModulus 8389 (.badd 8280 8376) := by core033_kernel_decide
theorem stats8389 : actualRows8389.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8389=5388 := by core033_kernel_decide
theorem rows8390 : actualRows8390=WordField.canonicalRows actualModulus 8390 (.rotr 8389 6) := by core033_kernel_decide
theorem stats8390 : actualRows8390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8390=5124 := by core033_kernel_decide
theorem rows8391 : actualRows8391=WordField.canonicalRows actualModulus 8391 (.rotr 8389 11) := by core033_kernel_decide
theorem stats8391 : actualRows8391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8391=5124 := by core033_kernel_decide
theorem rows8392 : actualRows8392=WordField.canonicalRows actualModulus 8392 (.bxor 8390 8391) := by core033_kernel_decide
theorem stats8392 : actualRows8392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8392=7428 := by core033_kernel_decide
theorem rows8393 : actualRows8393=WordField.canonicalRows actualModulus 8393 (.rotr 8389 25) := by core033_kernel_decide
theorem stats8393 : actualRows8393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8393=5124 := by core033_kernel_decide
theorem rows8394 : actualRows8394=WordField.canonicalRows actualModulus 8394 (.bxor 8392 8393) := by core033_kernel_decide
theorem stats8394 : actualRows8394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8394=7428 := by core033_kernel_decide
theorem rows8395 : actualRows8395=WordField.canonicalRows actualModulus 8395 (.badd 8308 8394) := by core033_kernel_decide
theorem stats8395 : actualRows8395.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8395=5388 := by core033_kernel_decide
theorem rows8396 : actualRows8396=WordField.canonicalRows actualModulus 8396 (.band 8389 8362) := by core033_kernel_decide
theorem stats8396 : actualRows8396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8396=5124 := by core033_kernel_decide
theorem rows8397 : actualRows8397=WordField.canonicalRows actualModulus 8397 (.bnot 8389) := by core033_kernel_decide
theorem stats8397 : actualRows8397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8397=6276 := by core033_kernel_decide
theorem rows8398 : actualRows8398=WordField.canonicalRows actualModulus 8398 (.band 8397 8335) := by core033_kernel_decide
theorem stats8398 : actualRows8398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8398=5124 := by core033_kernel_decide
theorem rows8399 : actualRows8399=WordField.canonicalRows actualModulus 8399 (.bxor 8396 8398) := by core033_kernel_decide
theorem stats8399 : actualRows8399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8399=7428 := by core033_kernel_decide
theorem rows8400 : actualRows8400=WordField.canonicalRows actualModulus 8400 (.badd 8395 8399) := by core033_kernel_decide
theorem stats8400 : actualRows8400.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8400=5388 := by core033_kernel_decide
theorem rows8401 : actualRows8401=WordField.canonicalRows actualModulus 8401 (.literal (BitVec.ofNat 32 338241895)) := by core033_kernel_decide
theorem stats8401 : actualRows8401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8401=3756 := by core033_kernel_decide
theorem rows8402 : actualRows8402=WordField.canonicalRows actualModulus 8402 (.badd 8400 8401) := by core033_kernel_decide
theorem stats8402 : actualRows8402.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8402=5388 := by core033_kernel_decide
theorem rows8403 : actualRows8403=WordField.canonicalRows actualModulus 8403 (.badd 8402 7136) := by core033_kernel_decide
theorem stats8403 : actualRows8403.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8403=5388 := by core033_kernel_decide
theorem rows8404 : actualRows8404=WordField.canonicalRows actualModulus 8404 (.rotr 8388 2) := by core033_kernel_decide
theorem stats8404 : actualRows8404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8404=5124 := by core033_kernel_decide
theorem rows8405 : actualRows8405=WordField.canonicalRows actualModulus 8405 (.rotr 8388 13) := by core033_kernel_decide
theorem stats8405 : actualRows8405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8405=5124 := by core033_kernel_decide
theorem rows8406 : actualRows8406=WordField.canonicalRows actualModulus 8406 (.bxor 8404 8405) := by core033_kernel_decide
theorem stats8406 : actualRows8406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8406=7428 := by core033_kernel_decide
theorem rows8407 : actualRows8407=WordField.canonicalRows actualModulus 8407 (.rotr 8388 22) := by core033_kernel_decide
theorem stats8407 : actualRows8407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8407=5124 := by core033_kernel_decide
theorem rows8408 : actualRows8408=WordField.canonicalRows actualModulus 8408 (.bxor 8406 8407) := by core033_kernel_decide
theorem stats8408 : actualRows8408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8408=7428 := by core033_kernel_decide
theorem rows8409 : actualRows8409=WordField.canonicalRows actualModulus 8409 (.band 8388 8361) := by core033_kernel_decide
theorem stats8409 : actualRows8409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8409=5124 := by core033_kernel_decide
theorem rows8410 : actualRows8410=WordField.canonicalRows actualModulus 8410 (.band 8388 8334) := by core033_kernel_decide
theorem stats8410 : actualRows8410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8410=5124 := by core033_kernel_decide
theorem rows8411 : actualRows8411=WordField.canonicalRows actualModulus 8411 (.bxor 8409 8410) := by core033_kernel_decide
theorem stats8411 : actualRows8411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8411=7428 := by core033_kernel_decide
theorem rows8412 : actualRows8412=WordField.canonicalRows actualModulus 8412 (.band 8361 8334) := by core033_kernel_decide
theorem stats8412 : actualRows8412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8412=5124 := by core033_kernel_decide
theorem rows8413 : actualRows8413=WordField.canonicalRows actualModulus 8413 (.bxor 8411 8412) := by core033_kernel_decide
theorem stats8413 : actualRows8413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8413=7428 := by core033_kernel_decide
theorem rows8414 : actualRows8414=WordField.canonicalRows actualModulus 8414 (.badd 8408 8413) := by core033_kernel_decide
theorem stats8414 : actualRows8414.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8414=5388 := by core033_kernel_decide
theorem rows8415 : actualRows8415=WordField.canonicalRows actualModulus 8415 (.badd 8403 8414) := by core033_kernel_decide
theorem stats8415 : actualRows8415.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8415=5388 := by core033_kernel_decide
theorem rows8416 : actualRows8416=WordField.canonicalRows actualModulus 8416 (.badd 8307 8403) := by core033_kernel_decide
theorem stats8416 : actualRows8416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8416=5388 := by core033_kernel_decide
theorem rows8417 : actualRows8417=WordField.canonicalRows actualModulus 8417 (.rotr 8416 6) := by core033_kernel_decide
theorem stats8417 : actualRows8417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8417=5124 := by core033_kernel_decide
theorem rows8418 : actualRows8418=WordField.canonicalRows actualModulus 8418 (.rotr 8416 11) := by core033_kernel_decide
theorem stats8418 : actualRows8418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8418=5124 := by core033_kernel_decide
theorem rows8419 : actualRows8419=WordField.canonicalRows actualModulus 8419 (.bxor 8417 8418) := by core033_kernel_decide
theorem stats8419 : actualRows8419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8419=7428 := by core033_kernel_decide
theorem rows8420 : actualRows8420=WordField.canonicalRows actualModulus 8420 (.rotr 8416 25) := by core033_kernel_decide
theorem stats8420 : actualRows8420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8420=5124 := by core033_kernel_decide
theorem rows8421 : actualRows8421=WordField.canonicalRows actualModulus 8421 (.bxor 8419 8420) := by core033_kernel_decide
theorem stats8421 : actualRows8421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8421=7428 := by core033_kernel_decide
theorem rows8422 : actualRows8422=WordField.canonicalRows actualModulus 8422 (.badd 8335 8421) := by core033_kernel_decide
theorem stats8422 : actualRows8422.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8422=5388 := by core033_kernel_decide
theorem rows8423 : actualRows8423=WordField.canonicalRows actualModulus 8423 (.band 8416 8389) := by core033_kernel_decide
theorem stats8423 : actualRows8423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8423=5124 := by core033_kernel_decide
theorem rows8424 : actualRows8424=WordField.canonicalRows actualModulus 8424 (.bnot 8416) := by core033_kernel_decide
theorem stats8424 : actualRows8424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8424=6276 := by core033_kernel_decide
theorem rows8425 : actualRows8425=WordField.canonicalRows actualModulus 8425 (.band 8424 8362) := by core033_kernel_decide
theorem stats8425 : actualRows8425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8425=5124 := by core033_kernel_decide
theorem rows8426 : actualRows8426=WordField.canonicalRows actualModulus 8426 (.bxor 8423 8425) := by core033_kernel_decide
theorem stats8426 : actualRows8426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8426=7428 := by core033_kernel_decide
def partRows130 : List R1CS.Row := actualRows8363++actualRows8364++actualRows8365++actualRows8366++actualRows8367++actualRows8368++actualRows8369++actualRows8370++actualRows8371++actualRows8372++actualRows8373++actualRows8374++actualRows8375++actualRows8376++actualRows8377++actualRows8378++actualRows8379++actualRows8380++actualRows8381++actualRows8382++actualRows8383++actualRows8384++actualRows8385++actualRows8386++actualRows8387++actualRows8388++actualRows8389++actualRows8390++actualRows8391++actualRows8392++actualRows8393++actualRows8394++actualRows8395++actualRows8396++actualRows8397++actualRows8398++actualRows8399++actualRows8400++actualRows8401++actualRows8402++actualRows8403++actualRows8404++actualRows8405++actualRows8406++actualRows8407++actualRows8408++actualRows8409++actualRows8410++actualRows8411++actualRows8412++actualRows8413++actualRows8414++actualRows8415++actualRows8416++actualRows8417++actualRows8418++actualRows8419++actualRows8420++actualRows8421++actualRows8422++actualRows8423++actualRows8424++actualRows8425++actualRows8426
def partOps130 : List WordIR.Op := [.rotr 8362 6,.rotr 8362 11,.bxor 8363 8364,.rotr 8362 25,.bxor 8365 8366,.badd 8281 8367,.band 8362 8335,.bnot 8362,.band 8370 8308,.bxor 8369 8371,.badd 8368 8372,.literal (BitVec.ofNat 32 113926993),.badd 8373 8374,.badd 8375 7123,.rotr 8361 2,.rotr 8361 13,.bxor 8377 8378,.rotr 8361 22,.bxor 8379 8380,.band 8361 8334,.band 8361 8307,.bxor 8382 8383,.band 8334 8307,.bxor 8384 8385,.badd 8381 8386,.badd 8376 8387,.badd 8280 8376,.rotr 8389 6,.rotr 8389 11,.bxor 8390 8391,.rotr 8389 25,.bxor 8392 8393,.badd 8308 8394,.band 8389 8362,.bnot 8389,.band 8397 8335,.bxor 8396 8398,.badd 8395 8399,.literal (BitVec.ofNat 32 338241895),.badd 8400 8401,.badd 8402 7136,.rotr 8388 2,.rotr 8388 13,.bxor 8404 8405,.rotr 8388 22,.bxor 8406 8407,.band 8388 8361,.band 8388 8334,.bxor 8409 8410,.band 8361 8334,.bxor 8411 8412,.badd 8408 8413,.badd 8403 8414,.badd 8307 8403,.rotr 8416 6,.rotr 8416 11,.bxor 8417 8418,.rotr 8416 25,.bxor 8419 8420,.badd 8335 8421,.band 8416 8389,.bnot 8416,.band 8424 8362,.bxor 8423 8425]
theorem partExact130 : partRows130=WordField.rows actualModulus 8363 partOps130 := by
  simp only [partRows130,partOps130,WordField.rows,rows8363,rows8364,rows8365,rows8366,rows8367,rows8368,rows8369,rows8370,rows8371,rows8372,rows8373,rows8374,rows8375,rows8376,rows8377,rows8378,rows8379,rows8380,rows8381,rows8382,rows8383,rows8384,rows8385,rows8386,rows8387,rows8388,rows8389,rows8390,rows8391,rows8392,rows8393,rows8394,rows8395,rows8396,rows8397,rows8398,rows8399,rows8400,rows8401,rows8402,rows8403,rows8404,rows8405,rows8406,rows8407,rows8408,rows8409,rows8410,rows8411,rows8412,rows8413,rows8414,rows8415,rows8416,rows8417,rows8418,rows8419,rows8420,rows8421,rows8422,rows8423,rows8424,rows8425,rows8426,List.append_assoc,List.append_nil]
theorem partLength130 : partOps130.length=64 := by decide
theorem partStats130 : partRows130.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows130=371784 := by
  simp only [partRows130,List.length_append,MatrixRowBlocks.rows_weight_append,stats8363.1,stats8363.2,stats8364.1,stats8364.2,stats8365.1,stats8365.2,stats8366.1,stats8366.2,stats8367.1,stats8367.2,stats8368.1,stats8368.2,stats8369.1,stats8369.2,stats8370.1,stats8370.2,stats8371.1,stats8371.2,stats8372.1,stats8372.2,stats8373.1,stats8373.2,stats8374.1,stats8374.2,stats8375.1,stats8375.2,stats8376.1,stats8376.2,stats8377.1,stats8377.2,stats8378.1,stats8378.2,stats8379.1,stats8379.2,stats8380.1,stats8380.2,stats8381.1,stats8381.2,stats8382.1,stats8382.2,stats8383.1,stats8383.2,stats8384.1,stats8384.2,stats8385.1,stats8385.2,stats8386.1,stats8386.2,stats8387.1,stats8387.2,stats8388.1,stats8388.2,stats8389.1,stats8389.2,stats8390.1,stats8390.2,stats8391.1,stats8391.2,stats8392.1,stats8392.2,stats8393.1,stats8393.2,stats8394.1,stats8394.2,stats8395.1,stats8395.2,stats8396.1,stats8396.2,stats8397.1,stats8397.2,stats8398.1,stats8398.2,stats8399.1,stats8399.2,stats8400.1,stats8400.2,stats8401.1,stats8401.2,stats8402.1,stats8402.2,stats8403.1,stats8403.2,stats8404.1,stats8404.2,stats8405.1,stats8405.2,stats8406.1,stats8406.2,stats8407.1,stats8407.2,stats8408.1,stats8408.2,stats8409.1,stats8409.2,stats8410.1,stats8410.2,stats8411.1,stats8411.2,stats8412.1,stats8412.2,stats8413.1,stats8413.2,stats8414.1,stats8414.2,stats8415.1,stats8415.2,stats8416.1,stats8416.2,stats8417.1,stats8417.2,stats8418.1,stats8418.2,stats8419.1,stats8419.2,stats8420.1,stats8420.2,stats8421.1,stats8421.2,stats8422.1,stats8422.2,stats8423.1,stats8423.2,stats8424.1,stats8424.2,stats8425.1,stats8425.2,stats8426.1,stats8426.2]
  decide
end PathRoundDispatchCheckedRows
