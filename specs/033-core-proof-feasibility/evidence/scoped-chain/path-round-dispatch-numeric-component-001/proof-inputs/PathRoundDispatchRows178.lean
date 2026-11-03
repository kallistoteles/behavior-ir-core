import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData178
import PathRoundDispatchInstructionMatrixData179
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11435 : actualRows11435=WordField.canonicalRows actualModulus 11435 (.bnot 11434) := by core033_kernel_decide
theorem stats11435 : actualRows11435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11435=6276 := by core033_kernel_decide
theorem rows11436 : actualRows11436=WordField.canonicalRows actualModulus 11436 (.badd 11433 11435) := by core033_kernel_decide
theorem stats11436 : actualRows11436.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11436=5388 := by core033_kernel_decide
theorem rows11437 : actualRows11437=WordField.canonicalRows actualModulus 11437 (.bnot 11436) := by core033_kernel_decide
theorem stats11437 : actualRows11437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11437=6276 := by core033_kernel_decide
theorem rows11438 : actualRows11438=WordField.canonicalRows actualModulus 11438 (.band 11431 11437) := by core033_kernel_decide
theorem stats11438 : actualRows11438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11438=5124 := by core033_kernel_decide
theorem rows11439 : actualRows11439=WordField.canonicalRows actualModulus 11439 (.bxor 11426 11438) := by core033_kernel_decide
theorem stats11439 : actualRows11439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11439=7428 := by core033_kernel_decide
theorem rows11440 : actualRows11440=WordField.canonicalRows actualModulus 11440 (.shr 11439 31) := by core033_kernel_decide
theorem stats11440 : actualRows11440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11440=2892 := by core033_kernel_decide
theorem rows11441 : actualRows11441=WordField.canonicalRows actualModulus 11441 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11441 : actualRows11441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11441=2892 := by core033_kernel_decide
theorem rows11442 : actualRows11442=WordField.canonicalRows actualModulus 11442 (.bxor 11440 11441) := by core033_kernel_decide
theorem stats11442 : actualRows11442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11442=7428 := by core033_kernel_decide
theorem rows11443 : actualRows11443=WordField.canonicalRows actualModulus 11443 (.bnot 11442) := by core033_kernel_decide
theorem stats11443 : actualRows11443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11443=6276 := by core033_kernel_decide
theorem rows11444 : actualRows11444=WordField.canonicalRows actualModulus 11444 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11444 : actualRows11444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11444=2892 := by core033_kernel_decide
theorem rows11445 : actualRows11445=WordField.canonicalRows actualModulus 11445 (.badd 11443 11444) := by core033_kernel_decide
theorem stats11445 : actualRows11445.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11445=5388 := by core033_kernel_decide
theorem rows11446 : actualRows11446=WordField.canonicalRows actualModulus 11446 (.band 11445 9670) := by core033_kernel_decide
theorem stats11446 : actualRows11446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11446=5124 := by core033_kernel_decide
theorem rows11447 : actualRows11447=WordField.canonicalRows actualModulus 11447 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11447 : actualRows11447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11447=2964 := by core033_kernel_decide
theorem rows11448 : actualRows11448=WordField.canonicalRows actualModulus 11448 (.bxor 0 11447) := by core033_kernel_decide
theorem stats11448 : actualRows11448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11448=7428 := by core033_kernel_decide
theorem rows11449 : actualRows11449=WordField.canonicalRows actualModulus 11449 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11449 : actualRows11449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11449=2820 := by core033_kernel_decide
theorem rows11450 : actualRows11450=WordField.canonicalRows actualModulus 11450 (.bnot 11449) := by core033_kernel_decide
theorem stats11450 : actualRows11450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11450=6276 := by core033_kernel_decide
theorem rows11451 : actualRows11451=WordField.canonicalRows actualModulus 11451 (.band 11448 11450) := by core033_kernel_decide
theorem stats11451 : actualRows11451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11451=5124 := by core033_kernel_decide
theorem rows11452 : actualRows11452=WordField.canonicalRows actualModulus 11452 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11452 : actualRows11452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11452=2964 := by core033_kernel_decide
theorem rows11453 : actualRows11453=WordField.canonicalRows actualModulus 11453 (.bxor 0 11452) := by core033_kernel_decide
theorem stats11453 : actualRows11453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11453=7428 := by core033_kernel_decide
theorem rows11454 : actualRows11454=WordField.canonicalRows actualModulus 11454 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11454 : actualRows11454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11454=2820 := by core033_kernel_decide
theorem rows11455 : actualRows11455=WordField.canonicalRows actualModulus 11455 (.bnot 11454) := by core033_kernel_decide
theorem stats11455 : actualRows11455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11455=6276 := by core033_kernel_decide
theorem rows11456 : actualRows11456=WordField.canonicalRows actualModulus 11456 (.bxor 11453 11455) := by core033_kernel_decide
theorem stats11456 : actualRows11456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11456=7428 := by core033_kernel_decide
theorem rows11457 : actualRows11457=WordField.canonicalRows actualModulus 11457 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11457 : actualRows11457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11457=2964 := by core033_kernel_decide
theorem rows11458 : actualRows11458=WordField.canonicalRows actualModulus 11458 (.bxor 0 11457) := by core033_kernel_decide
theorem stats11458 : actualRows11458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11458=7428 := by core033_kernel_decide
theorem rows11459 : actualRows11459=WordField.canonicalRows actualModulus 11459 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11459 : actualRows11459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11459=2820 := by core033_kernel_decide
theorem rows11460 : actualRows11460=WordField.canonicalRows actualModulus 11460 (.bnot 11459) := by core033_kernel_decide
theorem stats11460 : actualRows11460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11460=6276 := by core033_kernel_decide
theorem rows11461 : actualRows11461=WordField.canonicalRows actualModulus 11461 (.badd 11458 11460) := by core033_kernel_decide
theorem stats11461 : actualRows11461.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11461=5388 := by core033_kernel_decide
theorem rows11462 : actualRows11462=WordField.canonicalRows actualModulus 11462 (.bnot 11461) := by core033_kernel_decide
theorem stats11462 : actualRows11462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11462=6276 := by core033_kernel_decide
theorem rows11463 : actualRows11463=WordField.canonicalRows actualModulus 11463 (.band 11456 11462) := by core033_kernel_decide
theorem stats11463 : actualRows11463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11463=5124 := by core033_kernel_decide
theorem rows11464 : actualRows11464=WordField.canonicalRows actualModulus 11464 (.bxor 11451 11463) := by core033_kernel_decide
theorem stats11464 : actualRows11464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11464=7428 := by core033_kernel_decide
theorem rows11465 : actualRows11465=WordField.canonicalRows actualModulus 11465 (.shr 11464 31) := by core033_kernel_decide
theorem stats11465 : actualRows11465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11465=2892 := by core033_kernel_decide
theorem rows11466 : actualRows11466=WordField.canonicalRows actualModulus 11466 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11466 : actualRows11466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11466=2892 := by core033_kernel_decide
theorem rows11467 : actualRows11467=WordField.canonicalRows actualModulus 11467 (.bxor 11465 11466) := by core033_kernel_decide
theorem stats11467 : actualRows11467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11467=7428 := by core033_kernel_decide
theorem rows11468 : actualRows11468=WordField.canonicalRows actualModulus 11468 (.bnot 11467) := by core033_kernel_decide
theorem stats11468 : actualRows11468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11468=6276 := by core033_kernel_decide
theorem rows11469 : actualRows11469=WordField.canonicalRows actualModulus 11469 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11469 : actualRows11469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11469=2892 := by core033_kernel_decide
theorem rows11470 : actualRows11470=WordField.canonicalRows actualModulus 11470 (.badd 11468 11469) := by core033_kernel_decide
theorem stats11470 : actualRows11470.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11470=5388 := by core033_kernel_decide
theorem rows11471 : actualRows11471=WordField.canonicalRows actualModulus 11471 (.bnot 11470) := by core033_kernel_decide
theorem stats11471 : actualRows11471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11471=6276 := by core033_kernel_decide
theorem rows11472 : actualRows11472=WordField.canonicalRows actualModulus 11472 (.band 11471 349) := by core033_kernel_decide
theorem stats11472 : actualRows11472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11472=5124 := by core033_kernel_decide
theorem rows11473 : actualRows11473=WordField.canonicalRows actualModulus 11473 (.bxor 11446 11472) := by core033_kernel_decide
theorem stats11473 : actualRows11473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11473=7428 := by core033_kernel_decide
theorem rows11474 : actualRows11474=WordField.canonicalRows actualModulus 11474 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11474 : actualRows11474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11474=2964 := by core033_kernel_decide
theorem rows11475 : actualRows11475=WordField.canonicalRows actualModulus 11475 (.bxor 0 11474) := by core033_kernel_decide
theorem stats11475 : actualRows11475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11475=7428 := by core033_kernel_decide
theorem rows11476 : actualRows11476=WordField.canonicalRows actualModulus 11476 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11476 : actualRows11476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11476=2820 := by core033_kernel_decide
theorem rows11477 : actualRows11477=WordField.canonicalRows actualModulus 11477 (.bnot 11476) := by core033_kernel_decide
theorem stats11477 : actualRows11477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11477=6276 := by core033_kernel_decide
theorem rows11478 : actualRows11478=WordField.canonicalRows actualModulus 11478 (.band 11475 11477) := by core033_kernel_decide
theorem stats11478 : actualRows11478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11478=5124 := by core033_kernel_decide
theorem rows11479 : actualRows11479=WordField.canonicalRows actualModulus 11479 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11479 : actualRows11479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11479=2964 := by core033_kernel_decide
theorem rows11480 : actualRows11480=WordField.canonicalRows actualModulus 11480 (.bxor 0 11479) := by core033_kernel_decide
theorem stats11480 : actualRows11480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11480=7428 := by core033_kernel_decide
theorem rows11481 : actualRows11481=WordField.canonicalRows actualModulus 11481 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11481 : actualRows11481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11481=2820 := by core033_kernel_decide
theorem rows11482 : actualRows11482=WordField.canonicalRows actualModulus 11482 (.bnot 11481) := by core033_kernel_decide
theorem stats11482 : actualRows11482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11482=6276 := by core033_kernel_decide
theorem rows11483 : actualRows11483=WordField.canonicalRows actualModulus 11483 (.bxor 11480 11482) := by core033_kernel_decide
theorem stats11483 : actualRows11483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11483=7428 := by core033_kernel_decide
theorem rows11484 : actualRows11484=WordField.canonicalRows actualModulus 11484 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11484 : actualRows11484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11484=2964 := by core033_kernel_decide
theorem rows11485 : actualRows11485=WordField.canonicalRows actualModulus 11485 (.bxor 0 11484) := by core033_kernel_decide
theorem stats11485 : actualRows11485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11485=7428 := by core033_kernel_decide
theorem rows11486 : actualRows11486=WordField.canonicalRows actualModulus 11486 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11486 : actualRows11486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11486=2820 := by core033_kernel_decide
theorem rows11487 : actualRows11487=WordField.canonicalRows actualModulus 11487 (.bnot 11486) := by core033_kernel_decide
theorem stats11487 : actualRows11487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11487=6276 := by core033_kernel_decide
theorem rows11488 : actualRows11488=WordField.canonicalRows actualModulus 11488 (.badd 11485 11487) := by core033_kernel_decide
theorem stats11488 : actualRows11488.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11488=5388 := by core033_kernel_decide
theorem rows11489 : actualRows11489=WordField.canonicalRows actualModulus 11489 (.bnot 11488) := by core033_kernel_decide
theorem stats11489 : actualRows11489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11489=6276 := by core033_kernel_decide
theorem rows11490 : actualRows11490=WordField.canonicalRows actualModulus 11490 (.band 11483 11489) := by core033_kernel_decide
theorem stats11490 : actualRows11490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11490=5124 := by core033_kernel_decide
theorem rows11491 : actualRows11491=WordField.canonicalRows actualModulus 11491 (.bxor 11478 11490) := by core033_kernel_decide
theorem stats11491 : actualRows11491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11491=7428 := by core033_kernel_decide
theorem rows11492 : actualRows11492=WordField.canonicalRows actualModulus 11492 (.shr 11491 31) := by core033_kernel_decide
theorem stats11492 : actualRows11492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11492=2892 := by core033_kernel_decide
theorem rows11493 : actualRows11493=WordField.canonicalRows actualModulus 11493 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11493 : actualRows11493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11493=2892 := by core033_kernel_decide
theorem rows11494 : actualRows11494=WordField.canonicalRows actualModulus 11494 (.bxor 11492 11493) := by core033_kernel_decide
theorem stats11494 : actualRows11494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11494=7428 := by core033_kernel_decide
theorem rows11495 : actualRows11495=WordField.canonicalRows actualModulus 11495 (.bnot 11494) := by core033_kernel_decide
theorem stats11495 : actualRows11495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11495=6276 := by core033_kernel_decide
theorem rows11496 : actualRows11496=WordField.canonicalRows actualModulus 11496 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11496 : actualRows11496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11496=2892 := by core033_kernel_decide
theorem rows11497 : actualRows11497=WordField.canonicalRows actualModulus 11497 (.badd 11495 11496) := by core033_kernel_decide
theorem stats11497 : actualRows11497.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11497=5388 := by core033_kernel_decide
theorem rows11498 : actualRows11498=WordField.canonicalRows actualModulus 11498 (.band 11497 9681) := by core033_kernel_decide
theorem stats11498 : actualRows11498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11498=5124 := by core033_kernel_decide
def partRows178 : List R1CS.Row := actualRows11435++actualRows11436++actualRows11437++actualRows11438++actualRows11439++actualRows11440++actualRows11441++actualRows11442++actualRows11443++actualRows11444++actualRows11445++actualRows11446++actualRows11447++actualRows11448++actualRows11449++actualRows11450++actualRows11451++actualRows11452++actualRows11453++actualRows11454++actualRows11455++actualRows11456++actualRows11457++actualRows11458++actualRows11459++actualRows11460++actualRows11461++actualRows11462++actualRows11463++actualRows11464++actualRows11465++actualRows11466++actualRows11467++actualRows11468++actualRows11469++actualRows11470++actualRows11471++actualRows11472++actualRows11473++actualRows11474++actualRows11475++actualRows11476++actualRows11477++actualRows11478++actualRows11479++actualRows11480++actualRows11481++actualRows11482++actualRows11483++actualRows11484++actualRows11485++actualRows11486++actualRows11487++actualRows11488++actualRows11489++actualRows11490++actualRows11491++actualRows11492++actualRows11493++actualRows11494++actualRows11495++actualRows11496++actualRows11497++actualRows11498
def partOps178 : List WordIR.Op := [.bnot 11434,.badd 11433 11435,.bnot 11436,.band 11431 11437,.bxor 11426 11438,.shr 11439 31,.literal (BitVec.ofNat 32 1),.bxor 11440 11441,.bnot 11442,.literal (BitVec.ofNat 32 1),.badd 11443 11444,.band 11445 9670,.literal (BitVec.ofNat 32 3),.bxor 0 11447,.literal (BitVec.ofNat 32 0),.bnot 11449,.band 11448 11450,.literal (BitVec.ofNat 32 3),.bxor 0 11452,.literal (BitVec.ofNat 32 0),.bnot 11454,.bxor 11453 11455,.literal (BitVec.ofNat 32 3),.bxor 0 11457,.literal (BitVec.ofNat 32 0),.bnot 11459,.badd 11458 11460,.bnot 11461,.band 11456 11462,.bxor 11451 11463,.shr 11464 31,.literal (BitVec.ofNat 32 1),.bxor 11465 11466,.bnot 11467,.literal (BitVec.ofNat 32 1),.badd 11468 11469,.bnot 11470,.band 11471 349,.bxor 11446 11472,.literal (BitVec.ofNat 32 3),.bxor 0 11474,.literal (BitVec.ofNat 32 0),.bnot 11476,.band 11475 11477,.literal (BitVec.ofNat 32 3),.bxor 0 11479,.literal (BitVec.ofNat 32 0),.bnot 11481,.bxor 11480 11482,.literal (BitVec.ofNat 32 3),.bxor 0 11484,.literal (BitVec.ofNat 32 0),.bnot 11486,.badd 11485 11487,.bnot 11488,.band 11483 11489,.bxor 11478 11490,.shr 11491 31,.literal (BitVec.ofNat 32 1),.bxor 11492 11493,.bnot 11494,.literal (BitVec.ofNat 32 1),.badd 11495 11496,.band 11497 9681]
theorem partExact178 : partRows178=WordField.rows actualModulus 11435 partOps178 := by
  simp only [partRows178,partOps178,WordField.rows,rows11435,rows11436,rows11437,rows11438,rows11439,rows11440,rows11441,rows11442,rows11443,rows11444,rows11445,rows11446,rows11447,rows11448,rows11449,rows11450,rows11451,rows11452,rows11453,rows11454,rows11455,rows11456,rows11457,rows11458,rows11459,rows11460,rows11461,rows11462,rows11463,rows11464,rows11465,rows11466,rows11467,rows11468,rows11469,rows11470,rows11471,rows11472,rows11473,rows11474,rows11475,rows11476,rows11477,rows11478,rows11479,rows11480,rows11481,rows11482,rows11483,rows11484,rows11485,rows11486,rows11487,rows11488,rows11489,rows11490,rows11491,rows11492,rows11493,rows11494,rows11495,rows11496,rows11497,rows11498,List.append_assoc,List.append_nil]
theorem partLength178 : partOps178.length=64 := by decide
theorem partStats178 : partRows178.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows178=333336 := by
  simp only [partRows178,List.length_append,MatrixRowBlocks.rows_weight_append,stats11435.1,stats11435.2,stats11436.1,stats11436.2,stats11437.1,stats11437.2,stats11438.1,stats11438.2,stats11439.1,stats11439.2,stats11440.1,stats11440.2,stats11441.1,stats11441.2,stats11442.1,stats11442.2,stats11443.1,stats11443.2,stats11444.1,stats11444.2,stats11445.1,stats11445.2,stats11446.1,stats11446.2,stats11447.1,stats11447.2,stats11448.1,stats11448.2,stats11449.1,stats11449.2,stats11450.1,stats11450.2,stats11451.1,stats11451.2,stats11452.1,stats11452.2,stats11453.1,stats11453.2,stats11454.1,stats11454.2,stats11455.1,stats11455.2,stats11456.1,stats11456.2,stats11457.1,stats11457.2,stats11458.1,stats11458.2,stats11459.1,stats11459.2,stats11460.1,stats11460.2,stats11461.1,stats11461.2,stats11462.1,stats11462.2,stats11463.1,stats11463.2,stats11464.1,stats11464.2,stats11465.1,stats11465.2,stats11466.1,stats11466.2,stats11467.1,stats11467.2,stats11468.1,stats11468.2,stats11469.1,stats11469.2,stats11470.1,stats11470.2,stats11471.1,stats11471.2,stats11472.1,stats11472.2,stats11473.1,stats11473.2,stats11474.1,stats11474.2,stats11475.1,stats11475.2,stats11476.1,stats11476.2,stats11477.1,stats11477.2,stats11478.1,stats11478.2,stats11479.1,stats11479.2,stats11480.1,stats11480.2,stats11481.1,stats11481.2,stats11482.1,stats11482.2,stats11483.1,stats11483.2,stats11484.1,stats11484.2,stats11485.1,stats11485.2,stats11486.1,stats11486.2,stats11487.1,stats11487.2,stats11488.1,stats11488.2,stats11489.1,stats11489.2,stats11490.1,stats11490.2,stats11491.1,stats11491.2,stats11492.1,stats11492.2,stats11493.1,stats11493.2,stats11494.1,stats11494.2,stats11495.1,stats11495.2,stats11496.1,stats11496.2,stats11497.1,stats11497.2,stats11498.1,stats11498.2]
  decide
end PathRoundDispatchCheckedRows
