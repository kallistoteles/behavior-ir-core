import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData163
import AuthenticatedBranchRoundInstructionMatrixData164
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10486 : actualRows10486=WordField.canonicalRows actualModulus 10486 (.badd 3277 10428) := by core033_kernel_decide
theorem stats10486 : actualRows10486.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10486=5388 := by core033_kernel_decide
theorem rows10487 : actualRows10487=WordField.canonicalRows actualModulus 10487 (.badd 3330 10401) := by core033_kernel_decide
theorem stats10487 : actualRows10487.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10487=5388 := by core033_kernel_decide
theorem rows10488 : actualRows10488=WordField.canonicalRows actualModulus 10488 (.badd 3383 10483) := by core033_kernel_decide
theorem stats10488 : actualRows10488.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10488=5388 := by core033_kernel_decide
theorem rows10489 : actualRows10489=WordField.canonicalRows actualModulus 10489 (.badd 3436 10456) := by core033_kernel_decide
theorem stats10489 : actualRows10489.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10489=5388 := by core033_kernel_decide
theorem rows10490 : actualRows10490=WordField.canonicalRows actualModulus 10490 (.badd 3489 10429) := by core033_kernel_decide
theorem stats10490 : actualRows10490.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10490=5388 := by core033_kernel_decide
theorem rows10491 : actualRows10491=WordField.canonicalRows actualModulus 10491 (.badd 3542 10402) := by core033_kernel_decide
theorem stats10491 : actualRows10491.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10491=5388 := by core033_kernel_decide
theorem rows10492 : actualRows10492=WordField.canonicalRows actualModulus 10492 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10492 : actualRows10492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10492=2892 := by core033_kernel_decide
theorem rows10493 : actualRows10493=WordField.canonicalRows actualModulus 10493 (.bxor 1299 10492) := by core033_kernel_decide
theorem stats10493 : actualRows10493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10493=7428 := by core033_kernel_decide
theorem rows10494 : actualRows10494=WordField.canonicalRows actualModulus 10494 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10494 : actualRows10494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10494=2820 := by core033_kernel_decide
theorem rows10495 : actualRows10495=WordField.canonicalRows actualModulus 10495 (.bnot 10494) := by core033_kernel_decide
theorem stats10495 : actualRows10495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10495=6276 := by core033_kernel_decide
theorem rows10496 : actualRows10496=WordField.canonicalRows actualModulus 10496 (.band 10493 10495) := by core033_kernel_decide
theorem stats10496 : actualRows10496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10496=5124 := by core033_kernel_decide
theorem rows10497 : actualRows10497=WordField.canonicalRows actualModulus 10497 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10497 : actualRows10497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10497=2892 := by core033_kernel_decide
theorem rows10498 : actualRows10498=WordField.canonicalRows actualModulus 10498 (.bxor 1299 10497) := by core033_kernel_decide
theorem stats10498 : actualRows10498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10498=7428 := by core033_kernel_decide
theorem rows10499 : actualRows10499=WordField.canonicalRows actualModulus 10499 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10499 : actualRows10499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10499=2820 := by core033_kernel_decide
theorem rows10500 : actualRows10500=WordField.canonicalRows actualModulus 10500 (.bnot 10499) := by core033_kernel_decide
theorem stats10500 : actualRows10500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10500=6276 := by core033_kernel_decide
theorem rows10501 : actualRows10501=WordField.canonicalRows actualModulus 10501 (.bxor 10498 10500) := by core033_kernel_decide
theorem stats10501 : actualRows10501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10501=7428 := by core033_kernel_decide
theorem rows10502 : actualRows10502=WordField.canonicalRows actualModulus 10502 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10502 : actualRows10502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10502=2892 := by core033_kernel_decide
theorem rows10503 : actualRows10503=WordField.canonicalRows actualModulus 10503 (.bxor 1299 10502) := by core033_kernel_decide
theorem stats10503 : actualRows10503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10503=7428 := by core033_kernel_decide
theorem rows10504 : actualRows10504=WordField.canonicalRows actualModulus 10504 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10504 : actualRows10504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10504=2820 := by core033_kernel_decide
theorem rows10505 : actualRows10505=WordField.canonicalRows actualModulus 10505 (.bnot 10504) := by core033_kernel_decide
theorem stats10505 : actualRows10505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10505=6276 := by core033_kernel_decide
theorem rows10506 : actualRows10506=WordField.canonicalRows actualModulus 10506 (.badd 10503 10505) := by core033_kernel_decide
theorem stats10506 : actualRows10506.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10506=5388 := by core033_kernel_decide
theorem rows10507 : actualRows10507=WordField.canonicalRows actualModulus 10507 (.bnot 10506) := by core033_kernel_decide
theorem stats10507 : actualRows10507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10507=6276 := by core033_kernel_decide
theorem rows10508 : actualRows10508=WordField.canonicalRows actualModulus 10508 (.band 10501 10507) := by core033_kernel_decide
theorem stats10508 : actualRows10508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10508=5124 := by core033_kernel_decide
theorem rows10509 : actualRows10509=WordField.canonicalRows actualModulus 10509 (.bxor 10496 10508) := by core033_kernel_decide
theorem stats10509 : actualRows10509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10509=7428 := by core033_kernel_decide
theorem rows10510 : actualRows10510=WordField.canonicalRows actualModulus 10510 (.shr 10509 31) := by core033_kernel_decide
theorem stats10510 : actualRows10510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10510=2892 := by core033_kernel_decide
theorem rows10511 : actualRows10511=WordField.canonicalRows actualModulus 10511 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10511 : actualRows10511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10511=2892 := by core033_kernel_decide
theorem rows10512 : actualRows10512=WordField.canonicalRows actualModulus 10512 (.bxor 10510 10511) := by core033_kernel_decide
theorem stats10512 : actualRows10512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10512=7428 := by core033_kernel_decide
theorem rows10513 : actualRows10513=WordField.canonicalRows actualModulus 10513 (.bnot 10512) := by core033_kernel_decide
theorem stats10513 : actualRows10513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10513=6276 := by core033_kernel_decide
theorem rows10514 : actualRows10514=WordField.canonicalRows actualModulus 10514 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10514 : actualRows10514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10514=2892 := by core033_kernel_decide
theorem rows10515 : actualRows10515=WordField.canonicalRows actualModulus 10515 (.badd 10513 10514) := by core033_kernel_decide
theorem stats10515 : actualRows10515.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10515=5388 := by core033_kernel_decide
theorem rows10516 : actualRows10516=WordField.canonicalRows actualModulus 10516 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10516 : actualRows10516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10516=2964 := by core033_kernel_decide
theorem rows10517 : actualRows10517=WordField.canonicalRows actualModulus 10517 (.band 10515 10516) := by core033_kernel_decide
theorem stats10517 : actualRows10517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10517=5124 := by core033_kernel_decide
theorem rows10518 : actualRows10518=WordField.canonicalRows actualModulus 10518 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10518 : actualRows10518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10518=2892 := by core033_kernel_decide
theorem rows10519 : actualRows10519=WordField.canonicalRows actualModulus 10519 (.bxor 1299 10518) := by core033_kernel_decide
theorem stats10519 : actualRows10519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10519=7428 := by core033_kernel_decide
theorem rows10520 : actualRows10520=WordField.canonicalRows actualModulus 10520 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10520 : actualRows10520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10520=2820 := by core033_kernel_decide
theorem rows10521 : actualRows10521=WordField.canonicalRows actualModulus 10521 (.bnot 10520) := by core033_kernel_decide
theorem stats10521 : actualRows10521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10521=6276 := by core033_kernel_decide
theorem rows10522 : actualRows10522=WordField.canonicalRows actualModulus 10522 (.band 10519 10521) := by core033_kernel_decide
theorem stats10522 : actualRows10522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10522=5124 := by core033_kernel_decide
theorem rows10523 : actualRows10523=WordField.canonicalRows actualModulus 10523 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10523 : actualRows10523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10523=2892 := by core033_kernel_decide
theorem rows10524 : actualRows10524=WordField.canonicalRows actualModulus 10524 (.bxor 1299 10523) := by core033_kernel_decide
theorem stats10524 : actualRows10524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10524=7428 := by core033_kernel_decide
theorem rows10525 : actualRows10525=WordField.canonicalRows actualModulus 10525 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10525 : actualRows10525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10525=2820 := by core033_kernel_decide
theorem rows10526 : actualRows10526=WordField.canonicalRows actualModulus 10526 (.bnot 10525) := by core033_kernel_decide
theorem stats10526 : actualRows10526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10526=6276 := by core033_kernel_decide
theorem rows10527 : actualRows10527=WordField.canonicalRows actualModulus 10527 (.bxor 10524 10526) := by core033_kernel_decide
theorem stats10527 : actualRows10527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10527=7428 := by core033_kernel_decide
theorem rows10528 : actualRows10528=WordField.canonicalRows actualModulus 10528 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10528 : actualRows10528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10528=2892 := by core033_kernel_decide
theorem rows10529 : actualRows10529=WordField.canonicalRows actualModulus 10529 (.bxor 1299 10528) := by core033_kernel_decide
theorem stats10529 : actualRows10529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10529=7428 := by core033_kernel_decide
theorem rows10530 : actualRows10530=WordField.canonicalRows actualModulus 10530 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10530 : actualRows10530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10530=2820 := by core033_kernel_decide
theorem rows10531 : actualRows10531=WordField.canonicalRows actualModulus 10531 (.bnot 10530) := by core033_kernel_decide
theorem stats10531 : actualRows10531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10531=6276 := by core033_kernel_decide
theorem rows10532 : actualRows10532=WordField.canonicalRows actualModulus 10532 (.badd 10529 10531) := by core033_kernel_decide
theorem stats10532 : actualRows10532.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10532=5388 := by core033_kernel_decide
theorem rows10533 : actualRows10533=WordField.canonicalRows actualModulus 10533 (.bnot 10532) := by core033_kernel_decide
theorem stats10533 : actualRows10533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10533=6276 := by core033_kernel_decide
theorem rows10534 : actualRows10534=WordField.canonicalRows actualModulus 10534 (.band 10527 10533) := by core033_kernel_decide
theorem stats10534 : actualRows10534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10534=5124 := by core033_kernel_decide
theorem rows10535 : actualRows10535=WordField.canonicalRows actualModulus 10535 (.bxor 10522 10534) := by core033_kernel_decide
theorem stats10535 : actualRows10535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10535=7428 := by core033_kernel_decide
theorem rows10536 : actualRows10536=WordField.canonicalRows actualModulus 10536 (.shr 10535 31) := by core033_kernel_decide
theorem stats10536 : actualRows10536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10536=2892 := by core033_kernel_decide
theorem rows10537 : actualRows10537=WordField.canonicalRows actualModulus 10537 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10537 : actualRows10537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10537=2892 := by core033_kernel_decide
theorem rows10538 : actualRows10538=WordField.canonicalRows actualModulus 10538 (.bxor 10536 10537) := by core033_kernel_decide
theorem stats10538 : actualRows10538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10538=7428 := by core033_kernel_decide
theorem rows10539 : actualRows10539=WordField.canonicalRows actualModulus 10539 (.bnot 10538) := by core033_kernel_decide
theorem stats10539 : actualRows10539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10539=6276 := by core033_kernel_decide
theorem rows10540 : actualRows10540=WordField.canonicalRows actualModulus 10540 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10540 : actualRows10540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10540=2892 := by core033_kernel_decide
theorem rows10541 : actualRows10541=WordField.canonicalRows actualModulus 10541 (.badd 10539 10540) := by core033_kernel_decide
theorem stats10541 : actualRows10541.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10541=5388 := by core033_kernel_decide
theorem rows10542 : actualRows10542=WordField.canonicalRows actualModulus 10542 (.bnot 10541) := by core033_kernel_decide
theorem stats10542 : actualRows10542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10542=6276 := by core033_kernel_decide
theorem rows10543 : actualRows10543=WordField.canonicalRows actualModulus 10543 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats10543 : actualRows10543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10543=2892 := by core033_kernel_decide
theorem rows10544 : actualRows10544=WordField.canonicalRows actualModulus 10544 (.band 10542 10543) := by core033_kernel_decide
theorem stats10544 : actualRows10544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10544=5124 := by core033_kernel_decide
theorem rows10545 : actualRows10545=WordField.canonicalRows actualModulus 10545 (.bxor 10517 10544) := by core033_kernel_decide
theorem stats10545 : actualRows10545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10545=7428 := by core033_kernel_decide
theorem rows10546 : actualRows10546=WordField.canonicalRows actualModulus 10546 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10546 : actualRows10546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10546=2892 := by core033_kernel_decide
theorem rows10547 : actualRows10547=WordField.canonicalRows actualModulus 10547 (.bxor 1299 10546) := by core033_kernel_decide
theorem stats10547 : actualRows10547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10547=7428 := by core033_kernel_decide
theorem rows10548 : actualRows10548=WordField.canonicalRows actualModulus 10548 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10548 : actualRows10548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10548=2820 := by core033_kernel_decide
theorem rows10549 : actualRows10549=WordField.canonicalRows actualModulus 10549 (.bnot 10548) := by core033_kernel_decide
theorem stats10549 : actualRows10549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10549=6276 := by core033_kernel_decide
def partRows162 : List R1CS.Row := actualRows10486++actualRows10487++actualRows10488++actualRows10489++actualRows10490++actualRows10491++actualRows10492++actualRows10493++actualRows10494++actualRows10495++actualRows10496++actualRows10497++actualRows10498++actualRows10499++actualRows10500++actualRows10501++actualRows10502++actualRows10503++actualRows10504++actualRows10505++actualRows10506++actualRows10507++actualRows10508++actualRows10509++actualRows10510++actualRows10511++actualRows10512++actualRows10513++actualRows10514++actualRows10515++actualRows10516++actualRows10517++actualRows10518++actualRows10519++actualRows10520++actualRows10521++actualRows10522++actualRows10523++actualRows10524++actualRows10525++actualRows10526++actualRows10527++actualRows10528++actualRows10529++actualRows10530++actualRows10531++actualRows10532++actualRows10533++actualRows10534++actualRows10535++actualRows10536++actualRows10537++actualRows10538++actualRows10539++actualRows10540++actualRows10541++actualRows10542++actualRows10543++actualRows10544++actualRows10545++actualRows10546++actualRows10547++actualRows10548++actualRows10549
def partOps162 : List WordIR.Op := [.badd 3277 10428,.badd 3330 10401,.badd 3383 10483,.badd 3436 10456,.badd 3489 10429,.badd 3542 10402,.literal (BitVec.ofNat 32 2),.bxor 1299 10492,.literal (BitVec.ofNat 32 0),.bnot 10494,.band 10493 10495,.literal (BitVec.ofNat 32 2),.bxor 1299 10497,.literal (BitVec.ofNat 32 0),.bnot 10499,.bxor 10498 10500,.literal (BitVec.ofNat 32 2),.bxor 1299 10502,.literal (BitVec.ofNat 32 0),.bnot 10504,.badd 10503 10505,.bnot 10506,.band 10501 10507,.bxor 10496 10508,.shr 10509 31,.literal (BitVec.ofNat 32 1),.bxor 10510 10511,.bnot 10512,.literal (BitVec.ofNat 32 1),.badd 10513 10514,.literal (BitVec.ofNat 32 3),.band 10515 10516,.literal (BitVec.ofNat 32 2),.bxor 1299 10518,.literal (BitVec.ofNat 32 0),.bnot 10520,.band 10519 10521,.literal (BitVec.ofNat 32 2),.bxor 1299 10523,.literal (BitVec.ofNat 32 0),.bnot 10525,.bxor 10524 10526,.literal (BitVec.ofNat 32 2),.bxor 1299 10528,.literal (BitVec.ofNat 32 0),.bnot 10530,.badd 10529 10531,.bnot 10532,.band 10527 10533,.bxor 10522 10534,.shr 10535 31,.literal (BitVec.ofNat 32 1),.bxor 10536 10537,.bnot 10538,.literal (BitVec.ofNat 32 1),.badd 10539 10540,.bnot 10541,.literal (BitVec.ofNat 32 2),.band 10542 10543,.bxor 10517 10544,.literal (BitVec.ofNat 32 1),.bxor 1299 10546,.literal (BitVec.ofNat 32 0),.bnot 10548]
theorem partExact162 : partRows162=WordField.rows actualModulus 10486 partOps162 := by
  simp only [partRows162,partOps162,WordField.rows,rows10486,rows10487,rows10488,rows10489,rows10490,rows10491,rows10492,rows10493,rows10494,rows10495,rows10496,rows10497,rows10498,rows10499,rows10500,rows10501,rows10502,rows10503,rows10504,rows10505,rows10506,rows10507,rows10508,rows10509,rows10510,rows10511,rows10512,rows10513,rows10514,rows10515,rows10516,rows10517,rows10518,rows10519,rows10520,rows10521,rows10522,rows10523,rows10524,rows10525,rows10526,rows10527,rows10528,rows10529,rows10530,rows10531,rows10532,rows10533,rows10534,rows10535,rows10536,rows10537,rows10538,rows10539,rows10540,rows10541,rows10542,rows10543,rows10544,rows10545,rows10546,rows10547,rows10548,rows10549,List.append_assoc,List.append_nil]
theorem partLength162 : partOps162.length=64 := by decide
theorem partStats162 : partRows162.length=2186 ∧ MatrixRowBlocks.rowsWeight partRows162=327120 := by
  simp only [partRows162,List.length_append,MatrixRowBlocks.rows_weight_append,stats10486.1,stats10486.2,stats10487.1,stats10487.2,stats10488.1,stats10488.2,stats10489.1,stats10489.2,stats10490.1,stats10490.2,stats10491.1,stats10491.2,stats10492.1,stats10492.2,stats10493.1,stats10493.2,stats10494.1,stats10494.2,stats10495.1,stats10495.2,stats10496.1,stats10496.2,stats10497.1,stats10497.2,stats10498.1,stats10498.2,stats10499.1,stats10499.2,stats10500.1,stats10500.2,stats10501.1,stats10501.2,stats10502.1,stats10502.2,stats10503.1,stats10503.2,stats10504.1,stats10504.2,stats10505.1,stats10505.2,stats10506.1,stats10506.2,stats10507.1,stats10507.2,stats10508.1,stats10508.2,stats10509.1,stats10509.2,stats10510.1,stats10510.2,stats10511.1,stats10511.2,stats10512.1,stats10512.2,stats10513.1,stats10513.2,stats10514.1,stats10514.2,stats10515.1,stats10515.2,stats10516.1,stats10516.2,stats10517.1,stats10517.2,stats10518.1,stats10518.2,stats10519.1,stats10519.2,stats10520.1,stats10520.2,stats10521.1,stats10521.2,stats10522.1,stats10522.2,stats10523.1,stats10523.2,stats10524.1,stats10524.2,stats10525.1,stats10525.2,stats10526.1,stats10526.2,stats10527.1,stats10527.2,stats10528.1,stats10528.2,stats10529.1,stats10529.2,stats10530.1,stats10530.2,stats10531.1,stats10531.2,stats10532.1,stats10532.2,stats10533.1,stats10533.2,stats10534.1,stats10534.2,stats10535.1,stats10535.2,stats10536.1,stats10536.2,stats10537.1,stats10537.2,stats10538.1,stats10538.2,stats10539.1,stats10539.2,stats10540.1,stats10540.2,stats10541.1,stats10541.2,stats10542.1,stats10542.2,stats10543.1,stats10543.2,stats10544.1,stats10544.2,stats10545.1,stats10545.2,stats10546.1,stats10546.2,stats10547.1,stats10547.2,stats10548.1,stats10548.2,stats10549.1,stats10549.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
