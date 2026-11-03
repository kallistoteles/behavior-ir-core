import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData194
import PathRoundDispatchInstructionMatrixData195
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12459 : actualRows12459=WordField.canonicalRows actualModulus 12459 (.bnot 12458) := by core033_kernel_decide
theorem stats12459 : actualRows12459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12459=6276 := by core033_kernel_decide
theorem rows12460 : actualRows12460=WordField.canonicalRows actualModulus 12460 (.band 12459 9288) := by core033_kernel_decide
theorem stats12460 : actualRows12460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12460=5124 := by core033_kernel_decide
theorem rows12461 : actualRows12461=WordField.canonicalRows actualModulus 12461 (.bxor 12434 12460) := by core033_kernel_decide
theorem stats12461 : actualRows12461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12461=7428 := by core033_kernel_decide
theorem rows12462 : actualRows12462=WordField.canonicalRows actualModulus 12462 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12462 : actualRows12462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12462=2892 := by core033_kernel_decide
theorem rows12463 : actualRows12463=WordField.canonicalRows actualModulus 12463 (.bxor 0 12462) := by core033_kernel_decide
theorem stats12463 : actualRows12463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12463=7428 := by core033_kernel_decide
theorem rows12464 : actualRows12464=WordField.canonicalRows actualModulus 12464 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12464 : actualRows12464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12464=2820 := by core033_kernel_decide
theorem rows12465 : actualRows12465=WordField.canonicalRows actualModulus 12465 (.bnot 12464) := by core033_kernel_decide
theorem stats12465 : actualRows12465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12465=6276 := by core033_kernel_decide
theorem rows12466 : actualRows12466=WordField.canonicalRows actualModulus 12466 (.band 12463 12465) := by core033_kernel_decide
theorem stats12466 : actualRows12466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12466=5124 := by core033_kernel_decide
theorem rows12467 : actualRows12467=WordField.canonicalRows actualModulus 12467 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12467 : actualRows12467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12467=2892 := by core033_kernel_decide
theorem rows12468 : actualRows12468=WordField.canonicalRows actualModulus 12468 (.bxor 0 12467) := by core033_kernel_decide
theorem stats12468 : actualRows12468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12468=7428 := by core033_kernel_decide
theorem rows12469 : actualRows12469=WordField.canonicalRows actualModulus 12469 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12469 : actualRows12469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12469=2820 := by core033_kernel_decide
theorem rows12470 : actualRows12470=WordField.canonicalRows actualModulus 12470 (.bnot 12469) := by core033_kernel_decide
theorem stats12470 : actualRows12470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12470=6276 := by core033_kernel_decide
theorem rows12471 : actualRows12471=WordField.canonicalRows actualModulus 12471 (.bxor 12468 12470) := by core033_kernel_decide
theorem stats12471 : actualRows12471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12471=7428 := by core033_kernel_decide
theorem rows12472 : actualRows12472=WordField.canonicalRows actualModulus 12472 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12472 : actualRows12472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12472=2892 := by core033_kernel_decide
theorem rows12473 : actualRows12473=WordField.canonicalRows actualModulus 12473 (.bxor 0 12472) := by core033_kernel_decide
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
theorem rows12483 : actualRows12483=WordField.canonicalRows actualModulus 12483 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats12483 : actualRows12483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12483=2892 := by core033_kernel_decide
theorem rows12484 : actualRows12484=WordField.canonicalRows actualModulus 12484 (.bxor 0 12483) := by core033_kernel_decide
theorem stats12484 : actualRows12484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12484=7428 := by core033_kernel_decide
theorem rows12485 : actualRows12485=WordField.canonicalRows actualModulus 12485 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12485 : actualRows12485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12485=2820 := by core033_kernel_decide
theorem rows12486 : actualRows12486=WordField.canonicalRows actualModulus 12486 (.bnot 12485) := by core033_kernel_decide
theorem stats12486 : actualRows12486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12486=6276 := by core033_kernel_decide
theorem rows12487 : actualRows12487=WordField.canonicalRows actualModulus 12487 (.band 12484 12486) := by core033_kernel_decide
theorem stats12487 : actualRows12487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12487=5124 := by core033_kernel_decide
theorem rows12488 : actualRows12488=WordField.canonicalRows actualModulus 12488 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats12488 : actualRows12488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12488=2892 := by core033_kernel_decide
theorem rows12489 : actualRows12489=WordField.canonicalRows actualModulus 12489 (.bxor 0 12488) := by core033_kernel_decide
theorem stats12489 : actualRows12489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12489=7428 := by core033_kernel_decide
theorem rows12490 : actualRows12490=WordField.canonicalRows actualModulus 12490 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12490 : actualRows12490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12490=2820 := by core033_kernel_decide
theorem rows12491 : actualRows12491=WordField.canonicalRows actualModulus 12491 (.bnot 12490) := by core033_kernel_decide
theorem stats12491 : actualRows12491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12491=6276 := by core033_kernel_decide
theorem rows12492 : actualRows12492=WordField.canonicalRows actualModulus 12492 (.bxor 12489 12491) := by core033_kernel_decide
theorem stats12492 : actualRows12492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12492=7428 := by core033_kernel_decide
theorem rows12493 : actualRows12493=WordField.canonicalRows actualModulus 12493 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats12493 : actualRows12493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12493=2892 := by core033_kernel_decide
theorem rows12494 : actualRows12494=WordField.canonicalRows actualModulus 12494 (.bxor 0 12493) := by core033_kernel_decide
theorem stats12494 : actualRows12494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12494=7428 := by core033_kernel_decide
theorem rows12495 : actualRows12495=WordField.canonicalRows actualModulus 12495 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12495 : actualRows12495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12495=2820 := by core033_kernel_decide
theorem rows12496 : actualRows12496=WordField.canonicalRows actualModulus 12496 (.bnot 12495) := by core033_kernel_decide
theorem stats12496 : actualRows12496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12496=6276 := by core033_kernel_decide
theorem rows12497 : actualRows12497=WordField.canonicalRows actualModulus 12497 (.badd 12494 12496) := by core033_kernel_decide
theorem stats12497 : actualRows12497.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12497=5388 := by core033_kernel_decide
theorem rows12498 : actualRows12498=WordField.canonicalRows actualModulus 12498 (.bnot 12497) := by core033_kernel_decide
theorem stats12498 : actualRows12498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12498=6276 := by core033_kernel_decide
theorem rows12499 : actualRows12499=WordField.canonicalRows actualModulus 12499 (.band 12492 12498) := by core033_kernel_decide
theorem stats12499 : actualRows12499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12499=5124 := by core033_kernel_decide
theorem rows12500 : actualRows12500=WordField.canonicalRows actualModulus 12500 (.bxor 12487 12499) := by core033_kernel_decide
theorem stats12500 : actualRows12500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12500=7428 := by core033_kernel_decide
theorem rows12501 : actualRows12501=WordField.canonicalRows actualModulus 12501 (.shr 12500 31) := by core033_kernel_decide
theorem stats12501 : actualRows12501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12501=2892 := by core033_kernel_decide
theorem rows12502 : actualRows12502=WordField.canonicalRows actualModulus 12502 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12502 : actualRows12502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12502=2892 := by core033_kernel_decide
theorem rows12503 : actualRows12503=WordField.canonicalRows actualModulus 12503 (.bxor 12501 12502) := by core033_kernel_decide
theorem stats12503 : actualRows12503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12503=7428 := by core033_kernel_decide
theorem rows12504 : actualRows12504=WordField.canonicalRows actualModulus 12504 (.bxor 12482 12503) := by core033_kernel_decide
theorem stats12504 : actualRows12504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12504=7428 := by core033_kernel_decide
theorem rows12505 : actualRows12505=WordField.canonicalRows actualModulus 12505 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12505 : actualRows12505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12505=2964 := by core033_kernel_decide
theorem rows12506 : actualRows12506=WordField.canonicalRows actualModulus 12506 (.bxor 0 12505) := by core033_kernel_decide
theorem stats12506 : actualRows12506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12506=7428 := by core033_kernel_decide
theorem rows12507 : actualRows12507=WordField.canonicalRows actualModulus 12507 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12507 : actualRows12507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12507=2820 := by core033_kernel_decide
theorem rows12508 : actualRows12508=WordField.canonicalRows actualModulus 12508 (.bnot 12507) := by core033_kernel_decide
theorem stats12508 : actualRows12508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12508=6276 := by core033_kernel_decide
theorem rows12509 : actualRows12509=WordField.canonicalRows actualModulus 12509 (.band 12506 12508) := by core033_kernel_decide
theorem stats12509 : actualRows12509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12509=5124 := by core033_kernel_decide
theorem rows12510 : actualRows12510=WordField.canonicalRows actualModulus 12510 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12510 : actualRows12510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12510=2964 := by core033_kernel_decide
theorem rows12511 : actualRows12511=WordField.canonicalRows actualModulus 12511 (.bxor 0 12510) := by core033_kernel_decide
theorem stats12511 : actualRows12511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12511=7428 := by core033_kernel_decide
theorem rows12512 : actualRows12512=WordField.canonicalRows actualModulus 12512 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12512 : actualRows12512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12512=2820 := by core033_kernel_decide
theorem rows12513 : actualRows12513=WordField.canonicalRows actualModulus 12513 (.bnot 12512) := by core033_kernel_decide
theorem stats12513 : actualRows12513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12513=6276 := by core033_kernel_decide
theorem rows12514 : actualRows12514=WordField.canonicalRows actualModulus 12514 (.bxor 12511 12513) := by core033_kernel_decide
theorem stats12514 : actualRows12514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12514=7428 := by core033_kernel_decide
theorem rows12515 : actualRows12515=WordField.canonicalRows actualModulus 12515 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12515 : actualRows12515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12515=2964 := by core033_kernel_decide
theorem rows12516 : actualRows12516=WordField.canonicalRows actualModulus 12516 (.bxor 0 12515) := by core033_kernel_decide
theorem stats12516 : actualRows12516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12516=7428 := by core033_kernel_decide
theorem rows12517 : actualRows12517=WordField.canonicalRows actualModulus 12517 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12517 : actualRows12517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12517=2820 := by core033_kernel_decide
theorem rows12518 : actualRows12518=WordField.canonicalRows actualModulus 12518 (.bnot 12517) := by core033_kernel_decide
theorem stats12518 : actualRows12518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12518=6276 := by core033_kernel_decide
theorem rows12519 : actualRows12519=WordField.canonicalRows actualModulus 12519 (.badd 12516 12518) := by core033_kernel_decide
theorem stats12519 : actualRows12519.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12519=5388 := by core033_kernel_decide
theorem rows12520 : actualRows12520=WordField.canonicalRows actualModulus 12520 (.bnot 12519) := by core033_kernel_decide
theorem stats12520 : actualRows12520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12520=6276 := by core033_kernel_decide
theorem rows12521 : actualRows12521=WordField.canonicalRows actualModulus 12521 (.band 12514 12520) := by core033_kernel_decide
theorem stats12521 : actualRows12521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12521=5124 := by core033_kernel_decide
theorem rows12522 : actualRows12522=WordField.canonicalRows actualModulus 12522 (.bxor 12509 12521) := by core033_kernel_decide
theorem stats12522 : actualRows12522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12522=7428 := by core033_kernel_decide
def partRows194 : List R1CS.Row := actualRows12459++actualRows12460++actualRows12461++actualRows12462++actualRows12463++actualRows12464++actualRows12465++actualRows12466++actualRows12467++actualRows12468++actualRows12469++actualRows12470++actualRows12471++actualRows12472++actualRows12473++actualRows12474++actualRows12475++actualRows12476++actualRows12477++actualRows12478++actualRows12479++actualRows12480++actualRows12481++actualRows12482++actualRows12483++actualRows12484++actualRows12485++actualRows12486++actualRows12487++actualRows12488++actualRows12489++actualRows12490++actualRows12491++actualRows12492++actualRows12493++actualRows12494++actualRows12495++actualRows12496++actualRows12497++actualRows12498++actualRows12499++actualRows12500++actualRows12501++actualRows12502++actualRows12503++actualRows12504++actualRows12505++actualRows12506++actualRows12507++actualRows12508++actualRows12509++actualRows12510++actualRows12511++actualRows12512++actualRows12513++actualRows12514++actualRows12515++actualRows12516++actualRows12517++actualRows12518++actualRows12519++actualRows12520++actualRows12521++actualRows12522
def partOps194 : List WordIR.Op := [.bnot 12458,.band 12459 9288,.bxor 12434 12460,.literal (BitVec.ofNat 32 1),.bxor 0 12462,.literal (BitVec.ofNat 32 0),.bnot 12464,.band 12463 12465,.literal (BitVec.ofNat 32 1),.bxor 0 12467,.literal (BitVec.ofNat 32 0),.bnot 12469,.bxor 12468 12470,.literal (BitVec.ofNat 32 1),.bxor 0 12472,.literal (BitVec.ofNat 32 0),.bnot 12474,.badd 12473 12475,.bnot 12476,.band 12471 12477,.bxor 12466 12478,.shr 12479 31,.literal (BitVec.ofNat 32 1),.bxor 12480 12481,.literal (BitVec.ofNat 32 2),.bxor 0 12483,.literal (BitVec.ofNat 32 0),.bnot 12485,.band 12484 12486,.literal (BitVec.ofNat 32 2),.bxor 0 12488,.literal (BitVec.ofNat 32 0),.bnot 12490,.bxor 12489 12491,.literal (BitVec.ofNat 32 2),.bxor 0 12493,.literal (BitVec.ofNat 32 0),.bnot 12495,.badd 12494 12496,.bnot 12497,.band 12492 12498,.bxor 12487 12499,.shr 12500 31,.literal (BitVec.ofNat 32 1),.bxor 12501 12502,.bxor 12482 12503,.literal (BitVec.ofNat 32 3),.bxor 0 12505,.literal (BitVec.ofNat 32 0),.bnot 12507,.band 12506 12508,.literal (BitVec.ofNat 32 3),.bxor 0 12510,.literal (BitVec.ofNat 32 0),.bnot 12512,.bxor 12511 12513,.literal (BitVec.ofNat 32 3),.bxor 0 12515,.literal (BitVec.ofNat 32 0),.bnot 12517,.badd 12516 12518,.bnot 12519,.band 12514 12520,.bxor 12509 12521]
theorem partExact194 : partRows194=WordField.rows actualModulus 12459 partOps194 := by
  simp only [partRows194,partOps194,WordField.rows,rows12459,rows12460,rows12461,rows12462,rows12463,rows12464,rows12465,rows12466,rows12467,rows12468,rows12469,rows12470,rows12471,rows12472,rows12473,rows12474,rows12475,rows12476,rows12477,rows12478,rows12479,rows12480,rows12481,rows12482,rows12483,rows12484,rows12485,rows12486,rows12487,rows12488,rows12489,rows12490,rows12491,rows12492,rows12493,rows12494,rows12495,rows12496,rows12497,rows12498,rows12499,rows12500,rows12501,rows12502,rows12503,rows12504,rows12505,rows12506,rows12507,rows12508,rows12509,rows12510,rows12511,rows12512,rows12513,rows12514,rows12515,rows12516,rows12517,rows12518,rows12519,rows12520,rows12521,rows12522,List.append_assoc,List.append_nil]
theorem partLength194 : partOps194.length=64 := by decide
theorem partStats194 : partRows194.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows194=337944 := by
  simp only [partRows194,List.length_append,MatrixRowBlocks.rows_weight_append,stats12459.1,stats12459.2,stats12460.1,stats12460.2,stats12461.1,stats12461.2,stats12462.1,stats12462.2,stats12463.1,stats12463.2,stats12464.1,stats12464.2,stats12465.1,stats12465.2,stats12466.1,stats12466.2,stats12467.1,stats12467.2,stats12468.1,stats12468.2,stats12469.1,stats12469.2,stats12470.1,stats12470.2,stats12471.1,stats12471.2,stats12472.1,stats12472.2,stats12473.1,stats12473.2,stats12474.1,stats12474.2,stats12475.1,stats12475.2,stats12476.1,stats12476.2,stats12477.1,stats12477.2,stats12478.1,stats12478.2,stats12479.1,stats12479.2,stats12480.1,stats12480.2,stats12481.1,stats12481.2,stats12482.1,stats12482.2,stats12483.1,stats12483.2,stats12484.1,stats12484.2,stats12485.1,stats12485.2,stats12486.1,stats12486.2,stats12487.1,stats12487.2,stats12488.1,stats12488.2,stats12489.1,stats12489.2,stats12490.1,stats12490.2,stats12491.1,stats12491.2,stats12492.1,stats12492.2,stats12493.1,stats12493.2,stats12494.1,stats12494.2,stats12495.1,stats12495.2,stats12496.1,stats12496.2,stats12497.1,stats12497.2,stats12498.1,stats12498.2,stats12499.1,stats12499.2,stats12500.1,stats12500.2,stats12501.1,stats12501.2,stats12502.1,stats12502.2,stats12503.1,stats12503.2,stats12504.1,stats12504.2,stats12505.1,stats12505.2,stats12506.1,stats12506.2,stats12507.1,stats12507.2,stats12508.1,stats12508.2,stats12509.1,stats12509.2,stats12510.1,stats12510.2,stats12511.1,stats12511.2,stats12512.1,stats12512.2,stats12513.1,stats12513.2,stats12514.1,stats12514.2,stats12515.1,stats12515.2,stats12516.1,stats12516.2,stats12517.1,stats12517.2,stats12518.1,stats12518.2,stats12519.1,stats12519.2,stats12520.1,stats12520.2,stats12521.1,stats12521.2,stats12522.1,stats12522.2]
  decide
end PathRoundDispatchCheckedRows
