import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData163
import PathRoundDispatchInstructionMatrixData164
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10475 : actualRows10475=WordField.canonicalRows actualModulus 10475 (.band 10468 10474) := by core033_kernel_decide
theorem stats10475 : actualRows10475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10475=5124 := by core033_kernel_decide
theorem rows10476 : actualRows10476=WordField.canonicalRows actualModulus 10476 (.bxor 10463 10475) := by core033_kernel_decide
theorem stats10476 : actualRows10476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10476=7428 := by core033_kernel_decide
theorem rows10477 : actualRows10477=WordField.canonicalRows actualModulus 10477 (.shr 10476 31) := by core033_kernel_decide
theorem stats10477 : actualRows10477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10477=2892 := by core033_kernel_decide
theorem rows10478 : actualRows10478=WordField.canonicalRows actualModulus 10478 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10478 : actualRows10478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10478=2892 := by core033_kernel_decide
theorem rows10479 : actualRows10479=WordField.canonicalRows actualModulus 10479 (.bxor 10477 10478) := by core033_kernel_decide
theorem stats10479 : actualRows10479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10479=7428 := by core033_kernel_decide
theorem rows10480 : actualRows10480=WordField.canonicalRows actualModulus 10480 (.bnot 10479) := by core033_kernel_decide
theorem stats10480 : actualRows10480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10480=6276 := by core033_kernel_decide
theorem rows10481 : actualRows10481=WordField.canonicalRows actualModulus 10481 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10481 : actualRows10481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10481=2892 := by core033_kernel_decide
theorem rows10482 : actualRows10482=WordField.canonicalRows actualModulus 10482 (.badd 10480 10481) := by core033_kernel_decide
theorem stats10482 : actualRows10482.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10482=5388 := by core033_kernel_decide
theorem rows10483 : actualRows10483=WordField.canonicalRows actualModulus 10483 (.bnot 10482) := by core033_kernel_decide
theorem stats10483 : actualRows10483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10483=6276 := by core033_kernel_decide
theorem rows10484 : actualRows10484=WordField.canonicalRows actualModulus 10484 (.band 10483 140) := by core033_kernel_decide
theorem stats10484 : actualRows10484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10484=5124 := by core033_kernel_decide
theorem rows10485 : actualRows10485=WordField.canonicalRows actualModulus 10485 (.bxor 10458 10484) := by core033_kernel_decide
theorem stats10485 : actualRows10485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10485=7428 := by core033_kernel_decide
theorem rows10486 : actualRows10486=WordField.canonicalRows actualModulus 10486 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10486 : actualRows10486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10486=2964 := by core033_kernel_decide
theorem rows10487 : actualRows10487=WordField.canonicalRows actualModulus 10487 (.bxor 0 10486) := by core033_kernel_decide
theorem stats10487 : actualRows10487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10487=7428 := by core033_kernel_decide
theorem rows10488 : actualRows10488=WordField.canonicalRows actualModulus 10488 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10488 : actualRows10488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10488=2820 := by core033_kernel_decide
theorem rows10489 : actualRows10489=WordField.canonicalRows actualModulus 10489 (.bnot 10488) := by core033_kernel_decide
theorem stats10489 : actualRows10489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10489=6276 := by core033_kernel_decide
theorem rows10490 : actualRows10490=WordField.canonicalRows actualModulus 10490 (.band 10487 10489) := by core033_kernel_decide
theorem stats10490 : actualRows10490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10490=5124 := by core033_kernel_decide
theorem rows10491 : actualRows10491=WordField.canonicalRows actualModulus 10491 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10491 : actualRows10491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10491=2964 := by core033_kernel_decide
theorem rows10492 : actualRows10492=WordField.canonicalRows actualModulus 10492 (.bxor 0 10491) := by core033_kernel_decide
theorem stats10492 : actualRows10492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10492=7428 := by core033_kernel_decide
theorem rows10493 : actualRows10493=WordField.canonicalRows actualModulus 10493 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10493 : actualRows10493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10493=2820 := by core033_kernel_decide
theorem rows10494 : actualRows10494=WordField.canonicalRows actualModulus 10494 (.bnot 10493) := by core033_kernel_decide
theorem stats10494 : actualRows10494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10494=6276 := by core033_kernel_decide
theorem rows10495 : actualRows10495=WordField.canonicalRows actualModulus 10495 (.bxor 10492 10494) := by core033_kernel_decide
theorem stats10495 : actualRows10495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10495=7428 := by core033_kernel_decide
theorem rows10496 : actualRows10496=WordField.canonicalRows actualModulus 10496 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10496 : actualRows10496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10496=2964 := by core033_kernel_decide
theorem rows10497 : actualRows10497=WordField.canonicalRows actualModulus 10497 (.bxor 0 10496) := by core033_kernel_decide
theorem stats10497 : actualRows10497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10497=7428 := by core033_kernel_decide
theorem rows10498 : actualRows10498=WordField.canonicalRows actualModulus 10498 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10498 : actualRows10498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10498=2820 := by core033_kernel_decide
theorem rows10499 : actualRows10499=WordField.canonicalRows actualModulus 10499 (.bnot 10498) := by core033_kernel_decide
theorem stats10499 : actualRows10499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10499=6276 := by core033_kernel_decide
theorem rows10500 : actualRows10500=WordField.canonicalRows actualModulus 10500 (.badd 10497 10499) := by core033_kernel_decide
theorem stats10500 : actualRows10500.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10500=5388 := by core033_kernel_decide
theorem rows10501 : actualRows10501=WordField.canonicalRows actualModulus 10501 (.bnot 10500) := by core033_kernel_decide
theorem stats10501 : actualRows10501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10501=6276 := by core033_kernel_decide
theorem rows10502 : actualRows10502=WordField.canonicalRows actualModulus 10502 (.band 10495 10501) := by core033_kernel_decide
theorem stats10502 : actualRows10502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10502=5124 := by core033_kernel_decide
theorem rows10503 : actualRows10503=WordField.canonicalRows actualModulus 10503 (.bxor 10490 10502) := by core033_kernel_decide
theorem stats10503 : actualRows10503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10503=7428 := by core033_kernel_decide
theorem rows10504 : actualRows10504=WordField.canonicalRows actualModulus 10504 (.shr 10503 31) := by core033_kernel_decide
theorem stats10504 : actualRows10504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10504=2892 := by core033_kernel_decide
theorem rows10505 : actualRows10505=WordField.canonicalRows actualModulus 10505 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10505 : actualRows10505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10505=2892 := by core033_kernel_decide
theorem rows10506 : actualRows10506=WordField.canonicalRows actualModulus 10506 (.bxor 10504 10505) := by core033_kernel_decide
theorem stats10506 : actualRows10506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10506=7428 := by core033_kernel_decide
theorem rows10507 : actualRows10507=WordField.canonicalRows actualModulus 10507 (.bnot 10506) := by core033_kernel_decide
theorem stats10507 : actualRows10507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10507=6276 := by core033_kernel_decide
theorem rows10508 : actualRows10508=WordField.canonicalRows actualModulus 10508 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10508 : actualRows10508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10508=2892 := by core033_kernel_decide
theorem rows10509 : actualRows10509=WordField.canonicalRows actualModulus 10509 (.badd 10507 10508) := by core033_kernel_decide
theorem stats10509 : actualRows10509.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10509=5388 := by core033_kernel_decide
theorem rows10510 : actualRows10510=WordField.canonicalRows actualModulus 10510 (.band 10509 9472) := by core033_kernel_decide
theorem stats10510 : actualRows10510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10510=5124 := by core033_kernel_decide
theorem rows10511 : actualRows10511=WordField.canonicalRows actualModulus 10511 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10511 : actualRows10511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10511=2964 := by core033_kernel_decide
theorem rows10512 : actualRows10512=WordField.canonicalRows actualModulus 10512 (.bxor 0 10511) := by core033_kernel_decide
theorem stats10512 : actualRows10512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10512=7428 := by core033_kernel_decide
theorem rows10513 : actualRows10513=WordField.canonicalRows actualModulus 10513 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10513 : actualRows10513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10513=2820 := by core033_kernel_decide
theorem rows10514 : actualRows10514=WordField.canonicalRows actualModulus 10514 (.bnot 10513) := by core033_kernel_decide
theorem stats10514 : actualRows10514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10514=6276 := by core033_kernel_decide
theorem rows10515 : actualRows10515=WordField.canonicalRows actualModulus 10515 (.band 10512 10514) := by core033_kernel_decide
theorem stats10515 : actualRows10515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10515=5124 := by core033_kernel_decide
theorem rows10516 : actualRows10516=WordField.canonicalRows actualModulus 10516 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10516 : actualRows10516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10516=2964 := by core033_kernel_decide
theorem rows10517 : actualRows10517=WordField.canonicalRows actualModulus 10517 (.bxor 0 10516) := by core033_kernel_decide
theorem stats10517 : actualRows10517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10517=7428 := by core033_kernel_decide
theorem rows10518 : actualRows10518=WordField.canonicalRows actualModulus 10518 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10518 : actualRows10518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10518=2820 := by core033_kernel_decide
theorem rows10519 : actualRows10519=WordField.canonicalRows actualModulus 10519 (.bnot 10518) := by core033_kernel_decide
theorem stats10519 : actualRows10519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10519=6276 := by core033_kernel_decide
theorem rows10520 : actualRows10520=WordField.canonicalRows actualModulus 10520 (.bxor 10517 10519) := by core033_kernel_decide
theorem stats10520 : actualRows10520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10520=7428 := by core033_kernel_decide
theorem rows10521 : actualRows10521=WordField.canonicalRows actualModulus 10521 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10521 : actualRows10521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10521=2964 := by core033_kernel_decide
theorem rows10522 : actualRows10522=WordField.canonicalRows actualModulus 10522 (.bxor 0 10521) := by core033_kernel_decide
theorem stats10522 : actualRows10522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10522=7428 := by core033_kernel_decide
theorem rows10523 : actualRows10523=WordField.canonicalRows actualModulus 10523 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10523 : actualRows10523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10523=2820 := by core033_kernel_decide
theorem rows10524 : actualRows10524=WordField.canonicalRows actualModulus 10524 (.bnot 10523) := by core033_kernel_decide
theorem stats10524 : actualRows10524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10524=6276 := by core033_kernel_decide
theorem rows10525 : actualRows10525=WordField.canonicalRows actualModulus 10525 (.badd 10522 10524) := by core033_kernel_decide
theorem stats10525 : actualRows10525.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10525=5388 := by core033_kernel_decide
theorem rows10526 : actualRows10526=WordField.canonicalRows actualModulus 10526 (.bnot 10525) := by core033_kernel_decide
theorem stats10526 : actualRows10526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10526=6276 := by core033_kernel_decide
theorem rows10527 : actualRows10527=WordField.canonicalRows actualModulus 10527 (.band 10520 10526) := by core033_kernel_decide
theorem stats10527 : actualRows10527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10527=5124 := by core033_kernel_decide
theorem rows10528 : actualRows10528=WordField.canonicalRows actualModulus 10528 (.bxor 10515 10527) := by core033_kernel_decide
theorem stats10528 : actualRows10528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10528=7428 := by core033_kernel_decide
theorem rows10529 : actualRows10529=WordField.canonicalRows actualModulus 10529 (.shr 10528 31) := by core033_kernel_decide
theorem stats10529 : actualRows10529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10529=2892 := by core033_kernel_decide
theorem rows10530 : actualRows10530=WordField.canonicalRows actualModulus 10530 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10530 : actualRows10530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10530=2892 := by core033_kernel_decide
theorem rows10531 : actualRows10531=WordField.canonicalRows actualModulus 10531 (.bxor 10529 10530) := by core033_kernel_decide
theorem stats10531 : actualRows10531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10531=7428 := by core033_kernel_decide
theorem rows10532 : actualRows10532=WordField.canonicalRows actualModulus 10532 (.bnot 10531) := by core033_kernel_decide
theorem stats10532 : actualRows10532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10532=6276 := by core033_kernel_decide
theorem rows10533 : actualRows10533=WordField.canonicalRows actualModulus 10533 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10533 : actualRows10533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10533=2892 := by core033_kernel_decide
theorem rows10534 : actualRows10534=WordField.canonicalRows actualModulus 10534 (.badd 10532 10533) := by core033_kernel_decide
theorem stats10534 : actualRows10534.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10534=5388 := by core033_kernel_decide
theorem rows10535 : actualRows10535=WordField.canonicalRows actualModulus 10535 (.bnot 10534) := by core033_kernel_decide
theorem stats10535 : actualRows10535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10535=6276 := by core033_kernel_decide
theorem rows10536 : actualRows10536=WordField.canonicalRows actualModulus 10536 (.band 10535 151) := by core033_kernel_decide
theorem stats10536 : actualRows10536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10536=5124 := by core033_kernel_decide
theorem rows10537 : actualRows10537=WordField.canonicalRows actualModulus 10537 (.bxor 10510 10536) := by core033_kernel_decide
theorem stats10537 : actualRows10537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10537=7428 := by core033_kernel_decide
theorem rows10538 : actualRows10538=WordField.canonicalRows actualModulus 10538 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10538 : actualRows10538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10538=2964 := by core033_kernel_decide
def partRows163 : List R1CS.Row := actualRows10475++actualRows10476++actualRows10477++actualRows10478++actualRows10479++actualRows10480++actualRows10481++actualRows10482++actualRows10483++actualRows10484++actualRows10485++actualRows10486++actualRows10487++actualRows10488++actualRows10489++actualRows10490++actualRows10491++actualRows10492++actualRows10493++actualRows10494++actualRows10495++actualRows10496++actualRows10497++actualRows10498++actualRows10499++actualRows10500++actualRows10501++actualRows10502++actualRows10503++actualRows10504++actualRows10505++actualRows10506++actualRows10507++actualRows10508++actualRows10509++actualRows10510++actualRows10511++actualRows10512++actualRows10513++actualRows10514++actualRows10515++actualRows10516++actualRows10517++actualRows10518++actualRows10519++actualRows10520++actualRows10521++actualRows10522++actualRows10523++actualRows10524++actualRows10525++actualRows10526++actualRows10527++actualRows10528++actualRows10529++actualRows10530++actualRows10531++actualRows10532++actualRows10533++actualRows10534++actualRows10535++actualRows10536++actualRows10537++actualRows10538
def partOps163 : List WordIR.Op := [.band 10468 10474,.bxor 10463 10475,.shr 10476 31,.literal (BitVec.ofNat 32 1),.bxor 10477 10478,.bnot 10479,.literal (BitVec.ofNat 32 1),.badd 10480 10481,.bnot 10482,.band 10483 140,.bxor 10458 10484,.literal (BitVec.ofNat 32 3),.bxor 0 10486,.literal (BitVec.ofNat 32 0),.bnot 10488,.band 10487 10489,.literal (BitVec.ofNat 32 3),.bxor 0 10491,.literal (BitVec.ofNat 32 0),.bnot 10493,.bxor 10492 10494,.literal (BitVec.ofNat 32 3),.bxor 0 10496,.literal (BitVec.ofNat 32 0),.bnot 10498,.badd 10497 10499,.bnot 10500,.band 10495 10501,.bxor 10490 10502,.shr 10503 31,.literal (BitVec.ofNat 32 1),.bxor 10504 10505,.bnot 10506,.literal (BitVec.ofNat 32 1),.badd 10507 10508,.band 10509 9472,.literal (BitVec.ofNat 32 3),.bxor 0 10511,.literal (BitVec.ofNat 32 0),.bnot 10513,.band 10512 10514,.literal (BitVec.ofNat 32 3),.bxor 0 10516,.literal (BitVec.ofNat 32 0),.bnot 10518,.bxor 10517 10519,.literal (BitVec.ofNat 32 3),.bxor 0 10521,.literal (BitVec.ofNat 32 0),.bnot 10523,.badd 10522 10524,.bnot 10525,.band 10520 10526,.bxor 10515 10527,.shr 10528 31,.literal (BitVec.ofNat 32 1),.bxor 10529 10530,.bnot 10531,.literal (BitVec.ofNat 32 1),.badd 10532 10533,.bnot 10534,.band 10535 151,.bxor 10510 10536,.literal (BitVec.ofNat 32 3)]
theorem partExact163 : partRows163=WordField.rows actualModulus 10475 partOps163 := by
  simp only [partRows163,partOps163,WordField.rows,rows10475,rows10476,rows10477,rows10478,rows10479,rows10480,rows10481,rows10482,rows10483,rows10484,rows10485,rows10486,rows10487,rows10488,rows10489,rows10490,rows10491,rows10492,rows10493,rows10494,rows10495,rows10496,rows10497,rows10498,rows10499,rows10500,rows10501,rows10502,rows10503,rows10504,rows10505,rows10506,rows10507,rows10508,rows10509,rows10510,rows10511,rows10512,rows10513,rows10514,rows10515,rows10516,rows10517,rows10518,rows10519,rows10520,rows10521,rows10522,rows10523,rows10524,rows10525,rows10526,rows10527,rows10528,rows10529,rows10530,rows10531,rows10532,rows10533,rows10534,rows10535,rows10536,rows10537,rows10538,List.append_assoc,List.append_nil]
theorem partLength163 : partOps163.length=64 := by decide
theorem partStats163 : partRows163.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows163=332064 := by
  simp only [partRows163,List.length_append,MatrixRowBlocks.rows_weight_append,stats10475.1,stats10475.2,stats10476.1,stats10476.2,stats10477.1,stats10477.2,stats10478.1,stats10478.2,stats10479.1,stats10479.2,stats10480.1,stats10480.2,stats10481.1,stats10481.2,stats10482.1,stats10482.2,stats10483.1,stats10483.2,stats10484.1,stats10484.2,stats10485.1,stats10485.2,stats10486.1,stats10486.2,stats10487.1,stats10487.2,stats10488.1,stats10488.2,stats10489.1,stats10489.2,stats10490.1,stats10490.2,stats10491.1,stats10491.2,stats10492.1,stats10492.2,stats10493.1,stats10493.2,stats10494.1,stats10494.2,stats10495.1,stats10495.2,stats10496.1,stats10496.2,stats10497.1,stats10497.2,stats10498.1,stats10498.2,stats10499.1,stats10499.2,stats10500.1,stats10500.2,stats10501.1,stats10501.2,stats10502.1,stats10502.2,stats10503.1,stats10503.2,stats10504.1,stats10504.2,stats10505.1,stats10505.2,stats10506.1,stats10506.2,stats10507.1,stats10507.2,stats10508.1,stats10508.2,stats10509.1,stats10509.2,stats10510.1,stats10510.2,stats10511.1,stats10511.2,stats10512.1,stats10512.2,stats10513.1,stats10513.2,stats10514.1,stats10514.2,stats10515.1,stats10515.2,stats10516.1,stats10516.2,stats10517.1,stats10517.2,stats10518.1,stats10518.2,stats10519.1,stats10519.2,stats10520.1,stats10520.2,stats10521.1,stats10521.2,stats10522.1,stats10522.2,stats10523.1,stats10523.2,stats10524.1,stats10524.2,stats10525.1,stats10525.2,stats10526.1,stats10526.2,stats10527.1,stats10527.2,stats10528.1,stats10528.2,stats10529.1,stats10529.2,stats10530.1,stats10530.2,stats10531.1,stats10531.2,stats10532.1,stats10532.2,stats10533.1,stats10533.2,stats10534.1,stats10534.2,stats10535.1,stats10535.2,stats10536.1,stats10536.2,stats10537.1,stats10537.2,stats10538.1,stats10538.2]
  decide
end PathRoundDispatchCheckedRows
