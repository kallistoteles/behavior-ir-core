import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData6
import ParentBranchInstructionMatrixData7
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows410 : actualRows410=WordField.canonicalRows actualModulus 410 (.shr 14 0) := by core033_kernel_decide
theorem stats410 : actualRows410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows410=5124 := by core033_kernel_decide
theorem rows411 : actualRows411=WordField.canonicalRows actualModulus 411 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats411 : actualRows411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows411=3396 := by core033_kernel_decide
theorem rows412 : actualRows412=WordField.canonicalRows actualModulus 412 (.band 410 411) := by core033_kernel_decide
theorem stats412 : actualRows412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows412=5124 := by core033_kernel_decide
theorem rows413 : actualRows413=WordField.canonicalRows actualModulus 413 (.shr 14 8) := by core033_kernel_decide
theorem stats413 : actualRows413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows413=4548 := by core033_kernel_decide
theorem rows414 : actualRows414=WordField.canonicalRows actualModulus 414 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats414 : actualRows414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows414=3396 := by core033_kernel_decide
theorem rows415 : actualRows415=WordField.canonicalRows actualModulus 415 (.band 413 414) := by core033_kernel_decide
theorem stats415 : actualRows415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows415=5124 := by core033_kernel_decide
theorem rows416 : actualRows416=WordField.canonicalRows actualModulus 416 (.shr 14 16) := by core033_kernel_decide
theorem stats416 : actualRows416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows416=3972 := by core033_kernel_decide
theorem rows417 : actualRows417=WordField.canonicalRows actualModulus 417 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats417 : actualRows417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows417=3396 := by core033_kernel_decide
theorem rows418 : actualRows418=WordField.canonicalRows actualModulus 418 (.band 416 417) := by core033_kernel_decide
theorem stats418 : actualRows418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows418=5124 := by core033_kernel_decide
theorem rows419 : actualRows419=WordField.canonicalRows actualModulus 419 (.shr 14 24) := by core033_kernel_decide
theorem stats419 : actualRows419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows419=3396 := by core033_kernel_decide
theorem rows420 : actualRows420=WordField.canonicalRows actualModulus 420 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats420 : actualRows420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows420=3396 := by core033_kernel_decide
theorem rows421 : actualRows421=WordField.canonicalRows actualModulus 421 (.band 419 420) := by core033_kernel_decide
theorem stats421 : actualRows421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows421=5124 := by core033_kernel_decide
theorem rows422 : actualRows422=WordField.canonicalRows actualModulus 422 (.shr 15 0) := by core033_kernel_decide
theorem stats422 : actualRows422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows422=5124 := by core033_kernel_decide
theorem rows423 : actualRows423=WordField.canonicalRows actualModulus 423 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats423 : actualRows423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows423=3396 := by core033_kernel_decide
theorem rows424 : actualRows424=WordField.canonicalRows actualModulus 424 (.band 422 423) := by core033_kernel_decide
theorem stats424 : actualRows424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows424=5124 := by core033_kernel_decide
theorem rows425 : actualRows425=WordField.canonicalRows actualModulus 425 (.shr 15 8) := by core033_kernel_decide
theorem stats425 : actualRows425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows425=4548 := by core033_kernel_decide
theorem rows426 : actualRows426=WordField.canonicalRows actualModulus 426 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats426 : actualRows426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows426=3396 := by core033_kernel_decide
theorem rows427 : actualRows427=WordField.canonicalRows actualModulus 427 (.band 425 426) := by core033_kernel_decide
theorem stats427 : actualRows427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows427=5124 := by core033_kernel_decide
theorem rows428 : actualRows428=WordField.canonicalRows actualModulus 428 (.shr 15 16) := by core033_kernel_decide
theorem stats428 : actualRows428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows428=3972 := by core033_kernel_decide
theorem rows429 : actualRows429=WordField.canonicalRows actualModulus 429 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats429 : actualRows429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows429=3396 := by core033_kernel_decide
theorem rows430 : actualRows430=WordField.canonicalRows actualModulus 430 (.band 428 429) := by core033_kernel_decide
theorem stats430 : actualRows430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows430=5124 := by core033_kernel_decide
theorem rows431 : actualRows431=WordField.canonicalRows actualModulus 431 (.shr 15 24) := by core033_kernel_decide
theorem stats431 : actualRows431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows431=3396 := by core033_kernel_decide
theorem rows432 : actualRows432=WordField.canonicalRows actualModulus 432 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats432 : actualRows432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows432=3396 := by core033_kernel_decide
theorem rows433 : actualRows433=WordField.canonicalRows actualModulus 433 (.band 431 432) := by core033_kernel_decide
theorem stats433 : actualRows433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows433=5124 := by core033_kernel_decide
theorem rows434 : actualRows434=WordField.canonicalRows actualModulus 434 (.shr 16 0) := by core033_kernel_decide
theorem stats434 : actualRows434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows434=5124 := by core033_kernel_decide
theorem rows435 : actualRows435=WordField.canonicalRows actualModulus 435 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats435 : actualRows435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows435=3396 := by core033_kernel_decide
theorem rows436 : actualRows436=WordField.canonicalRows actualModulus 436 (.band 434 435) := by core033_kernel_decide
theorem stats436 : actualRows436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows436=5124 := by core033_kernel_decide
theorem rows437 : actualRows437=WordField.canonicalRows actualModulus 437 (.shr 16 8) := by core033_kernel_decide
theorem stats437 : actualRows437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows437=4548 := by core033_kernel_decide
theorem rows438 : actualRows438=WordField.canonicalRows actualModulus 438 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats438 : actualRows438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows438=3396 := by core033_kernel_decide
theorem rows439 : actualRows439=WordField.canonicalRows actualModulus 439 (.band 437 438) := by core033_kernel_decide
theorem stats439 : actualRows439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows439=5124 := by core033_kernel_decide
theorem rows440 : actualRows440=WordField.canonicalRows actualModulus 440 (.shr 16 16) := by core033_kernel_decide
theorem stats440 : actualRows440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows440=3972 := by core033_kernel_decide
theorem rows441 : actualRows441=WordField.canonicalRows actualModulus 441 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats441 : actualRows441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows441=3396 := by core033_kernel_decide
theorem rows442 : actualRows442=WordField.canonicalRows actualModulus 442 (.band 440 441) := by core033_kernel_decide
theorem stats442 : actualRows442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows442=5124 := by core033_kernel_decide
theorem rows443 : actualRows443=WordField.canonicalRows actualModulus 443 (.shr 16 24) := by core033_kernel_decide
theorem stats443 : actualRows443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows443=3396 := by core033_kernel_decide
theorem rows444 : actualRows444=WordField.canonicalRows actualModulus 444 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats444 : actualRows444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows444=3396 := by core033_kernel_decide
theorem rows445 : actualRows445=WordField.canonicalRows actualModulus 445 (.band 443 444) := by core033_kernel_decide
theorem stats445 : actualRows445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows445=5124 := by core033_kernel_decide
theorem rows446 : actualRows446=WordField.canonicalRows actualModulus 446 (.shr 17 0) := by core033_kernel_decide
theorem stats446 : actualRows446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows446=5124 := by core033_kernel_decide
theorem rows447 : actualRows447=WordField.canonicalRows actualModulus 447 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats447 : actualRows447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows447=3396 := by core033_kernel_decide
theorem rows448 : actualRows448=WordField.canonicalRows actualModulus 448 (.band 446 447) := by core033_kernel_decide
theorem stats448 : actualRows448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows448=5124 := by core033_kernel_decide
theorem rows449 : actualRows449=WordField.canonicalRows actualModulus 449 (.shr 17 8) := by core033_kernel_decide
theorem stats449 : actualRows449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows449=4548 := by core033_kernel_decide
theorem rows450 : actualRows450=WordField.canonicalRows actualModulus 450 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats450 : actualRows450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows450=3396 := by core033_kernel_decide
theorem rows451 : actualRows451=WordField.canonicalRows actualModulus 451 (.band 449 450) := by core033_kernel_decide
theorem stats451 : actualRows451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows451=5124 := by core033_kernel_decide
theorem rows452 : actualRows452=WordField.canonicalRows actualModulus 452 (.shr 17 16) := by core033_kernel_decide
theorem stats452 : actualRows452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows452=3972 := by core033_kernel_decide
theorem rows453 : actualRows453=WordField.canonicalRows actualModulus 453 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats453 : actualRows453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows453=3396 := by core033_kernel_decide
theorem rows454 : actualRows454=WordField.canonicalRows actualModulus 454 (.band 452 453) := by core033_kernel_decide
theorem stats454 : actualRows454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows454=5124 := by core033_kernel_decide
theorem rows455 : actualRows455=WordField.canonicalRows actualModulus 455 (.shr 17 24) := by core033_kernel_decide
theorem stats455 : actualRows455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows455=3396 := by core033_kernel_decide
theorem rows456 : actualRows456=WordField.canonicalRows actualModulus 456 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats456 : actualRows456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows456=3396 := by core033_kernel_decide
theorem rows457 : actualRows457=WordField.canonicalRows actualModulus 457 (.band 455 456) := by core033_kernel_decide
theorem stats457 : actualRows457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows457=5124 := by core033_kernel_decide
theorem rows458 : actualRows458=WordField.canonicalRows actualModulus 458 (.shr 18 0) := by core033_kernel_decide
theorem stats458 : actualRows458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows458=5124 := by core033_kernel_decide
theorem rows459 : actualRows459=WordField.canonicalRows actualModulus 459 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats459 : actualRows459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows459=3396 := by core033_kernel_decide
theorem rows460 : actualRows460=WordField.canonicalRows actualModulus 460 (.band 458 459) := by core033_kernel_decide
theorem stats460 : actualRows460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows460=5124 := by core033_kernel_decide
theorem rows461 : actualRows461=WordField.canonicalRows actualModulus 461 (.shr 18 8) := by core033_kernel_decide
theorem stats461 : actualRows461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows461=4548 := by core033_kernel_decide
theorem rows462 : actualRows462=WordField.canonicalRows actualModulus 462 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats462 : actualRows462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows462=3396 := by core033_kernel_decide
theorem rows463 : actualRows463=WordField.canonicalRows actualModulus 463 (.band 461 462) := by core033_kernel_decide
theorem stats463 : actualRows463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows463=5124 := by core033_kernel_decide
theorem rows464 : actualRows464=WordField.canonicalRows actualModulus 464 (.shr 18 16) := by core033_kernel_decide
theorem stats464 : actualRows464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows464=3972 := by core033_kernel_decide
theorem rows465 : actualRows465=WordField.canonicalRows actualModulus 465 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats465 : actualRows465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows465=3396 := by core033_kernel_decide
theorem rows466 : actualRows466=WordField.canonicalRows actualModulus 466 (.band 464 465) := by core033_kernel_decide
theorem stats466 : actualRows466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows466=5124 := by core033_kernel_decide
theorem rows467 : actualRows467=WordField.canonicalRows actualModulus 467 (.shr 18 24) := by core033_kernel_decide
theorem stats467 : actualRows467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows467=3396 := by core033_kernel_decide
theorem rows468 : actualRows468=WordField.canonicalRows actualModulus 468 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats468 : actualRows468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows468=3396 := by core033_kernel_decide
theorem rows469 : actualRows469=WordField.canonicalRows actualModulus 469 (.band 467 468) := by core033_kernel_decide
theorem stats469 : actualRows469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows469=5124 := by core033_kernel_decide
theorem rows470 : actualRows470=WordField.canonicalRows actualModulus 470 (.shr 19 0) := by core033_kernel_decide
theorem stats470 : actualRows470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows470=5124 := by core033_kernel_decide
theorem rows471 : actualRows471=WordField.canonicalRows actualModulus 471 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats471 : actualRows471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows471=3396 := by core033_kernel_decide
theorem rows472 : actualRows472=WordField.canonicalRows actualModulus 472 (.band 470 471) := by core033_kernel_decide
theorem stats472 : actualRows472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows472=5124 := by core033_kernel_decide
theorem rows473 : actualRows473=WordField.canonicalRows actualModulus 473 (.shr 19 8) := by core033_kernel_decide
theorem stats473 : actualRows473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows473=4548 := by core033_kernel_decide
def partRows6 : List R1CS.Row := actualRows410++actualRows411++actualRows412++actualRows413++actualRows414++actualRows415++actualRows416++actualRows417++actualRows418++actualRows419++actualRows420++actualRows421++actualRows422++actualRows423++actualRows424++actualRows425++actualRows426++actualRows427++actualRows428++actualRows429++actualRows430++actualRows431++actualRows432++actualRows433++actualRows434++actualRows435++actualRows436++actualRows437++actualRows438++actualRows439++actualRows440++actualRows441++actualRows442++actualRows443++actualRows444++actualRows445++actualRows446++actualRows447++actualRows448++actualRows449++actualRows450++actualRows451++actualRows452++actualRows453++actualRows454++actualRows455++actualRows456++actualRows457++actualRows458++actualRows459++actualRows460++actualRows461++actualRows462++actualRows463++actualRows464++actualRows465++actualRows466++actualRows467++actualRows468++actualRows469++actualRows470++actualRows471++actualRows472++actualRows473
def partOps6 : List WordIR.Op := [.shr 14 0,.literal (BitVec.ofNat 32 255),.band 410 411,.shr 14 8,.literal (BitVec.ofNat 32 255),.band 413 414,.shr 14 16,.literal (BitVec.ofNat 32 255),.band 416 417,.shr 14 24,.literal (BitVec.ofNat 32 255),.band 419 420,.shr 15 0,.literal (BitVec.ofNat 32 255),.band 422 423,.shr 15 8,.literal (BitVec.ofNat 32 255),.band 425 426,.shr 15 16,.literal (BitVec.ofNat 32 255),.band 428 429,.shr 15 24,.literal (BitVec.ofNat 32 255),.band 431 432,.shr 16 0,.literal (BitVec.ofNat 32 255),.band 434 435,.shr 16 8,.literal (BitVec.ofNat 32 255),.band 437 438,.shr 16 16,.literal (BitVec.ofNat 32 255),.band 440 441,.shr 16 24,.literal (BitVec.ofNat 32 255),.band 443 444,.shr 17 0,.literal (BitVec.ofNat 32 255),.band 446 447,.shr 17 8,.literal (BitVec.ofNat 32 255),.band 449 450,.shr 17 16,.literal (BitVec.ofNat 32 255),.band 452 453,.shr 17 24,.literal (BitVec.ofNat 32 255),.band 455 456,.shr 18 0,.literal (BitVec.ofNat 32 255),.band 458 459,.shr 18 8,.literal (BitVec.ofNat 32 255),.band 461 462,.shr 18 16,.literal (BitVec.ofNat 32 255),.band 464 465,.shr 18 24,.literal (BitVec.ofNat 32 255),.band 467 468,.shr 19 0,.literal (BitVec.ofNat 32 255),.band 470 471,.shr 19 8]
theorem partExact6 : partRows6=WordField.rows actualModulus 410 partOps6 := by
  simp only [partRows6,partOps6,WordField.rows,rows410,rows411,rows412,rows413,rows414,rows415,rows416,rows417,rows418,rows419,rows420,rows421,rows422,rows423,rows424,rows425,rows426,rows427,rows428,rows429,rows430,rows431,rows432,rows433,rows434,rows435,rows436,rows437,rows438,rows439,rows440,rows441,rows442,rows443,rows444,rows445,rows446,rows447,rows448,rows449,rows450,rows451,rows452,rows453,rows454,rows455,rows456,rows457,rows458,rows459,rows460,rows461,rows462,rows463,rows464,rows465,rows466,rows467,rows468,rows469,rows470,rows471,rows472,rows473,List.append_assoc,List.append_nil]
theorem partLength6 : partOps6.length=64 := by decide
theorem partStats6 : partRows6.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows6=273792 := by
  simp only [partRows6,List.length_append,MatrixRowBlocks.rows_weight_append,stats410.1,stats410.2,stats411.1,stats411.2,stats412.1,stats412.2,stats413.1,stats413.2,stats414.1,stats414.2,stats415.1,stats415.2,stats416.1,stats416.2,stats417.1,stats417.2,stats418.1,stats418.2,stats419.1,stats419.2,stats420.1,stats420.2,stats421.1,stats421.2,stats422.1,stats422.2,stats423.1,stats423.2,stats424.1,stats424.2,stats425.1,stats425.2,stats426.1,stats426.2,stats427.1,stats427.2,stats428.1,stats428.2,stats429.1,stats429.2,stats430.1,stats430.2,stats431.1,stats431.2,stats432.1,stats432.2,stats433.1,stats433.2,stats434.1,stats434.2,stats435.1,stats435.2,stats436.1,stats436.2,stats437.1,stats437.2,stats438.1,stats438.2,stats439.1,stats439.2,stats440.1,stats440.2,stats441.1,stats441.2,stats442.1,stats442.2,stats443.1,stats443.2,stats444.1,stats444.2,stats445.1,stats445.2,stats446.1,stats446.2,stats447.1,stats447.2,stats448.1,stats448.2,stats449.1,stats449.2,stats450.1,stats450.2,stats451.1,stats451.2,stats452.1,stats452.2,stats453.1,stats453.2,stats454.1,stats454.2,stats455.1,stats455.2,stats456.1,stats456.2,stats457.1,stats457.2,stats458.1,stats458.2,stats459.1,stats459.2,stats460.1,stats460.2,stats461.1,stats461.2,stats462.1,stats462.2,stats463.1,stats463.2,stats464.1,stats464.2,stats465.1,stats465.2,stats466.1,stats466.2,stats467.1,stats467.2,stats468.1,stats468.2,stats469.1,stats469.2,stats470.1,stats470.2,stats471.1,stats471.2,stats472.1,stats472.2,stats473.1,stats473.2]
  decide
end ParentBranchCheckedRows
