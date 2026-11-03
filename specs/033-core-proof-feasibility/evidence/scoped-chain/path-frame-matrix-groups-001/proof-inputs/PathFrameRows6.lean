import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData6
import PathFrameInstructionMatrixData7
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows418 : actualRows418=WordField.canonicalRows actualModulus 418 (.bnot 417) := by core033_kernel_decide
theorem stats418 : actualRows418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows418=6276 := by core033_kernel_decide
theorem rows419 : actualRows419=WordField.canonicalRows actualModulus 419 (.band 418 16) := by core033_kernel_decide
theorem stats419 : actualRows419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows419=5124 := by core033_kernel_decide
theorem rows420 : actualRows420=WordField.canonicalRows actualModulus 420 (.bxor 414 419) := by core033_kernel_decide
theorem stats420 : actualRows420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows420=7428 := by core033_kernel_decide
theorem rows421 : actualRows421=WordField.canonicalRows actualModulus 421 (.bnot 350) := by core033_kernel_decide
theorem stats421 : actualRows421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows421=6276 := by core033_kernel_decide
theorem rows422 : actualRows422=WordField.canonicalRows actualModulus 422 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats422 : actualRows422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows422=2892 := by core033_kernel_decide
theorem rows423 : actualRows423=WordField.canonicalRows actualModulus 423 (.badd 421 422) := by core033_kernel_decide
theorem stats423 : actualRows423.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows423=5388 := by core033_kernel_decide
theorem rows424 : actualRows424=WordField.canonicalRows actualModulus 424 (.band 423 25) := by core033_kernel_decide
theorem stats424 : actualRows424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows424=5124 := by core033_kernel_decide
theorem rows425 : actualRows425=WordField.canonicalRows actualModulus 425 (.bnot 350) := by core033_kernel_decide
theorem stats425 : actualRows425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows425=6276 := by core033_kernel_decide
theorem rows426 : actualRows426=WordField.canonicalRows actualModulus 426 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats426 : actualRows426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows426=2892 := by core033_kernel_decide
theorem rows427 : actualRows427=WordField.canonicalRows actualModulus 427 (.badd 425 426) := by core033_kernel_decide
theorem stats427 : actualRows427.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows427=5388 := by core033_kernel_decide
theorem rows428 : actualRows428=WordField.canonicalRows actualModulus 428 (.bnot 427) := by core033_kernel_decide
theorem stats428 : actualRows428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows428=6276 := by core033_kernel_decide
theorem rows429 : actualRows429=WordField.canonicalRows actualModulus 429 (.band 428 17) := by core033_kernel_decide
theorem stats429 : actualRows429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows429=5124 := by core033_kernel_decide
theorem rows430 : actualRows430=WordField.canonicalRows actualModulus 430 (.bxor 424 429) := by core033_kernel_decide
theorem stats430 : actualRows430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows430=7428 := by core033_kernel_decide
theorem rows431 : actualRows431=WordField.canonicalRows actualModulus 431 (.bnot 350) := by core033_kernel_decide
theorem stats431 : actualRows431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows431=6276 := by core033_kernel_decide
theorem rows432 : actualRows432=WordField.canonicalRows actualModulus 432 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats432 : actualRows432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows432=2892 := by core033_kernel_decide
theorem rows433 : actualRows433=WordField.canonicalRows actualModulus 433 (.badd 431 432) := by core033_kernel_decide
theorem stats433 : actualRows433.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows433=5388 := by core033_kernel_decide
theorem rows434 : actualRows434=WordField.canonicalRows actualModulus 434 (.band 433 28) := by core033_kernel_decide
theorem stats434 : actualRows434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows434=5124 := by core033_kernel_decide
theorem rows435 : actualRows435=WordField.canonicalRows actualModulus 435 (.bnot 350) := by core033_kernel_decide
theorem stats435 : actualRows435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows435=6276 := by core033_kernel_decide
theorem rows436 : actualRows436=WordField.canonicalRows actualModulus 436 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats436 : actualRows436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows436=2892 := by core033_kernel_decide
theorem rows437 : actualRows437=WordField.canonicalRows actualModulus 437 (.badd 435 436) := by core033_kernel_decide
theorem stats437 : actualRows437.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows437=5388 := by core033_kernel_decide
theorem rows438 : actualRows438=WordField.canonicalRows actualModulus 438 (.bnot 437) := by core033_kernel_decide
theorem stats438 : actualRows438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows438=6276 := by core033_kernel_decide
theorem rows439 : actualRows439=WordField.canonicalRows actualModulus 439 (.band 438 26) := by core033_kernel_decide
theorem stats439 : actualRows439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows439=5124 := by core033_kernel_decide
theorem rows440 : actualRows440=WordField.canonicalRows actualModulus 440 (.bxor 434 439) := by core033_kernel_decide
theorem stats440 : actualRows440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows440=7428 := by core033_kernel_decide
theorem rows441 : actualRows441=WordField.canonicalRows actualModulus 441 (.bnot 350) := by core033_kernel_decide
theorem stats441 : actualRows441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows441=6276 := by core033_kernel_decide
theorem rows442 : actualRows442=WordField.canonicalRows actualModulus 442 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats442 : actualRows442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows442=2892 := by core033_kernel_decide
theorem rows443 : actualRows443=WordField.canonicalRows actualModulus 443 (.badd 441 442) := by core033_kernel_decide
theorem stats443 : actualRows443.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows443=5388 := by core033_kernel_decide
theorem rows444 : actualRows444=WordField.canonicalRows actualModulus 444 (.band 443 29) := by core033_kernel_decide
theorem stats444 : actualRows444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows444=5124 := by core033_kernel_decide
theorem rows445 : actualRows445=WordField.canonicalRows actualModulus 445 (.bnot 350) := by core033_kernel_decide
theorem stats445 : actualRows445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows445=6276 := by core033_kernel_decide
theorem rows446 : actualRows446=WordField.canonicalRows actualModulus 446 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats446 : actualRows446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows446=2892 := by core033_kernel_decide
theorem rows447 : actualRows447=WordField.canonicalRows actualModulus 447 (.badd 445 446) := by core033_kernel_decide
theorem stats447 : actualRows447.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows447=5388 := by core033_kernel_decide
theorem rows448 : actualRows448=WordField.canonicalRows actualModulus 448 (.bnot 447) := by core033_kernel_decide
theorem stats448 : actualRows448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows448=6276 := by core033_kernel_decide
theorem rows449 : actualRows449=WordField.canonicalRows actualModulus 449 (.band 448 27) := by core033_kernel_decide
theorem stats449 : actualRows449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows449=5124 := by core033_kernel_decide
theorem rows450 : actualRows450=WordField.canonicalRows actualModulus 450 (.bxor 444 449) := by core033_kernel_decide
theorem stats450 : actualRows450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows450=7428 := by core033_kernel_decide
theorem rows451 : actualRows451=WordField.canonicalRows actualModulus 451 (.bnot 350) := by core033_kernel_decide
theorem stats451 : actualRows451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows451=6276 := by core033_kernel_decide
theorem rows452 : actualRows452=WordField.canonicalRows actualModulus 452 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats452 : actualRows452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows452=2892 := by core033_kernel_decide
theorem rows453 : actualRows453=WordField.canonicalRows actualModulus 453 (.badd 451 452) := by core033_kernel_decide
theorem stats453 : actualRows453.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows453=5388 := by core033_kernel_decide
theorem rows454 : actualRows454=WordField.canonicalRows actualModulus 454 (.band 453 31) := by core033_kernel_decide
theorem stats454 : actualRows454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows454=5124 := by core033_kernel_decide
theorem rows455 : actualRows455=WordField.canonicalRows actualModulus 455 (.bnot 350) := by core033_kernel_decide
theorem stats455 : actualRows455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows455=6276 := by core033_kernel_decide
theorem rows456 : actualRows456=WordField.canonicalRows actualModulus 456 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats456 : actualRows456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows456=2892 := by core033_kernel_decide
theorem rows457 : actualRows457=WordField.canonicalRows actualModulus 457 (.badd 455 456) := by core033_kernel_decide
theorem stats457 : actualRows457.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows457=5388 := by core033_kernel_decide
theorem rows458 : actualRows458=WordField.canonicalRows actualModulus 458 (.bnot 457) := by core033_kernel_decide
theorem stats458 : actualRows458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows458=6276 := by core033_kernel_decide
theorem rows459 : actualRows459=WordField.canonicalRows actualModulus 459 (.band 458 30) := by core033_kernel_decide
theorem stats459 : actualRows459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows459=5124 := by core033_kernel_decide
theorem rows460 : actualRows460=WordField.canonicalRows actualModulus 460 (.bxor 454 459) := by core033_kernel_decide
theorem stats460 : actualRows460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows460=7428 := by core033_kernel_decide
theorem rows461 : actualRows461=WordField.canonicalRows actualModulus 461 (.bnot 350) := by core033_kernel_decide
theorem stats461 : actualRows461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows461=6276 := by core033_kernel_decide
theorem rows462 : actualRows462=WordField.canonicalRows actualModulus 462 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats462 : actualRows462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows462=2892 := by core033_kernel_decide
theorem rows463 : actualRows463=WordField.canonicalRows actualModulus 463 (.badd 461 462) := by core033_kernel_decide
theorem stats463 : actualRows463.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows463=5388 := by core033_kernel_decide
theorem rows464 : actualRows464=WordField.canonicalRows actualModulus 464 (.band 463 33) := by core033_kernel_decide
theorem stats464 : actualRows464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows464=5124 := by core033_kernel_decide
theorem rows465 : actualRows465=WordField.canonicalRows actualModulus 465 (.bnot 350) := by core033_kernel_decide
theorem stats465 : actualRows465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows465=6276 := by core033_kernel_decide
theorem rows466 : actualRows466=WordField.canonicalRows actualModulus 466 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats466 : actualRows466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows466=2892 := by core033_kernel_decide
theorem rows467 : actualRows467=WordField.canonicalRows actualModulus 467 (.badd 465 466) := by core033_kernel_decide
theorem stats467 : actualRows467.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows467=5388 := by core033_kernel_decide
theorem rows468 : actualRows468=WordField.canonicalRows actualModulus 468 (.bnot 467) := by core033_kernel_decide
theorem stats468 : actualRows468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows468=6276 := by core033_kernel_decide
theorem rows469 : actualRows469=WordField.canonicalRows actualModulus 469 (.band 468 32) := by core033_kernel_decide
theorem stats469 : actualRows469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows469=5124 := by core033_kernel_decide
theorem rows470 : actualRows470=WordField.canonicalRows actualModulus 470 (.bxor 464 469) := by core033_kernel_decide
theorem stats470 : actualRows470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows470=7428 := by core033_kernel_decide
theorem rows471 : actualRows471=WordField.canonicalRows actualModulus 471 (.bnot 350) := by core033_kernel_decide
theorem stats471 : actualRows471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows471=6276 := by core033_kernel_decide
theorem rows472 : actualRows472=WordField.canonicalRows actualModulus 472 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats472 : actualRows472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows472=2892 := by core033_kernel_decide
theorem rows473 : actualRows473=WordField.canonicalRows actualModulus 473 (.badd 471 472) := by core033_kernel_decide
theorem stats473 : actualRows473.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows473=5388 := by core033_kernel_decide
theorem rows474 : actualRows474=WordField.canonicalRows actualModulus 474 (.band 473 10) := by core033_kernel_decide
theorem stats474 : actualRows474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows474=5124 := by core033_kernel_decide
theorem rows475 : actualRows475=WordField.canonicalRows actualModulus 475 (.bnot 350) := by core033_kernel_decide
theorem stats475 : actualRows475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows475=6276 := by core033_kernel_decide
theorem rows476 : actualRows476=WordField.canonicalRows actualModulus 476 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats476 : actualRows476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows476=2892 := by core033_kernel_decide
theorem rows477 : actualRows477=WordField.canonicalRows actualModulus 477 (.badd 475 476) := by core033_kernel_decide
theorem stats477 : actualRows477.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows477=5388 := by core033_kernel_decide
theorem rows478 : actualRows478=WordField.canonicalRows actualModulus 478 (.bnot 477) := by core033_kernel_decide
theorem stats478 : actualRows478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows478=6276 := by core033_kernel_decide
theorem rows479 : actualRows479=WordField.canonicalRows actualModulus 479 (.band 478 18) := by core033_kernel_decide
theorem stats479 : actualRows479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows479=5124 := by core033_kernel_decide
theorem rows480 : actualRows480=WordField.canonicalRows actualModulus 480 (.bxor 474 479) := by core033_kernel_decide
theorem stats480 : actualRows480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows480=7428 := by core033_kernel_decide
theorem rows481 : actualRows481=WordField.canonicalRows actualModulus 481 (.bnot 350) := by core033_kernel_decide
theorem stats481 : actualRows481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows481=6276 := by core033_kernel_decide
def partRows6 : List R1CS.Row := actualRows418++actualRows419++actualRows420++actualRows421++actualRows422++actualRows423++actualRows424++actualRows425++actualRows426++actualRows427++actualRows428++actualRows429++actualRows430++actualRows431++actualRows432++actualRows433++actualRows434++actualRows435++actualRows436++actualRows437++actualRows438++actualRows439++actualRows440++actualRows441++actualRows442++actualRows443++actualRows444++actualRows445++actualRows446++actualRows447++actualRows448++actualRows449++actualRows450++actualRows451++actualRows452++actualRows453++actualRows454++actualRows455++actualRows456++actualRows457++actualRows458++actualRows459++actualRows460++actualRows461++actualRows462++actualRows463++actualRows464++actualRows465++actualRows466++actualRows467++actualRows468++actualRows469++actualRows470++actualRows471++actualRows472++actualRows473++actualRows474++actualRows475++actualRows476++actualRows477++actualRows478++actualRows479++actualRows480++actualRows481
def partOps6 : List WordIR.Op := [.bnot 417,.band 418 16,.bxor 414 419,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 421 422,.band 423 25,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 425 426,.bnot 427,.band 428 17,.bxor 424 429,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 431 432,.band 433 28,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 435 436,.bnot 437,.band 438 26,.bxor 434 439,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 441 442,.band 443 29,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 445 446,.bnot 447,.band 448 27,.bxor 444 449,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 451 452,.band 453 31,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 455 456,.bnot 457,.band 458 30,.bxor 454 459,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 461 462,.band 463 33,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 465 466,.bnot 467,.band 468 32,.bxor 464 469,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 471 472,.band 473 10,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 475 476,.bnot 477,.band 478 18,.bxor 474 479,.bnot 350]
theorem partExact6 : partRows6=WordField.rows actualModulus 418 partOps6 := by
  simp only [partRows6,partOps6,WordField.rows,rows418,rows419,rows420,rows421,rows422,rows423,rows424,rows425,rows426,rows427,rows428,rows429,rows430,rows431,rows432,rows433,rows434,rows435,rows436,rows437,rows438,rows439,rows440,rows441,rows442,rows443,rows444,rows445,rows446,rows447,rows448,rows449,rows450,rows451,rows452,rows453,rows454,rows455,rows456,rows457,rows458,rows459,rows460,rows461,rows462,rows463,rows464,rows465,rows466,rows467,rows468,rows469,rows470,rows471,rows472,rows473,rows474,rows475,rows476,rows477,rows478,rows479,rows480,rows481,List.append_assoc,List.append_nil]
theorem partLength6 : partOps6.length=64 := by decide
theorem partStats6 : partRows6.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows6=343488 := by
  simp only [partRows6,List.length_append,MatrixRowBlocks.rows_weight_append,stats418.1,stats418.2,stats419.1,stats419.2,stats420.1,stats420.2,stats421.1,stats421.2,stats422.1,stats422.2,stats423.1,stats423.2,stats424.1,stats424.2,stats425.1,stats425.2,stats426.1,stats426.2,stats427.1,stats427.2,stats428.1,stats428.2,stats429.1,stats429.2,stats430.1,stats430.2,stats431.1,stats431.2,stats432.1,stats432.2,stats433.1,stats433.2,stats434.1,stats434.2,stats435.1,stats435.2,stats436.1,stats436.2,stats437.1,stats437.2,stats438.1,stats438.2,stats439.1,stats439.2,stats440.1,stats440.2,stats441.1,stats441.2,stats442.1,stats442.2,stats443.1,stats443.2,stats444.1,stats444.2,stats445.1,stats445.2,stats446.1,stats446.2,stats447.1,stats447.2,stats448.1,stats448.2,stats449.1,stats449.2,stats450.1,stats450.2,stats451.1,stats451.2,stats452.1,stats452.2,stats453.1,stats453.2,stats454.1,stats454.2,stats455.1,stats455.2,stats456.1,stats456.2,stats457.1,stats457.2,stats458.1,stats458.2,stats459.1,stats459.2,stats460.1,stats460.2,stats461.1,stats461.2,stats462.1,stats462.2,stats463.1,stats463.2,stats464.1,stats464.2,stats465.1,stats465.2,stats466.1,stats466.2,stats467.1,stats467.2,stats468.1,stats468.2,stats469.1,stats469.2,stats470.1,stats470.2,stats471.1,stats471.2,stats472.1,stats472.2,stats473.1,stats473.2,stats474.1,stats474.2,stats475.1,stats475.2,stats476.1,stats476.2,stats477.1,stats477.2,stats478.1,stats478.2,stats479.1,stats479.2,stats480.1,stats480.2,stats481.1,stats481.2]
  decide
end PathFrameCheckedRows
