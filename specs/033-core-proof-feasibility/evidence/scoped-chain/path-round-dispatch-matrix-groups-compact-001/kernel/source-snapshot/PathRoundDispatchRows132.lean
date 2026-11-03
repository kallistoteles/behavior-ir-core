import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData132
import PathRoundDispatchInstructionMatrixData133
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8491 : actualRows8491=WordField.canonicalRows actualModulus 8491 (.band 8469 8415) := by core033_kernel_decide
theorem stats8491 : actualRows8491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8491=5124 := by core033_kernel_decide
theorem rows8492 : actualRows8492=WordField.canonicalRows actualModulus 8492 (.bxor 8490 8491) := by core033_kernel_decide
theorem stats8492 : actualRows8492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8492=7428 := by core033_kernel_decide
theorem rows8493 : actualRows8493=WordField.canonicalRows actualModulus 8493 (.band 8442 8415) := by core033_kernel_decide
theorem stats8493 : actualRows8493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8493=5124 := by core033_kernel_decide
theorem rows8494 : actualRows8494=WordField.canonicalRows actualModulus 8494 (.bxor 8492 8493) := by core033_kernel_decide
theorem stats8494 : actualRows8494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8494=7428 := by core033_kernel_decide
theorem rows8495 : actualRows8495=WordField.canonicalRows actualModulus 8495 (.badd 8489 8494) := by core033_kernel_decide
theorem stats8495 : actualRows8495.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8495=5388 := by core033_kernel_decide
theorem rows8496 : actualRows8496=WordField.canonicalRows actualModulus 8496 (.badd 8484 8495) := by core033_kernel_decide
theorem stats8496 : actualRows8496.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8496=5388 := by core033_kernel_decide
theorem rows8497 : actualRows8497=WordField.canonicalRows actualModulus 8497 (.badd 8388 8484) := by core033_kernel_decide
theorem stats8497 : actualRows8497.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8497=5388 := by core033_kernel_decide
theorem rows8498 : actualRows8498=WordField.canonicalRows actualModulus 8498 (.rotr 8497 6) := by core033_kernel_decide
theorem stats8498 : actualRows8498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8498=5124 := by core033_kernel_decide
theorem rows8499 : actualRows8499=WordField.canonicalRows actualModulus 8499 (.rotr 8497 11) := by core033_kernel_decide
theorem stats8499 : actualRows8499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8499=5124 := by core033_kernel_decide
theorem rows8500 : actualRows8500=WordField.canonicalRows actualModulus 8500 (.bxor 8498 8499) := by core033_kernel_decide
theorem stats8500 : actualRows8500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8500=7428 := by core033_kernel_decide
theorem rows8501 : actualRows8501=WordField.canonicalRows actualModulus 8501 (.rotr 8497 25) := by core033_kernel_decide
theorem stats8501 : actualRows8501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8501=5124 := by core033_kernel_decide
theorem rows8502 : actualRows8502=WordField.canonicalRows actualModulus 8502 (.bxor 8500 8501) := by core033_kernel_decide
theorem stats8502 : actualRows8502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8502=7428 := by core033_kernel_decide
theorem rows8503 : actualRows8503=WordField.canonicalRows actualModulus 8503 (.badd 8416 8502) := by core033_kernel_decide
theorem stats8503 : actualRows8503.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8503=5388 := by core033_kernel_decide
theorem rows8504 : actualRows8504=WordField.canonicalRows actualModulus 8504 (.band 8497 8470) := by core033_kernel_decide
theorem stats8504 : actualRows8504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8504=5124 := by core033_kernel_decide
theorem rows8505 : actualRows8505=WordField.canonicalRows actualModulus 8505 (.bnot 8497) := by core033_kernel_decide
theorem stats8505 : actualRows8505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8505=6276 := by core033_kernel_decide
theorem rows8506 : actualRows8506=WordField.canonicalRows actualModulus 8506 (.band 8505 8443) := by core033_kernel_decide
theorem stats8506 : actualRows8506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8506=5124 := by core033_kernel_decide
theorem rows8507 : actualRows8507=WordField.canonicalRows actualModulus 8507 (.bxor 8504 8506) := by core033_kernel_decide
theorem stats8507 : actualRows8507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8507=7428 := by core033_kernel_decide
theorem rows8508 : actualRows8508=WordField.canonicalRows actualModulus 8508 (.badd 8503 8507) := by core033_kernel_decide
theorem stats8508 : actualRows8508.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8508=5388 := by core033_kernel_decide
theorem rows8509 : actualRows8509=WordField.canonicalRows actualModulus 8509 (.literal (BitVec.ofNat 32 1396182291)) := by core033_kernel_decide
theorem stats8509 : actualRows8509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8509=3756 := by core033_kernel_decide
theorem rows8510 : actualRows8510=WordField.canonicalRows actualModulus 8510 (.badd 8508 8509) := by core033_kernel_decide
theorem stats8510 : actualRows8510.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8510=5388 := by core033_kernel_decide
theorem rows8511 : actualRows8511=WordField.canonicalRows actualModulus 8511 (.badd 8510 7188) := by core033_kernel_decide
theorem stats8511 : actualRows8511.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8511=5388 := by core033_kernel_decide
theorem rows8512 : actualRows8512=WordField.canonicalRows actualModulus 8512 (.rotr 8496 2) := by core033_kernel_decide
theorem stats8512 : actualRows8512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8512=5124 := by core033_kernel_decide
theorem rows8513 : actualRows8513=WordField.canonicalRows actualModulus 8513 (.rotr 8496 13) := by core033_kernel_decide
theorem stats8513 : actualRows8513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8513=5124 := by core033_kernel_decide
theorem rows8514 : actualRows8514=WordField.canonicalRows actualModulus 8514 (.bxor 8512 8513) := by core033_kernel_decide
theorem stats8514 : actualRows8514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8514=7428 := by core033_kernel_decide
theorem rows8515 : actualRows8515=WordField.canonicalRows actualModulus 8515 (.rotr 8496 22) := by core033_kernel_decide
theorem stats8515 : actualRows8515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8515=5124 := by core033_kernel_decide
theorem rows8516 : actualRows8516=WordField.canonicalRows actualModulus 8516 (.bxor 8514 8515) := by core033_kernel_decide
theorem stats8516 : actualRows8516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8516=7428 := by core033_kernel_decide
theorem rows8517 : actualRows8517=WordField.canonicalRows actualModulus 8517 (.band 8496 8469) := by core033_kernel_decide
theorem stats8517 : actualRows8517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8517=5124 := by core033_kernel_decide
theorem rows8518 : actualRows8518=WordField.canonicalRows actualModulus 8518 (.band 8496 8442) := by core033_kernel_decide
theorem stats8518 : actualRows8518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8518=5124 := by core033_kernel_decide
theorem rows8519 : actualRows8519=WordField.canonicalRows actualModulus 8519 (.bxor 8517 8518) := by core033_kernel_decide
theorem stats8519 : actualRows8519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8519=7428 := by core033_kernel_decide
theorem rows8520 : actualRows8520=WordField.canonicalRows actualModulus 8520 (.band 8469 8442) := by core033_kernel_decide
theorem stats8520 : actualRows8520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8520=5124 := by core033_kernel_decide
theorem rows8521 : actualRows8521=WordField.canonicalRows actualModulus 8521 (.bxor 8519 8520) := by core033_kernel_decide
theorem stats8521 : actualRows8521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8521=7428 := by core033_kernel_decide
theorem rows8522 : actualRows8522=WordField.canonicalRows actualModulus 8522 (.badd 8516 8521) := by core033_kernel_decide
theorem stats8522 : actualRows8522.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8522=5388 := by core033_kernel_decide
theorem rows8523 : actualRows8523=WordField.canonicalRows actualModulus 8523 (.badd 8511 8522) := by core033_kernel_decide
theorem stats8523 : actualRows8523.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8523=5388 := by core033_kernel_decide
theorem rows8524 : actualRows8524=WordField.canonicalRows actualModulus 8524 (.badd 8415 8511) := by core033_kernel_decide
theorem stats8524 : actualRows8524.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8524=5388 := by core033_kernel_decide
theorem rows8525 : actualRows8525=WordField.canonicalRows actualModulus 8525 (.rotr 8524 6) := by core033_kernel_decide
theorem stats8525 : actualRows8525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8525=5124 := by core033_kernel_decide
theorem rows8526 : actualRows8526=WordField.canonicalRows actualModulus 8526 (.rotr 8524 11) := by core033_kernel_decide
theorem stats8526 : actualRows8526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8526=5124 := by core033_kernel_decide
theorem rows8527 : actualRows8527=WordField.canonicalRows actualModulus 8527 (.bxor 8525 8526) := by core033_kernel_decide
theorem stats8527 : actualRows8527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8527=7428 := by core033_kernel_decide
theorem rows8528 : actualRows8528=WordField.canonicalRows actualModulus 8528 (.rotr 8524 25) := by core033_kernel_decide
theorem stats8528 : actualRows8528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8528=5124 := by core033_kernel_decide
theorem rows8529 : actualRows8529=WordField.canonicalRows actualModulus 8529 (.bxor 8527 8528) := by core033_kernel_decide
theorem stats8529 : actualRows8529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8529=7428 := by core033_kernel_decide
theorem rows8530 : actualRows8530=WordField.canonicalRows actualModulus 8530 (.badd 8443 8529) := by core033_kernel_decide
theorem stats8530 : actualRows8530.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8530=5388 := by core033_kernel_decide
theorem rows8531 : actualRows8531=WordField.canonicalRows actualModulus 8531 (.band 8524 8497) := by core033_kernel_decide
theorem stats8531 : actualRows8531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8531=5124 := by core033_kernel_decide
theorem rows8532 : actualRows8532=WordField.canonicalRows actualModulus 8532 (.bnot 8524) := by core033_kernel_decide
theorem stats8532 : actualRows8532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8532=6276 := by core033_kernel_decide
theorem rows8533 : actualRows8533=WordField.canonicalRows actualModulus 8533 (.band 8532 8470) := by core033_kernel_decide
theorem stats8533 : actualRows8533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8533=5124 := by core033_kernel_decide
theorem rows8534 : actualRows8534=WordField.canonicalRows actualModulus 8534 (.bxor 8531 8533) := by core033_kernel_decide
theorem stats8534 : actualRows8534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8534=7428 := by core033_kernel_decide
theorem rows8535 : actualRows8535=WordField.canonicalRows actualModulus 8535 (.badd 8530 8534) := by core033_kernel_decide
theorem stats8535 : actualRows8535.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8535=5388 := by core033_kernel_decide
theorem rows8536 : actualRows8536=WordField.canonicalRows actualModulus 8536 (.literal (BitVec.ofNat 32 1695183700)) := by core033_kernel_decide
theorem stats8536 : actualRows8536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8536=3828 := by core033_kernel_decide
theorem rows8537 : actualRows8537=WordField.canonicalRows actualModulus 8537 (.badd 8535 8536) := by core033_kernel_decide
theorem stats8537 : actualRows8537.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8537=5388 := by core033_kernel_decide
theorem rows8538 : actualRows8538=WordField.canonicalRows actualModulus 8538 (.badd 8537 7201) := by core033_kernel_decide
theorem stats8538 : actualRows8538.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8538=5388 := by core033_kernel_decide
theorem rows8539 : actualRows8539=WordField.canonicalRows actualModulus 8539 (.rotr 8523 2) := by core033_kernel_decide
theorem stats8539 : actualRows8539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8539=5124 := by core033_kernel_decide
theorem rows8540 : actualRows8540=WordField.canonicalRows actualModulus 8540 (.rotr 8523 13) := by core033_kernel_decide
theorem stats8540 : actualRows8540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8540=5124 := by core033_kernel_decide
theorem rows8541 : actualRows8541=WordField.canonicalRows actualModulus 8541 (.bxor 8539 8540) := by core033_kernel_decide
theorem stats8541 : actualRows8541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8541=7428 := by core033_kernel_decide
theorem rows8542 : actualRows8542=WordField.canonicalRows actualModulus 8542 (.rotr 8523 22) := by core033_kernel_decide
theorem stats8542 : actualRows8542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8542=5124 := by core033_kernel_decide
theorem rows8543 : actualRows8543=WordField.canonicalRows actualModulus 8543 (.bxor 8541 8542) := by core033_kernel_decide
theorem stats8543 : actualRows8543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8543=7428 := by core033_kernel_decide
theorem rows8544 : actualRows8544=WordField.canonicalRows actualModulus 8544 (.band 8523 8496) := by core033_kernel_decide
theorem stats8544 : actualRows8544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8544=5124 := by core033_kernel_decide
theorem rows8545 : actualRows8545=WordField.canonicalRows actualModulus 8545 (.band 8523 8469) := by core033_kernel_decide
theorem stats8545 : actualRows8545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8545=5124 := by core033_kernel_decide
theorem rows8546 : actualRows8546=WordField.canonicalRows actualModulus 8546 (.bxor 8544 8545) := by core033_kernel_decide
theorem stats8546 : actualRows8546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8546=7428 := by core033_kernel_decide
theorem rows8547 : actualRows8547=WordField.canonicalRows actualModulus 8547 (.band 8496 8469) := by core033_kernel_decide
theorem stats8547 : actualRows8547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8547=5124 := by core033_kernel_decide
theorem rows8548 : actualRows8548=WordField.canonicalRows actualModulus 8548 (.bxor 8546 8547) := by core033_kernel_decide
theorem stats8548 : actualRows8548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8548=7428 := by core033_kernel_decide
theorem rows8549 : actualRows8549=WordField.canonicalRows actualModulus 8549 (.badd 8543 8548) := by core033_kernel_decide
theorem stats8549 : actualRows8549.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8549=5388 := by core033_kernel_decide
theorem rows8550 : actualRows8550=WordField.canonicalRows actualModulus 8550 (.badd 8538 8549) := by core033_kernel_decide
theorem stats8550 : actualRows8550.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8550=5388 := by core033_kernel_decide
theorem rows8551 : actualRows8551=WordField.canonicalRows actualModulus 8551 (.badd 8442 8538) := by core033_kernel_decide
theorem stats8551 : actualRows8551.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8551=5388 := by core033_kernel_decide
theorem rows8552 : actualRows8552=WordField.canonicalRows actualModulus 8552 (.rotr 8551 6) := by core033_kernel_decide
theorem stats8552 : actualRows8552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8552=5124 := by core033_kernel_decide
theorem rows8553 : actualRows8553=WordField.canonicalRows actualModulus 8553 (.rotr 8551 11) := by core033_kernel_decide
theorem stats8553 : actualRows8553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8553=5124 := by core033_kernel_decide
theorem rows8554 : actualRows8554=WordField.canonicalRows actualModulus 8554 (.bxor 8552 8553) := by core033_kernel_decide
theorem stats8554 : actualRows8554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8554=7428 := by core033_kernel_decide
def partRows132 : List R1CS.Row := actualRows8491++actualRows8492++actualRows8493++actualRows8494++actualRows8495++actualRows8496++actualRows8497++actualRows8498++actualRows8499++actualRows8500++actualRows8501++actualRows8502++actualRows8503++actualRows8504++actualRows8505++actualRows8506++actualRows8507++actualRows8508++actualRows8509++actualRows8510++actualRows8511++actualRows8512++actualRows8513++actualRows8514++actualRows8515++actualRows8516++actualRows8517++actualRows8518++actualRows8519++actualRows8520++actualRows8521++actualRows8522++actualRows8523++actualRows8524++actualRows8525++actualRows8526++actualRows8527++actualRows8528++actualRows8529++actualRows8530++actualRows8531++actualRows8532++actualRows8533++actualRows8534++actualRows8535++actualRows8536++actualRows8537++actualRows8538++actualRows8539++actualRows8540++actualRows8541++actualRows8542++actualRows8543++actualRows8544++actualRows8545++actualRows8546++actualRows8547++actualRows8548++actualRows8549++actualRows8550++actualRows8551++actualRows8552++actualRows8553++actualRows8554
def partOps132 : List WordIR.Op := [.band 8469 8415,.bxor 8490 8491,.band 8442 8415,.bxor 8492 8493,.badd 8489 8494,.badd 8484 8495,.badd 8388 8484,.rotr 8497 6,.rotr 8497 11,.bxor 8498 8499,.rotr 8497 25,.bxor 8500 8501,.badd 8416 8502,.band 8497 8470,.bnot 8497,.band 8505 8443,.bxor 8504 8506,.badd 8503 8507,.literal (BitVec.ofNat 32 1396182291),.badd 8508 8509,.badd 8510 7188,.rotr 8496 2,.rotr 8496 13,.bxor 8512 8513,.rotr 8496 22,.bxor 8514 8515,.band 8496 8469,.band 8496 8442,.bxor 8517 8518,.band 8469 8442,.bxor 8519 8520,.badd 8516 8521,.badd 8511 8522,.badd 8415 8511,.rotr 8524 6,.rotr 8524 11,.bxor 8525 8526,.rotr 8524 25,.bxor 8527 8528,.badd 8443 8529,.band 8524 8497,.bnot 8524,.band 8532 8470,.bxor 8531 8533,.badd 8530 8534,.literal (BitVec.ofNat 32 1695183700),.badd 8535 8536,.badd 8537 7201,.rotr 8523 2,.rotr 8523 13,.bxor 8539 8540,.rotr 8523 22,.bxor 8541 8542,.band 8523 8496,.band 8523 8469,.bxor 8544 8545,.band 8496 8469,.bxor 8546 8547,.badd 8543 8548,.badd 8538 8549,.badd 8442 8538,.rotr 8551 6,.rotr 8551 11,.bxor 8552 8553]
theorem partExact132 : partRows132=WordField.rows actualModulus 8491 partOps132 := by
  simp only [partRows132,partOps132,WordField.rows,rows8491,rows8492,rows8493,rows8494,rows8495,rows8496,rows8497,rows8498,rows8499,rows8500,rows8501,rows8502,rows8503,rows8504,rows8505,rows8506,rows8507,rows8508,rows8509,rows8510,rows8511,rows8512,rows8513,rows8514,rows8515,rows8516,rows8517,rows8518,rows8519,rows8520,rows8521,rows8522,rows8523,rows8524,rows8525,rows8526,rows8527,rows8528,rows8529,rows8530,rows8531,rows8532,rows8533,rows8534,rows8535,rows8536,rows8537,rows8538,rows8539,rows8540,rows8541,rows8542,rows8543,rows8544,rows8545,rows8546,rows8547,rows8548,rows8549,rows8550,rows8551,rows8552,rows8553,rows8554,List.append_assoc,List.append_nil]
theorem partLength132 : partOps132.length=64 := by decide
theorem partStats132 : partRows132.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows132=371232 := by
  simp only [partRows132,List.length_append,MatrixRowBlocks.rows_weight_append,stats8491.1,stats8491.2,stats8492.1,stats8492.2,stats8493.1,stats8493.2,stats8494.1,stats8494.2,stats8495.1,stats8495.2,stats8496.1,stats8496.2,stats8497.1,stats8497.2,stats8498.1,stats8498.2,stats8499.1,stats8499.2,stats8500.1,stats8500.2,stats8501.1,stats8501.2,stats8502.1,stats8502.2,stats8503.1,stats8503.2,stats8504.1,stats8504.2,stats8505.1,stats8505.2,stats8506.1,stats8506.2,stats8507.1,stats8507.2,stats8508.1,stats8508.2,stats8509.1,stats8509.2,stats8510.1,stats8510.2,stats8511.1,stats8511.2,stats8512.1,stats8512.2,stats8513.1,stats8513.2,stats8514.1,stats8514.2,stats8515.1,stats8515.2,stats8516.1,stats8516.2,stats8517.1,stats8517.2,stats8518.1,stats8518.2,stats8519.1,stats8519.2,stats8520.1,stats8520.2,stats8521.1,stats8521.2,stats8522.1,stats8522.2,stats8523.1,stats8523.2,stats8524.1,stats8524.2,stats8525.1,stats8525.2,stats8526.1,stats8526.2,stats8527.1,stats8527.2,stats8528.1,stats8528.2,stats8529.1,stats8529.2,stats8530.1,stats8530.2,stats8531.1,stats8531.2,stats8532.1,stats8532.2,stats8533.1,stats8533.2,stats8534.1,stats8534.2,stats8535.1,stats8535.2,stats8536.1,stats8536.2,stats8537.1,stats8537.2,stats8538.1,stats8538.2,stats8539.1,stats8539.2,stats8540.1,stats8540.2,stats8541.1,stats8541.2,stats8542.1,stats8542.2,stats8543.1,stats8543.2,stats8544.1,stats8544.2,stats8545.1,stats8545.2,stats8546.1,stats8546.2,stats8547.1,stats8547.2,stats8548.1,stats8548.2,stats8549.1,stats8549.2,stats8550.1,stats8550.2,stats8551.1,stats8551.2,stats8552.1,stats8552.2,stats8553.1,stats8553.2,stats8554.1,stats8554.2]
  decide
end PathRoundDispatchCheckedRows
