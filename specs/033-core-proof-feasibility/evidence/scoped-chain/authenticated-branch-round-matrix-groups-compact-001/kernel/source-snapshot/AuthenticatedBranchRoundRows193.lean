import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData194
import AuthenticatedBranchRoundInstructionMatrixData195
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12470 : actualRows12470=WordField.canonicalRows actualModulus 12470 (.bxor 693 12469) := by core033_kernel_decide
theorem stats12470 : actualRows12470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12470=7428 := by core033_kernel_decide
theorem rows12471 : actualRows12471=WordField.canonicalRows actualModulus 12471 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12471 : actualRows12471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12471=2820 := by core033_kernel_decide
theorem rows12472 : actualRows12472=WordField.canonicalRows actualModulus 12472 (.bnot 12471) := by core033_kernel_decide
theorem stats12472 : actualRows12472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12472=6276 := by core033_kernel_decide
theorem rows12473 : actualRows12473=WordField.canonicalRows actualModulus 12473 (.band 12470 12472) := by core033_kernel_decide
theorem stats12473 : actualRows12473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12473=5124 := by core033_kernel_decide
theorem rows12474 : actualRows12474=WordField.canonicalRows actualModulus 12474 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12474 : actualRows12474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12474=2964 := by core033_kernel_decide
theorem rows12475 : actualRows12475=WordField.canonicalRows actualModulus 12475 (.bxor 693 12474) := by core033_kernel_decide
theorem stats12475 : actualRows12475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12475=7428 := by core033_kernel_decide
theorem rows12476 : actualRows12476=WordField.canonicalRows actualModulus 12476 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12476 : actualRows12476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12476=2820 := by core033_kernel_decide
theorem rows12477 : actualRows12477=WordField.canonicalRows actualModulus 12477 (.bnot 12476) := by core033_kernel_decide
theorem stats12477 : actualRows12477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12477=6276 := by core033_kernel_decide
theorem rows12478 : actualRows12478=WordField.canonicalRows actualModulus 12478 (.bxor 12475 12477) := by core033_kernel_decide
theorem stats12478 : actualRows12478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12478=7428 := by core033_kernel_decide
theorem rows12479 : actualRows12479=WordField.canonicalRows actualModulus 12479 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12479 : actualRows12479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12479=2964 := by core033_kernel_decide
theorem rows12480 : actualRows12480=WordField.canonicalRows actualModulus 12480 (.bxor 693 12479) := by core033_kernel_decide
theorem stats12480 : actualRows12480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12480=7428 := by core033_kernel_decide
theorem rows12481 : actualRows12481=WordField.canonicalRows actualModulus 12481 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12481 : actualRows12481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12481=2820 := by core033_kernel_decide
theorem rows12482 : actualRows12482=WordField.canonicalRows actualModulus 12482 (.bnot 12481) := by core033_kernel_decide
theorem stats12482 : actualRows12482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12482=6276 := by core033_kernel_decide
theorem rows12483 : actualRows12483=WordField.canonicalRows actualModulus 12483 (.badd 12480 12482) := by core033_kernel_decide
theorem stats12483 : actualRows12483.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12483=5388 := by core033_kernel_decide
theorem rows12484 : actualRows12484=WordField.canonicalRows actualModulus 12484 (.bnot 12483) := by core033_kernel_decide
theorem stats12484 : actualRows12484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12484=6276 := by core033_kernel_decide
theorem rows12485 : actualRows12485=WordField.canonicalRows actualModulus 12485 (.band 12478 12484) := by core033_kernel_decide
theorem stats12485 : actualRows12485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12485=5124 := by core033_kernel_decide
theorem rows12486 : actualRows12486=WordField.canonicalRows actualModulus 12486 (.bxor 12473 12485) := by core033_kernel_decide
theorem stats12486 : actualRows12486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12486=7428 := by core033_kernel_decide
theorem rows12487 : actualRows12487=WordField.canonicalRows actualModulus 12487 (.shr 12486 31) := by core033_kernel_decide
theorem stats12487 : actualRows12487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12487=2892 := by core033_kernel_decide
theorem rows12488 : actualRows12488=WordField.canonicalRows actualModulus 12488 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12488 : actualRows12488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12488=2892 := by core033_kernel_decide
theorem rows12489 : actualRows12489=WordField.canonicalRows actualModulus 12489 (.bxor 12487 12488) := by core033_kernel_decide
theorem stats12489 : actualRows12489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12489=7428 := by core033_kernel_decide
theorem rows12490 : actualRows12490=WordField.canonicalRows actualModulus 12490 (.bnot 12489) := by core033_kernel_decide
theorem stats12490 : actualRows12490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12490=6276 := by core033_kernel_decide
theorem rows12491 : actualRows12491=WordField.canonicalRows actualModulus 12491 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12491 : actualRows12491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12491=2892 := by core033_kernel_decide
theorem rows12492 : actualRows12492=WordField.canonicalRows actualModulus 12492 (.badd 12490 12491) := by core033_kernel_decide
theorem stats12492 : actualRows12492.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12492=5388 := by core033_kernel_decide
theorem rows12493 : actualRows12493=WordField.canonicalRows actualModulus 12493 (.band 12492 10840) := by core033_kernel_decide
theorem stats12493 : actualRows12493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12493=5124 := by core033_kernel_decide
theorem rows12494 : actualRows12494=WordField.canonicalRows actualModulus 12494 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12494 : actualRows12494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12494=2964 := by core033_kernel_decide
theorem rows12495 : actualRows12495=WordField.canonicalRows actualModulus 12495 (.bxor 693 12494) := by core033_kernel_decide
theorem stats12495 : actualRows12495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12495=7428 := by core033_kernel_decide
theorem rows12496 : actualRows12496=WordField.canonicalRows actualModulus 12496 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12496 : actualRows12496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12496=2820 := by core033_kernel_decide
theorem rows12497 : actualRows12497=WordField.canonicalRows actualModulus 12497 (.bnot 12496) := by core033_kernel_decide
theorem stats12497 : actualRows12497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12497=6276 := by core033_kernel_decide
theorem rows12498 : actualRows12498=WordField.canonicalRows actualModulus 12498 (.band 12495 12497) := by core033_kernel_decide
theorem stats12498 : actualRows12498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12498=5124 := by core033_kernel_decide
theorem rows12499 : actualRows12499=WordField.canonicalRows actualModulus 12499 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12499 : actualRows12499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12499=2964 := by core033_kernel_decide
theorem rows12500 : actualRows12500=WordField.canonicalRows actualModulus 12500 (.bxor 693 12499) := by core033_kernel_decide
theorem stats12500 : actualRows12500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12500=7428 := by core033_kernel_decide
theorem rows12501 : actualRows12501=WordField.canonicalRows actualModulus 12501 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12501 : actualRows12501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12501=2820 := by core033_kernel_decide
theorem rows12502 : actualRows12502=WordField.canonicalRows actualModulus 12502 (.bnot 12501) := by core033_kernel_decide
theorem stats12502 : actualRows12502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12502=6276 := by core033_kernel_decide
theorem rows12503 : actualRows12503=WordField.canonicalRows actualModulus 12503 (.bxor 12500 12502) := by core033_kernel_decide
theorem stats12503 : actualRows12503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12503=7428 := by core033_kernel_decide
theorem rows12504 : actualRows12504=WordField.canonicalRows actualModulus 12504 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12504 : actualRows12504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12504=2964 := by core033_kernel_decide
theorem rows12505 : actualRows12505=WordField.canonicalRows actualModulus 12505 (.bxor 693 12504) := by core033_kernel_decide
theorem stats12505 : actualRows12505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12505=7428 := by core033_kernel_decide
theorem rows12506 : actualRows12506=WordField.canonicalRows actualModulus 12506 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12506 : actualRows12506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12506=2820 := by core033_kernel_decide
theorem rows12507 : actualRows12507=WordField.canonicalRows actualModulus 12507 (.bnot 12506) := by core033_kernel_decide
theorem stats12507 : actualRows12507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12507=6276 := by core033_kernel_decide
theorem rows12508 : actualRows12508=WordField.canonicalRows actualModulus 12508 (.badd 12505 12507) := by core033_kernel_decide
theorem stats12508 : actualRows12508.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12508=5388 := by core033_kernel_decide
theorem rows12509 : actualRows12509=WordField.canonicalRows actualModulus 12509 (.bnot 12508) := by core033_kernel_decide
theorem stats12509 : actualRows12509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12509=6276 := by core033_kernel_decide
theorem rows12510 : actualRows12510=WordField.canonicalRows actualModulus 12510 (.band 12503 12509) := by core033_kernel_decide
theorem stats12510 : actualRows12510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12510=5124 := by core033_kernel_decide
theorem rows12511 : actualRows12511=WordField.canonicalRows actualModulus 12511 (.bxor 12498 12510) := by core033_kernel_decide
theorem stats12511 : actualRows12511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12511=7428 := by core033_kernel_decide
theorem rows12512 : actualRows12512=WordField.canonicalRows actualModulus 12512 (.shr 12511 31) := by core033_kernel_decide
theorem stats12512 : actualRows12512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12512=2892 := by core033_kernel_decide
theorem rows12513 : actualRows12513=WordField.canonicalRows actualModulus 12513 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12513 : actualRows12513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12513=2892 := by core033_kernel_decide
theorem rows12514 : actualRows12514=WordField.canonicalRows actualModulus 12514 (.bxor 12512 12513) := by core033_kernel_decide
theorem stats12514 : actualRows12514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12514=7428 := by core033_kernel_decide
theorem rows12515 : actualRows12515=WordField.canonicalRows actualModulus 12515 (.bnot 12514) := by core033_kernel_decide
theorem stats12515 : actualRows12515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12515=6276 := by core033_kernel_decide
theorem rows12516 : actualRows12516=WordField.canonicalRows actualModulus 12516 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12516 : actualRows12516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12516=2892 := by core033_kernel_decide
theorem rows12517 : actualRows12517=WordField.canonicalRows actualModulus 12517 (.badd 12515 12516) := by core033_kernel_decide
theorem stats12517 : actualRows12517.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12517=5388 := by core033_kernel_decide
theorem rows12518 : actualRows12518=WordField.canonicalRows actualModulus 12518 (.bnot 12517) := by core033_kernel_decide
theorem stats12518 : actualRows12518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12518=6276 := by core033_kernel_decide
theorem rows12519 : actualRows12519=WordField.canonicalRows actualModulus 12519 (.band 12518 1519) := by core033_kernel_decide
theorem stats12519 : actualRows12519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12519=5124 := by core033_kernel_decide
theorem rows12520 : actualRows12520=WordField.canonicalRows actualModulus 12520 (.bxor 12493 12519) := by core033_kernel_decide
theorem stats12520 : actualRows12520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12520=7428 := by core033_kernel_decide
theorem rows12521 : actualRows12521=WordField.canonicalRows actualModulus 12521 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12521 : actualRows12521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12521=2964 := by core033_kernel_decide
theorem rows12522 : actualRows12522=WordField.canonicalRows actualModulus 12522 (.bxor 693 12521) := by core033_kernel_decide
theorem stats12522 : actualRows12522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12522=7428 := by core033_kernel_decide
theorem rows12523 : actualRows12523=WordField.canonicalRows actualModulus 12523 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12523 : actualRows12523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12523=2820 := by core033_kernel_decide
theorem rows12524 : actualRows12524=WordField.canonicalRows actualModulus 12524 (.bnot 12523) := by core033_kernel_decide
theorem stats12524 : actualRows12524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12524=6276 := by core033_kernel_decide
theorem rows12525 : actualRows12525=WordField.canonicalRows actualModulus 12525 (.band 12522 12524) := by core033_kernel_decide
theorem stats12525 : actualRows12525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12525=5124 := by core033_kernel_decide
theorem rows12526 : actualRows12526=WordField.canonicalRows actualModulus 12526 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12526 : actualRows12526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12526=2964 := by core033_kernel_decide
theorem rows12527 : actualRows12527=WordField.canonicalRows actualModulus 12527 (.bxor 693 12526) := by core033_kernel_decide
theorem stats12527 : actualRows12527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12527=7428 := by core033_kernel_decide
theorem rows12528 : actualRows12528=WordField.canonicalRows actualModulus 12528 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12528 : actualRows12528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12528=2820 := by core033_kernel_decide
theorem rows12529 : actualRows12529=WordField.canonicalRows actualModulus 12529 (.bnot 12528) := by core033_kernel_decide
theorem stats12529 : actualRows12529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12529=6276 := by core033_kernel_decide
theorem rows12530 : actualRows12530=WordField.canonicalRows actualModulus 12530 (.bxor 12527 12529) := by core033_kernel_decide
theorem stats12530 : actualRows12530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12530=7428 := by core033_kernel_decide
theorem rows12531 : actualRows12531=WordField.canonicalRows actualModulus 12531 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12531 : actualRows12531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12531=2964 := by core033_kernel_decide
theorem rows12532 : actualRows12532=WordField.canonicalRows actualModulus 12532 (.bxor 693 12531) := by core033_kernel_decide
theorem stats12532 : actualRows12532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12532=7428 := by core033_kernel_decide
theorem rows12533 : actualRows12533=WordField.canonicalRows actualModulus 12533 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12533 : actualRows12533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12533=2820 := by core033_kernel_decide
def partRows193 : List R1CS.Row := actualRows12470++actualRows12471++actualRows12472++actualRows12473++actualRows12474++actualRows12475++actualRows12476++actualRows12477++actualRows12478++actualRows12479++actualRows12480++actualRows12481++actualRows12482++actualRows12483++actualRows12484++actualRows12485++actualRows12486++actualRows12487++actualRows12488++actualRows12489++actualRows12490++actualRows12491++actualRows12492++actualRows12493++actualRows12494++actualRows12495++actualRows12496++actualRows12497++actualRows12498++actualRows12499++actualRows12500++actualRows12501++actualRows12502++actualRows12503++actualRows12504++actualRows12505++actualRows12506++actualRows12507++actualRows12508++actualRows12509++actualRows12510++actualRows12511++actualRows12512++actualRows12513++actualRows12514++actualRows12515++actualRows12516++actualRows12517++actualRows12518++actualRows12519++actualRows12520++actualRows12521++actualRows12522++actualRows12523++actualRows12524++actualRows12525++actualRows12526++actualRows12527++actualRows12528++actualRows12529++actualRows12530++actualRows12531++actualRows12532++actualRows12533
def partOps193 : List WordIR.Op := [.bxor 693 12469,.literal (BitVec.ofNat 32 0),.bnot 12471,.band 12470 12472,.literal (BitVec.ofNat 32 3),.bxor 693 12474,.literal (BitVec.ofNat 32 0),.bnot 12476,.bxor 12475 12477,.literal (BitVec.ofNat 32 3),.bxor 693 12479,.literal (BitVec.ofNat 32 0),.bnot 12481,.badd 12480 12482,.bnot 12483,.band 12478 12484,.bxor 12473 12485,.shr 12486 31,.literal (BitVec.ofNat 32 1),.bxor 12487 12488,.bnot 12489,.literal (BitVec.ofNat 32 1),.badd 12490 12491,.band 12492 10840,.literal (BitVec.ofNat 32 3),.bxor 693 12494,.literal (BitVec.ofNat 32 0),.bnot 12496,.band 12495 12497,.literal (BitVec.ofNat 32 3),.bxor 693 12499,.literal (BitVec.ofNat 32 0),.bnot 12501,.bxor 12500 12502,.literal (BitVec.ofNat 32 3),.bxor 693 12504,.literal (BitVec.ofNat 32 0),.bnot 12506,.badd 12505 12507,.bnot 12508,.band 12503 12509,.bxor 12498 12510,.shr 12511 31,.literal (BitVec.ofNat 32 1),.bxor 12512 12513,.bnot 12514,.literal (BitVec.ofNat 32 1),.badd 12515 12516,.bnot 12517,.band 12518 1519,.bxor 12493 12519,.literal (BitVec.ofNat 32 3),.bxor 693 12521,.literal (BitVec.ofNat 32 0),.bnot 12523,.band 12522 12524,.literal (BitVec.ofNat 32 3),.bxor 693 12526,.literal (BitVec.ofNat 32 0),.bnot 12528,.bxor 12527 12529,.literal (BitVec.ofNat 32 3),.bxor 693 12531,.literal (BitVec.ofNat 32 0)]
theorem partExact193 : partRows193=WordField.rows actualModulus 12470 partOps193 := by
  simp only [partRows193,partOps193,WordField.rows,rows12470,rows12471,rows12472,rows12473,rows12474,rows12475,rows12476,rows12477,rows12478,rows12479,rows12480,rows12481,rows12482,rows12483,rows12484,rows12485,rows12486,rows12487,rows12488,rows12489,rows12490,rows12491,rows12492,rows12493,rows12494,rows12495,rows12496,rows12497,rows12498,rows12499,rows12500,rows12501,rows12502,rows12503,rows12504,rows12505,rows12506,rows12507,rows12508,rows12509,rows12510,rows12511,rows12512,rows12513,rows12514,rows12515,rows12516,rows12517,rows12518,rows12519,rows12520,rows12521,rows12522,rows12523,rows12524,rows12525,rows12526,rows12527,rows12528,rows12529,rows12530,rows12531,rows12532,rows12533,List.append_assoc,List.append_nil]
theorem partLength193 : partOps193.length=64 := by decide
theorem partStats193 : partRows193.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows193=331728 := by
  simp only [partRows193,List.length_append,MatrixRowBlocks.rows_weight_append,stats12470.1,stats12470.2,stats12471.1,stats12471.2,stats12472.1,stats12472.2,stats12473.1,stats12473.2,stats12474.1,stats12474.2,stats12475.1,stats12475.2,stats12476.1,stats12476.2,stats12477.1,stats12477.2,stats12478.1,stats12478.2,stats12479.1,stats12479.2,stats12480.1,stats12480.2,stats12481.1,stats12481.2,stats12482.1,stats12482.2,stats12483.1,stats12483.2,stats12484.1,stats12484.2,stats12485.1,stats12485.2,stats12486.1,stats12486.2,stats12487.1,stats12487.2,stats12488.1,stats12488.2,stats12489.1,stats12489.2,stats12490.1,stats12490.2,stats12491.1,stats12491.2,stats12492.1,stats12492.2,stats12493.1,stats12493.2,stats12494.1,stats12494.2,stats12495.1,stats12495.2,stats12496.1,stats12496.2,stats12497.1,stats12497.2,stats12498.1,stats12498.2,stats12499.1,stats12499.2,stats12500.1,stats12500.2,stats12501.1,stats12501.2,stats12502.1,stats12502.2,stats12503.1,stats12503.2,stats12504.1,stats12504.2,stats12505.1,stats12505.2,stats12506.1,stats12506.2,stats12507.1,stats12507.2,stats12508.1,stats12508.2,stats12509.1,stats12509.2,stats12510.1,stats12510.2,stats12511.1,stats12511.2,stats12512.1,stats12512.2,stats12513.1,stats12513.2,stats12514.1,stats12514.2,stats12515.1,stats12515.2,stats12516.1,stats12516.2,stats12517.1,stats12517.2,stats12518.1,stats12518.2,stats12519.1,stats12519.2,stats12520.1,stats12520.2,stats12521.1,stats12521.2,stats12522.1,stats12522.2,stats12523.1,stats12523.2,stats12524.1,stats12524.2,stats12525.1,stats12525.2,stats12526.1,stats12526.2,stats12527.1,stats12527.2,stats12528.1,stats12528.2,stats12529.1,stats12529.2,stats12530.1,stats12530.2,stats12531.1,stats12531.2,stats12532.1,stats12532.2,stats12533.1,stats12533.2]
  decide
end AuthenticatedBranchRoundCheckedRows
