import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData6
import FrameHashControllerInstructionMatrixData7
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows427 : actualRows427=WordField.canonicalRows actualModulus 427 (.bnot 426) := by core033_kernel_decide
theorem stats427 : actualRows427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows427=6276 := by core033_kernel_decide
theorem rows428 : actualRows428=WordField.canonicalRows actualModulus 428 (.band 427 17) := by core033_kernel_decide
theorem stats428 : actualRows428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows428=5124 := by core033_kernel_decide
theorem rows429 : actualRows429=WordField.canonicalRows actualModulus 429 (.bxor 423 428) := by core033_kernel_decide
theorem stats429 : actualRows429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows429=7428 := by core033_kernel_decide
theorem rows430 : actualRows430=WordField.canonicalRows actualModulus 430 (.bnot 359) := by core033_kernel_decide
theorem stats430 : actualRows430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows430=6276 := by core033_kernel_decide
theorem rows431 : actualRows431=WordField.canonicalRows actualModulus 431 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats431 : actualRows431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows431=2892 := by core033_kernel_decide
theorem rows432 : actualRows432=WordField.canonicalRows actualModulus 432 (.badd 430 431) := by core033_kernel_decide
theorem stats432 : actualRows432.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows432=5388 := by core033_kernel_decide
theorem rows433 : actualRows433=WordField.canonicalRows actualModulus 433 (.band 432 26) := by core033_kernel_decide
theorem stats433 : actualRows433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows433=5124 := by core033_kernel_decide
theorem rows434 : actualRows434=WordField.canonicalRows actualModulus 434 (.bnot 359) := by core033_kernel_decide
theorem stats434 : actualRows434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows434=6276 := by core033_kernel_decide
theorem rows435 : actualRows435=WordField.canonicalRows actualModulus 435 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats435 : actualRows435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows435=2892 := by core033_kernel_decide
theorem rows436 : actualRows436=WordField.canonicalRows actualModulus 436 (.badd 434 435) := by core033_kernel_decide
theorem stats436 : actualRows436.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows436=5388 := by core033_kernel_decide
theorem rows437 : actualRows437=WordField.canonicalRows actualModulus 437 (.bnot 436) := by core033_kernel_decide
theorem stats437 : actualRows437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows437=6276 := by core033_kernel_decide
theorem rows438 : actualRows438=WordField.canonicalRows actualModulus 438 (.band 437 18) := by core033_kernel_decide
theorem stats438 : actualRows438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows438=5124 := by core033_kernel_decide
theorem rows439 : actualRows439=WordField.canonicalRows actualModulus 439 (.bxor 433 438) := by core033_kernel_decide
theorem stats439 : actualRows439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows439=7428 := by core033_kernel_decide
theorem rows440 : actualRows440=WordField.canonicalRows actualModulus 440 (.bnot 359) := by core033_kernel_decide
theorem stats440 : actualRows440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows440=6276 := by core033_kernel_decide
theorem rows441 : actualRows441=WordField.canonicalRows actualModulus 441 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats441 : actualRows441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows441=2892 := by core033_kernel_decide
theorem rows442 : actualRows442=WordField.canonicalRows actualModulus 442 (.badd 440 441) := by core033_kernel_decide
theorem stats442 : actualRows442.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows442=5388 := by core033_kernel_decide
theorem rows443 : actualRows443=WordField.canonicalRows actualModulus 443 (.band 442 29) := by core033_kernel_decide
theorem stats443 : actualRows443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows443=5124 := by core033_kernel_decide
theorem rows444 : actualRows444=WordField.canonicalRows actualModulus 444 (.bnot 359) := by core033_kernel_decide
theorem stats444 : actualRows444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows444=6276 := by core033_kernel_decide
theorem rows445 : actualRows445=WordField.canonicalRows actualModulus 445 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats445 : actualRows445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows445=2892 := by core033_kernel_decide
theorem rows446 : actualRows446=WordField.canonicalRows actualModulus 446 (.badd 444 445) := by core033_kernel_decide
theorem stats446 : actualRows446.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows446=5388 := by core033_kernel_decide
theorem rows447 : actualRows447=WordField.canonicalRows actualModulus 447 (.bnot 446) := by core033_kernel_decide
theorem stats447 : actualRows447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows447=6276 := by core033_kernel_decide
theorem rows448 : actualRows448=WordField.canonicalRows actualModulus 448 (.band 447 27) := by core033_kernel_decide
theorem stats448 : actualRows448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows448=5124 := by core033_kernel_decide
theorem rows449 : actualRows449=WordField.canonicalRows actualModulus 449 (.bxor 443 448) := by core033_kernel_decide
theorem stats449 : actualRows449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows449=7428 := by core033_kernel_decide
theorem rows450 : actualRows450=WordField.canonicalRows actualModulus 450 (.bnot 359) := by core033_kernel_decide
theorem stats450 : actualRows450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows450=6276 := by core033_kernel_decide
theorem rows451 : actualRows451=WordField.canonicalRows actualModulus 451 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats451 : actualRows451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows451=2892 := by core033_kernel_decide
theorem rows452 : actualRows452=WordField.canonicalRows actualModulus 452 (.badd 450 451) := by core033_kernel_decide
theorem stats452 : actualRows452.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows452=5388 := by core033_kernel_decide
theorem rows453 : actualRows453=WordField.canonicalRows actualModulus 453 (.band 452 30) := by core033_kernel_decide
theorem stats453 : actualRows453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows453=5124 := by core033_kernel_decide
theorem rows454 : actualRows454=WordField.canonicalRows actualModulus 454 (.bnot 359) := by core033_kernel_decide
theorem stats454 : actualRows454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows454=6276 := by core033_kernel_decide
theorem rows455 : actualRows455=WordField.canonicalRows actualModulus 455 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats455 : actualRows455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows455=2892 := by core033_kernel_decide
theorem rows456 : actualRows456=WordField.canonicalRows actualModulus 456 (.badd 454 455) := by core033_kernel_decide
theorem stats456 : actualRows456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows456=5388 := by core033_kernel_decide
theorem rows457 : actualRows457=WordField.canonicalRows actualModulus 457 (.bnot 456) := by core033_kernel_decide
theorem stats457 : actualRows457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows457=6276 := by core033_kernel_decide
theorem rows458 : actualRows458=WordField.canonicalRows actualModulus 458 (.band 457 28) := by core033_kernel_decide
theorem stats458 : actualRows458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows458=5124 := by core033_kernel_decide
theorem rows459 : actualRows459=WordField.canonicalRows actualModulus 459 (.bxor 453 458) := by core033_kernel_decide
theorem stats459 : actualRows459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows459=7428 := by core033_kernel_decide
theorem rows460 : actualRows460=WordField.canonicalRows actualModulus 460 (.bnot 359) := by core033_kernel_decide
theorem stats460 : actualRows460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows460=6276 := by core033_kernel_decide
theorem rows461 : actualRows461=WordField.canonicalRows actualModulus 461 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats461 : actualRows461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows461=2892 := by core033_kernel_decide
theorem rows462 : actualRows462=WordField.canonicalRows actualModulus 462 (.badd 460 461) := by core033_kernel_decide
theorem stats462 : actualRows462.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows462=5388 := by core033_kernel_decide
theorem rows463 : actualRows463=WordField.canonicalRows actualModulus 463 (.band 462 32) := by core033_kernel_decide
theorem stats463 : actualRows463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows463=5124 := by core033_kernel_decide
theorem rows464 : actualRows464=WordField.canonicalRows actualModulus 464 (.bnot 359) := by core033_kernel_decide
theorem stats464 : actualRows464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows464=6276 := by core033_kernel_decide
theorem rows465 : actualRows465=WordField.canonicalRows actualModulus 465 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats465 : actualRows465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows465=2892 := by core033_kernel_decide
theorem rows466 : actualRows466=WordField.canonicalRows actualModulus 466 (.badd 464 465) := by core033_kernel_decide
theorem stats466 : actualRows466.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows466=5388 := by core033_kernel_decide
theorem rows467 : actualRows467=WordField.canonicalRows actualModulus 467 (.bnot 466) := by core033_kernel_decide
theorem stats467 : actualRows467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows467=6276 := by core033_kernel_decide
theorem rows468 : actualRows468=WordField.canonicalRows actualModulus 468 (.band 467 31) := by core033_kernel_decide
theorem stats468 : actualRows468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows468=5124 := by core033_kernel_decide
theorem rows469 : actualRows469=WordField.canonicalRows actualModulus 469 (.bxor 463 468) := by core033_kernel_decide
theorem stats469 : actualRows469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows469=7428 := by core033_kernel_decide
theorem rows470 : actualRows470=WordField.canonicalRows actualModulus 470 (.bnot 359) := by core033_kernel_decide
theorem stats470 : actualRows470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows470=6276 := by core033_kernel_decide
theorem rows471 : actualRows471=WordField.canonicalRows actualModulus 471 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats471 : actualRows471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows471=2892 := by core033_kernel_decide
theorem rows472 : actualRows472=WordField.canonicalRows actualModulus 472 (.badd 470 471) := by core033_kernel_decide
theorem stats472 : actualRows472.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows472=5388 := by core033_kernel_decide
theorem rows473 : actualRows473=WordField.canonicalRows actualModulus 473 (.band 472 34) := by core033_kernel_decide
theorem stats473 : actualRows473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows473=5124 := by core033_kernel_decide
theorem rows474 : actualRows474=WordField.canonicalRows actualModulus 474 (.bnot 359) := by core033_kernel_decide
theorem stats474 : actualRows474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows474=6276 := by core033_kernel_decide
theorem rows475 : actualRows475=WordField.canonicalRows actualModulus 475 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats475 : actualRows475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows475=2892 := by core033_kernel_decide
theorem rows476 : actualRows476=WordField.canonicalRows actualModulus 476 (.badd 474 475) := by core033_kernel_decide
theorem stats476 : actualRows476.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows476=5388 := by core033_kernel_decide
theorem rows477 : actualRows477=WordField.canonicalRows actualModulus 477 (.bnot 476) := by core033_kernel_decide
theorem stats477 : actualRows477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows477=6276 := by core033_kernel_decide
theorem rows478 : actualRows478=WordField.canonicalRows actualModulus 478 (.band 477 33) := by core033_kernel_decide
theorem stats478 : actualRows478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows478=5124 := by core033_kernel_decide
theorem rows479 : actualRows479=WordField.canonicalRows actualModulus 479 (.bxor 473 478) := by core033_kernel_decide
theorem stats479 : actualRows479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows479=7428 := by core033_kernel_decide
theorem rows480 : actualRows480=WordField.canonicalRows actualModulus 480 (.bnot 359) := by core033_kernel_decide
theorem stats480 : actualRows480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows480=6276 := by core033_kernel_decide
theorem rows481 : actualRows481=WordField.canonicalRows actualModulus 481 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats481 : actualRows481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows481=2892 := by core033_kernel_decide
theorem rows482 : actualRows482=WordField.canonicalRows actualModulus 482 (.badd 480 481) := by core033_kernel_decide
theorem stats482 : actualRows482.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows482=5388 := by core033_kernel_decide
theorem rows483 : actualRows483=WordField.canonicalRows actualModulus 483 (.band 482 11) := by core033_kernel_decide
theorem stats483 : actualRows483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows483=5124 := by core033_kernel_decide
theorem rows484 : actualRows484=WordField.canonicalRows actualModulus 484 (.bnot 359) := by core033_kernel_decide
theorem stats484 : actualRows484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows484=6276 := by core033_kernel_decide
theorem rows485 : actualRows485=WordField.canonicalRows actualModulus 485 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats485 : actualRows485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows485=2892 := by core033_kernel_decide
theorem rows486 : actualRows486=WordField.canonicalRows actualModulus 486 (.badd 484 485) := by core033_kernel_decide
theorem stats486 : actualRows486.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows486=5388 := by core033_kernel_decide
theorem rows487 : actualRows487=WordField.canonicalRows actualModulus 487 (.bnot 486) := by core033_kernel_decide
theorem stats487 : actualRows487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows487=6276 := by core033_kernel_decide
theorem rows488 : actualRows488=WordField.canonicalRows actualModulus 488 (.band 487 19) := by core033_kernel_decide
theorem stats488 : actualRows488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows488=5124 := by core033_kernel_decide
theorem rows489 : actualRows489=WordField.canonicalRows actualModulus 489 (.bxor 483 488) := by core033_kernel_decide
theorem stats489 : actualRows489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows489=7428 := by core033_kernel_decide
theorem rows490 : actualRows490=WordField.canonicalRows actualModulus 490 (.bnot 359) := by core033_kernel_decide
theorem stats490 : actualRows490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows490=6276 := by core033_kernel_decide
def partRows6 : List R1CS.Row := actualRows427++actualRows428++actualRows429++actualRows430++actualRows431++actualRows432++actualRows433++actualRows434++actualRows435++actualRows436++actualRows437++actualRows438++actualRows439++actualRows440++actualRows441++actualRows442++actualRows443++actualRows444++actualRows445++actualRows446++actualRows447++actualRows448++actualRows449++actualRows450++actualRows451++actualRows452++actualRows453++actualRows454++actualRows455++actualRows456++actualRows457++actualRows458++actualRows459++actualRows460++actualRows461++actualRows462++actualRows463++actualRows464++actualRows465++actualRows466++actualRows467++actualRows468++actualRows469++actualRows470++actualRows471++actualRows472++actualRows473++actualRows474++actualRows475++actualRows476++actualRows477++actualRows478++actualRows479++actualRows480++actualRows481++actualRows482++actualRows483++actualRows484++actualRows485++actualRows486++actualRows487++actualRows488++actualRows489++actualRows490
def partOps6 : List WordIR.Op := [.bnot 426,.band 427 17,.bxor 423 428,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 430 431,.band 432 26,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 434 435,.bnot 436,.band 437 18,.bxor 433 438,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 440 441,.band 442 29,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 444 445,.bnot 446,.band 447 27,.bxor 443 448,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 450 451,.band 452 30,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 454 455,.bnot 456,.band 457 28,.bxor 453 458,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 460 461,.band 462 32,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 464 465,.bnot 466,.band 467 31,.bxor 463 468,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 470 471,.band 472 34,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 474 475,.bnot 476,.band 477 33,.bxor 473 478,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 480 481,.band 482 11,.bnot 359,.literal (BitVec.ofNat 32 1),.badd 484 485,.bnot 486,.band 487 19,.bxor 483 488,.bnot 359]
theorem partExact6 : partRows6=WordField.rows actualModulus 427 partOps6 := by
  simp only [partRows6,partOps6,WordField.rows,rows427,rows428,rows429,rows430,rows431,rows432,rows433,rows434,rows435,rows436,rows437,rows438,rows439,rows440,rows441,rows442,rows443,rows444,rows445,rows446,rows447,rows448,rows449,rows450,rows451,rows452,rows453,rows454,rows455,rows456,rows457,rows458,rows459,rows460,rows461,rows462,rows463,rows464,rows465,rows466,rows467,rows468,rows469,rows470,rows471,rows472,rows473,rows474,rows475,rows476,rows477,rows478,rows479,rows480,rows481,rows482,rows483,rows484,rows485,rows486,rows487,rows488,rows489,rows490,List.append_assoc,List.append_nil]
theorem partLength6 : partOps6.length=64 := by decide
theorem partStats6 : partRows6.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows6=343488 := by
  simp only [partRows6,List.length_append,MatrixRowBlocks.rows_weight_append,stats427.1,stats427.2,stats428.1,stats428.2,stats429.1,stats429.2,stats430.1,stats430.2,stats431.1,stats431.2,stats432.1,stats432.2,stats433.1,stats433.2,stats434.1,stats434.2,stats435.1,stats435.2,stats436.1,stats436.2,stats437.1,stats437.2,stats438.1,stats438.2,stats439.1,stats439.2,stats440.1,stats440.2,stats441.1,stats441.2,stats442.1,stats442.2,stats443.1,stats443.2,stats444.1,stats444.2,stats445.1,stats445.2,stats446.1,stats446.2,stats447.1,stats447.2,stats448.1,stats448.2,stats449.1,stats449.2,stats450.1,stats450.2,stats451.1,stats451.2,stats452.1,stats452.2,stats453.1,stats453.2,stats454.1,stats454.2,stats455.1,stats455.2,stats456.1,stats456.2,stats457.1,stats457.2,stats458.1,stats458.2,stats459.1,stats459.2,stats460.1,stats460.2,stats461.1,stats461.2,stats462.1,stats462.2,stats463.1,stats463.2,stats464.1,stats464.2,stats465.1,stats465.2,stats466.1,stats466.2,stats467.1,stats467.2,stats468.1,stats468.2,stats469.1,stats469.2,stats470.1,stats470.2,stats471.1,stats471.2,stats472.1,stats472.2,stats473.1,stats473.2,stats474.1,stats474.2,stats475.1,stats475.2,stats476.1,stats476.2,stats477.1,stats477.2,stats478.1,stats478.2,stats479.1,stats479.2,stats480.1,stats480.2,stats481.1,stats481.2,stats482.1,stats482.2,stats483.1,stats483.2,stats484.1,stats484.2,stats485.1,stats485.2,stats486.1,stats486.2,stats487.1,stats487.2,stats488.1,stats488.2,stats489.1,stats489.2,stats490.1,stats490.2]
  decide
end FrameHashControllerCheckedRows
