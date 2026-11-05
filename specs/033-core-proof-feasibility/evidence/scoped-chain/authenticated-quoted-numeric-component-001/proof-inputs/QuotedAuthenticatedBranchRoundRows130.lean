import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData131
import AuthenticatedBranchRoundInstructionMatrixData132
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8438 : actualRows8438=WordField.canonicalRows actualModulus 8438 (.rotr 8248 18) := by core033_kernel_decide
theorem stats8438 : actualRows8438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8438=5124 := by core033_kernel_decide
theorem rows8439 : actualRows8439=WordField.canonicalRows actualModulus 8439 (.bxor 8437 8438) := by core033_kernel_decide
theorem stats8439 : actualRows8439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8439=7428 := by core033_kernel_decide
theorem rows8440 : actualRows8440=WordField.canonicalRows actualModulus 8440 (.shr 8248 3) := by core033_kernel_decide
theorem stats8440 : actualRows8440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8440=4908 := by core033_kernel_decide
theorem rows8441 : actualRows8441=WordField.canonicalRows actualModulus 8441 (.bxor 8439 8440) := by core033_kernel_decide
theorem stats8441 : actualRows8441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8441=7428 := by core033_kernel_decide
theorem rows8442 : actualRows8442=WordField.canonicalRows actualModulus 8442 (.badd 8436 8441) := by core033_kernel_decide
theorem stats8442 : actualRows8442.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8442=5388 := by core033_kernel_decide
theorem rows8443 : actualRows8443=WordField.canonicalRows actualModulus 8443 (.badd 8442 8235) := by core033_kernel_decide
theorem stats8443 : actualRows8443.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8443=5388 := by core033_kernel_decide
theorem rows8444 : actualRows8444=WordField.canonicalRows actualModulus 8444 (.rotr 8430 17) := by core033_kernel_decide
theorem stats8444 : actualRows8444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8444=5124 := by core033_kernel_decide
theorem rows8445 : actualRows8445=WordField.canonicalRows actualModulus 8445 (.rotr 8430 19) := by core033_kernel_decide
theorem stats8445 : actualRows8445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8445=5124 := by core033_kernel_decide
theorem rows8446 : actualRows8446=WordField.canonicalRows actualModulus 8446 (.bxor 8444 8445) := by core033_kernel_decide
theorem stats8446 : actualRows8446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8446=7428 := by core033_kernel_decide
theorem rows8447 : actualRows8447=WordField.canonicalRows actualModulus 8447 (.shr 8430 10) := by core033_kernel_decide
theorem stats8447 : actualRows8447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8447=4404 := by core033_kernel_decide
theorem rows8448 : actualRows8448=WordField.canonicalRows actualModulus 8448 (.bxor 8446 8447) := by core033_kernel_decide
theorem stats8448 : actualRows8448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8448=7428 := by core033_kernel_decide
theorem rows8449 : actualRows8449=WordField.canonicalRows actualModulus 8449 (.badd 8448 8365) := by core033_kernel_decide
theorem stats8449 : actualRows8449.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8449=5388 := by core033_kernel_decide
theorem rows8450 : actualRows8450=WordField.canonicalRows actualModulus 8450 (.rotr 8261 7) := by core033_kernel_decide
theorem stats8450 : actualRows8450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8450=5124 := by core033_kernel_decide
theorem rows8451 : actualRows8451=WordField.canonicalRows actualModulus 8451 (.rotr 8261 18) := by core033_kernel_decide
theorem stats8451 : actualRows8451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8451=5124 := by core033_kernel_decide
theorem rows8452 : actualRows8452=WordField.canonicalRows actualModulus 8452 (.bxor 8450 8451) := by core033_kernel_decide
theorem stats8452 : actualRows8452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8452=7428 := by core033_kernel_decide
theorem rows8453 : actualRows8453=WordField.canonicalRows actualModulus 8453 (.shr 8261 3) := by core033_kernel_decide
theorem stats8453 : actualRows8453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8453=4908 := by core033_kernel_decide
theorem rows8454 : actualRows8454=WordField.canonicalRows actualModulus 8454 (.bxor 8452 8453) := by core033_kernel_decide
theorem stats8454 : actualRows8454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8454=7428 := by core033_kernel_decide
theorem rows8455 : actualRows8455=WordField.canonicalRows actualModulus 8455 (.badd 8449 8454) := by core033_kernel_decide
theorem stats8455 : actualRows8455.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8455=5388 := by core033_kernel_decide
theorem rows8456 : actualRows8456=WordField.canonicalRows actualModulus 8456 (.badd 8455 8248) := by core033_kernel_decide
theorem stats8456 : actualRows8456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8456=5388 := by core033_kernel_decide
theorem rows8457 : actualRows8457=WordField.canonicalRows actualModulus 8457 (.rotr 8443 17) := by core033_kernel_decide
theorem stats8457 : actualRows8457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8457=5124 := by core033_kernel_decide
theorem rows8458 : actualRows8458=WordField.canonicalRows actualModulus 8458 (.rotr 8443 19) := by core033_kernel_decide
theorem stats8458 : actualRows8458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8458=5124 := by core033_kernel_decide
theorem rows8459 : actualRows8459=WordField.canonicalRows actualModulus 8459 (.bxor 8457 8458) := by core033_kernel_decide
theorem stats8459 : actualRows8459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8459=7428 := by core033_kernel_decide
theorem rows8460 : actualRows8460=WordField.canonicalRows actualModulus 8460 (.shr 8443 10) := by core033_kernel_decide
theorem stats8460 : actualRows8460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8460=4404 := by core033_kernel_decide
theorem rows8461 : actualRows8461=WordField.canonicalRows actualModulus 8461 (.bxor 8459 8460) := by core033_kernel_decide
theorem stats8461 : actualRows8461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8461=7428 := by core033_kernel_decide
theorem rows8462 : actualRows8462=WordField.canonicalRows actualModulus 8462 (.badd 8461 8378) := by core033_kernel_decide
theorem stats8462 : actualRows8462.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8462=5388 := by core033_kernel_decide
theorem rows8463 : actualRows8463=WordField.canonicalRows actualModulus 8463 (.rotr 8274 7) := by core033_kernel_decide
theorem stats8463 : actualRows8463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8463=5124 := by core033_kernel_decide
theorem rows8464 : actualRows8464=WordField.canonicalRows actualModulus 8464 (.rotr 8274 18) := by core033_kernel_decide
theorem stats8464 : actualRows8464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8464=5124 := by core033_kernel_decide
theorem rows8465 : actualRows8465=WordField.canonicalRows actualModulus 8465 (.bxor 8463 8464) := by core033_kernel_decide
theorem stats8465 : actualRows8465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8465=7428 := by core033_kernel_decide
theorem rows8466 : actualRows8466=WordField.canonicalRows actualModulus 8466 (.shr 8274 3) := by core033_kernel_decide
theorem stats8466 : actualRows8466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8466=4908 := by core033_kernel_decide
theorem rows8467 : actualRows8467=WordField.canonicalRows actualModulus 8467 (.bxor 8465 8466) := by core033_kernel_decide
theorem stats8467 : actualRows8467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8467=7428 := by core033_kernel_decide
theorem rows8468 : actualRows8468=WordField.canonicalRows actualModulus 8468 (.badd 8462 8467) := by core033_kernel_decide
theorem stats8468 : actualRows8468.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8468=5388 := by core033_kernel_decide
theorem rows8469 : actualRows8469=WordField.canonicalRows actualModulus 8469 (.badd 8468 8261) := by core033_kernel_decide
theorem stats8469 : actualRows8469.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8469=5388 := by core033_kernel_decide
theorem rows8470 : actualRows8470=WordField.canonicalRows actualModulus 8470 (.rotr 8456 17) := by core033_kernel_decide
theorem stats8470 : actualRows8470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8470=5124 := by core033_kernel_decide
theorem rows8471 : actualRows8471=WordField.canonicalRows actualModulus 8471 (.rotr 8456 19) := by core033_kernel_decide
theorem stats8471 : actualRows8471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8471=5124 := by core033_kernel_decide
theorem rows8472 : actualRows8472=WordField.canonicalRows actualModulus 8472 (.bxor 8470 8471) := by core033_kernel_decide
theorem stats8472 : actualRows8472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8472=7428 := by core033_kernel_decide
theorem rows8473 : actualRows8473=WordField.canonicalRows actualModulus 8473 (.shr 8456 10) := by core033_kernel_decide
theorem stats8473 : actualRows8473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8473=4404 := by core033_kernel_decide
theorem rows8474 : actualRows8474=WordField.canonicalRows actualModulus 8474 (.bxor 8472 8473) := by core033_kernel_decide
theorem stats8474 : actualRows8474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8474=7428 := by core033_kernel_decide
theorem rows8475 : actualRows8475=WordField.canonicalRows actualModulus 8475 (.badd 8474 8391) := by core033_kernel_decide
theorem stats8475 : actualRows8475.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8475=5388 := by core033_kernel_decide
theorem rows8476 : actualRows8476=WordField.canonicalRows actualModulus 8476 (.rotr 8287 7) := by core033_kernel_decide
theorem stats8476 : actualRows8476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8476=5124 := by core033_kernel_decide
theorem rows8477 : actualRows8477=WordField.canonicalRows actualModulus 8477 (.rotr 8287 18) := by core033_kernel_decide
theorem stats8477 : actualRows8477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8477=5124 := by core033_kernel_decide
theorem rows8478 : actualRows8478=WordField.canonicalRows actualModulus 8478 (.bxor 8476 8477) := by core033_kernel_decide
theorem stats8478 : actualRows8478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8478=7428 := by core033_kernel_decide
theorem rows8479 : actualRows8479=WordField.canonicalRows actualModulus 8479 (.shr 8287 3) := by core033_kernel_decide
theorem stats8479 : actualRows8479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8479=4908 := by core033_kernel_decide
theorem rows8480 : actualRows8480=WordField.canonicalRows actualModulus 8480 (.bxor 8478 8479) := by core033_kernel_decide
theorem stats8480 : actualRows8480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8480=7428 := by core033_kernel_decide
theorem rows8481 : actualRows8481=WordField.canonicalRows actualModulus 8481 (.badd 8475 8480) := by core033_kernel_decide
theorem stats8481 : actualRows8481.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8481=5388 := by core033_kernel_decide
theorem rows8482 : actualRows8482=WordField.canonicalRows actualModulus 8482 (.badd 8481 8274) := by core033_kernel_decide
theorem stats8482 : actualRows8482.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8482=5388 := by core033_kernel_decide
theorem rows8483 : actualRows8483=WordField.canonicalRows actualModulus 8483 (.rotr 8469 17) := by core033_kernel_decide
theorem stats8483 : actualRows8483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8483=5124 := by core033_kernel_decide
theorem rows8484 : actualRows8484=WordField.canonicalRows actualModulus 8484 (.rotr 8469 19) := by core033_kernel_decide
theorem stats8484 : actualRows8484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8484=5124 := by core033_kernel_decide
theorem rows8485 : actualRows8485=WordField.canonicalRows actualModulus 8485 (.bxor 8483 8484) := by core033_kernel_decide
theorem stats8485 : actualRows8485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8485=7428 := by core033_kernel_decide
theorem rows8486 : actualRows8486=WordField.canonicalRows actualModulus 8486 (.shr 8469 10) := by core033_kernel_decide
theorem stats8486 : actualRows8486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8486=4404 := by core033_kernel_decide
theorem rows8487 : actualRows8487=WordField.canonicalRows actualModulus 8487 (.bxor 8485 8486) := by core033_kernel_decide
theorem stats8487 : actualRows8487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8487=7428 := by core033_kernel_decide
theorem rows8488 : actualRows8488=WordField.canonicalRows actualModulus 8488 (.badd 8487 8404) := by core033_kernel_decide
theorem stats8488 : actualRows8488.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8488=5388 := by core033_kernel_decide
theorem rows8489 : actualRows8489=WordField.canonicalRows actualModulus 8489 (.rotr 8300 7) := by core033_kernel_decide
theorem stats8489 : actualRows8489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8489=5124 := by core033_kernel_decide
theorem rows8490 : actualRows8490=WordField.canonicalRows actualModulus 8490 (.rotr 8300 18) := by core033_kernel_decide
theorem stats8490 : actualRows8490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8490=5124 := by core033_kernel_decide
theorem rows8491 : actualRows8491=WordField.canonicalRows actualModulus 8491 (.bxor 8489 8490) := by core033_kernel_decide
theorem stats8491 : actualRows8491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8491=7428 := by core033_kernel_decide
theorem rows8492 : actualRows8492=WordField.canonicalRows actualModulus 8492 (.shr 8300 3) := by core033_kernel_decide
theorem stats8492 : actualRows8492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8492=4908 := by core033_kernel_decide
theorem rows8493 : actualRows8493=WordField.canonicalRows actualModulus 8493 (.bxor 8491 8492) := by core033_kernel_decide
theorem stats8493 : actualRows8493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8493=7428 := by core033_kernel_decide
theorem rows8494 : actualRows8494=WordField.canonicalRows actualModulus 8494 (.badd 8488 8493) := by core033_kernel_decide
theorem stats8494 : actualRows8494.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8494=5388 := by core033_kernel_decide
theorem rows8495 : actualRows8495=WordField.canonicalRows actualModulus 8495 (.badd 8494 8287) := by core033_kernel_decide
theorem stats8495 : actualRows8495.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8495=5388 := by core033_kernel_decide
theorem rows8496 : actualRows8496=WordField.canonicalRows actualModulus 8496 (.rotr 8482 17) := by core033_kernel_decide
theorem stats8496 : actualRows8496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8496=5124 := by core033_kernel_decide
theorem rows8497 : actualRows8497=WordField.canonicalRows actualModulus 8497 (.rotr 8482 19) := by core033_kernel_decide
theorem stats8497 : actualRows8497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8497=5124 := by core033_kernel_decide
theorem rows8498 : actualRows8498=WordField.canonicalRows actualModulus 8498 (.bxor 8496 8497) := by core033_kernel_decide
theorem stats8498 : actualRows8498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8498=7428 := by core033_kernel_decide
theorem rows8499 : actualRows8499=WordField.canonicalRows actualModulus 8499 (.shr 8482 10) := by core033_kernel_decide
theorem stats8499 : actualRows8499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8499=4404 := by core033_kernel_decide
theorem rows8500 : actualRows8500=WordField.canonicalRows actualModulus 8500 (.bxor 8498 8499) := by core033_kernel_decide
theorem stats8500 : actualRows8500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8500=7428 := by core033_kernel_decide
theorem rows8501 : actualRows8501=WordField.canonicalRows actualModulus 8501 (.badd 8500 8417) := by core033_kernel_decide
theorem stats8501 : actualRows8501.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8501=5388 := by core033_kernel_decide
def partRows130 : List R1CS.Row := actualRows8438++actualRows8439++actualRows8440++actualRows8441++actualRows8442++actualRows8443++actualRows8444++actualRows8445++actualRows8446++actualRows8447++actualRows8448++actualRows8449++actualRows8450++actualRows8451++actualRows8452++actualRows8453++actualRows8454++actualRows8455++actualRows8456++actualRows8457++actualRows8458++actualRows8459++actualRows8460++actualRows8461++actualRows8462++actualRows8463++actualRows8464++actualRows8465++actualRows8466++actualRows8467++actualRows8468++actualRows8469++actualRows8470++actualRows8471++actualRows8472++actualRows8473++actualRows8474++actualRows8475++actualRows8476++actualRows8477++actualRows8478++actualRows8479++actualRows8480++actualRows8481++actualRows8482++actualRows8483++actualRows8484++actualRows8485++actualRows8486++actualRows8487++actualRows8488++actualRows8489++actualRows8490++actualRows8491++actualRows8492++actualRows8493++actualRows8494++actualRows8495++actualRows8496++actualRows8497++actualRows8498++actualRows8499++actualRows8500++actualRows8501
def partOps130 : List WordIR.Op := [.rotr 8248 18,.bxor 8437 8438,.shr 8248 3,.bxor 8439 8440,.badd 8436 8441,.badd 8442 8235,.rotr 8430 17,.rotr 8430 19,.bxor 8444 8445,.shr 8430 10,.bxor 8446 8447,.badd 8448 8365,.rotr 8261 7,.rotr 8261 18,.bxor 8450 8451,.shr 8261 3,.bxor 8452 8453,.badd 8449 8454,.badd 8455 8248,.rotr 8443 17,.rotr 8443 19,.bxor 8457 8458,.shr 8443 10,.bxor 8459 8460,.badd 8461 8378,.rotr 8274 7,.rotr 8274 18,.bxor 8463 8464,.shr 8274 3,.bxor 8465 8466,.badd 8462 8467,.badd 8468 8261,.rotr 8456 17,.rotr 8456 19,.bxor 8470 8471,.shr 8456 10,.bxor 8472 8473,.badd 8474 8391,.rotr 8287 7,.rotr 8287 18,.bxor 8476 8477,.shr 8287 3,.bxor 8478 8479,.badd 8475 8480,.badd 8481 8274,.rotr 8469 17,.rotr 8469 19,.bxor 8483 8484,.shr 8469 10,.bxor 8485 8486,.badd 8487 8404,.rotr 8300 7,.rotr 8300 18,.bxor 8489 8490,.shr 8300 3,.bxor 8491 8492,.badd 8488 8493,.badd 8494 8287,.rotr 8482 17,.rotr 8482 19,.bxor 8496 8497,.shr 8482 10,.bxor 8498 8499,.badd 8500 8417]
theorem partExact130 : partRows130=WordField.rows actualModulus 8438 partOps130 := by
  simp only [partRows130,partOps130,WordField.rows,rows8438,rows8439,rows8440,rows8441,rows8442,rows8443,rows8444,rows8445,rows8446,rows8447,rows8448,rows8449,rows8450,rows8451,rows8452,rows8453,rows8454,rows8455,rows8456,rows8457,rows8458,rows8459,rows8460,rows8461,rows8462,rows8463,rows8464,rows8465,rows8466,rows8467,rows8468,rows8469,rows8470,rows8471,rows8472,rows8473,rows8474,rows8475,rows8476,rows8477,rows8478,rows8479,rows8480,rows8481,rows8482,rows8483,rows8484,rows8485,rows8486,rows8487,rows8488,rows8489,rows8490,rows8491,rows8492,rows8493,rows8494,rows8495,rows8496,rows8497,rows8498,rows8499,rows8500,rows8501,List.append_assoc,List.append_nil]
theorem partLength130 : partOps130.length=64 := by decide
theorem partStats130 : partRows130.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows130=373296 := by
  simp only [partRows130,List.length_append,MatrixRowBlocks.rows_weight_append,stats8438.1,stats8438.2,stats8439.1,stats8439.2,stats8440.1,stats8440.2,stats8441.1,stats8441.2,stats8442.1,stats8442.2,stats8443.1,stats8443.2,stats8444.1,stats8444.2,stats8445.1,stats8445.2,stats8446.1,stats8446.2,stats8447.1,stats8447.2,stats8448.1,stats8448.2,stats8449.1,stats8449.2,stats8450.1,stats8450.2,stats8451.1,stats8451.2,stats8452.1,stats8452.2,stats8453.1,stats8453.2,stats8454.1,stats8454.2,stats8455.1,stats8455.2,stats8456.1,stats8456.2,stats8457.1,stats8457.2,stats8458.1,stats8458.2,stats8459.1,stats8459.2,stats8460.1,stats8460.2,stats8461.1,stats8461.2,stats8462.1,stats8462.2,stats8463.1,stats8463.2,stats8464.1,stats8464.2,stats8465.1,stats8465.2,stats8466.1,stats8466.2,stats8467.1,stats8467.2,stats8468.1,stats8468.2,stats8469.1,stats8469.2,stats8470.1,stats8470.2,stats8471.1,stats8471.2,stats8472.1,stats8472.2,stats8473.1,stats8473.2,stats8474.1,stats8474.2,stats8475.1,stats8475.2,stats8476.1,stats8476.2,stats8477.1,stats8477.2,stats8478.1,stats8478.2,stats8479.1,stats8479.2,stats8480.1,stats8480.2,stats8481.1,stats8481.2,stats8482.1,stats8482.2,stats8483.1,stats8483.2,stats8484.1,stats8484.2,stats8485.1,stats8485.2,stats8486.1,stats8486.2,stats8487.1,stats8487.2,stats8488.1,stats8488.2,stats8489.1,stats8489.2,stats8490.1,stats8490.2,stats8491.1,stats8491.2,stats8492.1,stats8492.2,stats8493.1,stats8493.2,stats8494.1,stats8494.2,stats8495.1,stats8495.2,stats8496.1,stats8496.2,stats8497.1,stats8497.2,stats8498.1,stats8498.2,stats8499.1,stats8499.2,stats8500.1,stats8500.2,stats8501.1,stats8501.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
