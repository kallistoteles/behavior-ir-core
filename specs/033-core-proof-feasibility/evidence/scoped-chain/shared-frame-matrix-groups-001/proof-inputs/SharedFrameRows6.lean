import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData6
import SharedFrameInstructionMatrixData7
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows427 : actualRows427=WordField.canonicalRows actualModulus 427 (.shr 206 16) := by core033_kernel_decide
theorem stats427 : actualRows427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows427=3972 := by core033_kernel_decide
theorem rows428 : actualRows428=WordField.canonicalRows actualModulus 428 (.band 427 46) := by core033_kernel_decide
theorem stats428 : actualRows428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows428=5124 := by core033_kernel_decide
theorem rows429 : actualRows429=WordField.canonicalRows actualModulus 429 (.shr 206 24) := by core033_kernel_decide
theorem stats429 : actualRows429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows429=3396 := by core033_kernel_decide
theorem rows430 : actualRows430=WordField.canonicalRows actualModulus 430 (.band 429 46) := by core033_kernel_decide
theorem stats430 : actualRows430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows430=5124 := by core033_kernel_decide
theorem rows431 : actualRows431=WordField.canonicalRows actualModulus 431 (.shr 209 0) := by core033_kernel_decide
theorem stats431 : actualRows431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows431=5124 := by core033_kernel_decide
theorem rows432 : actualRows432=WordField.canonicalRows actualModulus 432 (.band 431 46) := by core033_kernel_decide
theorem stats432 : actualRows432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows432=5124 := by core033_kernel_decide
theorem rows433 : actualRows433=WordField.canonicalRows actualModulus 433 (.shr 209 8) := by core033_kernel_decide
theorem stats433 : actualRows433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows433=4548 := by core033_kernel_decide
theorem rows434 : actualRows434=WordField.canonicalRows actualModulus 434 (.band 433 46) := by core033_kernel_decide
theorem stats434 : actualRows434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows434=5124 := by core033_kernel_decide
theorem rows435 : actualRows435=WordField.canonicalRows actualModulus 435 (.shr 209 16) := by core033_kernel_decide
theorem stats435 : actualRows435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows435=3972 := by core033_kernel_decide
theorem rows436 : actualRows436=WordField.canonicalRows actualModulus 436 (.band 435 46) := by core033_kernel_decide
theorem stats436 : actualRows436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows436=5124 := by core033_kernel_decide
theorem rows437 : actualRows437=WordField.canonicalRows actualModulus 437 (.shr 209 24) := by core033_kernel_decide
theorem stats437 : actualRows437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows437=3396 := by core033_kernel_decide
theorem rows438 : actualRows438=WordField.canonicalRows actualModulus 438 (.band 437 46) := by core033_kernel_decide
theorem stats438 : actualRows438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows438=5124 := by core033_kernel_decide
theorem rows439 : actualRows439=WordField.canonicalRows actualModulus 439 (.shr 212 0) := by core033_kernel_decide
theorem stats439 : actualRows439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows439=5124 := by core033_kernel_decide
theorem rows440 : actualRows440=WordField.canonicalRows actualModulus 440 (.band 439 46) := by core033_kernel_decide
theorem stats440 : actualRows440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows440=5124 := by core033_kernel_decide
theorem rows441 : actualRows441=WordField.canonicalRows actualModulus 441 (.shr 212 8) := by core033_kernel_decide
theorem stats441 : actualRows441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows441=4548 := by core033_kernel_decide
theorem rows442 : actualRows442=WordField.canonicalRows actualModulus 442 (.band 441 46) := by core033_kernel_decide
theorem stats442 : actualRows442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows442=5124 := by core033_kernel_decide
theorem rows443 : actualRows443=WordField.canonicalRows actualModulus 443 (.shr 212 16) := by core033_kernel_decide
theorem stats443 : actualRows443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows443=3972 := by core033_kernel_decide
theorem rows444 : actualRows444=WordField.canonicalRows actualModulus 444 (.band 443 46) := by core033_kernel_decide
theorem stats444 : actualRows444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows444=5124 := by core033_kernel_decide
theorem rows445 : actualRows445=WordField.canonicalRows actualModulus 445 (.shr 212 24) := by core033_kernel_decide
theorem stats445 : actualRows445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows445=3396 := by core033_kernel_decide
theorem rows446 : actualRows446=WordField.canonicalRows actualModulus 446 (.band 445 46) := by core033_kernel_decide
theorem stats446 : actualRows446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows446=5124 := by core033_kernel_decide
theorem rows447 : actualRows447=WordField.canonicalRows actualModulus 447 (.shr 215 0) := by core033_kernel_decide
theorem stats447 : actualRows447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows447=5124 := by core033_kernel_decide
theorem rows448 : actualRows448=WordField.canonicalRows actualModulus 448 (.band 447 46) := by core033_kernel_decide
theorem stats448 : actualRows448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows448=5124 := by core033_kernel_decide
theorem rows449 : actualRows449=WordField.canonicalRows actualModulus 449 (.shr 215 8) := by core033_kernel_decide
theorem stats449 : actualRows449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows449=4548 := by core033_kernel_decide
theorem rows450 : actualRows450=WordField.canonicalRows actualModulus 450 (.band 449 46) := by core033_kernel_decide
theorem stats450 : actualRows450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows450=5124 := by core033_kernel_decide
theorem rows451 : actualRows451=WordField.canonicalRows actualModulus 451 (.shr 215 16) := by core033_kernel_decide
theorem stats451 : actualRows451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows451=3972 := by core033_kernel_decide
theorem rows452 : actualRows452=WordField.canonicalRows actualModulus 452 (.band 451 46) := by core033_kernel_decide
theorem stats452 : actualRows452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows452=5124 := by core033_kernel_decide
theorem rows453 : actualRows453=WordField.canonicalRows actualModulus 453 (.shr 215 24) := by core033_kernel_decide
theorem stats453 : actualRows453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows453=3396 := by core033_kernel_decide
theorem rows454 : actualRows454=WordField.canonicalRows actualModulus 454 (.band 453 46) := by core033_kernel_decide
theorem stats454 : actualRows454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows454=5124 := by core033_kernel_decide
theorem rows455 : actualRows455=WordField.canonicalRows actualModulus 455 (.shr 218 0) := by core033_kernel_decide
theorem stats455 : actualRows455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows455=5124 := by core033_kernel_decide
theorem rows456 : actualRows456=WordField.canonicalRows actualModulus 456 (.band 455 46) := by core033_kernel_decide
theorem stats456 : actualRows456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows456=5124 := by core033_kernel_decide
theorem rows457 : actualRows457=WordField.canonicalRows actualModulus 457 (.shr 218 8) := by core033_kernel_decide
theorem stats457 : actualRows457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows457=4548 := by core033_kernel_decide
theorem rows458 : actualRows458=WordField.canonicalRows actualModulus 458 (.band 457 46) := by core033_kernel_decide
theorem stats458 : actualRows458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows458=5124 := by core033_kernel_decide
theorem rows459 : actualRows459=WordField.canonicalRows actualModulus 459 (.shr 218 16) := by core033_kernel_decide
theorem stats459 : actualRows459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows459=3972 := by core033_kernel_decide
theorem rows460 : actualRows460=WordField.canonicalRows actualModulus 460 (.band 459 46) := by core033_kernel_decide
theorem stats460 : actualRows460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows460=5124 := by core033_kernel_decide
theorem rows461 : actualRows461=WordField.canonicalRows actualModulus 461 (.shr 218 24) := by core033_kernel_decide
theorem stats461 : actualRows461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows461=3396 := by core033_kernel_decide
theorem rows462 : actualRows462=WordField.canonicalRows actualModulus 462 (.band 461 46) := by core033_kernel_decide
theorem stats462 : actualRows462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows462=5124 := by core033_kernel_decide
theorem rows463 : actualRows463=WordField.canonicalRows actualModulus 463 (.shr 233 0) := by core033_kernel_decide
theorem stats463 : actualRows463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows463=5124 := by core033_kernel_decide
theorem rows464 : actualRows464=WordField.canonicalRows actualModulus 464 (.band 463 46) := by core033_kernel_decide
theorem stats464 : actualRows464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows464=5124 := by core033_kernel_decide
theorem rows465 : actualRows465=WordField.canonicalRows actualModulus 465 (.shr 233 8) := by core033_kernel_decide
theorem stats465 : actualRows465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows465=4548 := by core033_kernel_decide
theorem rows466 : actualRows466=WordField.canonicalRows actualModulus 466 (.band 465 46) := by core033_kernel_decide
theorem stats466 : actualRows466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows466=5124 := by core033_kernel_decide
theorem rows467 : actualRows467=WordField.canonicalRows actualModulus 467 (.shr 233 16) := by core033_kernel_decide
theorem stats467 : actualRows467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows467=3972 := by core033_kernel_decide
theorem rows468 : actualRows468=WordField.canonicalRows actualModulus 468 (.band 467 46) := by core033_kernel_decide
theorem stats468 : actualRows468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows468=5124 := by core033_kernel_decide
theorem rows469 : actualRows469=WordField.canonicalRows actualModulus 469 (.shr 233 24) := by core033_kernel_decide
theorem stats469 : actualRows469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows469=3396 := by core033_kernel_decide
theorem rows470 : actualRows470=WordField.canonicalRows actualModulus 470 (.band 469 46) := by core033_kernel_decide
theorem stats470 : actualRows470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows470=5124 := by core033_kernel_decide
theorem rows471 : actualRows471=WordField.canonicalRows actualModulus 471 (.shr 236 0) := by core033_kernel_decide
theorem stats471 : actualRows471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows471=5124 := by core033_kernel_decide
theorem rows472 : actualRows472=WordField.canonicalRows actualModulus 472 (.band 471 46) := by core033_kernel_decide
theorem stats472 : actualRows472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows472=5124 := by core033_kernel_decide
theorem rows473 : actualRows473=WordField.canonicalRows actualModulus 473 (.shr 236 8) := by core033_kernel_decide
theorem stats473 : actualRows473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows473=4548 := by core033_kernel_decide
theorem rows474 : actualRows474=WordField.canonicalRows actualModulus 474 (.band 473 46) := by core033_kernel_decide
theorem stats474 : actualRows474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows474=5124 := by core033_kernel_decide
theorem rows475 : actualRows475=WordField.canonicalRows actualModulus 475 (.shr 236 16) := by core033_kernel_decide
theorem stats475 : actualRows475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows475=3972 := by core033_kernel_decide
theorem rows476 : actualRows476=WordField.canonicalRows actualModulus 476 (.band 475 46) := by core033_kernel_decide
theorem stats476 : actualRows476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows476=5124 := by core033_kernel_decide
theorem rows477 : actualRows477=WordField.canonicalRows actualModulus 477 (.shr 236 24) := by core033_kernel_decide
theorem stats477 : actualRows477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows477=3396 := by core033_kernel_decide
theorem rows478 : actualRows478=WordField.canonicalRows actualModulus 478 (.band 477 46) := by core033_kernel_decide
theorem stats478 : actualRows478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows478=5124 := by core033_kernel_decide
theorem rows479 : actualRows479=WordField.canonicalRows actualModulus 479 (.shr 239 0) := by core033_kernel_decide
theorem stats479 : actualRows479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows479=5124 := by core033_kernel_decide
theorem rows480 : actualRows480=WordField.canonicalRows actualModulus 480 (.band 479 46) := by core033_kernel_decide
theorem stats480 : actualRows480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows480=5124 := by core033_kernel_decide
theorem rows481 : actualRows481=WordField.canonicalRows actualModulus 481 (.shr 239 8) := by core033_kernel_decide
theorem stats481 : actualRows481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows481=4548 := by core033_kernel_decide
theorem rows482 : actualRows482=WordField.canonicalRows actualModulus 482 (.band 481 46) := by core033_kernel_decide
theorem stats482 : actualRows482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows482=5124 := by core033_kernel_decide
theorem rows483 : actualRows483=WordField.canonicalRows actualModulus 483 (.shr 239 16) := by core033_kernel_decide
theorem stats483 : actualRows483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows483=3972 := by core033_kernel_decide
theorem rows484 : actualRows484=WordField.canonicalRows actualModulus 484 (.band 483 46) := by core033_kernel_decide
theorem stats484 : actualRows484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows484=5124 := by core033_kernel_decide
theorem rows485 : actualRows485=WordField.canonicalRows actualModulus 485 (.shr 239 24) := by core033_kernel_decide
theorem stats485 : actualRows485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows485=3396 := by core033_kernel_decide
theorem rows486 : actualRows486=WordField.canonicalRows actualModulus 486 (.band 485 46) := by core033_kernel_decide
theorem stats486 : actualRows486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows486=5124 := by core033_kernel_decide
theorem rows487 : actualRows487=WordField.canonicalRows actualModulus 487 (.shr 242 0) := by core033_kernel_decide
theorem stats487 : actualRows487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows487=5124 := by core033_kernel_decide
theorem rows488 : actualRows488=WordField.canonicalRows actualModulus 488 (.band 487 46) := by core033_kernel_decide
theorem stats488 : actualRows488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows488=5124 := by core033_kernel_decide
theorem rows489 : actualRows489=WordField.canonicalRows actualModulus 489 (.shr 242 8) := by core033_kernel_decide
theorem stats489 : actualRows489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows489=4548 := by core033_kernel_decide
theorem rows490 : actualRows490=WordField.canonicalRows actualModulus 490 (.band 489 46) := by core033_kernel_decide
theorem stats490 : actualRows490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows490=5124 := by core033_kernel_decide
def partRows6 : List R1CS.Row := actualRows427++actualRows428++actualRows429++actualRows430++actualRows431++actualRows432++actualRows433++actualRows434++actualRows435++actualRows436++actualRows437++actualRows438++actualRows439++actualRows440++actualRows441++actualRows442++actualRows443++actualRows444++actualRows445++actualRows446++actualRows447++actualRows448++actualRows449++actualRows450++actualRows451++actualRows452++actualRows453++actualRows454++actualRows455++actualRows456++actualRows457++actualRows458++actualRows459++actualRows460++actualRows461++actualRows462++actualRows463++actualRows464++actualRows465++actualRows466++actualRows467++actualRows468++actualRows469++actualRows470++actualRows471++actualRows472++actualRows473++actualRows474++actualRows475++actualRows476++actualRows477++actualRows478++actualRows479++actualRows480++actualRows481++actualRows482++actualRows483++actualRows484++actualRows485++actualRows486++actualRows487++actualRows488++actualRows489++actualRows490
def partOps6 : List WordIR.Op := [.shr 206 16,.band 427 46,.shr 206 24,.band 429 46,.shr 209 0,.band 431 46,.shr 209 8,.band 433 46,.shr 209 16,.band 435 46,.shr 209 24,.band 437 46,.shr 212 0,.band 439 46,.shr 212 8,.band 441 46,.shr 212 16,.band 443 46,.shr 212 24,.band 445 46,.shr 215 0,.band 447 46,.shr 215 8,.band 449 46,.shr 215 16,.band 451 46,.shr 215 24,.band 453 46,.shr 218 0,.band 455 46,.shr 218 8,.band 457 46,.shr 218 16,.band 459 46,.shr 218 24,.band 461 46,.shr 233 0,.band 463 46,.shr 233 8,.band 465 46,.shr 233 16,.band 467 46,.shr 233 24,.band 469 46,.shr 236 0,.band 471 46,.shr 236 8,.band 473 46,.shr 236 16,.band 475 46,.shr 236 24,.band 477 46,.shr 239 0,.band 479 46,.shr 239 8,.band 481 46,.shr 239 16,.band 483 46,.shr 239 24,.band 485 46,.shr 242 0,.band 487 46,.shr 242 8,.band 489 46]
theorem partExact6 : partRows6=WordField.rows actualModulus 427 partOps6 := by
  simp only [partRows6,partOps6,WordField.rows,rows427,rows428,rows429,rows430,rows431,rows432,rows433,rows434,rows435,rows436,rows437,rows438,rows439,rows440,rows441,rows442,rows443,rows444,rows445,rows446,rows447,rows448,rows449,rows450,rows451,rows452,rows453,rows454,rows455,rows456,rows457,rows458,rows459,rows460,rows461,rows462,rows463,rows464,rows465,rows466,rows467,rows468,rows469,rows470,rows471,rows472,rows473,rows474,rows475,rows476,rows477,rows478,rows479,rows480,rows481,rows482,rows483,rows484,rows485,rows486,rows487,rows488,rows489,rows490,List.append_assoc,List.append_nil]
theorem partLength6 : partOps6.length=64 := by decide
theorem partStats6 : partRows6.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows6=300288 := by
  simp only [partRows6,List.length_append,MatrixRowBlocks.rows_weight_append,stats427.1,stats427.2,stats428.1,stats428.2,stats429.1,stats429.2,stats430.1,stats430.2,stats431.1,stats431.2,stats432.1,stats432.2,stats433.1,stats433.2,stats434.1,stats434.2,stats435.1,stats435.2,stats436.1,stats436.2,stats437.1,stats437.2,stats438.1,stats438.2,stats439.1,stats439.2,stats440.1,stats440.2,stats441.1,stats441.2,stats442.1,stats442.2,stats443.1,stats443.2,stats444.1,stats444.2,stats445.1,stats445.2,stats446.1,stats446.2,stats447.1,stats447.2,stats448.1,stats448.2,stats449.1,stats449.2,stats450.1,stats450.2,stats451.1,stats451.2,stats452.1,stats452.2,stats453.1,stats453.2,stats454.1,stats454.2,stats455.1,stats455.2,stats456.1,stats456.2,stats457.1,stats457.2,stats458.1,stats458.2,stats459.1,stats459.2,stats460.1,stats460.2,stats461.1,stats461.2,stats462.1,stats462.2,stats463.1,stats463.2,stats464.1,stats464.2,stats465.1,stats465.2,stats466.1,stats466.2,stats467.1,stats467.2,stats468.1,stats468.2,stats469.1,stats469.2,stats470.1,stats470.2,stats471.1,stats471.2,stats472.1,stats472.2,stats473.1,stats473.2,stats474.1,stats474.2,stats475.1,stats475.2,stats476.1,stats476.2,stats477.1,stats477.2,stats478.1,stats478.2,stats479.1,stats479.2,stats480.1,stats480.2,stats481.1,stats481.2,stats482.1,stats482.2,stats483.1,stats483.2,stats484.1,stats484.2,stats485.1,stats485.2,stats486.1,stats486.2,stats487.1,stats487.2,stats488.1,stats488.2,stats489.1,stats489.2,stats490.1,stats490.2]
  decide
end SharedFrameCheckedRows
