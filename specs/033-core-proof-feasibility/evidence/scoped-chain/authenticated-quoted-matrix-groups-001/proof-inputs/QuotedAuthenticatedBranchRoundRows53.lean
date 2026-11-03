import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData54
import AuthenticatedBranchRoundInstructionMatrixData55
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3510 : actualRows3510=WordField.canonicalRows actualModulus 3510 (.bxor 3508 3509) := by core033_kernel_decide
theorem stats3510 : actualRows3510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3510=7428 := by core033_kernel_decide
theorem rows3511 : actualRows3511=WordField.canonicalRows actualModulus 3511 (.bnot 3510) := by core033_kernel_decide
theorem stats3511 : actualRows3511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3511=6276 := by core033_kernel_decide
theorem rows3512 : actualRows3512=WordField.canonicalRows actualModulus 3512 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3512 : actualRows3512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3512=2892 := by core033_kernel_decide
theorem rows3513 : actualRows3513=WordField.canonicalRows actualModulus 3513 (.badd 3511 3512) := by core033_kernel_decide
theorem stats3513 : actualRows3513.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3513=5388 := by core033_kernel_decide
theorem rows3514 : actualRows3514=WordField.canonicalRows actualModulus 3514 (.band 3513 1761) := by core033_kernel_decide
theorem stats3514 : actualRows3514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3514=5124 := by core033_kernel_decide
theorem rows3515 : actualRows3515=WordField.canonicalRows actualModulus 3515 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3515 : actualRows3515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3515=2892 := by core033_kernel_decide
theorem rows3516 : actualRows3516=WordField.canonicalRows actualModulus 3516 (.bxor 1299 3515) := by core033_kernel_decide
theorem stats3516 : actualRows3516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3516=7428 := by core033_kernel_decide
theorem rows3517 : actualRows3517=WordField.canonicalRows actualModulus 3517 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3517 : actualRows3517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3517=2820 := by core033_kernel_decide
theorem rows3518 : actualRows3518=WordField.canonicalRows actualModulus 3518 (.bnot 3517) := by core033_kernel_decide
theorem stats3518 : actualRows3518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3518=6276 := by core033_kernel_decide
theorem rows3519 : actualRows3519=WordField.canonicalRows actualModulus 3519 (.band 3516 3518) := by core033_kernel_decide
theorem stats3519 : actualRows3519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3519=5124 := by core033_kernel_decide
theorem rows3520 : actualRows3520=WordField.canonicalRows actualModulus 3520 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3520 : actualRows3520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3520=2892 := by core033_kernel_decide
theorem rows3521 : actualRows3521=WordField.canonicalRows actualModulus 3521 (.bxor 1299 3520) := by core033_kernel_decide
theorem stats3521 : actualRows3521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3521=7428 := by core033_kernel_decide
theorem rows3522 : actualRows3522=WordField.canonicalRows actualModulus 3522 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3522 : actualRows3522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3522=2820 := by core033_kernel_decide
theorem rows3523 : actualRows3523=WordField.canonicalRows actualModulus 3523 (.bnot 3522) := by core033_kernel_decide
theorem stats3523 : actualRows3523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3523=6276 := by core033_kernel_decide
theorem rows3524 : actualRows3524=WordField.canonicalRows actualModulus 3524 (.bxor 3521 3523) := by core033_kernel_decide
theorem stats3524 : actualRows3524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3524=7428 := by core033_kernel_decide
theorem rows3525 : actualRows3525=WordField.canonicalRows actualModulus 3525 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3525 : actualRows3525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3525=2892 := by core033_kernel_decide
theorem rows3526 : actualRows3526=WordField.canonicalRows actualModulus 3526 (.bxor 1299 3525) := by core033_kernel_decide
theorem stats3526 : actualRows3526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3526=7428 := by core033_kernel_decide
theorem rows3527 : actualRows3527=WordField.canonicalRows actualModulus 3527 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3527 : actualRows3527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3527=2820 := by core033_kernel_decide
theorem rows3528 : actualRows3528=WordField.canonicalRows actualModulus 3528 (.bnot 3527) := by core033_kernel_decide
theorem stats3528 : actualRows3528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3528=6276 := by core033_kernel_decide
theorem rows3529 : actualRows3529=WordField.canonicalRows actualModulus 3529 (.badd 3526 3528) := by core033_kernel_decide
theorem stats3529 : actualRows3529.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3529=5388 := by core033_kernel_decide
theorem rows3530 : actualRows3530=WordField.canonicalRows actualModulus 3530 (.bnot 3529) := by core033_kernel_decide
theorem stats3530 : actualRows3530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3530=6276 := by core033_kernel_decide
theorem rows3531 : actualRows3531=WordField.canonicalRows actualModulus 3531 (.band 3524 3530) := by core033_kernel_decide
theorem stats3531 : actualRows3531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3531=5124 := by core033_kernel_decide
theorem rows3532 : actualRows3532=WordField.canonicalRows actualModulus 3532 (.bxor 3519 3531) := by core033_kernel_decide
theorem stats3532 : actualRows3532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3532=7428 := by core033_kernel_decide
theorem rows3533 : actualRows3533=WordField.canonicalRows actualModulus 3533 (.shr 3532 31) := by core033_kernel_decide
theorem stats3533 : actualRows3533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3533=2892 := by core033_kernel_decide
theorem rows3534 : actualRows3534=WordField.canonicalRows actualModulus 3534 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3534 : actualRows3534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3534=2892 := by core033_kernel_decide
theorem rows3535 : actualRows3535=WordField.canonicalRows actualModulus 3535 (.bxor 3533 3534) := by core033_kernel_decide
theorem stats3535 : actualRows3535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3535=7428 := by core033_kernel_decide
theorem rows3536 : actualRows3536=WordField.canonicalRows actualModulus 3536 (.bnot 3535) := by core033_kernel_decide
theorem stats3536 : actualRows3536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3536=6276 := by core033_kernel_decide
theorem rows3537 : actualRows3537=WordField.canonicalRows actualModulus 3537 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3537 : actualRows3537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3537=2892 := by core033_kernel_decide
theorem rows3538 : actualRows3538=WordField.canonicalRows actualModulus 3538 (.badd 3536 3537) := by core033_kernel_decide
theorem stats3538 : actualRows3538.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3538=5388 := by core033_kernel_decide
theorem rows3539 : actualRows3539=WordField.canonicalRows actualModulus 3539 (.bnot 3538) := by core033_kernel_decide
theorem stats3539 : actualRows3539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3539=6276 := by core033_kernel_decide
theorem rows3540 : actualRows3540=WordField.canonicalRows actualModulus 3540 (.literal (BitVec.ofNat 32 1541459225)) := by core033_kernel_decide
theorem stats3540 : actualRows3540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3540=3972 := by core033_kernel_decide
theorem rows3541 : actualRows3541=WordField.canonicalRows actualModulus 3541 (.band 3539 3540) := by core033_kernel_decide
theorem stats3541 : actualRows3541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3541=5124 := by core033_kernel_decide
theorem rows3542 : actualRows3542=WordField.canonicalRows actualModulus 3542 (.bxor 3514 3541) := by core033_kernel_decide
theorem stats3542 : actualRows3542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3542=7428 := by core033_kernel_decide
theorem rows3543 : actualRows3543=WordField.canonicalRows actualModulus 3543 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3543 : actualRows3543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3543=2892 := by core033_kernel_decide
theorem rows3544 : actualRows3544=WordField.canonicalRows actualModulus 3544 (.bxor 1299 3543) := by core033_kernel_decide
theorem stats3544 : actualRows3544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3544=7428 := by core033_kernel_decide
theorem rows3545 : actualRows3545=WordField.canonicalRows actualModulus 3545 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3545 : actualRows3545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3545=2820 := by core033_kernel_decide
theorem rows3546 : actualRows3546=WordField.canonicalRows actualModulus 3546 (.bnot 3545) := by core033_kernel_decide
theorem stats3546 : actualRows3546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3546=6276 := by core033_kernel_decide
theorem rows3547 : actualRows3547=WordField.canonicalRows actualModulus 3547 (.band 3544 3546) := by core033_kernel_decide
theorem stats3547 : actualRows3547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3547=5124 := by core033_kernel_decide
theorem rows3548 : actualRows3548=WordField.canonicalRows actualModulus 3548 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3548 : actualRows3548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3548=2892 := by core033_kernel_decide
theorem rows3549 : actualRows3549=WordField.canonicalRows actualModulus 3549 (.bxor 1299 3548) := by core033_kernel_decide
theorem stats3549 : actualRows3549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3549=7428 := by core033_kernel_decide
theorem rows3550 : actualRows3550=WordField.canonicalRows actualModulus 3550 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3550 : actualRows3550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3550=2820 := by core033_kernel_decide
theorem rows3551 : actualRows3551=WordField.canonicalRows actualModulus 3551 (.bnot 3550) := by core033_kernel_decide
theorem stats3551 : actualRows3551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3551=6276 := by core033_kernel_decide
theorem rows3552 : actualRows3552=WordField.canonicalRows actualModulus 3552 (.bxor 3549 3551) := by core033_kernel_decide
theorem stats3552 : actualRows3552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3552=7428 := by core033_kernel_decide
theorem rows3553 : actualRows3553=WordField.canonicalRows actualModulus 3553 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3553 : actualRows3553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3553=2892 := by core033_kernel_decide
theorem rows3554 : actualRows3554=WordField.canonicalRows actualModulus 3554 (.bxor 1299 3553) := by core033_kernel_decide
theorem stats3554 : actualRows3554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3554=7428 := by core033_kernel_decide
theorem rows3555 : actualRows3555=WordField.canonicalRows actualModulus 3555 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3555 : actualRows3555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3555=2820 := by core033_kernel_decide
theorem rows3556 : actualRows3556=WordField.canonicalRows actualModulus 3556 (.bnot 3555) := by core033_kernel_decide
theorem stats3556 : actualRows3556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3556=6276 := by core033_kernel_decide
theorem rows3557 : actualRows3557=WordField.canonicalRows actualModulus 3557 (.badd 3554 3556) := by core033_kernel_decide
theorem stats3557 : actualRows3557.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3557=5388 := by core033_kernel_decide
theorem rows3558 : actualRows3558=WordField.canonicalRows actualModulus 3558 (.bnot 3557) := by core033_kernel_decide
theorem stats3558 : actualRows3558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3558=6276 := by core033_kernel_decide
theorem rows3559 : actualRows3559=WordField.canonicalRows actualModulus 3559 (.band 3552 3558) := by core033_kernel_decide
theorem stats3559 : actualRows3559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3559=5124 := by core033_kernel_decide
theorem rows3560 : actualRows3560=WordField.canonicalRows actualModulus 3560 (.bxor 3547 3559) := by core033_kernel_decide
theorem stats3560 : actualRows3560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3560=7428 := by core033_kernel_decide
theorem rows3561 : actualRows3561=WordField.canonicalRows actualModulus 3561 (.shr 3560 31) := by core033_kernel_decide
theorem stats3561 : actualRows3561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3561=2892 := by core033_kernel_decide
theorem rows3562 : actualRows3562=WordField.canonicalRows actualModulus 3562 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3562 : actualRows3562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3562=2892 := by core033_kernel_decide
theorem rows3563 : actualRows3563=WordField.canonicalRows actualModulus 3563 (.bxor 3561 3562) := by core033_kernel_decide
theorem stats3563 : actualRows3563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3563=7428 := by core033_kernel_decide
theorem rows3564 : actualRows3564=WordField.canonicalRows actualModulus 3564 (.bnot 3563) := by core033_kernel_decide
theorem stats3564 : actualRows3564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3564=6276 := by core033_kernel_decide
theorem rows3565 : actualRows3565=WordField.canonicalRows actualModulus 3565 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3565 : actualRows3565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3565=2892 := by core033_kernel_decide
theorem rows3566 : actualRows3566=WordField.canonicalRows actualModulus 3566 (.badd 3564 3565) := by core033_kernel_decide
theorem stats3566 : actualRows3566.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3566=5388 := by core033_kernel_decide
theorem rows3567 : actualRows3567=WordField.canonicalRows actualModulus 3567 (.band 3566 2696) := by core033_kernel_decide
theorem stats3567 : actualRows3567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3567=5124 := by core033_kernel_decide
theorem rows3568 : actualRows3568=WordField.canonicalRows actualModulus 3568 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3568 : actualRows3568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3568=2892 := by core033_kernel_decide
theorem rows3569 : actualRows3569=WordField.canonicalRows actualModulus 3569 (.bxor 1299 3568) := by core033_kernel_decide
theorem stats3569 : actualRows3569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3569=7428 := by core033_kernel_decide
theorem rows3570 : actualRows3570=WordField.canonicalRows actualModulus 3570 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3570 : actualRows3570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3570=2820 := by core033_kernel_decide
theorem rows3571 : actualRows3571=WordField.canonicalRows actualModulus 3571 (.bnot 3570) := by core033_kernel_decide
theorem stats3571 : actualRows3571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3571=6276 := by core033_kernel_decide
theorem rows3572 : actualRows3572=WordField.canonicalRows actualModulus 3572 (.band 3569 3571) := by core033_kernel_decide
theorem stats3572 : actualRows3572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3572=5124 := by core033_kernel_decide
theorem rows3573 : actualRows3573=WordField.canonicalRows actualModulus 3573 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3573 : actualRows3573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3573=2892 := by core033_kernel_decide
def partRows53 : List R1CS.Row := actualRows3510++actualRows3511++actualRows3512++actualRows3513++actualRows3514++actualRows3515++actualRows3516++actualRows3517++actualRows3518++actualRows3519++actualRows3520++actualRows3521++actualRows3522++actualRows3523++actualRows3524++actualRows3525++actualRows3526++actualRows3527++actualRows3528++actualRows3529++actualRows3530++actualRows3531++actualRows3532++actualRows3533++actualRows3534++actualRows3535++actualRows3536++actualRows3537++actualRows3538++actualRows3539++actualRows3540++actualRows3541++actualRows3542++actualRows3543++actualRows3544++actualRows3545++actualRows3546++actualRows3547++actualRows3548++actualRows3549++actualRows3550++actualRows3551++actualRows3552++actualRows3553++actualRows3554++actualRows3555++actualRows3556++actualRows3557++actualRows3558++actualRows3559++actualRows3560++actualRows3561++actualRows3562++actualRows3563++actualRows3564++actualRows3565++actualRows3566++actualRows3567++actualRows3568++actualRows3569++actualRows3570++actualRows3571++actualRows3572++actualRows3573
def partOps53 : List WordIR.Op := [.bxor 3508 3509,.bnot 3510,.literal (BitVec.ofNat 32 1),.badd 3511 3512,.band 3513 1761,.literal (BitVec.ofNat 32 2),.bxor 1299 3515,.literal (BitVec.ofNat 32 0),.bnot 3517,.band 3516 3518,.literal (BitVec.ofNat 32 2),.bxor 1299 3520,.literal (BitVec.ofNat 32 0),.bnot 3522,.bxor 3521 3523,.literal (BitVec.ofNat 32 2),.bxor 1299 3525,.literal (BitVec.ofNat 32 0),.bnot 3527,.badd 3526 3528,.bnot 3529,.band 3524 3530,.bxor 3519 3531,.shr 3532 31,.literal (BitVec.ofNat 32 1),.bxor 3533 3534,.bnot 3535,.literal (BitVec.ofNat 32 1),.badd 3536 3537,.bnot 3538,.literal (BitVec.ofNat 32 1541459225),.band 3539 3540,.bxor 3514 3541,.literal (BitVec.ofNat 32 2),.bxor 1299 3543,.literal (BitVec.ofNat 32 0),.bnot 3545,.band 3544 3546,.literal (BitVec.ofNat 32 2),.bxor 1299 3548,.literal (BitVec.ofNat 32 0),.bnot 3550,.bxor 3549 3551,.literal (BitVec.ofNat 32 2),.bxor 1299 3553,.literal (BitVec.ofNat 32 0),.bnot 3555,.badd 3554 3556,.bnot 3557,.band 3552 3558,.bxor 3547 3559,.shr 3560 31,.literal (BitVec.ofNat 32 1),.bxor 3561 3562,.bnot 3563,.literal (BitVec.ofNat 32 1),.badd 3564 3565,.band 3566 2696,.literal (BitVec.ofNat 32 2),.bxor 1299 3568,.literal (BitVec.ofNat 32 0),.bnot 3570,.band 3569 3571,.literal (BitVec.ofNat 32 2)]
theorem partExact53 : partRows53=WordField.rows actualModulus 3510 partOps53 := by
  simp only [partRows53,partOps53,WordField.rows,rows3510,rows3511,rows3512,rows3513,rows3514,rows3515,rows3516,rows3517,rows3518,rows3519,rows3520,rows3521,rows3522,rows3523,rows3524,rows3525,rows3526,rows3527,rows3528,rows3529,rows3530,rows3531,rows3532,rows3533,rows3534,rows3535,rows3536,rows3537,rows3538,rows3539,rows3540,rows3541,rows3542,rows3543,rows3544,rows3545,rows3546,rows3547,rows3548,rows3549,rows3550,rows3551,rows3552,rows3553,rows3554,rows3555,rows3556,rows3557,rows3558,rows3559,rows3560,rows3561,rows3562,rows3563,rows3564,rows3565,rows3566,rows3567,rows3568,rows3569,rows3570,rows3571,rows3572,rows3573,List.append_assoc,List.append_nil]
theorem partLength53 : partOps53.length=64 := by decide
theorem partStats53 : partRows53.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows53=328032 := by
  simp only [partRows53,List.length_append,MatrixRowBlocks.rows_weight_append,stats3510.1,stats3510.2,stats3511.1,stats3511.2,stats3512.1,stats3512.2,stats3513.1,stats3513.2,stats3514.1,stats3514.2,stats3515.1,stats3515.2,stats3516.1,stats3516.2,stats3517.1,stats3517.2,stats3518.1,stats3518.2,stats3519.1,stats3519.2,stats3520.1,stats3520.2,stats3521.1,stats3521.2,stats3522.1,stats3522.2,stats3523.1,stats3523.2,stats3524.1,stats3524.2,stats3525.1,stats3525.2,stats3526.1,stats3526.2,stats3527.1,stats3527.2,stats3528.1,stats3528.2,stats3529.1,stats3529.2,stats3530.1,stats3530.2,stats3531.1,stats3531.2,stats3532.1,stats3532.2,stats3533.1,stats3533.2,stats3534.1,stats3534.2,stats3535.1,stats3535.2,stats3536.1,stats3536.2,stats3537.1,stats3537.2,stats3538.1,stats3538.2,stats3539.1,stats3539.2,stats3540.1,stats3540.2,stats3541.1,stats3541.2,stats3542.1,stats3542.2,stats3543.1,stats3543.2,stats3544.1,stats3544.2,stats3545.1,stats3545.2,stats3546.1,stats3546.2,stats3547.1,stats3547.2,stats3548.1,stats3548.2,stats3549.1,stats3549.2,stats3550.1,stats3550.2,stats3551.1,stats3551.2,stats3552.1,stats3552.2,stats3553.1,stats3553.2,stats3554.1,stats3554.2,stats3555.1,stats3555.2,stats3556.1,stats3556.2,stats3557.1,stats3557.2,stats3558.1,stats3558.2,stats3559.1,stats3559.2,stats3560.1,stats3560.2,stats3561.1,stats3561.2,stats3562.1,stats3562.2,stats3563.1,stats3563.2,stats3564.1,stats3564.2,stats3565.1,stats3565.2,stats3566.1,stats3566.2,stats3567.1,stats3567.2,stats3568.1,stats3568.2,stats3569.1,stats3569.2,stats3570.1,stats3570.2,stats3571.1,stats3571.2,stats3572.1,stats3572.2,stats3573.1,stats3573.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
