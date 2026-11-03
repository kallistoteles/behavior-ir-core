import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData178
import AuthenticatedBranchRoundInstructionMatrixData179
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11446 : actualRows11446=WordField.canonicalRows actualModulus 11446 (.bxor 11433 11445) := by core033_kernel_decide
theorem stats11446 : actualRows11446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11446=7428 := by core033_kernel_decide
theorem rows11447 : actualRows11447=WordField.canonicalRows actualModulus 11447 (.shr 11446 31) := by core033_kernel_decide
theorem stats11447 : actualRows11447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11447=2892 := by core033_kernel_decide
theorem rows11448 : actualRows11448=WordField.canonicalRows actualModulus 11448 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11448 : actualRows11448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11448=2892 := by core033_kernel_decide
theorem rows11449 : actualRows11449=WordField.canonicalRows actualModulus 11449 (.bxor 11447 11448) := by core033_kernel_decide
theorem stats11449 : actualRows11449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11449=7428 := by core033_kernel_decide
theorem rows11450 : actualRows11450=WordField.canonicalRows actualModulus 11450 (.bnot 11449) := by core033_kernel_decide
theorem stats11450 : actualRows11450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11450=6276 := by core033_kernel_decide
theorem rows11451 : actualRows11451=WordField.canonicalRows actualModulus 11451 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11451 : actualRows11451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11451=2892 := by core033_kernel_decide
theorem rows11452 : actualRows11452=WordField.canonicalRows actualModulus 11452 (.badd 11450 11451) := by core033_kernel_decide
theorem stats11452 : actualRows11452.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11452=5388 := by core033_kernel_decide
theorem rows11453 : actualRows11453=WordField.canonicalRows actualModulus 11453 (.band 11452 11407) := by core033_kernel_decide
theorem stats11453 : actualRows11453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11453=5124 := by core033_kernel_decide
theorem rows11454 : actualRows11454=WordField.canonicalRows actualModulus 11454 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11454 : actualRows11454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11454=2964 := by core033_kernel_decide
theorem rows11455 : actualRows11455=WordField.canonicalRows actualModulus 11455 (.bxor 693 11454) := by core033_kernel_decide
theorem stats11455 : actualRows11455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11455=7428 := by core033_kernel_decide
theorem rows11456 : actualRows11456=WordField.canonicalRows actualModulus 11456 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11456 : actualRows11456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11456=2820 := by core033_kernel_decide
theorem rows11457 : actualRows11457=WordField.canonicalRows actualModulus 11457 (.bnot 11456) := by core033_kernel_decide
theorem stats11457 : actualRows11457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11457=6276 := by core033_kernel_decide
theorem rows11458 : actualRows11458=WordField.canonicalRows actualModulus 11458 (.band 11455 11457) := by core033_kernel_decide
theorem stats11458 : actualRows11458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11458=5124 := by core033_kernel_decide
theorem rows11459 : actualRows11459=WordField.canonicalRows actualModulus 11459 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11459 : actualRows11459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11459=2964 := by core033_kernel_decide
theorem rows11460 : actualRows11460=WordField.canonicalRows actualModulus 11460 (.bxor 693 11459) := by core033_kernel_decide
theorem stats11460 : actualRows11460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11460=7428 := by core033_kernel_decide
theorem rows11461 : actualRows11461=WordField.canonicalRows actualModulus 11461 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11461 : actualRows11461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11461=2820 := by core033_kernel_decide
theorem rows11462 : actualRows11462=WordField.canonicalRows actualModulus 11462 (.bnot 11461) := by core033_kernel_decide
theorem stats11462 : actualRows11462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11462=6276 := by core033_kernel_decide
theorem rows11463 : actualRows11463=WordField.canonicalRows actualModulus 11463 (.bxor 11460 11462) := by core033_kernel_decide
theorem stats11463 : actualRows11463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11463=7428 := by core033_kernel_decide
theorem rows11464 : actualRows11464=WordField.canonicalRows actualModulus 11464 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11464 : actualRows11464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11464=2964 := by core033_kernel_decide
theorem rows11465 : actualRows11465=WordField.canonicalRows actualModulus 11465 (.bxor 693 11464) := by core033_kernel_decide
theorem stats11465 : actualRows11465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11465=7428 := by core033_kernel_decide
theorem rows11466 : actualRows11466=WordField.canonicalRows actualModulus 11466 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11466 : actualRows11466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11466=2820 := by core033_kernel_decide
theorem rows11467 : actualRows11467=WordField.canonicalRows actualModulus 11467 (.bnot 11466) := by core033_kernel_decide
theorem stats11467 : actualRows11467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11467=6276 := by core033_kernel_decide
theorem rows11468 : actualRows11468=WordField.canonicalRows actualModulus 11468 (.badd 11465 11467) := by core033_kernel_decide
theorem stats11468 : actualRows11468.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11468=5388 := by core033_kernel_decide
theorem rows11469 : actualRows11469=WordField.canonicalRows actualModulus 11469 (.bnot 11468) := by core033_kernel_decide
theorem stats11469 : actualRows11469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11469=6276 := by core033_kernel_decide
theorem rows11470 : actualRows11470=WordField.canonicalRows actualModulus 11470 (.band 11463 11469) := by core033_kernel_decide
theorem stats11470 : actualRows11470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11470=5124 := by core033_kernel_decide
theorem rows11471 : actualRows11471=WordField.canonicalRows actualModulus 11471 (.bxor 11458 11470) := by core033_kernel_decide
theorem stats11471 : actualRows11471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11471=7428 := by core033_kernel_decide
theorem rows11472 : actualRows11472=WordField.canonicalRows actualModulus 11472 (.shr 11471 31) := by core033_kernel_decide
theorem stats11472 : actualRows11472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11472=2892 := by core033_kernel_decide
theorem rows11473 : actualRows11473=WordField.canonicalRows actualModulus 11473 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11473 : actualRows11473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11473=2892 := by core033_kernel_decide
theorem rows11474 : actualRows11474=WordField.canonicalRows actualModulus 11474 (.bxor 11472 11473) := by core033_kernel_decide
theorem stats11474 : actualRows11474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11474=7428 := by core033_kernel_decide
theorem rows11475 : actualRows11475=WordField.canonicalRows actualModulus 11475 (.bnot 11474) := by core033_kernel_decide
theorem stats11475 : actualRows11475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11475=6276 := by core033_kernel_decide
theorem rows11476 : actualRows11476=WordField.canonicalRows actualModulus 11476 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11476 : actualRows11476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11476=2892 := by core033_kernel_decide
theorem rows11477 : actualRows11477=WordField.canonicalRows actualModulus 11477 (.badd 11475 11476) := by core033_kernel_decide
theorem stats11477 : actualRows11477.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11477=5388 := by core033_kernel_decide
theorem rows11478 : actualRows11478=WordField.canonicalRows actualModulus 11478 (.bnot 11477) := by core033_kernel_decide
theorem stats11478 : actualRows11478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11478=6276 := by core033_kernel_decide
theorem rows11479 : actualRows11479=WordField.canonicalRows actualModulus 11479 (.band 11478 10545) := by core033_kernel_decide
theorem stats11479 : actualRows11479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11479=5124 := by core033_kernel_decide
theorem rows11480 : actualRows11480=WordField.canonicalRows actualModulus 11480 (.bxor 11453 11479) := by core033_kernel_decide
theorem stats11480 : actualRows11480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11480=7428 := by core033_kernel_decide
theorem rows11481 : actualRows11481=WordField.canonicalRows actualModulus 11481 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11481 : actualRows11481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11481=2964 := by core033_kernel_decide
theorem rows11482 : actualRows11482=WordField.canonicalRows actualModulus 11482 (.bxor 693 11481) := by core033_kernel_decide
theorem stats11482 : actualRows11482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11482=7428 := by core033_kernel_decide
theorem rows11483 : actualRows11483=WordField.canonicalRows actualModulus 11483 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11483 : actualRows11483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11483=2820 := by core033_kernel_decide
theorem rows11484 : actualRows11484=WordField.canonicalRows actualModulus 11484 (.bnot 11483) := by core033_kernel_decide
theorem stats11484 : actualRows11484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11484=6276 := by core033_kernel_decide
theorem rows11485 : actualRows11485=WordField.canonicalRows actualModulus 11485 (.band 11482 11484) := by core033_kernel_decide
theorem stats11485 : actualRows11485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11485=5124 := by core033_kernel_decide
theorem rows11486 : actualRows11486=WordField.canonicalRows actualModulus 11486 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11486 : actualRows11486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11486=2964 := by core033_kernel_decide
theorem rows11487 : actualRows11487=WordField.canonicalRows actualModulus 11487 (.bxor 693 11486) := by core033_kernel_decide
theorem stats11487 : actualRows11487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11487=7428 := by core033_kernel_decide
theorem rows11488 : actualRows11488=WordField.canonicalRows actualModulus 11488 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11488 : actualRows11488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11488=2820 := by core033_kernel_decide
theorem rows11489 : actualRows11489=WordField.canonicalRows actualModulus 11489 (.bnot 11488) := by core033_kernel_decide
theorem stats11489 : actualRows11489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11489=6276 := by core033_kernel_decide
theorem rows11490 : actualRows11490=WordField.canonicalRows actualModulus 11490 (.bxor 11487 11489) := by core033_kernel_decide
theorem stats11490 : actualRows11490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11490=7428 := by core033_kernel_decide
theorem rows11491 : actualRows11491=WordField.canonicalRows actualModulus 11491 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11491 : actualRows11491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11491=2964 := by core033_kernel_decide
theorem rows11492 : actualRows11492=WordField.canonicalRows actualModulus 11492 (.bxor 693 11491) := by core033_kernel_decide
theorem stats11492 : actualRows11492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11492=7428 := by core033_kernel_decide
theorem rows11493 : actualRows11493=WordField.canonicalRows actualModulus 11493 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11493 : actualRows11493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11493=2820 := by core033_kernel_decide
theorem rows11494 : actualRows11494=WordField.canonicalRows actualModulus 11494 (.bnot 11493) := by core033_kernel_decide
theorem stats11494 : actualRows11494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11494=6276 := by core033_kernel_decide
theorem rows11495 : actualRows11495=WordField.canonicalRows actualModulus 11495 (.badd 11492 11494) := by core033_kernel_decide
theorem stats11495 : actualRows11495.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11495=5388 := by core033_kernel_decide
theorem rows11496 : actualRows11496=WordField.canonicalRows actualModulus 11496 (.bnot 11495) := by core033_kernel_decide
theorem stats11496 : actualRows11496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11496=6276 := by core033_kernel_decide
theorem rows11497 : actualRows11497=WordField.canonicalRows actualModulus 11497 (.band 11490 11496) := by core033_kernel_decide
theorem stats11497 : actualRows11497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11497=5124 := by core033_kernel_decide
theorem rows11498 : actualRows11498=WordField.canonicalRows actualModulus 11498 (.bxor 11485 11497) := by core033_kernel_decide
theorem stats11498 : actualRows11498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11498=7428 := by core033_kernel_decide
theorem rows11499 : actualRows11499=WordField.canonicalRows actualModulus 11499 (.shr 11498 31) := by core033_kernel_decide
theorem stats11499 : actualRows11499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11499=2892 := by core033_kernel_decide
theorem rows11500 : actualRows11500=WordField.canonicalRows actualModulus 11500 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11500 : actualRows11500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11500=2892 := by core033_kernel_decide
theorem rows11501 : actualRows11501=WordField.canonicalRows actualModulus 11501 (.bxor 11499 11500) := by core033_kernel_decide
theorem stats11501 : actualRows11501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11501=7428 := by core033_kernel_decide
theorem rows11502 : actualRows11502=WordField.canonicalRows actualModulus 11502 (.bnot 11501) := by core033_kernel_decide
theorem stats11502 : actualRows11502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11502=6276 := by core033_kernel_decide
theorem rows11503 : actualRows11503=WordField.canonicalRows actualModulus 11503 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11503 : actualRows11503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11503=2892 := by core033_kernel_decide
theorem rows11504 : actualRows11504=WordField.canonicalRows actualModulus 11504 (.badd 11502 11503) := by core033_kernel_decide
theorem stats11504 : actualRows11504.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11504=5388 := by core033_kernel_decide
theorem rows11505 : actualRows11505=WordField.canonicalRows actualModulus 11505 (.band 11504 10631) := by core033_kernel_decide
theorem stats11505 : actualRows11505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11505=5124 := by core033_kernel_decide
theorem rows11506 : actualRows11506=WordField.canonicalRows actualModulus 11506 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11506 : actualRows11506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11506=2964 := by core033_kernel_decide
theorem rows11507 : actualRows11507=WordField.canonicalRows actualModulus 11507 (.bxor 693 11506) := by core033_kernel_decide
theorem stats11507 : actualRows11507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11507=7428 := by core033_kernel_decide
theorem rows11508 : actualRows11508=WordField.canonicalRows actualModulus 11508 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11508 : actualRows11508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11508=2820 := by core033_kernel_decide
theorem rows11509 : actualRows11509=WordField.canonicalRows actualModulus 11509 (.bnot 11508) := by core033_kernel_decide
theorem stats11509 : actualRows11509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11509=6276 := by core033_kernel_decide
def partRows177 : List R1CS.Row := actualRows11446++actualRows11447++actualRows11448++actualRows11449++actualRows11450++actualRows11451++actualRows11452++actualRows11453++actualRows11454++actualRows11455++actualRows11456++actualRows11457++actualRows11458++actualRows11459++actualRows11460++actualRows11461++actualRows11462++actualRows11463++actualRows11464++actualRows11465++actualRows11466++actualRows11467++actualRows11468++actualRows11469++actualRows11470++actualRows11471++actualRows11472++actualRows11473++actualRows11474++actualRows11475++actualRows11476++actualRows11477++actualRows11478++actualRows11479++actualRows11480++actualRows11481++actualRows11482++actualRows11483++actualRows11484++actualRows11485++actualRows11486++actualRows11487++actualRows11488++actualRows11489++actualRows11490++actualRows11491++actualRows11492++actualRows11493++actualRows11494++actualRows11495++actualRows11496++actualRows11497++actualRows11498++actualRows11499++actualRows11500++actualRows11501++actualRows11502++actualRows11503++actualRows11504++actualRows11505++actualRows11506++actualRows11507++actualRows11508++actualRows11509
def partOps177 : List WordIR.Op := [.bxor 11433 11445,.shr 11446 31,.literal (BitVec.ofNat 32 1),.bxor 11447 11448,.bnot 11449,.literal (BitVec.ofNat 32 1),.badd 11450 11451,.band 11452 11407,.literal (BitVec.ofNat 32 3),.bxor 693 11454,.literal (BitVec.ofNat 32 0),.bnot 11456,.band 11455 11457,.literal (BitVec.ofNat 32 3),.bxor 693 11459,.literal (BitVec.ofNat 32 0),.bnot 11461,.bxor 11460 11462,.literal (BitVec.ofNat 32 3),.bxor 693 11464,.literal (BitVec.ofNat 32 0),.bnot 11466,.badd 11465 11467,.bnot 11468,.band 11463 11469,.bxor 11458 11470,.shr 11471 31,.literal (BitVec.ofNat 32 1),.bxor 11472 11473,.bnot 11474,.literal (BitVec.ofNat 32 1),.badd 11475 11476,.bnot 11477,.band 11478 10545,.bxor 11453 11479,.literal (BitVec.ofNat 32 3),.bxor 693 11481,.literal (BitVec.ofNat 32 0),.bnot 11483,.band 11482 11484,.literal (BitVec.ofNat 32 3),.bxor 693 11486,.literal (BitVec.ofNat 32 0),.bnot 11488,.bxor 11487 11489,.literal (BitVec.ofNat 32 3),.bxor 693 11491,.literal (BitVec.ofNat 32 0),.bnot 11493,.badd 11492 11494,.bnot 11495,.band 11490 11496,.bxor 11485 11497,.shr 11498 31,.literal (BitVec.ofNat 32 1),.bxor 11499 11500,.bnot 11501,.literal (BitVec.ofNat 32 1),.badd 11502 11503,.band 11504 10631,.literal (BitVec.ofNat 32 3),.bxor 693 11506,.literal (BitVec.ofNat 32 0),.bnot 11508]
theorem partExact177 : partRows177=WordField.rows actualModulus 11446 partOps177 := by
  simp only [partRows177,partOps177,WordField.rows,rows11446,rows11447,rows11448,rows11449,rows11450,rows11451,rows11452,rows11453,rows11454,rows11455,rows11456,rows11457,rows11458,rows11459,rows11460,rows11461,rows11462,rows11463,rows11464,rows11465,rows11466,rows11467,rows11468,rows11469,rows11470,rows11471,rows11472,rows11473,rows11474,rows11475,rows11476,rows11477,rows11478,rows11479,rows11480,rows11481,rows11482,rows11483,rows11484,rows11485,rows11486,rows11487,rows11488,rows11489,rows11490,rows11491,rows11492,rows11493,rows11494,rows11495,rows11496,rows11497,rows11498,rows11499,rows11500,rows11501,rows11502,rows11503,rows11504,rows11505,rows11506,rows11507,rows11508,rows11509,List.append_assoc,List.append_nil]
theorem partLength177 : partOps177.length=64 := by decide
theorem partStats177 : partRows177.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows177=329760 := by
  simp only [partRows177,List.length_append,MatrixRowBlocks.rows_weight_append,stats11446.1,stats11446.2,stats11447.1,stats11447.2,stats11448.1,stats11448.2,stats11449.1,stats11449.2,stats11450.1,stats11450.2,stats11451.1,stats11451.2,stats11452.1,stats11452.2,stats11453.1,stats11453.2,stats11454.1,stats11454.2,stats11455.1,stats11455.2,stats11456.1,stats11456.2,stats11457.1,stats11457.2,stats11458.1,stats11458.2,stats11459.1,stats11459.2,stats11460.1,stats11460.2,stats11461.1,stats11461.2,stats11462.1,stats11462.2,stats11463.1,stats11463.2,stats11464.1,stats11464.2,stats11465.1,stats11465.2,stats11466.1,stats11466.2,stats11467.1,stats11467.2,stats11468.1,stats11468.2,stats11469.1,stats11469.2,stats11470.1,stats11470.2,stats11471.1,stats11471.2,stats11472.1,stats11472.2,stats11473.1,stats11473.2,stats11474.1,stats11474.2,stats11475.1,stats11475.2,stats11476.1,stats11476.2,stats11477.1,stats11477.2,stats11478.1,stats11478.2,stats11479.1,stats11479.2,stats11480.1,stats11480.2,stats11481.1,stats11481.2,stats11482.1,stats11482.2,stats11483.1,stats11483.2,stats11484.1,stats11484.2,stats11485.1,stats11485.2,stats11486.1,stats11486.2,stats11487.1,stats11487.2,stats11488.1,stats11488.2,stats11489.1,stats11489.2,stats11490.1,stats11490.2,stats11491.1,stats11491.2,stats11492.1,stats11492.2,stats11493.1,stats11493.2,stats11494.1,stats11494.2,stats11495.1,stats11495.2,stats11496.1,stats11496.2,stats11497.1,stats11497.2,stats11498.1,stats11498.2,stats11499.1,stats11499.2,stats11500.1,stats11500.2,stats11501.1,stats11501.2,stats11502.1,stats11502.2,stats11503.1,stats11503.2,stats11504.1,stats11504.2,stats11505.1,stats11505.2,stats11506.1,stats11506.2,stats11507.1,stats11507.2,stats11508.1,stats11508.2,stats11509.1,stats11509.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
