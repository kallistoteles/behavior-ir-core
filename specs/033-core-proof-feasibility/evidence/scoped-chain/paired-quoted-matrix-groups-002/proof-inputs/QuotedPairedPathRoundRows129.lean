import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData130
import PairedPathRoundInstructionMatrixData131
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8352 : actualRows8352=WordField.canonicalRows actualModulus 8352 (.bxor 8349 8351) := by core033_kernel_decide
theorem stats8352 : actualRows8352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8352=7428 := by core033_kernel_decide
theorem rows8353 : actualRows8353=WordField.canonicalRows actualModulus 8353 (.badd 8348 8352) := by core033_kernel_decide
theorem stats8353 : actualRows8353.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8353=5388 := by core033_kernel_decide
theorem rows8354 : actualRows8354=WordField.canonicalRows actualModulus 8354 (.literal (BitVec.ofNat 32 607225278)) := by core033_kernel_decide
theorem stats8354 : actualRows8354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8354=3828 := by core033_kernel_decide
theorem rows8355 : actualRows8355=WordField.canonicalRows actualModulus 8355 (.badd 8353 8354) := by core033_kernel_decide
theorem stats8355 : actualRows8355.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8355=5388 := by core033_kernel_decide
theorem rows8356 : actualRows8356=WordField.canonicalRows actualModulus 8356 (.badd 8355 6266) := by core033_kernel_decide
theorem stats8356 : actualRows8356.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8356=5388 := by core033_kernel_decide
theorem rows8357 : actualRows8357=WordField.canonicalRows actualModulus 8357 (.rotr 8341 2) := by core033_kernel_decide
theorem stats8357 : actualRows8357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8357=5124 := by core033_kernel_decide
theorem rows8358 : actualRows8358=WordField.canonicalRows actualModulus 8358 (.rotr 8341 13) := by core033_kernel_decide
theorem stats8358 : actualRows8358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8358=5124 := by core033_kernel_decide
theorem rows8359 : actualRows8359=WordField.canonicalRows actualModulus 8359 (.bxor 8357 8358) := by core033_kernel_decide
theorem stats8359 : actualRows8359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8359=7428 := by core033_kernel_decide
theorem rows8360 : actualRows8360=WordField.canonicalRows actualModulus 8360 (.rotr 8341 22) := by core033_kernel_decide
theorem stats8360 : actualRows8360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8360=5124 := by core033_kernel_decide
theorem rows8361 : actualRows8361=WordField.canonicalRows actualModulus 8361 (.bxor 8359 8360) := by core033_kernel_decide
theorem stats8361 : actualRows8361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8361=7428 := by core033_kernel_decide
theorem rows8362 : actualRows8362=WordField.canonicalRows actualModulus 8362 (.band 8341 8314) := by core033_kernel_decide
theorem stats8362 : actualRows8362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8362=5124 := by core033_kernel_decide
theorem rows8363 : actualRows8363=WordField.canonicalRows actualModulus 8363 (.band 8341 8287) := by core033_kernel_decide
theorem stats8363 : actualRows8363.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8363=5124 := by core033_kernel_decide
theorem rows8364 : actualRows8364=WordField.canonicalRows actualModulus 8364 (.bxor 8362 8363) := by core033_kernel_decide
theorem stats8364 : actualRows8364.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8364=7428 := by core033_kernel_decide
theorem rows8365 : actualRows8365=WordField.canonicalRows actualModulus 8365 (.band 8314 8287) := by core033_kernel_decide
theorem stats8365 : actualRows8365.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8365=5124 := by core033_kernel_decide
theorem rows8366 : actualRows8366=WordField.canonicalRows actualModulus 8366 (.bxor 8364 8365) := by core033_kernel_decide
theorem stats8366 : actualRows8366.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8366=7428 := by core033_kernel_decide
theorem rows8367 : actualRows8367=WordField.canonicalRows actualModulus 8367 (.badd 8361 8366) := by core033_kernel_decide
theorem stats8367 : actualRows8367.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8367=5388 := by core033_kernel_decide
theorem rows8368 : actualRows8368=WordField.canonicalRows actualModulus 8368 (.badd 8356 8367) := by core033_kernel_decide
theorem stats8368 : actualRows8368.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8368=5388 := by core033_kernel_decide
theorem rows8369 : actualRows8369=WordField.canonicalRows actualModulus 8369 (.badd 8260 8356) := by core033_kernel_decide
theorem stats8369 : actualRows8369.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8369=5388 := by core033_kernel_decide
theorem rows8370 : actualRows8370=WordField.canonicalRows actualModulus 8370 (.rotr 8369 6) := by core033_kernel_decide
theorem stats8370 : actualRows8370.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8370=5124 := by core033_kernel_decide
theorem rows8371 : actualRows8371=WordField.canonicalRows actualModulus 8371 (.rotr 8369 11) := by core033_kernel_decide
theorem stats8371 : actualRows8371.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8371=5124 := by core033_kernel_decide
theorem rows8372 : actualRows8372=WordField.canonicalRows actualModulus 8372 (.bxor 8370 8371) := by core033_kernel_decide
theorem stats8372 : actualRows8372.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8372=7428 := by core033_kernel_decide
theorem rows8373 : actualRows8373=WordField.canonicalRows actualModulus 8373 (.rotr 8369 25) := by core033_kernel_decide
theorem stats8373 : actualRows8373.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8373=5124 := by core033_kernel_decide
theorem rows8374 : actualRows8374=WordField.canonicalRows actualModulus 8374 (.bxor 8372 8373) := by core033_kernel_decide
theorem stats8374 : actualRows8374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8374=7428 := by core033_kernel_decide
theorem rows8375 : actualRows8375=WordField.canonicalRows actualModulus 8375 (.badd 8288 8374) := by core033_kernel_decide
theorem stats8375 : actualRows8375.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8375=5388 := by core033_kernel_decide
theorem rows8376 : actualRows8376=WordField.canonicalRows actualModulus 8376 (.band 8369 8342) := by core033_kernel_decide
theorem stats8376 : actualRows8376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8376=5124 := by core033_kernel_decide
theorem rows8377 : actualRows8377=WordField.canonicalRows actualModulus 8377 (.bnot 8369) := by core033_kernel_decide
theorem stats8377 : actualRows8377.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8377=6276 := by core033_kernel_decide
theorem rows8378 : actualRows8378=WordField.canonicalRows actualModulus 8378 (.band 8377 8315) := by core033_kernel_decide
theorem stats8378 : actualRows8378.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8378=5124 := by core033_kernel_decide
theorem rows8379 : actualRows8379=WordField.canonicalRows actualModulus 8379 (.bxor 8376 8378) := by core033_kernel_decide
theorem stats8379 : actualRows8379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8379=7428 := by core033_kernel_decide
theorem rows8380 : actualRows8380=WordField.canonicalRows actualModulus 8380 (.badd 8375 8379) := by core033_kernel_decide
theorem stats8380 : actualRows8380.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8380=5388 := by core033_kernel_decide
theorem rows8381 : actualRows8381=WordField.canonicalRows actualModulus 8381 (.literal (BitVec.ofNat 32 1426881987)) := by core033_kernel_decide
theorem stats8381 : actualRows8381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8381=3972 := by core033_kernel_decide
theorem rows8382 : actualRows8382=WordField.canonicalRows actualModulus 8382 (.badd 8380 8381) := by core033_kernel_decide
theorem stats8382 : actualRows8382.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8382=5388 := by core033_kernel_decide
theorem rows8383 : actualRows8383=WordField.canonicalRows actualModulus 8383 (.badd 8382 6272) := by core033_kernel_decide
theorem stats8383 : actualRows8383.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8383=5388 := by core033_kernel_decide
theorem rows8384 : actualRows8384=WordField.canonicalRows actualModulus 8384 (.rotr 8368 2) := by core033_kernel_decide
theorem stats8384 : actualRows8384.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8384=5124 := by core033_kernel_decide
theorem rows8385 : actualRows8385=WordField.canonicalRows actualModulus 8385 (.rotr 8368 13) := by core033_kernel_decide
theorem stats8385 : actualRows8385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8385=5124 := by core033_kernel_decide
theorem rows8386 : actualRows8386=WordField.canonicalRows actualModulus 8386 (.bxor 8384 8385) := by core033_kernel_decide
theorem stats8386 : actualRows8386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8386=7428 := by core033_kernel_decide
theorem rows8387 : actualRows8387=WordField.canonicalRows actualModulus 8387 (.rotr 8368 22) := by core033_kernel_decide
theorem stats8387 : actualRows8387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8387=5124 := by core033_kernel_decide
theorem rows8388 : actualRows8388=WordField.canonicalRows actualModulus 8388 (.bxor 8386 8387) := by core033_kernel_decide
theorem stats8388 : actualRows8388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8388=7428 := by core033_kernel_decide
theorem rows8389 : actualRows8389=WordField.canonicalRows actualModulus 8389 (.band 8368 8341) := by core033_kernel_decide
theorem stats8389 : actualRows8389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8389=5124 := by core033_kernel_decide
theorem rows8390 : actualRows8390=WordField.canonicalRows actualModulus 8390 (.band 8368 8314) := by core033_kernel_decide
theorem stats8390 : actualRows8390.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8390=5124 := by core033_kernel_decide
theorem rows8391 : actualRows8391=WordField.canonicalRows actualModulus 8391 (.bxor 8389 8390) := by core033_kernel_decide
theorem stats8391 : actualRows8391.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8391=7428 := by core033_kernel_decide
theorem rows8392 : actualRows8392=WordField.canonicalRows actualModulus 8392 (.band 8341 8314) := by core033_kernel_decide
theorem stats8392 : actualRows8392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8392=5124 := by core033_kernel_decide
theorem rows8393 : actualRows8393=WordField.canonicalRows actualModulus 8393 (.bxor 8391 8392) := by core033_kernel_decide
theorem stats8393 : actualRows8393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8393=7428 := by core033_kernel_decide
theorem rows8394 : actualRows8394=WordField.canonicalRows actualModulus 8394 (.badd 8388 8393) := by core033_kernel_decide
theorem stats8394 : actualRows8394.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8394=5388 := by core033_kernel_decide
theorem rows8395 : actualRows8395=WordField.canonicalRows actualModulus 8395 (.badd 8383 8394) := by core033_kernel_decide
theorem stats8395 : actualRows8395.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8395=5388 := by core033_kernel_decide
theorem rows8396 : actualRows8396=WordField.canonicalRows actualModulus 8396 (.badd 8287 8383) := by core033_kernel_decide
theorem stats8396 : actualRows8396.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8396=5388 := by core033_kernel_decide
theorem rows8397 : actualRows8397=WordField.canonicalRows actualModulus 8397 (.rotr 8396 6) := by core033_kernel_decide
theorem stats8397 : actualRows8397.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8397=5124 := by core033_kernel_decide
theorem rows8398 : actualRows8398=WordField.canonicalRows actualModulus 8398 (.rotr 8396 11) := by core033_kernel_decide
theorem stats8398 : actualRows8398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8398=5124 := by core033_kernel_decide
theorem rows8399 : actualRows8399=WordField.canonicalRows actualModulus 8399 (.bxor 8397 8398) := by core033_kernel_decide
theorem stats8399 : actualRows8399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8399=7428 := by core033_kernel_decide
theorem rows8400 : actualRows8400=WordField.canonicalRows actualModulus 8400 (.rotr 8396 25) := by core033_kernel_decide
theorem stats8400 : actualRows8400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8400=5124 := by core033_kernel_decide
theorem rows8401 : actualRows8401=WordField.canonicalRows actualModulus 8401 (.bxor 8399 8400) := by core033_kernel_decide
theorem stats8401 : actualRows8401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8401=7428 := by core033_kernel_decide
theorem rows8402 : actualRows8402=WordField.canonicalRows actualModulus 8402 (.badd 8315 8401) := by core033_kernel_decide
theorem stats8402 : actualRows8402.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8402=5388 := by core033_kernel_decide
theorem rows8403 : actualRows8403=WordField.canonicalRows actualModulus 8403 (.band 8396 8369) := by core033_kernel_decide
theorem stats8403 : actualRows8403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8403=5124 := by core033_kernel_decide
theorem rows8404 : actualRows8404=WordField.canonicalRows actualModulus 8404 (.bnot 8396) := by core033_kernel_decide
theorem stats8404 : actualRows8404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8404=6276 := by core033_kernel_decide
theorem rows8405 : actualRows8405=WordField.canonicalRows actualModulus 8405 (.band 8404 8342) := by core033_kernel_decide
theorem stats8405 : actualRows8405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8405=5124 := by core033_kernel_decide
theorem rows8406 : actualRows8406=WordField.canonicalRows actualModulus 8406 (.bxor 8403 8405) := by core033_kernel_decide
theorem stats8406 : actualRows8406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8406=7428 := by core033_kernel_decide
theorem rows8407 : actualRows8407=WordField.canonicalRows actualModulus 8407 (.badd 8402 8406) := by core033_kernel_decide
theorem stats8407 : actualRows8407.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8407=5388 := by core033_kernel_decide
theorem rows8408 : actualRows8408=WordField.canonicalRows actualModulus 8408 (.literal (BitVec.ofNat 32 1925078388)) := by core033_kernel_decide
theorem stats8408 : actualRows8408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8408=4188 := by core033_kernel_decide
theorem rows8409 : actualRows8409=WordField.canonicalRows actualModulus 8409 (.badd 8407 8408) := by core033_kernel_decide
theorem stats8409 : actualRows8409.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8409=5388 := by core033_kernel_decide
theorem rows8410 : actualRows8410=WordField.canonicalRows actualModulus 8410 (.badd 8409 6278) := by core033_kernel_decide
theorem stats8410 : actualRows8410.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8410=5388 := by core033_kernel_decide
theorem rows8411 : actualRows8411=WordField.canonicalRows actualModulus 8411 (.rotr 8395 2) := by core033_kernel_decide
theorem stats8411 : actualRows8411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8411=5124 := by core033_kernel_decide
theorem rows8412 : actualRows8412=WordField.canonicalRows actualModulus 8412 (.rotr 8395 13) := by core033_kernel_decide
theorem stats8412 : actualRows8412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8412=5124 := by core033_kernel_decide
theorem rows8413 : actualRows8413=WordField.canonicalRows actualModulus 8413 (.bxor 8411 8412) := by core033_kernel_decide
theorem stats8413 : actualRows8413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8413=7428 := by core033_kernel_decide
theorem rows8414 : actualRows8414=WordField.canonicalRows actualModulus 8414 (.rotr 8395 22) := by core033_kernel_decide
theorem stats8414 : actualRows8414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8414=5124 := by core033_kernel_decide
theorem rows8415 : actualRows8415=WordField.canonicalRows actualModulus 8415 (.bxor 8413 8414) := by core033_kernel_decide
theorem stats8415 : actualRows8415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8415=7428 := by core033_kernel_decide
def partRows129 : List R1CS.Row := actualRows8352++actualRows8353++actualRows8354++actualRows8355++actualRows8356++actualRows8357++actualRows8358++actualRows8359++actualRows8360++actualRows8361++actualRows8362++actualRows8363++actualRows8364++actualRows8365++actualRows8366++actualRows8367++actualRows8368++actualRows8369++actualRows8370++actualRows8371++actualRows8372++actualRows8373++actualRows8374++actualRows8375++actualRows8376++actualRows8377++actualRows8378++actualRows8379++actualRows8380++actualRows8381++actualRows8382++actualRows8383++actualRows8384++actualRows8385++actualRows8386++actualRows8387++actualRows8388++actualRows8389++actualRows8390++actualRows8391++actualRows8392++actualRows8393++actualRows8394++actualRows8395++actualRows8396++actualRows8397++actualRows8398++actualRows8399++actualRows8400++actualRows8401++actualRows8402++actualRows8403++actualRows8404++actualRows8405++actualRows8406++actualRows8407++actualRows8408++actualRows8409++actualRows8410++actualRows8411++actualRows8412++actualRows8413++actualRows8414++actualRows8415
def partOps129 : List WordIR.Op := [.bxor 8349 8351,.badd 8348 8352,.literal (BitVec.ofNat 32 607225278),.badd 8353 8354,.badd 8355 6266,.rotr 8341 2,.rotr 8341 13,.bxor 8357 8358,.rotr 8341 22,.bxor 8359 8360,.band 8341 8314,.band 8341 8287,.bxor 8362 8363,.band 8314 8287,.bxor 8364 8365,.badd 8361 8366,.badd 8356 8367,.badd 8260 8356,.rotr 8369 6,.rotr 8369 11,.bxor 8370 8371,.rotr 8369 25,.bxor 8372 8373,.badd 8288 8374,.band 8369 8342,.bnot 8369,.band 8377 8315,.bxor 8376 8378,.badd 8375 8379,.literal (BitVec.ofNat 32 1426881987),.badd 8380 8381,.badd 8382 6272,.rotr 8368 2,.rotr 8368 13,.bxor 8384 8385,.rotr 8368 22,.bxor 8386 8387,.band 8368 8341,.band 8368 8314,.bxor 8389 8390,.band 8341 8314,.bxor 8391 8392,.badd 8388 8393,.badd 8383 8394,.badd 8287 8383,.rotr 8396 6,.rotr 8396 11,.bxor 8397 8398,.rotr 8396 25,.bxor 8399 8400,.badd 8315 8401,.band 8396 8369,.bnot 8396,.band 8404 8342,.bxor 8403 8405,.badd 8402 8406,.literal (BitVec.ofNat 32 1925078388),.badd 8407 8408,.badd 8409 6278,.rotr 8395 2,.rotr 8395 13,.bxor 8411 8412,.rotr 8395 22,.bxor 8413 8414]
theorem partExact129 : partRows129=WordField.rows actualModulus 8352 partOps129 := by
  simp only [partRows129,partOps129,WordField.rows,rows8352,rows8353,rows8354,rows8355,rows8356,rows8357,rows8358,rows8359,rows8360,rows8361,rows8362,rows8363,rows8364,rows8365,rows8366,rows8367,rows8368,rows8369,rows8370,rows8371,rows8372,rows8373,rows8374,rows8375,rows8376,rows8377,rows8378,rows8379,rows8380,rows8381,rows8382,rows8383,rows8384,rows8385,rows8386,rows8387,rows8388,rows8389,rows8390,rows8391,rows8392,rows8393,rows8394,rows8395,rows8396,rows8397,rows8398,rows8399,rows8400,rows8401,rows8402,rows8403,rows8404,rows8405,rows8406,rows8407,rows8408,rows8409,rows8410,rows8411,rows8412,rows8413,rows8414,rows8415,List.append_assoc,List.append_nil]
theorem partLength129 : partOps129.length=64 := by decide
theorem partStats129 : partRows129.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows129=370512 := by
  simp only [partRows129,List.length_append,MatrixRowBlocks.rows_weight_append,stats8352.1,stats8352.2,stats8353.1,stats8353.2,stats8354.1,stats8354.2,stats8355.1,stats8355.2,stats8356.1,stats8356.2,stats8357.1,stats8357.2,stats8358.1,stats8358.2,stats8359.1,stats8359.2,stats8360.1,stats8360.2,stats8361.1,stats8361.2,stats8362.1,stats8362.2,stats8363.1,stats8363.2,stats8364.1,stats8364.2,stats8365.1,stats8365.2,stats8366.1,stats8366.2,stats8367.1,stats8367.2,stats8368.1,stats8368.2,stats8369.1,stats8369.2,stats8370.1,stats8370.2,stats8371.1,stats8371.2,stats8372.1,stats8372.2,stats8373.1,stats8373.2,stats8374.1,stats8374.2,stats8375.1,stats8375.2,stats8376.1,stats8376.2,stats8377.1,stats8377.2,stats8378.1,stats8378.2,stats8379.1,stats8379.2,stats8380.1,stats8380.2,stats8381.1,stats8381.2,stats8382.1,stats8382.2,stats8383.1,stats8383.2,stats8384.1,stats8384.2,stats8385.1,stats8385.2,stats8386.1,stats8386.2,stats8387.1,stats8387.2,stats8388.1,stats8388.2,stats8389.1,stats8389.2,stats8390.1,stats8390.2,stats8391.1,stats8391.2,stats8392.1,stats8392.2,stats8393.1,stats8393.2,stats8394.1,stats8394.2,stats8395.1,stats8395.2,stats8396.1,stats8396.2,stats8397.1,stats8397.2,stats8398.1,stats8398.2,stats8399.1,stats8399.2,stats8400.1,stats8400.2,stats8401.1,stats8401.2,stats8402.1,stats8402.2,stats8403.1,stats8403.2,stats8404.1,stats8404.2,stats8405.1,stats8405.2,stats8406.1,stats8406.2,stats8407.1,stats8407.2,stats8408.1,stats8408.2,stats8409.1,stats8409.2,stats8410.1,stats8410.2,stats8411.1,stats8411.2,stats8412.1,stats8412.2,stats8413.1,stats8413.2,stats8414.1,stats8414.2,stats8415.1,stats8415.2]
  decide
end QuotedPairedPathRoundCheckedRows
