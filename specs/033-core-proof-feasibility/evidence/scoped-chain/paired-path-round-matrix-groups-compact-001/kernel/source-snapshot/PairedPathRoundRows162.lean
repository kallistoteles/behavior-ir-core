import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData163
import PairedPathRoundInstructionMatrixData164
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10464 : actualRows10464=WordField.canonicalRows actualModulus 10464 (.shr 10463 31) := by core033_kernel_decide
theorem stats10464 : actualRows10464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10464=2892 := by core033_kernel_decide
theorem rows10465 : actualRows10465=WordField.canonicalRows actualModulus 10465 (.badd 10457 10464) := by core033_kernel_decide
theorem stats10465 : actualRows10465.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10465=5388 := by core033_kernel_decide
theorem rows10466 : actualRows10466=WordField.canonicalRows actualModulus 10466 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10466 : actualRows10466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10466=2820 := by core033_kernel_decide
theorem rows10467 : actualRows10467=WordField.canonicalRows actualModulus 10467 (.bnot 10466) := by core033_kernel_decide
theorem stats10467 : actualRows10467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10467=6276 := by core033_kernel_decide
theorem rows10468 : actualRows10468=WordField.canonicalRows actualModulus 10468 (.band 10245 10467) := by core033_kernel_decide
theorem stats10468 : actualRows10468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10468=5124 := by core033_kernel_decide
theorem rows10469 : actualRows10469=WordField.canonicalRows actualModulus 10469 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10469 : actualRows10469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10469=2820 := by core033_kernel_decide
theorem rows10470 : actualRows10470=WordField.canonicalRows actualModulus 10470 (.bnot 10469) := by core033_kernel_decide
theorem stats10470 : actualRows10470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10470=6276 := by core033_kernel_decide
theorem rows10471 : actualRows10471=WordField.canonicalRows actualModulus 10471 (.bxor 10245 10470) := by core033_kernel_decide
theorem stats10471 : actualRows10471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10471=7428 := by core033_kernel_decide
theorem rows10472 : actualRows10472=WordField.canonicalRows actualModulus 10472 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10472 : actualRows10472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10472=2820 := by core033_kernel_decide
theorem rows10473 : actualRows10473=WordField.canonicalRows actualModulus 10473 (.bnot 10472) := by core033_kernel_decide
theorem stats10473 : actualRows10473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10473=6276 := by core033_kernel_decide
theorem rows10474 : actualRows10474=WordField.canonicalRows actualModulus 10474 (.badd 10245 10473) := by core033_kernel_decide
theorem stats10474 : actualRows10474.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10474=5388 := by core033_kernel_decide
theorem rows10475 : actualRows10475=WordField.canonicalRows actualModulus 10475 (.bnot 10474) := by core033_kernel_decide
theorem stats10475 : actualRows10475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10475=6276 := by core033_kernel_decide
theorem rows10476 : actualRows10476=WordField.canonicalRows actualModulus 10476 (.band 10471 10475) := by core033_kernel_decide
theorem stats10476 : actualRows10476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10476=5124 := by core033_kernel_decide
theorem rows10477 : actualRows10477=WordField.canonicalRows actualModulus 10477 (.bxor 10468 10476) := by core033_kernel_decide
theorem stats10477 : actualRows10477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10477=7428 := by core033_kernel_decide
theorem rows10478 : actualRows10478=WordField.canonicalRows actualModulus 10478 (.shr 10477 31) := by core033_kernel_decide
theorem stats10478 : actualRows10478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10478=2892 := by core033_kernel_decide
theorem rows10479 : actualRows10479=WordField.canonicalRows actualModulus 10479 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10479 : actualRows10479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10479=2892 := by core033_kernel_decide
theorem rows10480 : actualRows10480=WordField.canonicalRows actualModulus 10480 (.bxor 10478 10479) := by core033_kernel_decide
theorem stats10480 : actualRows10480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10480=7428 := by core033_kernel_decide
theorem rows10481 : actualRows10481=WordField.canonicalRows actualModulus 10481 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10481 : actualRows10481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10481=2892 := by core033_kernel_decide
theorem rows10482 : actualRows10482=WordField.canonicalRows actualModulus 10482 (.bnot 10481) := by core033_kernel_decide
theorem stats10482 : actualRows10482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10482=6276 := by core033_kernel_decide
theorem rows10483 : actualRows10483=WordField.canonicalRows actualModulus 10483 (.band 10234 10482) := by core033_kernel_decide
theorem stats10483 : actualRows10483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10483=5124 := by core033_kernel_decide
theorem rows10484 : actualRows10484=WordField.canonicalRows actualModulus 10484 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10484 : actualRows10484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10484=2892 := by core033_kernel_decide
theorem rows10485 : actualRows10485=WordField.canonicalRows actualModulus 10485 (.bnot 10484) := by core033_kernel_decide
theorem stats10485 : actualRows10485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10485=6276 := by core033_kernel_decide
theorem rows10486 : actualRows10486=WordField.canonicalRows actualModulus 10486 (.bxor 10234 10485) := by core033_kernel_decide
theorem stats10486 : actualRows10486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10486=7428 := by core033_kernel_decide
theorem rows10487 : actualRows10487=WordField.canonicalRows actualModulus 10487 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10487 : actualRows10487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10487=2892 := by core033_kernel_decide
theorem rows10488 : actualRows10488=WordField.canonicalRows actualModulus 10488 (.bnot 10487) := by core033_kernel_decide
theorem stats10488 : actualRows10488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10488=6276 := by core033_kernel_decide
theorem rows10489 : actualRows10489=WordField.canonicalRows actualModulus 10489 (.badd 10234 10488) := by core033_kernel_decide
theorem stats10489 : actualRows10489.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10489=5388 := by core033_kernel_decide
theorem rows10490 : actualRows10490=WordField.canonicalRows actualModulus 10490 (.bnot 10489) := by core033_kernel_decide
theorem stats10490 : actualRows10490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10490=6276 := by core033_kernel_decide
theorem rows10491 : actualRows10491=WordField.canonicalRows actualModulus 10491 (.band 10486 10490) := by core033_kernel_decide
theorem stats10491 : actualRows10491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10491=5124 := by core033_kernel_decide
theorem rows10492 : actualRows10492=WordField.canonicalRows actualModulus 10492 (.bxor 10483 10491) := by core033_kernel_decide
theorem stats10492 : actualRows10492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10492=7428 := by core033_kernel_decide
theorem rows10493 : actualRows10493=WordField.canonicalRows actualModulus 10493 (.shr 10492 31) := by core033_kernel_decide
theorem stats10493 : actualRows10493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10493=2892 := by core033_kernel_decide
theorem rows10494 : actualRows10494=WordField.canonicalRows actualModulus 10494 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10494 : actualRows10494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10494=2892 := by core033_kernel_decide
theorem rows10495 : actualRows10495=WordField.canonicalRows actualModulus 10495 (.bxor 10493 10494) := by core033_kernel_decide
theorem stats10495 : actualRows10495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10495=7428 := by core033_kernel_decide
theorem rows10496 : actualRows10496=WordField.canonicalRows actualModulus 10496 (.band 10480 10495) := by core033_kernel_decide
theorem stats10496 : actualRows10496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10496=5124 := by core033_kernel_decide
theorem rows10497 : actualRows10497=WordField.canonicalRows actualModulus 10497 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10497 : actualRows10497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10497=2820 := by core033_kernel_decide
theorem rows10498 : actualRows10498=WordField.canonicalRows actualModulus 10498 (.bnot 10497) := by core033_kernel_decide
theorem stats10498 : actualRows10498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10498=6276 := by core033_kernel_decide
theorem rows10499 : actualRows10499=WordField.canonicalRows actualModulus 10499 (.band 10267 10498) := by core033_kernel_decide
theorem stats10499 : actualRows10499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10499=5124 := by core033_kernel_decide
theorem rows10500 : actualRows10500=WordField.canonicalRows actualModulus 10500 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10500 : actualRows10500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10500=2820 := by core033_kernel_decide
theorem rows10501 : actualRows10501=WordField.canonicalRows actualModulus 10501 (.bnot 10500) := by core033_kernel_decide
theorem stats10501 : actualRows10501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10501=6276 := by core033_kernel_decide
theorem rows10502 : actualRows10502=WordField.canonicalRows actualModulus 10502 (.bxor 10267 10501) := by core033_kernel_decide
theorem stats10502 : actualRows10502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10502=7428 := by core033_kernel_decide
theorem rows10503 : actualRows10503=WordField.canonicalRows actualModulus 10503 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10503 : actualRows10503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10503=2820 := by core033_kernel_decide
theorem rows10504 : actualRows10504=WordField.canonicalRows actualModulus 10504 (.bnot 10503) := by core033_kernel_decide
theorem stats10504 : actualRows10504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10504=6276 := by core033_kernel_decide
theorem rows10505 : actualRows10505=WordField.canonicalRows actualModulus 10505 (.badd 10267 10504) := by core033_kernel_decide
theorem stats10505 : actualRows10505.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10505=5388 := by core033_kernel_decide
theorem rows10506 : actualRows10506=WordField.canonicalRows actualModulus 10506 (.bnot 10505) := by core033_kernel_decide
theorem stats10506 : actualRows10506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10506=6276 := by core033_kernel_decide
theorem rows10507 : actualRows10507=WordField.canonicalRows actualModulus 10507 (.band 10502 10506) := by core033_kernel_decide
theorem stats10507 : actualRows10507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10507=5124 := by core033_kernel_decide
theorem rows10508 : actualRows10508=WordField.canonicalRows actualModulus 10508 (.bxor 10499 10507) := by core033_kernel_decide
theorem stats10508 : actualRows10508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10508=7428 := by core033_kernel_decide
theorem rows10509 : actualRows10509=WordField.canonicalRows actualModulus 10509 (.shr 10508 31) := by core033_kernel_decide
theorem stats10509 : actualRows10509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10509=2892 := by core033_kernel_decide
theorem rows10510 : actualRows10510=WordField.canonicalRows actualModulus 10510 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10510 : actualRows10510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10510=2892 := by core033_kernel_decide
theorem rows10511 : actualRows10511=WordField.canonicalRows actualModulus 10511 (.bxor 10509 10510) := by core033_kernel_decide
theorem stats10511 : actualRows10511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10511=7428 := by core033_kernel_decide
theorem rows10512 : actualRows10512=WordField.canonicalRows actualModulus 10512 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10512 : actualRows10512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10512=2892 := by core033_kernel_decide
theorem rows10513 : actualRows10513=WordField.canonicalRows actualModulus 10513 (.bnot 10512) := by core033_kernel_decide
theorem stats10513 : actualRows10513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10513=6276 := by core033_kernel_decide
theorem rows10514 : actualRows10514=WordField.canonicalRows actualModulus 10514 (.band 10256 10513) := by core033_kernel_decide
theorem stats10514 : actualRows10514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10514=5124 := by core033_kernel_decide
theorem rows10515 : actualRows10515=WordField.canonicalRows actualModulus 10515 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10515 : actualRows10515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10515=2892 := by core033_kernel_decide
theorem rows10516 : actualRows10516=WordField.canonicalRows actualModulus 10516 (.bnot 10515) := by core033_kernel_decide
theorem stats10516 : actualRows10516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10516=6276 := by core033_kernel_decide
theorem rows10517 : actualRows10517=WordField.canonicalRows actualModulus 10517 (.bxor 10256 10516) := by core033_kernel_decide
theorem stats10517 : actualRows10517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10517=7428 := by core033_kernel_decide
theorem rows10518 : actualRows10518=WordField.canonicalRows actualModulus 10518 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats10518 : actualRows10518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10518=2892 := by core033_kernel_decide
theorem rows10519 : actualRows10519=WordField.canonicalRows actualModulus 10519 (.bnot 10518) := by core033_kernel_decide
theorem stats10519 : actualRows10519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10519=6276 := by core033_kernel_decide
theorem rows10520 : actualRows10520=WordField.canonicalRows actualModulus 10520 (.badd 10256 10519) := by core033_kernel_decide
theorem stats10520 : actualRows10520.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10520=5388 := by core033_kernel_decide
theorem rows10521 : actualRows10521=WordField.canonicalRows actualModulus 10521 (.bnot 10520) := by core033_kernel_decide
theorem stats10521 : actualRows10521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10521=6276 := by core033_kernel_decide
theorem rows10522 : actualRows10522=WordField.canonicalRows actualModulus 10522 (.band 10517 10521) := by core033_kernel_decide
theorem stats10522 : actualRows10522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10522=5124 := by core033_kernel_decide
theorem rows10523 : actualRows10523=WordField.canonicalRows actualModulus 10523 (.bxor 10514 10522) := by core033_kernel_decide
theorem stats10523 : actualRows10523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10523=7428 := by core033_kernel_decide
theorem rows10524 : actualRows10524=WordField.canonicalRows actualModulus 10524 (.shr 10523 31) := by core033_kernel_decide
theorem stats10524 : actualRows10524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10524=2892 := by core033_kernel_decide
theorem rows10525 : actualRows10525=WordField.canonicalRows actualModulus 10525 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10525 : actualRows10525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10525=2892 := by core033_kernel_decide
theorem rows10526 : actualRows10526=WordField.canonicalRows actualModulus 10526 (.bxor 10524 10525) := by core033_kernel_decide
theorem stats10526 : actualRows10526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10526=7428 := by core033_kernel_decide
theorem rows10527 : actualRows10527=WordField.canonicalRows actualModulus 10527 (.band 10511 10526) := by core033_kernel_decide
theorem stats10527 : actualRows10527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10527=5124 := by core033_kernel_decide
def partRows162 : List R1CS.Row := actualRows10464++actualRows10465++actualRows10466++actualRows10467++actualRows10468++actualRows10469++actualRows10470++actualRows10471++actualRows10472++actualRows10473++actualRows10474++actualRows10475++actualRows10476++actualRows10477++actualRows10478++actualRows10479++actualRows10480++actualRows10481++actualRows10482++actualRows10483++actualRows10484++actualRows10485++actualRows10486++actualRows10487++actualRows10488++actualRows10489++actualRows10490++actualRows10491++actualRows10492++actualRows10493++actualRows10494++actualRows10495++actualRows10496++actualRows10497++actualRows10498++actualRows10499++actualRows10500++actualRows10501++actualRows10502++actualRows10503++actualRows10504++actualRows10505++actualRows10506++actualRows10507++actualRows10508++actualRows10509++actualRows10510++actualRows10511++actualRows10512++actualRows10513++actualRows10514++actualRows10515++actualRows10516++actualRows10517++actualRows10518++actualRows10519++actualRows10520++actualRows10521++actualRows10522++actualRows10523++actualRows10524++actualRows10525++actualRows10526++actualRows10527
def partOps162 : List WordIR.Op := [.shr 10463 31,.badd 10457 10464,.literal (BitVec.ofNat 32 0),.bnot 10466,.band 10245 10467,.literal (BitVec.ofNat 32 0),.bnot 10469,.bxor 10245 10470,.literal (BitVec.ofNat 32 0),.bnot 10472,.badd 10245 10473,.bnot 10474,.band 10471 10475,.bxor 10468 10476,.shr 10477 31,.literal (BitVec.ofNat 32 1),.bxor 10478 10479,.literal (BitVec.ofNat 32 1048576),.bnot 10481,.band 10234 10482,.literal (BitVec.ofNat 32 1048576),.bnot 10484,.bxor 10234 10485,.literal (BitVec.ofNat 32 1048576),.bnot 10487,.badd 10234 10488,.bnot 10489,.band 10486 10490,.bxor 10483 10491,.shr 10492 31,.literal (BitVec.ofNat 32 1),.bxor 10493 10494,.band 10480 10495,.literal (BitVec.ofNat 32 0),.bnot 10497,.band 10267 10498,.literal (BitVec.ofNat 32 0),.bnot 10500,.bxor 10267 10501,.literal (BitVec.ofNat 32 0),.bnot 10503,.badd 10267 10504,.bnot 10505,.band 10502 10506,.bxor 10499 10507,.shr 10508 31,.literal (BitVec.ofNat 32 1),.bxor 10509 10510,.literal (BitVec.ofNat 32 1048576),.bnot 10512,.band 10256 10513,.literal (BitVec.ofNat 32 1048576),.bnot 10515,.bxor 10256 10516,.literal (BitVec.ofNat 32 1048576),.bnot 10518,.badd 10256 10519,.bnot 10520,.band 10517 10521,.bxor 10514 10522,.shr 10523 31,.literal (BitVec.ofNat 32 1),.bxor 10524 10525,.band 10511 10526]
theorem partExact162 : partRows162=WordField.rows actualModulus 10464 partOps162 := by
  simp only [partRows162,partOps162,WordField.rows,rows10464,rows10465,rows10466,rows10467,rows10468,rows10469,rows10470,rows10471,rows10472,rows10473,rows10474,rows10475,rows10476,rows10477,rows10478,rows10479,rows10480,rows10481,rows10482,rows10483,rows10484,rows10485,rows10486,rows10487,rows10488,rows10489,rows10490,rows10491,rows10492,rows10493,rows10494,rows10495,rows10496,rows10497,rows10498,rows10499,rows10500,rows10501,rows10502,rows10503,rows10504,rows10505,rows10506,rows10507,rows10508,rows10509,rows10510,rows10511,rows10512,rows10513,rows10514,rows10515,rows10516,rows10517,rows10518,rows10519,rows10520,rows10521,rows10522,rows10523,rows10524,rows10525,rows10526,rows10527,List.append_assoc,List.append_nil]
theorem partLength162 : partOps162.length=64 := by decide
theorem partStats162 : partRows162.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows162=328032 := by
  simp only [partRows162,List.length_append,MatrixRowBlocks.rows_weight_append,stats10464.1,stats10464.2,stats10465.1,stats10465.2,stats10466.1,stats10466.2,stats10467.1,stats10467.2,stats10468.1,stats10468.2,stats10469.1,stats10469.2,stats10470.1,stats10470.2,stats10471.1,stats10471.2,stats10472.1,stats10472.2,stats10473.1,stats10473.2,stats10474.1,stats10474.2,stats10475.1,stats10475.2,stats10476.1,stats10476.2,stats10477.1,stats10477.2,stats10478.1,stats10478.2,stats10479.1,stats10479.2,stats10480.1,stats10480.2,stats10481.1,stats10481.2,stats10482.1,stats10482.2,stats10483.1,stats10483.2,stats10484.1,stats10484.2,stats10485.1,stats10485.2,stats10486.1,stats10486.2,stats10487.1,stats10487.2,stats10488.1,stats10488.2,stats10489.1,stats10489.2,stats10490.1,stats10490.2,stats10491.1,stats10491.2,stats10492.1,stats10492.2,stats10493.1,stats10493.2,stats10494.1,stats10494.2,stats10495.1,stats10495.2,stats10496.1,stats10496.2,stats10497.1,stats10497.2,stats10498.1,stats10498.2,stats10499.1,stats10499.2,stats10500.1,stats10500.2,stats10501.1,stats10501.2,stats10502.1,stats10502.2,stats10503.1,stats10503.2,stats10504.1,stats10504.2,stats10505.1,stats10505.2,stats10506.1,stats10506.2,stats10507.1,stats10507.2,stats10508.1,stats10508.2,stats10509.1,stats10509.2,stats10510.1,stats10510.2,stats10511.1,stats10511.2,stats10512.1,stats10512.2,stats10513.1,stats10513.2,stats10514.1,stats10514.2,stats10515.1,stats10515.2,stats10516.1,stats10516.2,stats10517.1,stats10517.2,stats10518.1,stats10518.2,stats10519.1,stats10519.2,stats10520.1,stats10520.2,stats10521.1,stats10521.2,stats10522.1,stats10522.2,stats10523.1,stats10523.2,stats10524.1,stats10524.2,stats10525.1,stats10525.2,stats10526.1,stats10526.2,stats10527.1,stats10527.2]
  decide
end PairedPathRoundCheckedRows
