import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData194
import PairedPathRoundInstructionMatrixData195
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12448 : actualRows12448=WordField.canonicalRows actualModulus 12448 (.bnot 12447) := by core033_kernel_decide
theorem stats12448 : actualRows12448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12448=6276 := by core033_kernel_decide
theorem rows12449 : actualRows12449=WordField.canonicalRows actualModulus 12449 (.badd 12446 12448) := by core033_kernel_decide
theorem stats12449 : actualRows12449.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12449=5388 := by core033_kernel_decide
theorem rows12450 : actualRows12450=WordField.canonicalRows actualModulus 12450 (.bnot 12449) := by core033_kernel_decide
theorem stats12450 : actualRows12450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12450=6276 := by core033_kernel_decide
theorem rows12451 : actualRows12451=WordField.canonicalRows actualModulus 12451 (.band 12444 12450) := by core033_kernel_decide
theorem stats12451 : actualRows12451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12451=5124 := by core033_kernel_decide
theorem rows12452 : actualRows12452=WordField.canonicalRows actualModulus 12452 (.bxor 12439 12451) := by core033_kernel_decide
theorem stats12452 : actualRows12452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12452=7428 := by core033_kernel_decide
theorem rows12453 : actualRows12453=WordField.canonicalRows actualModulus 12453 (.shr 12452 31) := by core033_kernel_decide
theorem stats12453 : actualRows12453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12453=2892 := by core033_kernel_decide
theorem rows12454 : actualRows12454=WordField.canonicalRows actualModulus 12454 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12454 : actualRows12454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12454=2892 := by core033_kernel_decide
theorem rows12455 : actualRows12455=WordField.canonicalRows actualModulus 12455 (.bxor 12453 12454) := by core033_kernel_decide
theorem stats12455 : actualRows12455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12455=7428 := by core033_kernel_decide
theorem rows12456 : actualRows12456=WordField.canonicalRows actualModulus 12456 (.bnot 12455) := by core033_kernel_decide
theorem stats12456 : actualRows12456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12456=6276 := by core033_kernel_decide
theorem rows12457 : actualRows12457=WordField.canonicalRows actualModulus 12457 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12457 : actualRows12457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12457=2892 := by core033_kernel_decide
theorem rows12458 : actualRows12458=WordField.canonicalRows actualModulus 12458 (.badd 12456 12457) := by core033_kernel_decide
theorem stats12458 : actualRows12458.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12458=5388 := by core033_kernel_decide
theorem rows12459 : actualRows12459=WordField.canonicalRows actualModulus 12459 (.bnot 12458) := by core033_kernel_decide
theorem stats12459 : actualRows12459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12459=6276 := by core033_kernel_decide
theorem rows12460 : actualRows12460=WordField.canonicalRows actualModulus 12460 (.band 12459 968) := by core033_kernel_decide
theorem stats12460 : actualRows12460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12460=5124 := by core033_kernel_decide
theorem rows12461 : actualRows12461=WordField.canonicalRows actualModulus 12461 (.bxor 12434 12460) := by core033_kernel_decide
theorem stats12461 : actualRows12461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12461=7428 := by core033_kernel_decide
theorem rows12462 : actualRows12462=WordField.canonicalRows actualModulus 12462 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12462 : actualRows12462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12462=2964 := by core033_kernel_decide
theorem rows12463 : actualRows12463=WordField.canonicalRows actualModulus 12463 (.bxor 442 12462) := by core033_kernel_decide
theorem stats12463 : actualRows12463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12463=7428 := by core033_kernel_decide
theorem rows12464 : actualRows12464=WordField.canonicalRows actualModulus 12464 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12464 : actualRows12464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12464=2820 := by core033_kernel_decide
theorem rows12465 : actualRows12465=WordField.canonicalRows actualModulus 12465 (.bnot 12464) := by core033_kernel_decide
theorem stats12465 : actualRows12465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12465=6276 := by core033_kernel_decide
theorem rows12466 : actualRows12466=WordField.canonicalRows actualModulus 12466 (.band 12463 12465) := by core033_kernel_decide
theorem stats12466 : actualRows12466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12466=5124 := by core033_kernel_decide
theorem rows12467 : actualRows12467=WordField.canonicalRows actualModulus 12467 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12467 : actualRows12467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12467=2964 := by core033_kernel_decide
theorem rows12468 : actualRows12468=WordField.canonicalRows actualModulus 12468 (.bxor 442 12467) := by core033_kernel_decide
theorem stats12468 : actualRows12468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12468=7428 := by core033_kernel_decide
theorem rows12469 : actualRows12469=WordField.canonicalRows actualModulus 12469 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12469 : actualRows12469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12469=2820 := by core033_kernel_decide
theorem rows12470 : actualRows12470=WordField.canonicalRows actualModulus 12470 (.bnot 12469) := by core033_kernel_decide
theorem stats12470 : actualRows12470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12470=6276 := by core033_kernel_decide
theorem rows12471 : actualRows12471=WordField.canonicalRows actualModulus 12471 (.bxor 12468 12470) := by core033_kernel_decide
theorem stats12471 : actualRows12471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12471=7428 := by core033_kernel_decide
theorem rows12472 : actualRows12472=WordField.canonicalRows actualModulus 12472 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12472 : actualRows12472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12472=2964 := by core033_kernel_decide
theorem rows12473 : actualRows12473=WordField.canonicalRows actualModulus 12473 (.bxor 442 12472) := by core033_kernel_decide
theorem stats12473 : actualRows12473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12473=7428 := by core033_kernel_decide
theorem rows12474 : actualRows12474=WordField.canonicalRows actualModulus 12474 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12474 : actualRows12474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12474=2820 := by core033_kernel_decide
theorem rows12475 : actualRows12475=WordField.canonicalRows actualModulus 12475 (.bnot 12474) := by core033_kernel_decide
theorem stats12475 : actualRows12475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12475=6276 := by core033_kernel_decide
theorem rows12476 : actualRows12476=WordField.canonicalRows actualModulus 12476 (.badd 12473 12475) := by core033_kernel_decide
theorem stats12476 : actualRows12476.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12476=5388 := by core033_kernel_decide
theorem rows12477 : actualRows12477=WordField.canonicalRows actualModulus 12477 (.bnot 12476) := by core033_kernel_decide
theorem stats12477 : actualRows12477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12477=6276 := by core033_kernel_decide
theorem rows12478 : actualRows12478=WordField.canonicalRows actualModulus 12478 (.band 12471 12477) := by core033_kernel_decide
theorem stats12478 : actualRows12478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12478=5124 := by core033_kernel_decide
theorem rows12479 : actualRows12479=WordField.canonicalRows actualModulus 12479 (.bxor 12466 12478) := by core033_kernel_decide
theorem stats12479 : actualRows12479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12479=7428 := by core033_kernel_decide
theorem rows12480 : actualRows12480=WordField.canonicalRows actualModulus 12480 (.shr 12479 31) := by core033_kernel_decide
theorem stats12480 : actualRows12480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12480=2892 := by core033_kernel_decide
theorem rows12481 : actualRows12481=WordField.canonicalRows actualModulus 12481 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12481 : actualRows12481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12481=2892 := by core033_kernel_decide
theorem rows12482 : actualRows12482=WordField.canonicalRows actualModulus 12482 (.bxor 12480 12481) := by core033_kernel_decide
theorem stats12482 : actualRows12482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12482=7428 := by core033_kernel_decide
theorem rows12483 : actualRows12483=WordField.canonicalRows actualModulus 12483 (.bnot 12482) := by core033_kernel_decide
theorem stats12483 : actualRows12483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12483=6276 := by core033_kernel_decide
theorem rows12484 : actualRows12484=WordField.canonicalRows actualModulus 12484 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12484 : actualRows12484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12484=2892 := by core033_kernel_decide
theorem rows12485 : actualRows12485=WordField.canonicalRows actualModulus 12485 (.badd 12483 12484) := by core033_kernel_decide
theorem stats12485 : actualRows12485.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12485=5388 := by core033_kernel_decide
theorem rows12486 : actualRows12486=WordField.canonicalRows actualModulus 12486 (.band 12485 10592) := by core033_kernel_decide
theorem stats12486 : actualRows12486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12486=5124 := by core033_kernel_decide
theorem rows12487 : actualRows12487=WordField.canonicalRows actualModulus 12487 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12487 : actualRows12487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12487=2964 := by core033_kernel_decide
theorem rows12488 : actualRows12488=WordField.canonicalRows actualModulus 12488 (.bxor 442 12487) := by core033_kernel_decide
theorem stats12488 : actualRows12488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12488=7428 := by core033_kernel_decide
theorem rows12489 : actualRows12489=WordField.canonicalRows actualModulus 12489 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12489 : actualRows12489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12489=2820 := by core033_kernel_decide
theorem rows12490 : actualRows12490=WordField.canonicalRows actualModulus 12490 (.bnot 12489) := by core033_kernel_decide
theorem stats12490 : actualRows12490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12490=6276 := by core033_kernel_decide
theorem rows12491 : actualRows12491=WordField.canonicalRows actualModulus 12491 (.band 12488 12490) := by core033_kernel_decide
theorem stats12491 : actualRows12491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12491=5124 := by core033_kernel_decide
theorem rows12492 : actualRows12492=WordField.canonicalRows actualModulus 12492 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12492 : actualRows12492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12492=2964 := by core033_kernel_decide
theorem rows12493 : actualRows12493=WordField.canonicalRows actualModulus 12493 (.bxor 442 12492) := by core033_kernel_decide
theorem stats12493 : actualRows12493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12493=7428 := by core033_kernel_decide
theorem rows12494 : actualRows12494=WordField.canonicalRows actualModulus 12494 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12494 : actualRows12494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12494=2820 := by core033_kernel_decide
theorem rows12495 : actualRows12495=WordField.canonicalRows actualModulus 12495 (.bnot 12494) := by core033_kernel_decide
theorem stats12495 : actualRows12495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12495=6276 := by core033_kernel_decide
theorem rows12496 : actualRows12496=WordField.canonicalRows actualModulus 12496 (.bxor 12493 12495) := by core033_kernel_decide
theorem stats12496 : actualRows12496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12496=7428 := by core033_kernel_decide
theorem rows12497 : actualRows12497=WordField.canonicalRows actualModulus 12497 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12497 : actualRows12497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12497=2964 := by core033_kernel_decide
theorem rows12498 : actualRows12498=WordField.canonicalRows actualModulus 12498 (.bxor 442 12497) := by core033_kernel_decide
theorem stats12498 : actualRows12498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12498=7428 := by core033_kernel_decide
theorem rows12499 : actualRows12499=WordField.canonicalRows actualModulus 12499 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12499 : actualRows12499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12499=2820 := by core033_kernel_decide
theorem rows12500 : actualRows12500=WordField.canonicalRows actualModulus 12500 (.bnot 12499) := by core033_kernel_decide
theorem stats12500 : actualRows12500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12500=6276 := by core033_kernel_decide
theorem rows12501 : actualRows12501=WordField.canonicalRows actualModulus 12501 (.badd 12498 12500) := by core033_kernel_decide
theorem stats12501 : actualRows12501.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12501=5388 := by core033_kernel_decide
theorem rows12502 : actualRows12502=WordField.canonicalRows actualModulus 12502 (.bnot 12501) := by core033_kernel_decide
theorem stats12502 : actualRows12502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12502=6276 := by core033_kernel_decide
theorem rows12503 : actualRows12503=WordField.canonicalRows actualModulus 12503 (.band 12496 12502) := by core033_kernel_decide
theorem stats12503 : actualRows12503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12503=5124 := by core033_kernel_decide
theorem rows12504 : actualRows12504=WordField.canonicalRows actualModulus 12504 (.bxor 12491 12503) := by core033_kernel_decide
theorem stats12504 : actualRows12504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12504=7428 := by core033_kernel_decide
theorem rows12505 : actualRows12505=WordField.canonicalRows actualModulus 12505 (.shr 12504 31) := by core033_kernel_decide
theorem stats12505 : actualRows12505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12505=2892 := by core033_kernel_decide
theorem rows12506 : actualRows12506=WordField.canonicalRows actualModulus 12506 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12506 : actualRows12506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12506=2892 := by core033_kernel_decide
theorem rows12507 : actualRows12507=WordField.canonicalRows actualModulus 12507 (.bxor 12505 12506) := by core033_kernel_decide
theorem stats12507 : actualRows12507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12507=7428 := by core033_kernel_decide
theorem rows12508 : actualRows12508=WordField.canonicalRows actualModulus 12508 (.bnot 12507) := by core033_kernel_decide
theorem stats12508 : actualRows12508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12508=6276 := by core033_kernel_decide
theorem rows12509 : actualRows12509=WordField.canonicalRows actualModulus 12509 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12509 : actualRows12509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12509=2892 := by core033_kernel_decide
theorem rows12510 : actualRows12510=WordField.canonicalRows actualModulus 12510 (.badd 12508 12509) := by core033_kernel_decide
theorem stats12510 : actualRows12510.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12510=5388 := by core033_kernel_decide
theorem rows12511 : actualRows12511=WordField.canonicalRows actualModulus 12511 (.bnot 12510) := by core033_kernel_decide
theorem stats12511 : actualRows12511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12511=6276 := by core033_kernel_decide
def partRows193 : List R1CS.Row := actualRows12448++actualRows12449++actualRows12450++actualRows12451++actualRows12452++actualRows12453++actualRows12454++actualRows12455++actualRows12456++actualRows12457++actualRows12458++actualRows12459++actualRows12460++actualRows12461++actualRows12462++actualRows12463++actualRows12464++actualRows12465++actualRows12466++actualRows12467++actualRows12468++actualRows12469++actualRows12470++actualRows12471++actualRows12472++actualRows12473++actualRows12474++actualRows12475++actualRows12476++actualRows12477++actualRows12478++actualRows12479++actualRows12480++actualRows12481++actualRows12482++actualRows12483++actualRows12484++actualRows12485++actualRows12486++actualRows12487++actualRows12488++actualRows12489++actualRows12490++actualRows12491++actualRows12492++actualRows12493++actualRows12494++actualRows12495++actualRows12496++actualRows12497++actualRows12498++actualRows12499++actualRows12500++actualRows12501++actualRows12502++actualRows12503++actualRows12504++actualRows12505++actualRows12506++actualRows12507++actualRows12508++actualRows12509++actualRows12510++actualRows12511
def partOps193 : List WordIR.Op := [.bnot 12447,.badd 12446 12448,.bnot 12449,.band 12444 12450,.bxor 12439 12451,.shr 12452 31,.literal (BitVec.ofNat 32 1),.bxor 12453 12454,.bnot 12455,.literal (BitVec.ofNat 32 1),.badd 12456 12457,.bnot 12458,.band 12459 968,.bxor 12434 12460,.literal (BitVec.ofNat 32 3),.bxor 442 12462,.literal (BitVec.ofNat 32 0),.bnot 12464,.band 12463 12465,.literal (BitVec.ofNat 32 3),.bxor 442 12467,.literal (BitVec.ofNat 32 0),.bnot 12469,.bxor 12468 12470,.literal (BitVec.ofNat 32 3),.bxor 442 12472,.literal (BitVec.ofNat 32 0),.bnot 12474,.badd 12473 12475,.bnot 12476,.band 12471 12477,.bxor 12466 12478,.shr 12479 31,.literal (BitVec.ofNat 32 1),.bxor 12480 12481,.bnot 12482,.literal (BitVec.ofNat 32 1),.badd 12483 12484,.band 12485 10592,.literal (BitVec.ofNat 32 3),.bxor 442 12487,.literal (BitVec.ofNat 32 0),.bnot 12489,.band 12488 12490,.literal (BitVec.ofNat 32 3),.bxor 442 12492,.literal (BitVec.ofNat 32 0),.bnot 12494,.bxor 12493 12495,.literal (BitVec.ofNat 32 3),.bxor 442 12497,.literal (BitVec.ofNat 32 0),.bnot 12499,.badd 12498 12500,.bnot 12501,.band 12496 12502,.bxor 12491 12503,.shr 12504 31,.literal (BitVec.ofNat 32 1),.bxor 12505 12506,.bnot 12507,.literal (BitVec.ofNat 32 1),.badd 12508 12509,.bnot 12510]
theorem partExact193 : partRows193=WordField.rows actualModulus 12448 partOps193 := by
  simp only [partRows193,partOps193,WordField.rows,rows12448,rows12449,rows12450,rows12451,rows12452,rows12453,rows12454,rows12455,rows12456,rows12457,rows12458,rows12459,rows12460,rows12461,rows12462,rows12463,rows12464,rows12465,rows12466,rows12467,rows12468,rows12469,rows12470,rows12471,rows12472,rows12473,rows12474,rows12475,rows12476,rows12477,rows12478,rows12479,rows12480,rows12481,rows12482,rows12483,rows12484,rows12485,rows12486,rows12487,rows12488,rows12489,rows12490,rows12491,rows12492,rows12493,rows12494,rows12495,rows12496,rows12497,rows12498,rows12499,rows12500,rows12501,rows12502,rows12503,rows12504,rows12505,rows12506,rows12507,rows12508,rows12509,rows12510,rows12511,List.append_assoc,List.append_nil]
theorem partLength193 : partOps193.length=64 := by decide
theorem partStats193 : partRows193.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows193=334488 := by
  simp only [partRows193,List.length_append,MatrixRowBlocks.rows_weight_append,stats12448.1,stats12448.2,stats12449.1,stats12449.2,stats12450.1,stats12450.2,stats12451.1,stats12451.2,stats12452.1,stats12452.2,stats12453.1,stats12453.2,stats12454.1,stats12454.2,stats12455.1,stats12455.2,stats12456.1,stats12456.2,stats12457.1,stats12457.2,stats12458.1,stats12458.2,stats12459.1,stats12459.2,stats12460.1,stats12460.2,stats12461.1,stats12461.2,stats12462.1,stats12462.2,stats12463.1,stats12463.2,stats12464.1,stats12464.2,stats12465.1,stats12465.2,stats12466.1,stats12466.2,stats12467.1,stats12467.2,stats12468.1,stats12468.2,stats12469.1,stats12469.2,stats12470.1,stats12470.2,stats12471.1,stats12471.2,stats12472.1,stats12472.2,stats12473.1,stats12473.2,stats12474.1,stats12474.2,stats12475.1,stats12475.2,stats12476.1,stats12476.2,stats12477.1,stats12477.2,stats12478.1,stats12478.2,stats12479.1,stats12479.2,stats12480.1,stats12480.2,stats12481.1,stats12481.2,stats12482.1,stats12482.2,stats12483.1,stats12483.2,stats12484.1,stats12484.2,stats12485.1,stats12485.2,stats12486.1,stats12486.2,stats12487.1,stats12487.2,stats12488.1,stats12488.2,stats12489.1,stats12489.2,stats12490.1,stats12490.2,stats12491.1,stats12491.2,stats12492.1,stats12492.2,stats12493.1,stats12493.2,stats12494.1,stats12494.2,stats12495.1,stats12495.2,stats12496.1,stats12496.2,stats12497.1,stats12497.2,stats12498.1,stats12498.2,stats12499.1,stats12499.2,stats12500.1,stats12500.2,stats12501.1,stats12501.2,stats12502.1,stats12502.2,stats12503.1,stats12503.2,stats12504.1,stats12504.2,stats12505.1,stats12505.2,stats12506.1,stats12506.2,stats12507.1,stats12507.2,stats12508.1,stats12508.2,stats12509.1,stats12509.2,stats12510.1,stats12510.2,stats12511.1,stats12511.2]
  decide
end QuotedPairedPathRoundCheckedRows
