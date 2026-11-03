import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData130
import AuthenticatedBranchRoundInstructionMatrixData131
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8374 : actualRows8374=WordField.canonicalRows actualModulus 8374 (.bxor 8372 8373) := by core033_kernel_decide
theorem stats8374 : actualRows8374.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8374=7428 := by core033_kernel_decide
theorem rows8375 : actualRows8375=WordField.canonicalRows actualModulus 8375 (.shr 8183 3) := by core033_kernel_decide
theorem stats8375 : actualRows8375.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8375=4908 := by core033_kernel_decide
theorem rows8376 : actualRows8376=WordField.canonicalRows actualModulus 8376 (.bxor 8374 8375) := by core033_kernel_decide
theorem stats8376 : actualRows8376.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8376=7428 := by core033_kernel_decide
theorem rows8377 : actualRows8377=WordField.canonicalRows actualModulus 8377 (.badd 8371 8376) := by core033_kernel_decide
theorem stats8377 : actualRows8377.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8377=5388 := by core033_kernel_decide
theorem rows8378 : actualRows8378=WordField.canonicalRows actualModulus 8378 (.badd 8377 8170) := by core033_kernel_decide
theorem stats8378 : actualRows8378.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8378=5388 := by core033_kernel_decide
theorem rows8379 : actualRows8379=WordField.canonicalRows actualModulus 8379 (.rotr 8365 17) := by core033_kernel_decide
theorem stats8379 : actualRows8379.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8379=5124 := by core033_kernel_decide
theorem rows8380 : actualRows8380=WordField.canonicalRows actualModulus 8380 (.rotr 8365 19) := by core033_kernel_decide
theorem stats8380 : actualRows8380.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8380=5124 := by core033_kernel_decide
theorem rows8381 : actualRows8381=WordField.canonicalRows actualModulus 8381 (.bxor 8379 8380) := by core033_kernel_decide
theorem stats8381 : actualRows8381.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8381=7428 := by core033_kernel_decide
theorem rows8382 : actualRows8382=WordField.canonicalRows actualModulus 8382 (.shr 8365 10) := by core033_kernel_decide
theorem stats8382 : actualRows8382.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8382=4404 := by core033_kernel_decide
theorem rows8383 : actualRows8383=WordField.canonicalRows actualModulus 8383 (.bxor 8381 8382) := by core033_kernel_decide
theorem stats8383 : actualRows8383.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8383=7428 := by core033_kernel_decide
theorem rows8384 : actualRows8384=WordField.canonicalRows actualModulus 8384 (.badd 8383 8300) := by core033_kernel_decide
theorem stats8384 : actualRows8384.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8384=5388 := by core033_kernel_decide
theorem rows8385 : actualRows8385=WordField.canonicalRows actualModulus 8385 (.rotr 8196 7) := by core033_kernel_decide
theorem stats8385 : actualRows8385.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8385=5124 := by core033_kernel_decide
theorem rows8386 : actualRows8386=WordField.canonicalRows actualModulus 8386 (.rotr 8196 18) := by core033_kernel_decide
theorem stats8386 : actualRows8386.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8386=5124 := by core033_kernel_decide
theorem rows8387 : actualRows8387=WordField.canonicalRows actualModulus 8387 (.bxor 8385 8386) := by core033_kernel_decide
theorem stats8387 : actualRows8387.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8387=7428 := by core033_kernel_decide
theorem rows8388 : actualRows8388=WordField.canonicalRows actualModulus 8388 (.shr 8196 3) := by core033_kernel_decide
theorem stats8388 : actualRows8388.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8388=4908 := by core033_kernel_decide
theorem rows8389 : actualRows8389=WordField.canonicalRows actualModulus 8389 (.bxor 8387 8388) := by core033_kernel_decide
theorem stats8389 : actualRows8389.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8389=7428 := by core033_kernel_decide
theorem rows8390 : actualRows8390=WordField.canonicalRows actualModulus 8390 (.badd 8384 8389) := by core033_kernel_decide
theorem stats8390 : actualRows8390.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8390=5388 := by core033_kernel_decide
theorem rows8391 : actualRows8391=WordField.canonicalRows actualModulus 8391 (.badd 8390 8183) := by core033_kernel_decide
theorem stats8391 : actualRows8391.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8391=5388 := by core033_kernel_decide
theorem rows8392 : actualRows8392=WordField.canonicalRows actualModulus 8392 (.rotr 8378 17) := by core033_kernel_decide
theorem stats8392 : actualRows8392.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8392=5124 := by core033_kernel_decide
theorem rows8393 : actualRows8393=WordField.canonicalRows actualModulus 8393 (.rotr 8378 19) := by core033_kernel_decide
theorem stats8393 : actualRows8393.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8393=5124 := by core033_kernel_decide
theorem rows8394 : actualRows8394=WordField.canonicalRows actualModulus 8394 (.bxor 8392 8393) := by core033_kernel_decide
theorem stats8394 : actualRows8394.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8394=7428 := by core033_kernel_decide
theorem rows8395 : actualRows8395=WordField.canonicalRows actualModulus 8395 (.shr 8378 10) := by core033_kernel_decide
theorem stats8395 : actualRows8395.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8395=4404 := by core033_kernel_decide
theorem rows8396 : actualRows8396=WordField.canonicalRows actualModulus 8396 (.bxor 8394 8395) := by core033_kernel_decide
theorem stats8396 : actualRows8396.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8396=7428 := by core033_kernel_decide
theorem rows8397 : actualRows8397=WordField.canonicalRows actualModulus 8397 (.badd 8396 8313) := by core033_kernel_decide
theorem stats8397 : actualRows8397.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8397=5388 := by core033_kernel_decide
theorem rows8398 : actualRows8398=WordField.canonicalRows actualModulus 8398 (.rotr 8209 7) := by core033_kernel_decide
theorem stats8398 : actualRows8398.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8398=5124 := by core033_kernel_decide
theorem rows8399 : actualRows8399=WordField.canonicalRows actualModulus 8399 (.rotr 8209 18) := by core033_kernel_decide
theorem stats8399 : actualRows8399.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8399=5124 := by core033_kernel_decide
theorem rows8400 : actualRows8400=WordField.canonicalRows actualModulus 8400 (.bxor 8398 8399) := by core033_kernel_decide
theorem stats8400 : actualRows8400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8400=7428 := by core033_kernel_decide
theorem rows8401 : actualRows8401=WordField.canonicalRows actualModulus 8401 (.shr 8209 3) := by core033_kernel_decide
theorem stats8401 : actualRows8401.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8401=4908 := by core033_kernel_decide
theorem rows8402 : actualRows8402=WordField.canonicalRows actualModulus 8402 (.bxor 8400 8401) := by core033_kernel_decide
theorem stats8402 : actualRows8402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8402=7428 := by core033_kernel_decide
theorem rows8403 : actualRows8403=WordField.canonicalRows actualModulus 8403 (.badd 8397 8402) := by core033_kernel_decide
theorem stats8403 : actualRows8403.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8403=5388 := by core033_kernel_decide
theorem rows8404 : actualRows8404=WordField.canonicalRows actualModulus 8404 (.badd 8403 8196) := by core033_kernel_decide
theorem stats8404 : actualRows8404.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8404=5388 := by core033_kernel_decide
theorem rows8405 : actualRows8405=WordField.canonicalRows actualModulus 8405 (.rotr 8391 17) := by core033_kernel_decide
theorem stats8405 : actualRows8405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8405=5124 := by core033_kernel_decide
theorem rows8406 : actualRows8406=WordField.canonicalRows actualModulus 8406 (.rotr 8391 19) := by core033_kernel_decide
theorem stats8406 : actualRows8406.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8406=5124 := by core033_kernel_decide
theorem rows8407 : actualRows8407=WordField.canonicalRows actualModulus 8407 (.bxor 8405 8406) := by core033_kernel_decide
theorem stats8407 : actualRows8407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8407=7428 := by core033_kernel_decide
theorem rows8408 : actualRows8408=WordField.canonicalRows actualModulus 8408 (.shr 8391 10) := by core033_kernel_decide
theorem stats8408 : actualRows8408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8408=4404 := by core033_kernel_decide
theorem rows8409 : actualRows8409=WordField.canonicalRows actualModulus 8409 (.bxor 8407 8408) := by core033_kernel_decide
theorem stats8409 : actualRows8409.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8409=7428 := by core033_kernel_decide
theorem rows8410 : actualRows8410=WordField.canonicalRows actualModulus 8410 (.badd 8409 8326) := by core033_kernel_decide
theorem stats8410 : actualRows8410.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8410=5388 := by core033_kernel_decide
theorem rows8411 : actualRows8411=WordField.canonicalRows actualModulus 8411 (.rotr 8222 7) := by core033_kernel_decide
theorem stats8411 : actualRows8411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8411=5124 := by core033_kernel_decide
theorem rows8412 : actualRows8412=WordField.canonicalRows actualModulus 8412 (.rotr 8222 18) := by core033_kernel_decide
theorem stats8412 : actualRows8412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8412=5124 := by core033_kernel_decide
theorem rows8413 : actualRows8413=WordField.canonicalRows actualModulus 8413 (.bxor 8411 8412) := by core033_kernel_decide
theorem stats8413 : actualRows8413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8413=7428 := by core033_kernel_decide
theorem rows8414 : actualRows8414=WordField.canonicalRows actualModulus 8414 (.shr 8222 3) := by core033_kernel_decide
theorem stats8414 : actualRows8414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8414=4908 := by core033_kernel_decide
theorem rows8415 : actualRows8415=WordField.canonicalRows actualModulus 8415 (.bxor 8413 8414) := by core033_kernel_decide
theorem stats8415 : actualRows8415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8415=7428 := by core033_kernel_decide
theorem rows8416 : actualRows8416=WordField.canonicalRows actualModulus 8416 (.badd 8410 8415) := by core033_kernel_decide
theorem stats8416 : actualRows8416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8416=5388 := by core033_kernel_decide
theorem rows8417 : actualRows8417=WordField.canonicalRows actualModulus 8417 (.badd 8416 8209) := by core033_kernel_decide
theorem stats8417 : actualRows8417.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8417=5388 := by core033_kernel_decide
theorem rows8418 : actualRows8418=WordField.canonicalRows actualModulus 8418 (.rotr 8404 17) := by core033_kernel_decide
theorem stats8418 : actualRows8418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8418=5124 := by core033_kernel_decide
theorem rows8419 : actualRows8419=WordField.canonicalRows actualModulus 8419 (.rotr 8404 19) := by core033_kernel_decide
theorem stats8419 : actualRows8419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8419=5124 := by core033_kernel_decide
theorem rows8420 : actualRows8420=WordField.canonicalRows actualModulus 8420 (.bxor 8418 8419) := by core033_kernel_decide
theorem stats8420 : actualRows8420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8420=7428 := by core033_kernel_decide
theorem rows8421 : actualRows8421=WordField.canonicalRows actualModulus 8421 (.shr 8404 10) := by core033_kernel_decide
theorem stats8421 : actualRows8421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8421=4404 := by core033_kernel_decide
theorem rows8422 : actualRows8422=WordField.canonicalRows actualModulus 8422 (.bxor 8420 8421) := by core033_kernel_decide
theorem stats8422 : actualRows8422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8422=7428 := by core033_kernel_decide
theorem rows8423 : actualRows8423=WordField.canonicalRows actualModulus 8423 (.badd 8422 8339) := by core033_kernel_decide
theorem stats8423 : actualRows8423.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8423=5388 := by core033_kernel_decide
theorem rows8424 : actualRows8424=WordField.canonicalRows actualModulus 8424 (.rotr 8235 7) := by core033_kernel_decide
theorem stats8424 : actualRows8424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8424=5124 := by core033_kernel_decide
theorem rows8425 : actualRows8425=WordField.canonicalRows actualModulus 8425 (.rotr 8235 18) := by core033_kernel_decide
theorem stats8425 : actualRows8425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8425=5124 := by core033_kernel_decide
theorem rows8426 : actualRows8426=WordField.canonicalRows actualModulus 8426 (.bxor 8424 8425) := by core033_kernel_decide
theorem stats8426 : actualRows8426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8426=7428 := by core033_kernel_decide
theorem rows8427 : actualRows8427=WordField.canonicalRows actualModulus 8427 (.shr 8235 3) := by core033_kernel_decide
theorem stats8427 : actualRows8427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8427=4908 := by core033_kernel_decide
theorem rows8428 : actualRows8428=WordField.canonicalRows actualModulus 8428 (.bxor 8426 8427) := by core033_kernel_decide
theorem stats8428 : actualRows8428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8428=7428 := by core033_kernel_decide
theorem rows8429 : actualRows8429=WordField.canonicalRows actualModulus 8429 (.badd 8423 8428) := by core033_kernel_decide
theorem stats8429 : actualRows8429.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8429=5388 := by core033_kernel_decide
theorem rows8430 : actualRows8430=WordField.canonicalRows actualModulus 8430 (.badd 8429 8222) := by core033_kernel_decide
theorem stats8430 : actualRows8430.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8430=5388 := by core033_kernel_decide
theorem rows8431 : actualRows8431=WordField.canonicalRows actualModulus 8431 (.rotr 8417 17) := by core033_kernel_decide
theorem stats8431 : actualRows8431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8431=5124 := by core033_kernel_decide
theorem rows8432 : actualRows8432=WordField.canonicalRows actualModulus 8432 (.rotr 8417 19) := by core033_kernel_decide
theorem stats8432 : actualRows8432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8432=5124 := by core033_kernel_decide
theorem rows8433 : actualRows8433=WordField.canonicalRows actualModulus 8433 (.bxor 8431 8432) := by core033_kernel_decide
theorem stats8433 : actualRows8433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8433=7428 := by core033_kernel_decide
theorem rows8434 : actualRows8434=WordField.canonicalRows actualModulus 8434 (.shr 8417 10) := by core033_kernel_decide
theorem stats8434 : actualRows8434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8434=4404 := by core033_kernel_decide
theorem rows8435 : actualRows8435=WordField.canonicalRows actualModulus 8435 (.bxor 8433 8434) := by core033_kernel_decide
theorem stats8435 : actualRows8435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8435=7428 := by core033_kernel_decide
theorem rows8436 : actualRows8436=WordField.canonicalRows actualModulus 8436 (.badd 8435 8352) := by core033_kernel_decide
theorem stats8436 : actualRows8436.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8436=5388 := by core033_kernel_decide
theorem rows8437 : actualRows8437=WordField.canonicalRows actualModulus 8437 (.rotr 8248 7) := by core033_kernel_decide
theorem stats8437 : actualRows8437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8437=5124 := by core033_kernel_decide
def partRows129 : List R1CS.Row := actualRows8374++actualRows8375++actualRows8376++actualRows8377++actualRows8378++actualRows8379++actualRows8380++actualRows8381++actualRows8382++actualRows8383++actualRows8384++actualRows8385++actualRows8386++actualRows8387++actualRows8388++actualRows8389++actualRows8390++actualRows8391++actualRows8392++actualRows8393++actualRows8394++actualRows8395++actualRows8396++actualRows8397++actualRows8398++actualRows8399++actualRows8400++actualRows8401++actualRows8402++actualRows8403++actualRows8404++actualRows8405++actualRows8406++actualRows8407++actualRows8408++actualRows8409++actualRows8410++actualRows8411++actualRows8412++actualRows8413++actualRows8414++actualRows8415++actualRows8416++actualRows8417++actualRows8418++actualRows8419++actualRows8420++actualRows8421++actualRows8422++actualRows8423++actualRows8424++actualRows8425++actualRows8426++actualRows8427++actualRows8428++actualRows8429++actualRows8430++actualRows8431++actualRows8432++actualRows8433++actualRows8434++actualRows8435++actualRows8436++actualRows8437
def partOps129 : List WordIR.Op := [.bxor 8372 8373,.shr 8183 3,.bxor 8374 8375,.badd 8371 8376,.badd 8377 8170,.rotr 8365 17,.rotr 8365 19,.bxor 8379 8380,.shr 8365 10,.bxor 8381 8382,.badd 8383 8300,.rotr 8196 7,.rotr 8196 18,.bxor 8385 8386,.shr 8196 3,.bxor 8387 8388,.badd 8384 8389,.badd 8390 8183,.rotr 8378 17,.rotr 8378 19,.bxor 8392 8393,.shr 8378 10,.bxor 8394 8395,.badd 8396 8313,.rotr 8209 7,.rotr 8209 18,.bxor 8398 8399,.shr 8209 3,.bxor 8400 8401,.badd 8397 8402,.badd 8403 8196,.rotr 8391 17,.rotr 8391 19,.bxor 8405 8406,.shr 8391 10,.bxor 8407 8408,.badd 8409 8326,.rotr 8222 7,.rotr 8222 18,.bxor 8411 8412,.shr 8222 3,.bxor 8413 8414,.badd 8410 8415,.badd 8416 8209,.rotr 8404 17,.rotr 8404 19,.bxor 8418 8419,.shr 8404 10,.bxor 8420 8421,.badd 8422 8339,.rotr 8235 7,.rotr 8235 18,.bxor 8424 8425,.shr 8235 3,.bxor 8426 8427,.badd 8423 8428,.badd 8429 8222,.rotr 8417 17,.rotr 8417 19,.bxor 8431 8432,.shr 8417 10,.bxor 8433 8434,.badd 8435 8352,.rotr 8248 7]
theorem partExact129 : partRows129=WordField.rows actualModulus 8374 partOps129 := by
  simp only [partRows129,partOps129,WordField.rows,rows8374,rows8375,rows8376,rows8377,rows8378,rows8379,rows8380,rows8381,rows8382,rows8383,rows8384,rows8385,rows8386,rows8387,rows8388,rows8389,rows8390,rows8391,rows8392,rows8393,rows8394,rows8395,rows8396,rows8397,rows8398,rows8399,rows8400,rows8401,rows8402,rows8403,rows8404,rows8405,rows8406,rows8407,rows8408,rows8409,rows8410,rows8411,rows8412,rows8413,rows8414,rows8415,rows8416,rows8417,rows8418,rows8419,rows8420,rows8421,rows8422,rows8423,rows8424,rows8425,rows8426,rows8427,rows8428,rows8429,rows8430,rows8431,rows8432,rows8433,rows8434,rows8435,rows8436,rows8437,List.append_assoc,List.append_nil]
theorem partLength129 : partOps129.length=64 := by decide
theorem partStats129 : partRows129.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows129=373296 := by
  simp only [partRows129,List.length_append,MatrixRowBlocks.rows_weight_append,stats8374.1,stats8374.2,stats8375.1,stats8375.2,stats8376.1,stats8376.2,stats8377.1,stats8377.2,stats8378.1,stats8378.2,stats8379.1,stats8379.2,stats8380.1,stats8380.2,stats8381.1,stats8381.2,stats8382.1,stats8382.2,stats8383.1,stats8383.2,stats8384.1,stats8384.2,stats8385.1,stats8385.2,stats8386.1,stats8386.2,stats8387.1,stats8387.2,stats8388.1,stats8388.2,stats8389.1,stats8389.2,stats8390.1,stats8390.2,stats8391.1,stats8391.2,stats8392.1,stats8392.2,stats8393.1,stats8393.2,stats8394.1,stats8394.2,stats8395.1,stats8395.2,stats8396.1,stats8396.2,stats8397.1,stats8397.2,stats8398.1,stats8398.2,stats8399.1,stats8399.2,stats8400.1,stats8400.2,stats8401.1,stats8401.2,stats8402.1,stats8402.2,stats8403.1,stats8403.2,stats8404.1,stats8404.2,stats8405.1,stats8405.2,stats8406.1,stats8406.2,stats8407.1,stats8407.2,stats8408.1,stats8408.2,stats8409.1,stats8409.2,stats8410.1,stats8410.2,stats8411.1,stats8411.2,stats8412.1,stats8412.2,stats8413.1,stats8413.2,stats8414.1,stats8414.2,stats8415.1,stats8415.2,stats8416.1,stats8416.2,stats8417.1,stats8417.2,stats8418.1,stats8418.2,stats8419.1,stats8419.2,stats8420.1,stats8420.2,stats8421.1,stats8421.2,stats8422.1,stats8422.2,stats8423.1,stats8423.2,stats8424.1,stats8424.2,stats8425.1,stats8425.2,stats8426.1,stats8426.2,stats8427.1,stats8427.2,stats8428.1,stats8428.2,stats8429.1,stats8429.2,stats8430.1,stats8430.2,stats8431.1,stats8431.2,stats8432.1,stats8432.2,stats8433.1,stats8433.2,stats8434.1,stats8434.2,stats8435.1,stats8435.2,stats8436.1,stats8436.2,stats8437.1,stats8437.2]
  decide
end AuthenticatedBranchRoundCheckedRows
