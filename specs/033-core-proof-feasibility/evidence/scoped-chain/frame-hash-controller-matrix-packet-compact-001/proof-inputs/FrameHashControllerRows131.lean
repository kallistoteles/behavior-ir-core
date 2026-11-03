import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData131
import FrameHashControllerInstructionMatrixData132
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8427 : actualRows8427=WordField.canonicalRows actualModulus 8427 (.badd 8426 6880) := by core033_kernel_decide
theorem stats8427 : actualRows8427.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8427=5388 := by core033_kernel_decide
theorem rows8428 : actualRows8428=WordField.canonicalRows actualModulus 8428 (.rotr 8412 2) := by core033_kernel_decide
theorem stats8428 : actualRows8428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8428=5124 := by core033_kernel_decide
theorem rows8429 : actualRows8429=WordField.canonicalRows actualModulus 8429 (.rotr 8412 13) := by core033_kernel_decide
theorem stats8429 : actualRows8429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8429=5124 := by core033_kernel_decide
theorem rows8430 : actualRows8430=WordField.canonicalRows actualModulus 8430 (.bxor 8428 8429) := by core033_kernel_decide
theorem stats8430 : actualRows8430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8430=7428 := by core033_kernel_decide
theorem rows8431 : actualRows8431=WordField.canonicalRows actualModulus 8431 (.rotr 8412 22) := by core033_kernel_decide
theorem stats8431 : actualRows8431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8431=5124 := by core033_kernel_decide
theorem rows8432 : actualRows8432=WordField.canonicalRows actualModulus 8432 (.bxor 8430 8431) := by core033_kernel_decide
theorem stats8432 : actualRows8432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8432=7428 := by core033_kernel_decide
theorem rows8433 : actualRows8433=WordField.canonicalRows actualModulus 8433 (.band 8412 8385) := by core033_kernel_decide
theorem stats8433 : actualRows8433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8433=5124 := by core033_kernel_decide
theorem rows8434 : actualRows8434=WordField.canonicalRows actualModulus 8434 (.band 8412 8358) := by core033_kernel_decide
theorem stats8434 : actualRows8434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8434=5124 := by core033_kernel_decide
theorem rows8435 : actualRows8435=WordField.canonicalRows actualModulus 8435 (.bxor 8433 8434) := by core033_kernel_decide
theorem stats8435 : actualRows8435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8435=7428 := by core033_kernel_decide
theorem rows8436 : actualRows8436=WordField.canonicalRows actualModulus 8436 (.band 8385 8358) := by core033_kernel_decide
theorem stats8436 : actualRows8436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8436=5124 := by core033_kernel_decide
theorem rows8437 : actualRows8437=WordField.canonicalRows actualModulus 8437 (.bxor 8435 8436) := by core033_kernel_decide
theorem stats8437 : actualRows8437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8437=7428 := by core033_kernel_decide
theorem rows8438 : actualRows8438=WordField.canonicalRows actualModulus 8438 (.badd 8432 8437) := by core033_kernel_decide
theorem stats8438 : actualRows8438.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8438=5388 := by core033_kernel_decide
theorem rows8439 : actualRows8439=WordField.canonicalRows actualModulus 8439 (.badd 8427 8438) := by core033_kernel_decide
theorem stats8439 : actualRows8439.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8439=5388 := by core033_kernel_decide
theorem rows8440 : actualRows8440=WordField.canonicalRows actualModulus 8440 (.badd 8331 8427) := by core033_kernel_decide
theorem stats8440 : actualRows8440.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8440=5388 := by core033_kernel_decide
theorem rows8441 : actualRows8441=WordField.canonicalRows actualModulus 8441 (.rotr 8440 6) := by core033_kernel_decide
theorem stats8441 : actualRows8441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8441=5124 := by core033_kernel_decide
theorem rows8442 : actualRows8442=WordField.canonicalRows actualModulus 8442 (.rotr 8440 11) := by core033_kernel_decide
theorem stats8442 : actualRows8442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8442=5124 := by core033_kernel_decide
theorem rows8443 : actualRows8443=WordField.canonicalRows actualModulus 8443 (.bxor 8441 8442) := by core033_kernel_decide
theorem stats8443 : actualRows8443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8443=7428 := by core033_kernel_decide
theorem rows8444 : actualRows8444=WordField.canonicalRows actualModulus 8444 (.rotr 8440 25) := by core033_kernel_decide
theorem stats8444 : actualRows8444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8444=5124 := by core033_kernel_decide
theorem rows8445 : actualRows8445=WordField.canonicalRows actualModulus 8445 (.bxor 8443 8444) := by core033_kernel_decide
theorem stats8445 : actualRows8445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8445=7428 := by core033_kernel_decide
theorem rows8446 : actualRows8446=WordField.canonicalRows actualModulus 8446 (.badd 8359 8445) := by core033_kernel_decide
theorem stats8446 : actualRows8446.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8446=5388 := by core033_kernel_decide
theorem rows8447 : actualRows8447=WordField.canonicalRows actualModulus 8447 (.band 8440 8413) := by core033_kernel_decide
theorem stats8447 : actualRows8447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8447=5124 := by core033_kernel_decide
theorem rows8448 : actualRows8448=WordField.canonicalRows actualModulus 8448 (.bnot 8440) := by core033_kernel_decide
theorem stats8448 : actualRows8448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8448=6276 := by core033_kernel_decide
theorem rows8449 : actualRows8449=WordField.canonicalRows actualModulus 8449 (.band 8448 8386) := by core033_kernel_decide
theorem stats8449 : actualRows8449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8449=5124 := by core033_kernel_decide
theorem rows8450 : actualRows8450=WordField.canonicalRows actualModulus 8450 (.bxor 8447 8449) := by core033_kernel_decide
theorem stats8450 : actualRows8450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8450=7428 := by core033_kernel_decide
theorem rows8451 : actualRows8451=WordField.canonicalRows actualModulus 8451 (.badd 8446 8450) := by core033_kernel_decide
theorem stats8451 : actualRows8451.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8451=5388 := by core033_kernel_decide
theorem rows8452 : actualRows8452=WordField.canonicalRows actualModulus 8452 (.literal (BitVec.ofNat 32 958139571)) := by core033_kernel_decide
theorem stats8452 : actualRows8452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8452=3828 := by core033_kernel_decide
theorem rows8453 : actualRows8453=WordField.canonicalRows actualModulus 8453 (.badd 8451 8452) := by core033_kernel_decide
theorem stats8453 : actualRows8453.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8453=5388 := by core033_kernel_decide
theorem rows8454 : actualRows8454=WordField.canonicalRows actualModulus 8454 (.badd 8453 6893) := by core033_kernel_decide
theorem stats8454 : actualRows8454.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8454=5388 := by core033_kernel_decide
theorem rows8455 : actualRows8455=WordField.canonicalRows actualModulus 8455 (.rotr 8439 2) := by core033_kernel_decide
theorem stats8455 : actualRows8455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8455=5124 := by core033_kernel_decide
theorem rows8456 : actualRows8456=WordField.canonicalRows actualModulus 8456 (.rotr 8439 13) := by core033_kernel_decide
theorem stats8456 : actualRows8456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8456=5124 := by core033_kernel_decide
theorem rows8457 : actualRows8457=WordField.canonicalRows actualModulus 8457 (.bxor 8455 8456) := by core033_kernel_decide
theorem stats8457 : actualRows8457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8457=7428 := by core033_kernel_decide
theorem rows8458 : actualRows8458=WordField.canonicalRows actualModulus 8458 (.rotr 8439 22) := by core033_kernel_decide
theorem stats8458 : actualRows8458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8458=5124 := by core033_kernel_decide
theorem rows8459 : actualRows8459=WordField.canonicalRows actualModulus 8459 (.bxor 8457 8458) := by core033_kernel_decide
theorem stats8459 : actualRows8459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8459=7428 := by core033_kernel_decide
theorem rows8460 : actualRows8460=WordField.canonicalRows actualModulus 8460 (.band 8439 8412) := by core033_kernel_decide
theorem stats8460 : actualRows8460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8460=5124 := by core033_kernel_decide
theorem rows8461 : actualRows8461=WordField.canonicalRows actualModulus 8461 (.band 8439 8385) := by core033_kernel_decide
theorem stats8461 : actualRows8461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8461=5124 := by core033_kernel_decide
theorem rows8462 : actualRows8462=WordField.canonicalRows actualModulus 8462 (.bxor 8460 8461) := by core033_kernel_decide
theorem stats8462 : actualRows8462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8462=7428 := by core033_kernel_decide
theorem rows8463 : actualRows8463=WordField.canonicalRows actualModulus 8463 (.band 8412 8385) := by core033_kernel_decide
theorem stats8463 : actualRows8463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8463=5124 := by core033_kernel_decide
theorem rows8464 : actualRows8464=WordField.canonicalRows actualModulus 8464 (.bxor 8462 8463) := by core033_kernel_decide
theorem stats8464 : actualRows8464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8464=7428 := by core033_kernel_decide
theorem rows8465 : actualRows8465=WordField.canonicalRows actualModulus 8465 (.badd 8459 8464) := by core033_kernel_decide
theorem stats8465 : actualRows8465.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8465=5388 := by core033_kernel_decide
theorem rows8466 : actualRows8466=WordField.canonicalRows actualModulus 8466 (.badd 8454 8465) := by core033_kernel_decide
theorem stats8466 : actualRows8466.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8466=5388 := by core033_kernel_decide
theorem rows8467 : actualRows8467=WordField.canonicalRows actualModulus 8467 (.badd 8358 8454) := by core033_kernel_decide
theorem stats8467 : actualRows8467.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8467=5388 := by core033_kernel_decide
theorem rows8468 : actualRows8468=WordField.canonicalRows actualModulus 8468 (.rotr 8467 6) := by core033_kernel_decide
theorem stats8468 : actualRows8468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8468=5124 := by core033_kernel_decide
theorem rows8469 : actualRows8469=WordField.canonicalRows actualModulus 8469 (.rotr 8467 11) := by core033_kernel_decide
theorem stats8469 : actualRows8469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8469=5124 := by core033_kernel_decide
theorem rows8470 : actualRows8470=WordField.canonicalRows actualModulus 8470 (.bxor 8468 8469) := by core033_kernel_decide
theorem stats8470 : actualRows8470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8470=7428 := by core033_kernel_decide
theorem rows8471 : actualRows8471=WordField.canonicalRows actualModulus 8471 (.rotr 8467 25) := by core033_kernel_decide
theorem stats8471 : actualRows8471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8471=5124 := by core033_kernel_decide
theorem rows8472 : actualRows8472=WordField.canonicalRows actualModulus 8472 (.bxor 8470 8471) := by core033_kernel_decide
theorem stats8472 : actualRows8472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8472=7428 := by core033_kernel_decide
theorem rows8473 : actualRows8473=WordField.canonicalRows actualModulus 8473 (.badd 8386 8472) := by core033_kernel_decide
theorem stats8473 : actualRows8473.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8473=5388 := by core033_kernel_decide
theorem rows8474 : actualRows8474=WordField.canonicalRows actualModulus 8474 (.band 8467 8440) := by core033_kernel_decide
theorem stats8474 : actualRows8474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8474=5124 := by core033_kernel_decide
theorem rows8475 : actualRows8475=WordField.canonicalRows actualModulus 8475 (.bnot 8467) := by core033_kernel_decide
theorem stats8475 : actualRows8475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8475=6276 := by core033_kernel_decide
theorem rows8476 : actualRows8476=WordField.canonicalRows actualModulus 8476 (.band 8475 8413) := by core033_kernel_decide
theorem stats8476 : actualRows8476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8476=5124 := by core033_kernel_decide
theorem rows8477 : actualRows8477=WordField.canonicalRows actualModulus 8477 (.bxor 8474 8476) := by core033_kernel_decide
theorem stats8477 : actualRows8477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8477=7428 := by core033_kernel_decide
theorem rows8478 : actualRows8478=WordField.canonicalRows actualModulus 8478 (.badd 8473 8477) := by core033_kernel_decide
theorem stats8478 : actualRows8478.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8478=5388 := by core033_kernel_decide
theorem rows8479 : actualRows8479=WordField.canonicalRows actualModulus 8479 (.literal (BitVec.ofNat 32 1322822218)) := by core033_kernel_decide
theorem stats8479 : actualRows8479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8479=3900 := by core033_kernel_decide
theorem rows8480 : actualRows8480=WordField.canonicalRows actualModulus 8480 (.badd 8478 8479) := by core033_kernel_decide
theorem stats8480 : actualRows8480.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8480=5388 := by core033_kernel_decide
theorem rows8481 : actualRows8481=WordField.canonicalRows actualModulus 8481 (.badd 8480 6906) := by core033_kernel_decide
theorem stats8481 : actualRows8481.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8481=5388 := by core033_kernel_decide
theorem rows8482 : actualRows8482=WordField.canonicalRows actualModulus 8482 (.rotr 8466 2) := by core033_kernel_decide
theorem stats8482 : actualRows8482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8482=5124 := by core033_kernel_decide
theorem rows8483 : actualRows8483=WordField.canonicalRows actualModulus 8483 (.rotr 8466 13) := by core033_kernel_decide
theorem stats8483 : actualRows8483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8483=5124 := by core033_kernel_decide
theorem rows8484 : actualRows8484=WordField.canonicalRows actualModulus 8484 (.bxor 8482 8483) := by core033_kernel_decide
theorem stats8484 : actualRows8484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8484=7428 := by core033_kernel_decide
theorem rows8485 : actualRows8485=WordField.canonicalRows actualModulus 8485 (.rotr 8466 22) := by core033_kernel_decide
theorem stats8485 : actualRows8485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8485=5124 := by core033_kernel_decide
theorem rows8486 : actualRows8486=WordField.canonicalRows actualModulus 8486 (.bxor 8484 8485) := by core033_kernel_decide
theorem stats8486 : actualRows8486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8486=7428 := by core033_kernel_decide
theorem rows8487 : actualRows8487=WordField.canonicalRows actualModulus 8487 (.band 8466 8439) := by core033_kernel_decide
theorem stats8487 : actualRows8487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8487=5124 := by core033_kernel_decide
theorem rows8488 : actualRows8488=WordField.canonicalRows actualModulus 8488 (.band 8466 8412) := by core033_kernel_decide
theorem stats8488 : actualRows8488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8488=5124 := by core033_kernel_decide
theorem rows8489 : actualRows8489=WordField.canonicalRows actualModulus 8489 (.bxor 8487 8488) := by core033_kernel_decide
theorem stats8489 : actualRows8489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8489=7428 := by core033_kernel_decide
theorem rows8490 : actualRows8490=WordField.canonicalRows actualModulus 8490 (.band 8439 8412) := by core033_kernel_decide
theorem stats8490 : actualRows8490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8490=5124 := by core033_kernel_decide
def partRows131 : List R1CS.Row := actualRows8427++actualRows8428++actualRows8429++actualRows8430++actualRows8431++actualRows8432++actualRows8433++actualRows8434++actualRows8435++actualRows8436++actualRows8437++actualRows8438++actualRows8439++actualRows8440++actualRows8441++actualRows8442++actualRows8443++actualRows8444++actualRows8445++actualRows8446++actualRows8447++actualRows8448++actualRows8449++actualRows8450++actualRows8451++actualRows8452++actualRows8453++actualRows8454++actualRows8455++actualRows8456++actualRows8457++actualRows8458++actualRows8459++actualRows8460++actualRows8461++actualRows8462++actualRows8463++actualRows8464++actualRows8465++actualRows8466++actualRows8467++actualRows8468++actualRows8469++actualRows8470++actualRows8471++actualRows8472++actualRows8473++actualRows8474++actualRows8475++actualRows8476++actualRows8477++actualRows8478++actualRows8479++actualRows8480++actualRows8481++actualRows8482++actualRows8483++actualRows8484++actualRows8485++actualRows8486++actualRows8487++actualRows8488++actualRows8489++actualRows8490
def partOps131 : List WordIR.Op := [.badd 8426 6880,.rotr 8412 2,.rotr 8412 13,.bxor 8428 8429,.rotr 8412 22,.bxor 8430 8431,.band 8412 8385,.band 8412 8358,.bxor 8433 8434,.band 8385 8358,.bxor 8435 8436,.badd 8432 8437,.badd 8427 8438,.badd 8331 8427,.rotr 8440 6,.rotr 8440 11,.bxor 8441 8442,.rotr 8440 25,.bxor 8443 8444,.badd 8359 8445,.band 8440 8413,.bnot 8440,.band 8448 8386,.bxor 8447 8449,.badd 8446 8450,.literal (BitVec.ofNat 32 958139571),.badd 8451 8452,.badd 8453 6893,.rotr 8439 2,.rotr 8439 13,.bxor 8455 8456,.rotr 8439 22,.bxor 8457 8458,.band 8439 8412,.band 8439 8385,.bxor 8460 8461,.band 8412 8385,.bxor 8462 8463,.badd 8459 8464,.badd 8454 8465,.badd 8358 8454,.rotr 8467 6,.rotr 8467 11,.bxor 8468 8469,.rotr 8467 25,.bxor 8470 8471,.badd 8386 8472,.band 8467 8440,.bnot 8467,.band 8475 8413,.bxor 8474 8476,.badd 8473 8477,.literal (BitVec.ofNat 32 1322822218),.badd 8478 8479,.badd 8480 6906,.rotr 8466 2,.rotr 8466 13,.bxor 8482 8483,.rotr 8466 22,.bxor 8484 8485,.band 8466 8439,.band 8466 8412,.bxor 8487 8488,.band 8439 8412]
theorem partExact131 : partRows131=WordField.rows actualModulus 8427 partOps131 := by
  simp only [partRows131,partOps131,WordField.rows,rows8427,rows8428,rows8429,rows8430,rows8431,rows8432,rows8433,rows8434,rows8435,rows8436,rows8437,rows8438,rows8439,rows8440,rows8441,rows8442,rows8443,rows8444,rows8445,rows8446,rows8447,rows8448,rows8449,rows8450,rows8451,rows8452,rows8453,rows8454,rows8455,rows8456,rows8457,rows8458,rows8459,rows8460,rows8461,rows8462,rows8463,rows8464,rows8465,rows8466,rows8467,rows8468,rows8469,rows8470,rows8471,rows8472,rows8473,rows8474,rows8475,rows8476,rows8477,rows8478,rows8479,rows8480,rows8481,rows8482,rows8483,rows8484,rows8485,rows8486,rows8487,rows8488,rows8489,rows8490,List.append_assoc,List.append_nil]
theorem partLength131 : partOps131.length=64 := by decide
theorem partStats131 : partRows131.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows131=370848 := by
  simp only [partRows131,List.length_append,MatrixRowBlocks.rows_weight_append,stats8427.1,stats8427.2,stats8428.1,stats8428.2,stats8429.1,stats8429.2,stats8430.1,stats8430.2,stats8431.1,stats8431.2,stats8432.1,stats8432.2,stats8433.1,stats8433.2,stats8434.1,stats8434.2,stats8435.1,stats8435.2,stats8436.1,stats8436.2,stats8437.1,stats8437.2,stats8438.1,stats8438.2,stats8439.1,stats8439.2,stats8440.1,stats8440.2,stats8441.1,stats8441.2,stats8442.1,stats8442.2,stats8443.1,stats8443.2,stats8444.1,stats8444.2,stats8445.1,stats8445.2,stats8446.1,stats8446.2,stats8447.1,stats8447.2,stats8448.1,stats8448.2,stats8449.1,stats8449.2,stats8450.1,stats8450.2,stats8451.1,stats8451.2,stats8452.1,stats8452.2,stats8453.1,stats8453.2,stats8454.1,stats8454.2,stats8455.1,stats8455.2,stats8456.1,stats8456.2,stats8457.1,stats8457.2,stats8458.1,stats8458.2,stats8459.1,stats8459.2,stats8460.1,stats8460.2,stats8461.1,stats8461.2,stats8462.1,stats8462.2,stats8463.1,stats8463.2,stats8464.1,stats8464.2,stats8465.1,stats8465.2,stats8466.1,stats8466.2,stats8467.1,stats8467.2,stats8468.1,stats8468.2,stats8469.1,stats8469.2,stats8470.1,stats8470.2,stats8471.1,stats8471.2,stats8472.1,stats8472.2,stats8473.1,stats8473.2,stats8474.1,stats8474.2,stats8475.1,stats8475.2,stats8476.1,stats8476.2,stats8477.1,stats8477.2,stats8478.1,stats8478.2,stats8479.1,stats8479.2,stats8480.1,stats8480.2,stats8481.1,stats8481.2,stats8482.1,stats8482.2,stats8483.1,stats8483.2,stats8484.1,stats8484.2,stats8485.1,stats8485.2,stats8486.1,stats8486.2,stats8487.1,stats8487.2,stats8488.1,stats8488.2,stats8489.1,stats8489.2,stats8490.1,stats8490.2]
  decide
end FrameHashControllerCheckedRows
