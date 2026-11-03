import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData178
import PairedPathRoundInstructionMatrixData179
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11424 : actualRows11424=WordField.canonicalRows actualModulus 11424 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11424 : actualRows11424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11424=2820 := by core033_kernel_decide
theorem rows11425 : actualRows11425=WordField.canonicalRows actualModulus 11425 (.bnot 11424) := by core033_kernel_decide
theorem stats11425 : actualRows11425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11425=6276 := by core033_kernel_decide
theorem rows11426 : actualRows11426=WordField.canonicalRows actualModulus 11426 (.band 11423 11425) := by core033_kernel_decide
theorem stats11426 : actualRows11426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11426=5124 := by core033_kernel_decide
theorem rows11427 : actualRows11427=WordField.canonicalRows actualModulus 11427 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11427 : actualRows11427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11427=2964 := by core033_kernel_decide
theorem rows11428 : actualRows11428=WordField.canonicalRows actualModulus 11428 (.bxor 442 11427) := by core033_kernel_decide
theorem stats11428 : actualRows11428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11428=7428 := by core033_kernel_decide
theorem rows11429 : actualRows11429=WordField.canonicalRows actualModulus 11429 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11429 : actualRows11429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11429=2820 := by core033_kernel_decide
theorem rows11430 : actualRows11430=WordField.canonicalRows actualModulus 11430 (.bnot 11429) := by core033_kernel_decide
theorem stats11430 : actualRows11430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11430=6276 := by core033_kernel_decide
theorem rows11431 : actualRows11431=WordField.canonicalRows actualModulus 11431 (.bxor 11428 11430) := by core033_kernel_decide
theorem stats11431 : actualRows11431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11431=7428 := by core033_kernel_decide
theorem rows11432 : actualRows11432=WordField.canonicalRows actualModulus 11432 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11432 : actualRows11432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11432=2964 := by core033_kernel_decide
theorem rows11433 : actualRows11433=WordField.canonicalRows actualModulus 11433 (.bxor 442 11432) := by core033_kernel_decide
theorem stats11433 : actualRows11433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11433=7428 := by core033_kernel_decide
theorem rows11434 : actualRows11434=WordField.canonicalRows actualModulus 11434 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11434 : actualRows11434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11434=2820 := by core033_kernel_decide
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
theorem rows11446 : actualRows11446=WordField.canonicalRows actualModulus 11446 (.band 11445 10420) := by core033_kernel_decide
theorem stats11446 : actualRows11446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11446=5124 := by core033_kernel_decide
theorem rows11447 : actualRows11447=WordField.canonicalRows actualModulus 11447 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11447 : actualRows11447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11447=2964 := by core033_kernel_decide
theorem rows11448 : actualRows11448=WordField.canonicalRows actualModulus 11448 (.bxor 442 11447) := by core033_kernel_decide
theorem stats11448 : actualRows11448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11448=7428 := by core033_kernel_decide
theorem rows11449 : actualRows11449=WordField.canonicalRows actualModulus 11449 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11449 : actualRows11449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11449=2820 := by core033_kernel_decide
theorem rows11450 : actualRows11450=WordField.canonicalRows actualModulus 11450 (.bnot 11449) := by core033_kernel_decide
theorem stats11450 : actualRows11450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11450=6276 := by core033_kernel_decide
theorem rows11451 : actualRows11451=WordField.canonicalRows actualModulus 11451 (.band 11448 11450) := by core033_kernel_decide
theorem stats11451 : actualRows11451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11451=5124 := by core033_kernel_decide
theorem rows11452 : actualRows11452=WordField.canonicalRows actualModulus 11452 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11452 : actualRows11452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11452=2964 := by core033_kernel_decide
theorem rows11453 : actualRows11453=WordField.canonicalRows actualModulus 11453 (.bxor 442 11452) := by core033_kernel_decide
theorem stats11453 : actualRows11453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11453=7428 := by core033_kernel_decide
theorem rows11454 : actualRows11454=WordField.canonicalRows actualModulus 11454 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11454 : actualRows11454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11454=2820 := by core033_kernel_decide
theorem rows11455 : actualRows11455=WordField.canonicalRows actualModulus 11455 (.bnot 11454) := by core033_kernel_decide
theorem stats11455 : actualRows11455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11455=6276 := by core033_kernel_decide
theorem rows11456 : actualRows11456=WordField.canonicalRows actualModulus 11456 (.bxor 11453 11455) := by core033_kernel_decide
theorem stats11456 : actualRows11456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11456=7428 := by core033_kernel_decide
theorem rows11457 : actualRows11457=WordField.canonicalRows actualModulus 11457 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11457 : actualRows11457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11457=2964 := by core033_kernel_decide
theorem rows11458 : actualRows11458=WordField.canonicalRows actualModulus 11458 (.bxor 442 11457) := by core033_kernel_decide
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
theorem rows11472 : actualRows11472=WordField.canonicalRows actualModulus 11472 (.band 11471 759) := by core033_kernel_decide
theorem stats11472 : actualRows11472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11472=5124 := by core033_kernel_decide
theorem rows11473 : actualRows11473=WordField.canonicalRows actualModulus 11473 (.bxor 11446 11472) := by core033_kernel_decide
theorem stats11473 : actualRows11473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11473=7428 := by core033_kernel_decide
theorem rows11474 : actualRows11474=WordField.canonicalRows actualModulus 11474 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11474 : actualRows11474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11474=2964 := by core033_kernel_decide
theorem rows11475 : actualRows11475=WordField.canonicalRows actualModulus 11475 (.bxor 442 11474) := by core033_kernel_decide
theorem stats11475 : actualRows11475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11475=7428 := by core033_kernel_decide
theorem rows11476 : actualRows11476=WordField.canonicalRows actualModulus 11476 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11476 : actualRows11476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11476=2820 := by core033_kernel_decide
theorem rows11477 : actualRows11477=WordField.canonicalRows actualModulus 11477 (.bnot 11476) := by core033_kernel_decide
theorem stats11477 : actualRows11477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11477=6276 := by core033_kernel_decide
theorem rows11478 : actualRows11478=WordField.canonicalRows actualModulus 11478 (.band 11475 11477) := by core033_kernel_decide
theorem stats11478 : actualRows11478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11478=5124 := by core033_kernel_decide
theorem rows11479 : actualRows11479=WordField.canonicalRows actualModulus 11479 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11479 : actualRows11479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11479=2964 := by core033_kernel_decide
theorem rows11480 : actualRows11480=WordField.canonicalRows actualModulus 11480 (.bxor 442 11479) := by core033_kernel_decide
theorem stats11480 : actualRows11480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11480=7428 := by core033_kernel_decide
theorem rows11481 : actualRows11481=WordField.canonicalRows actualModulus 11481 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11481 : actualRows11481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11481=2820 := by core033_kernel_decide
theorem rows11482 : actualRows11482=WordField.canonicalRows actualModulus 11482 (.bnot 11481) := by core033_kernel_decide
theorem stats11482 : actualRows11482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11482=6276 := by core033_kernel_decide
theorem rows11483 : actualRows11483=WordField.canonicalRows actualModulus 11483 (.bxor 11480 11482) := by core033_kernel_decide
theorem stats11483 : actualRows11483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11483=7428 := by core033_kernel_decide
theorem rows11484 : actualRows11484=WordField.canonicalRows actualModulus 11484 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11484 : actualRows11484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11484=2964 := by core033_kernel_decide
theorem rows11485 : actualRows11485=WordField.canonicalRows actualModulus 11485 (.bxor 442 11484) := by core033_kernel_decide
theorem stats11485 : actualRows11485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11485=7428 := by core033_kernel_decide
theorem rows11486 : actualRows11486=WordField.canonicalRows actualModulus 11486 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11486 : actualRows11486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11486=2820 := by core033_kernel_decide
theorem rows11487 : actualRows11487=WordField.canonicalRows actualModulus 11487 (.bnot 11486) := by core033_kernel_decide
theorem stats11487 : actualRows11487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11487=6276 := by core033_kernel_decide
def partRows177 : List R1CS.Row := actualRows11424++actualRows11425++actualRows11426++actualRows11427++actualRows11428++actualRows11429++actualRows11430++actualRows11431++actualRows11432++actualRows11433++actualRows11434++actualRows11435++actualRows11436++actualRows11437++actualRows11438++actualRows11439++actualRows11440++actualRows11441++actualRows11442++actualRows11443++actualRows11444++actualRows11445++actualRows11446++actualRows11447++actualRows11448++actualRows11449++actualRows11450++actualRows11451++actualRows11452++actualRows11453++actualRows11454++actualRows11455++actualRows11456++actualRows11457++actualRows11458++actualRows11459++actualRows11460++actualRows11461++actualRows11462++actualRows11463++actualRows11464++actualRows11465++actualRows11466++actualRows11467++actualRows11468++actualRows11469++actualRows11470++actualRows11471++actualRows11472++actualRows11473++actualRows11474++actualRows11475++actualRows11476++actualRows11477++actualRows11478++actualRows11479++actualRows11480++actualRows11481++actualRows11482++actualRows11483++actualRows11484++actualRows11485++actualRows11486++actualRows11487
def partOps177 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 11424,.band 11423 11425,.literal (BitVec.ofNat 32 3),.bxor 442 11427,.literal (BitVec.ofNat 32 0),.bnot 11429,.bxor 11428 11430,.literal (BitVec.ofNat 32 3),.bxor 442 11432,.literal (BitVec.ofNat 32 0),.bnot 11434,.badd 11433 11435,.bnot 11436,.band 11431 11437,.bxor 11426 11438,.shr 11439 31,.literal (BitVec.ofNat 32 1),.bxor 11440 11441,.bnot 11442,.literal (BitVec.ofNat 32 1),.badd 11443 11444,.band 11445 10420,.literal (BitVec.ofNat 32 3),.bxor 442 11447,.literal (BitVec.ofNat 32 0),.bnot 11449,.band 11448 11450,.literal (BitVec.ofNat 32 3),.bxor 442 11452,.literal (BitVec.ofNat 32 0),.bnot 11454,.bxor 11453 11455,.literal (BitVec.ofNat 32 3),.bxor 442 11457,.literal (BitVec.ofNat 32 0),.bnot 11459,.badd 11458 11460,.bnot 11461,.band 11456 11462,.bxor 11451 11463,.shr 11464 31,.literal (BitVec.ofNat 32 1),.bxor 11465 11466,.bnot 11467,.literal (BitVec.ofNat 32 1),.badd 11468 11469,.bnot 11470,.band 11471 759,.bxor 11446 11472,.literal (BitVec.ofNat 32 3),.bxor 442 11474,.literal (BitVec.ofNat 32 0),.bnot 11476,.band 11475 11477,.literal (BitVec.ofNat 32 3),.bxor 442 11479,.literal (BitVec.ofNat 32 0),.bnot 11481,.bxor 11480 11482,.literal (BitVec.ofNat 32 3),.bxor 442 11484,.literal (BitVec.ofNat 32 0),.bnot 11486]
theorem partExact177 : partRows177=WordField.rows actualModulus 11424 partOps177 := by
  simp only [partRows177,partOps177,WordField.rows,rows11424,rows11425,rows11426,rows11427,rows11428,rows11429,rows11430,rows11431,rows11432,rows11433,rows11434,rows11435,rows11436,rows11437,rows11438,rows11439,rows11440,rows11441,rows11442,rows11443,rows11444,rows11445,rows11446,rows11447,rows11448,rows11449,rows11450,rows11451,rows11452,rows11453,rows11454,rows11455,rows11456,rows11457,rows11458,rows11459,rows11460,rows11461,rows11462,rows11463,rows11464,rows11465,rows11466,rows11467,rows11468,rows11469,rows11470,rows11471,rows11472,rows11473,rows11474,rows11475,rows11476,rows11477,rows11478,rows11479,rows11480,rows11481,rows11482,rows11483,rows11484,rows11485,rows11486,rows11487,List.append_assoc,List.append_nil]
theorem partLength177 : partOps177.length=64 := by decide
theorem partStats177 : partRows177.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows177=330576 := by
  simp only [partRows177,List.length_append,MatrixRowBlocks.rows_weight_append,stats11424.1,stats11424.2,stats11425.1,stats11425.2,stats11426.1,stats11426.2,stats11427.1,stats11427.2,stats11428.1,stats11428.2,stats11429.1,stats11429.2,stats11430.1,stats11430.2,stats11431.1,stats11431.2,stats11432.1,stats11432.2,stats11433.1,stats11433.2,stats11434.1,stats11434.2,stats11435.1,stats11435.2,stats11436.1,stats11436.2,stats11437.1,stats11437.2,stats11438.1,stats11438.2,stats11439.1,stats11439.2,stats11440.1,stats11440.2,stats11441.1,stats11441.2,stats11442.1,stats11442.2,stats11443.1,stats11443.2,stats11444.1,stats11444.2,stats11445.1,stats11445.2,stats11446.1,stats11446.2,stats11447.1,stats11447.2,stats11448.1,stats11448.2,stats11449.1,stats11449.2,stats11450.1,stats11450.2,stats11451.1,stats11451.2,stats11452.1,stats11452.2,stats11453.1,stats11453.2,stats11454.1,stats11454.2,stats11455.1,stats11455.2,stats11456.1,stats11456.2,stats11457.1,stats11457.2,stats11458.1,stats11458.2,stats11459.1,stats11459.2,stats11460.1,stats11460.2,stats11461.1,stats11461.2,stats11462.1,stats11462.2,stats11463.1,stats11463.2,stats11464.1,stats11464.2,stats11465.1,stats11465.2,stats11466.1,stats11466.2,stats11467.1,stats11467.2,stats11468.1,stats11468.2,stats11469.1,stats11469.2,stats11470.1,stats11470.2,stats11471.1,stats11471.2,stats11472.1,stats11472.2,stats11473.1,stats11473.2,stats11474.1,stats11474.2,stats11475.1,stats11475.2,stats11476.1,stats11476.2,stats11477.1,stats11477.2,stats11478.1,stats11478.2,stats11479.1,stats11479.2,stats11480.1,stats11480.2,stats11481.1,stats11481.2,stats11482.1,stats11482.2,stats11483.1,stats11483.2,stats11484.1,stats11484.2,stats11485.1,stats11485.2,stats11486.1,stats11486.2,stats11487.1,stats11487.2]
  decide
end QuotedPairedPathRoundCheckedRows
