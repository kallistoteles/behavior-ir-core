import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData132
import AuthenticatedBranchRoundInstructionMatrixData133
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8502 : actualRows8502=WordField.canonicalRows actualModulus 8502 (.rotr 8313 7) := by core033_kernel_decide
theorem stats8502 : actualRows8502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8502=5124 := by core033_kernel_decide
theorem rows8503 : actualRows8503=WordField.canonicalRows actualModulus 8503 (.rotr 8313 18) := by core033_kernel_decide
theorem stats8503 : actualRows8503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8503=5124 := by core033_kernel_decide
theorem rows8504 : actualRows8504=WordField.canonicalRows actualModulus 8504 (.bxor 8502 8503) := by core033_kernel_decide
theorem stats8504 : actualRows8504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8504=7428 := by core033_kernel_decide
theorem rows8505 : actualRows8505=WordField.canonicalRows actualModulus 8505 (.shr 8313 3) := by core033_kernel_decide
theorem stats8505 : actualRows8505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8505=4908 := by core033_kernel_decide
theorem rows8506 : actualRows8506=WordField.canonicalRows actualModulus 8506 (.bxor 8504 8505) := by core033_kernel_decide
theorem stats8506 : actualRows8506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8506=7428 := by core033_kernel_decide
theorem rows8507 : actualRows8507=WordField.canonicalRows actualModulus 8507 (.badd 8501 8506) := by core033_kernel_decide
theorem stats8507 : actualRows8507.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8507=5388 := by core033_kernel_decide
theorem rows8508 : actualRows8508=WordField.canonicalRows actualModulus 8508 (.badd 8507 8300) := by core033_kernel_decide
theorem stats8508 : actualRows8508.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8508=5388 := by core033_kernel_decide
theorem rows8509 : actualRows8509=WordField.canonicalRows actualModulus 8509 (.rotr 8495 17) := by core033_kernel_decide
theorem stats8509 : actualRows8509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8509=5124 := by core033_kernel_decide
theorem rows8510 : actualRows8510=WordField.canonicalRows actualModulus 8510 (.rotr 8495 19) := by core033_kernel_decide
theorem stats8510 : actualRows8510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8510=5124 := by core033_kernel_decide
theorem rows8511 : actualRows8511=WordField.canonicalRows actualModulus 8511 (.bxor 8509 8510) := by core033_kernel_decide
theorem stats8511 : actualRows8511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8511=7428 := by core033_kernel_decide
theorem rows8512 : actualRows8512=WordField.canonicalRows actualModulus 8512 (.shr 8495 10) := by core033_kernel_decide
theorem stats8512 : actualRows8512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8512=4404 := by core033_kernel_decide
theorem rows8513 : actualRows8513=WordField.canonicalRows actualModulus 8513 (.bxor 8511 8512) := by core033_kernel_decide
theorem stats8513 : actualRows8513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8513=7428 := by core033_kernel_decide
theorem rows8514 : actualRows8514=WordField.canonicalRows actualModulus 8514 (.badd 8513 8430) := by core033_kernel_decide
theorem stats8514 : actualRows8514.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8514=5388 := by core033_kernel_decide
theorem rows8515 : actualRows8515=WordField.canonicalRows actualModulus 8515 (.rotr 8326 7) := by core033_kernel_decide
theorem stats8515 : actualRows8515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8515=5124 := by core033_kernel_decide
theorem rows8516 : actualRows8516=WordField.canonicalRows actualModulus 8516 (.rotr 8326 18) := by core033_kernel_decide
theorem stats8516 : actualRows8516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8516=5124 := by core033_kernel_decide
theorem rows8517 : actualRows8517=WordField.canonicalRows actualModulus 8517 (.bxor 8515 8516) := by core033_kernel_decide
theorem stats8517 : actualRows8517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8517=7428 := by core033_kernel_decide
theorem rows8518 : actualRows8518=WordField.canonicalRows actualModulus 8518 (.shr 8326 3) := by core033_kernel_decide
theorem stats8518 : actualRows8518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8518=4908 := by core033_kernel_decide
theorem rows8519 : actualRows8519=WordField.canonicalRows actualModulus 8519 (.bxor 8517 8518) := by core033_kernel_decide
theorem stats8519 : actualRows8519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8519=7428 := by core033_kernel_decide
theorem rows8520 : actualRows8520=WordField.canonicalRows actualModulus 8520 (.badd 8514 8519) := by core033_kernel_decide
theorem stats8520 : actualRows8520.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8520=5388 := by core033_kernel_decide
theorem rows8521 : actualRows8521=WordField.canonicalRows actualModulus 8521 (.badd 8520 8313) := by core033_kernel_decide
theorem stats8521 : actualRows8521.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8521=5388 := by core033_kernel_decide
theorem rows8522 : actualRows8522=WordField.canonicalRows actualModulus 8522 (.rotr 8508 17) := by core033_kernel_decide
theorem stats8522 : actualRows8522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8522=5124 := by core033_kernel_decide
theorem rows8523 : actualRows8523=WordField.canonicalRows actualModulus 8523 (.rotr 8508 19) := by core033_kernel_decide
theorem stats8523 : actualRows8523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8523=5124 := by core033_kernel_decide
theorem rows8524 : actualRows8524=WordField.canonicalRows actualModulus 8524 (.bxor 8522 8523) := by core033_kernel_decide
theorem stats8524 : actualRows8524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8524=7428 := by core033_kernel_decide
theorem rows8525 : actualRows8525=WordField.canonicalRows actualModulus 8525 (.shr 8508 10) := by core033_kernel_decide
theorem stats8525 : actualRows8525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8525=4404 := by core033_kernel_decide
theorem rows8526 : actualRows8526=WordField.canonicalRows actualModulus 8526 (.bxor 8524 8525) := by core033_kernel_decide
theorem stats8526 : actualRows8526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8526=7428 := by core033_kernel_decide
theorem rows8527 : actualRows8527=WordField.canonicalRows actualModulus 8527 (.badd 8526 8443) := by core033_kernel_decide
theorem stats8527 : actualRows8527.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8527=5388 := by core033_kernel_decide
theorem rows8528 : actualRows8528=WordField.canonicalRows actualModulus 8528 (.rotr 8339 7) := by core033_kernel_decide
theorem stats8528 : actualRows8528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8528=5124 := by core033_kernel_decide
theorem rows8529 : actualRows8529=WordField.canonicalRows actualModulus 8529 (.rotr 8339 18) := by core033_kernel_decide
theorem stats8529 : actualRows8529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8529=5124 := by core033_kernel_decide
theorem rows8530 : actualRows8530=WordField.canonicalRows actualModulus 8530 (.bxor 8528 8529) := by core033_kernel_decide
theorem stats8530 : actualRows8530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8530=7428 := by core033_kernel_decide
theorem rows8531 : actualRows8531=WordField.canonicalRows actualModulus 8531 (.shr 8339 3) := by core033_kernel_decide
theorem stats8531 : actualRows8531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8531=4908 := by core033_kernel_decide
theorem rows8532 : actualRows8532=WordField.canonicalRows actualModulus 8532 (.bxor 8530 8531) := by core033_kernel_decide
theorem stats8532 : actualRows8532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8532=7428 := by core033_kernel_decide
theorem rows8533 : actualRows8533=WordField.canonicalRows actualModulus 8533 (.badd 8527 8532) := by core033_kernel_decide
theorem stats8533 : actualRows8533.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8533=5388 := by core033_kernel_decide
theorem rows8534 : actualRows8534=WordField.canonicalRows actualModulus 8534 (.badd 8533 8326) := by core033_kernel_decide
theorem stats8534 : actualRows8534.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8534=5388 := by core033_kernel_decide
theorem rows8535 : actualRows8535=WordField.canonicalRows actualModulus 8535 (.rotr 8521 17) := by core033_kernel_decide
theorem stats8535 : actualRows8535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8535=5124 := by core033_kernel_decide
theorem rows8536 : actualRows8536=WordField.canonicalRows actualModulus 8536 (.rotr 8521 19) := by core033_kernel_decide
theorem stats8536 : actualRows8536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8536=5124 := by core033_kernel_decide
theorem rows8537 : actualRows8537=WordField.canonicalRows actualModulus 8537 (.bxor 8535 8536) := by core033_kernel_decide
theorem stats8537 : actualRows8537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8537=7428 := by core033_kernel_decide
theorem rows8538 : actualRows8538=WordField.canonicalRows actualModulus 8538 (.shr 8521 10) := by core033_kernel_decide
theorem stats8538 : actualRows8538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8538=4404 := by core033_kernel_decide
theorem rows8539 : actualRows8539=WordField.canonicalRows actualModulus 8539 (.bxor 8537 8538) := by core033_kernel_decide
theorem stats8539 : actualRows8539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8539=7428 := by core033_kernel_decide
theorem rows8540 : actualRows8540=WordField.canonicalRows actualModulus 8540 (.badd 8539 8456) := by core033_kernel_decide
theorem stats8540 : actualRows8540.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8540=5388 := by core033_kernel_decide
theorem rows8541 : actualRows8541=WordField.canonicalRows actualModulus 8541 (.rotr 8352 7) := by core033_kernel_decide
theorem stats8541 : actualRows8541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8541=5124 := by core033_kernel_decide
theorem rows8542 : actualRows8542=WordField.canonicalRows actualModulus 8542 (.rotr 8352 18) := by core033_kernel_decide
theorem stats8542 : actualRows8542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8542=5124 := by core033_kernel_decide
theorem rows8543 : actualRows8543=WordField.canonicalRows actualModulus 8543 (.bxor 8541 8542) := by core033_kernel_decide
theorem stats8543 : actualRows8543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8543=7428 := by core033_kernel_decide
theorem rows8544 : actualRows8544=WordField.canonicalRows actualModulus 8544 (.shr 8352 3) := by core033_kernel_decide
theorem stats8544 : actualRows8544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8544=4908 := by core033_kernel_decide
theorem rows8545 : actualRows8545=WordField.canonicalRows actualModulus 8545 (.bxor 8543 8544) := by core033_kernel_decide
theorem stats8545 : actualRows8545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8545=7428 := by core033_kernel_decide
theorem rows8546 : actualRows8546=WordField.canonicalRows actualModulus 8546 (.badd 8540 8545) := by core033_kernel_decide
theorem stats8546 : actualRows8546.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8546=5388 := by core033_kernel_decide
theorem rows8547 : actualRows8547=WordField.canonicalRows actualModulus 8547 (.badd 8546 8339) := by core033_kernel_decide
theorem stats8547 : actualRows8547.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8547=5388 := by core033_kernel_decide
theorem rows8548 : actualRows8548=WordField.canonicalRows actualModulus 8548 (.rotr 8534 17) := by core033_kernel_decide
theorem stats8548 : actualRows8548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8548=5124 := by core033_kernel_decide
theorem rows8549 : actualRows8549=WordField.canonicalRows actualModulus 8549 (.rotr 8534 19) := by core033_kernel_decide
theorem stats8549 : actualRows8549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8549=5124 := by core033_kernel_decide
theorem rows8550 : actualRows8550=WordField.canonicalRows actualModulus 8550 (.bxor 8548 8549) := by core033_kernel_decide
theorem stats8550 : actualRows8550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8550=7428 := by core033_kernel_decide
theorem rows8551 : actualRows8551=WordField.canonicalRows actualModulus 8551 (.shr 8534 10) := by core033_kernel_decide
theorem stats8551 : actualRows8551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8551=4404 := by core033_kernel_decide
theorem rows8552 : actualRows8552=WordField.canonicalRows actualModulus 8552 (.bxor 8550 8551) := by core033_kernel_decide
theorem stats8552 : actualRows8552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8552=7428 := by core033_kernel_decide
theorem rows8553 : actualRows8553=WordField.canonicalRows actualModulus 8553 (.badd 8552 8469) := by core033_kernel_decide
theorem stats8553 : actualRows8553.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8553=5388 := by core033_kernel_decide
theorem rows8554 : actualRows8554=WordField.canonicalRows actualModulus 8554 (.rotr 8365 7) := by core033_kernel_decide
theorem stats8554 : actualRows8554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8554=5124 := by core033_kernel_decide
theorem rows8555 : actualRows8555=WordField.canonicalRows actualModulus 8555 (.rotr 8365 18) := by core033_kernel_decide
theorem stats8555 : actualRows8555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8555=5124 := by core033_kernel_decide
theorem rows8556 : actualRows8556=WordField.canonicalRows actualModulus 8556 (.bxor 8554 8555) := by core033_kernel_decide
theorem stats8556 : actualRows8556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8556=7428 := by core033_kernel_decide
theorem rows8557 : actualRows8557=WordField.canonicalRows actualModulus 8557 (.shr 8365 3) := by core033_kernel_decide
theorem stats8557 : actualRows8557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8557=4908 := by core033_kernel_decide
theorem rows8558 : actualRows8558=WordField.canonicalRows actualModulus 8558 (.bxor 8556 8557) := by core033_kernel_decide
theorem stats8558 : actualRows8558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8558=7428 := by core033_kernel_decide
theorem rows8559 : actualRows8559=WordField.canonicalRows actualModulus 8559 (.badd 8553 8558) := by core033_kernel_decide
theorem stats8559 : actualRows8559.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8559=5388 := by core033_kernel_decide
theorem rows8560 : actualRows8560=WordField.canonicalRows actualModulus 8560 (.badd 8559 8352) := by core033_kernel_decide
theorem stats8560 : actualRows8560.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8560=5388 := by core033_kernel_decide
theorem rows8561 : actualRows8561=WordField.canonicalRows actualModulus 8561 (.rotr 8547 17) := by core033_kernel_decide
theorem stats8561 : actualRows8561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8561=5124 := by core033_kernel_decide
theorem rows8562 : actualRows8562=WordField.canonicalRows actualModulus 8562 (.rotr 8547 19) := by core033_kernel_decide
theorem stats8562 : actualRows8562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8562=5124 := by core033_kernel_decide
theorem rows8563 : actualRows8563=WordField.canonicalRows actualModulus 8563 (.bxor 8561 8562) := by core033_kernel_decide
theorem stats8563 : actualRows8563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8563=7428 := by core033_kernel_decide
theorem rows8564 : actualRows8564=WordField.canonicalRows actualModulus 8564 (.shr 8547 10) := by core033_kernel_decide
theorem stats8564 : actualRows8564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8564=4404 := by core033_kernel_decide
theorem rows8565 : actualRows8565=WordField.canonicalRows actualModulus 8565 (.bxor 8563 8564) := by core033_kernel_decide
theorem stats8565 : actualRows8565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8565=7428 := by core033_kernel_decide
def partRows131 : List R1CS.Row := actualRows8502++actualRows8503++actualRows8504++actualRows8505++actualRows8506++actualRows8507++actualRows8508++actualRows8509++actualRows8510++actualRows8511++actualRows8512++actualRows8513++actualRows8514++actualRows8515++actualRows8516++actualRows8517++actualRows8518++actualRows8519++actualRows8520++actualRows8521++actualRows8522++actualRows8523++actualRows8524++actualRows8525++actualRows8526++actualRows8527++actualRows8528++actualRows8529++actualRows8530++actualRows8531++actualRows8532++actualRows8533++actualRows8534++actualRows8535++actualRows8536++actualRows8537++actualRows8538++actualRows8539++actualRows8540++actualRows8541++actualRows8542++actualRows8543++actualRows8544++actualRows8545++actualRows8546++actualRows8547++actualRows8548++actualRows8549++actualRows8550++actualRows8551++actualRows8552++actualRows8553++actualRows8554++actualRows8555++actualRows8556++actualRows8557++actualRows8558++actualRows8559++actualRows8560++actualRows8561++actualRows8562++actualRows8563++actualRows8564++actualRows8565
def partOps131 : List WordIR.Op := [.rotr 8313 7,.rotr 8313 18,.bxor 8502 8503,.shr 8313 3,.bxor 8504 8505,.badd 8501 8506,.badd 8507 8300,.rotr 8495 17,.rotr 8495 19,.bxor 8509 8510,.shr 8495 10,.bxor 8511 8512,.badd 8513 8430,.rotr 8326 7,.rotr 8326 18,.bxor 8515 8516,.shr 8326 3,.bxor 8517 8518,.badd 8514 8519,.badd 8520 8313,.rotr 8508 17,.rotr 8508 19,.bxor 8522 8523,.shr 8508 10,.bxor 8524 8525,.badd 8526 8443,.rotr 8339 7,.rotr 8339 18,.bxor 8528 8529,.shr 8339 3,.bxor 8530 8531,.badd 8527 8532,.badd 8533 8326,.rotr 8521 17,.rotr 8521 19,.bxor 8535 8536,.shr 8521 10,.bxor 8537 8538,.badd 8539 8456,.rotr 8352 7,.rotr 8352 18,.bxor 8541 8542,.shr 8352 3,.bxor 8543 8544,.badd 8540 8545,.badd 8546 8339,.rotr 8534 17,.rotr 8534 19,.bxor 8548 8549,.shr 8534 10,.bxor 8550 8551,.badd 8552 8469,.rotr 8365 7,.rotr 8365 18,.bxor 8554 8555,.shr 8365 3,.bxor 8556 8557,.badd 8553 8558,.badd 8559 8352,.rotr 8547 17,.rotr 8547 19,.bxor 8561 8562,.shr 8547 10,.bxor 8563 8564]
theorem partExact131 : partRows131=WordField.rows actualModulus 8502 partOps131 := by
  simp only [partRows131,partOps131,WordField.rows,rows8502,rows8503,rows8504,rows8505,rows8506,rows8507,rows8508,rows8509,rows8510,rows8511,rows8512,rows8513,rows8514,rows8515,rows8516,rows8517,rows8518,rows8519,rows8520,rows8521,rows8522,rows8523,rows8524,rows8525,rows8526,rows8527,rows8528,rows8529,rows8530,rows8531,rows8532,rows8533,rows8534,rows8535,rows8536,rows8537,rows8538,rows8539,rows8540,rows8541,rows8542,rows8543,rows8544,rows8545,rows8546,rows8547,rows8548,rows8549,rows8550,rows8551,rows8552,rows8553,rows8554,rows8555,rows8556,rows8557,rows8558,rows8559,rows8560,rows8561,rows8562,rows8563,rows8564,rows8565,List.append_assoc,List.append_nil]
theorem partLength131 : partOps131.length=64 := by decide
theorem partStats131 : partRows131.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows131=373032 := by
  simp only [partRows131,List.length_append,MatrixRowBlocks.rows_weight_append,stats8502.1,stats8502.2,stats8503.1,stats8503.2,stats8504.1,stats8504.2,stats8505.1,stats8505.2,stats8506.1,stats8506.2,stats8507.1,stats8507.2,stats8508.1,stats8508.2,stats8509.1,stats8509.2,stats8510.1,stats8510.2,stats8511.1,stats8511.2,stats8512.1,stats8512.2,stats8513.1,stats8513.2,stats8514.1,stats8514.2,stats8515.1,stats8515.2,stats8516.1,stats8516.2,stats8517.1,stats8517.2,stats8518.1,stats8518.2,stats8519.1,stats8519.2,stats8520.1,stats8520.2,stats8521.1,stats8521.2,stats8522.1,stats8522.2,stats8523.1,stats8523.2,stats8524.1,stats8524.2,stats8525.1,stats8525.2,stats8526.1,stats8526.2,stats8527.1,stats8527.2,stats8528.1,stats8528.2,stats8529.1,stats8529.2,stats8530.1,stats8530.2,stats8531.1,stats8531.2,stats8532.1,stats8532.2,stats8533.1,stats8533.2,stats8534.1,stats8534.2,stats8535.1,stats8535.2,stats8536.1,stats8536.2,stats8537.1,stats8537.2,stats8538.1,stats8538.2,stats8539.1,stats8539.2,stats8540.1,stats8540.2,stats8541.1,stats8541.2,stats8542.1,stats8542.2,stats8543.1,stats8543.2,stats8544.1,stats8544.2,stats8545.1,stats8545.2,stats8546.1,stats8546.2,stats8547.1,stats8547.2,stats8548.1,stats8548.2,stats8549.1,stats8549.2,stats8550.1,stats8550.2,stats8551.1,stats8551.2,stats8552.1,stats8552.2,stats8553.1,stats8553.2,stats8554.1,stats8554.2,stats8555.1,stats8555.2,stats8556.1,stats8556.2,stats8557.1,stats8557.2,stats8558.1,stats8558.2,stats8559.1,stats8559.2,stats8560.1,stats8560.2,stats8561.1,stats8561.2,stats8562.1,stats8562.2,stats8563.1,stats8563.2,stats8564.1,stats8564.2,stats8565.1,stats8565.2]
  decide
end AuthenticatedBranchRoundCheckedRows
