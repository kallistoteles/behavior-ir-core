import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData54
import PathRoundDispatchInstructionMatrixData55
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3499 : actualRows3499=WordField.canonicalRows actualModulus 3499 (.bnot 3498) := by core033_kernel_decide
theorem stats3499 : actualRows3499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3499=6276 := by core033_kernel_decide
theorem rows3500 : actualRows3500=WordField.canonicalRows actualModulus 3500 (.band 3493 3499) := by core033_kernel_decide
theorem stats3500 : actualRows3500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3500=5124 := by core033_kernel_decide
theorem rows3501 : actualRows3501=WordField.canonicalRows actualModulus 3501 (.bxor 3488 3500) := by core033_kernel_decide
theorem stats3501 : actualRows3501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3501=7428 := by core033_kernel_decide
theorem rows3502 : actualRows3502=WordField.canonicalRows actualModulus 3502 (.shr 3501 31) := by core033_kernel_decide
theorem stats3502 : actualRows3502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3502=2892 := by core033_kernel_decide
theorem rows3503 : actualRows3503=WordField.canonicalRows actualModulus 3503 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3503 : actualRows3503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3503=2892 := by core033_kernel_decide
theorem rows3504 : actualRows3504=WordField.canonicalRows actualModulus 3504 (.bxor 3502 3503) := by core033_kernel_decide
theorem stats3504 : actualRows3504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3504=7428 := by core033_kernel_decide
theorem rows3505 : actualRows3505=WordField.canonicalRows actualModulus 3505 (.bnot 3504) := by core033_kernel_decide
theorem stats3505 : actualRows3505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3505=6276 := by core033_kernel_decide
theorem rows3506 : actualRows3506=WordField.canonicalRows actualModulus 3506 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3506 : actualRows3506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3506=2892 := by core033_kernel_decide
theorem rows3507 : actualRows3507=WordField.canonicalRows actualModulus 3507 (.badd 3505 3506) := by core033_kernel_decide
theorem stats3507 : actualRows3507.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3507=5388 := by core033_kernel_decide
theorem rows3508 : actualRows3508=WordField.canonicalRows actualModulus 3508 (.band 3507 1559) := by core033_kernel_decide
theorem stats3508 : actualRows3508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3508=5124 := by core033_kernel_decide
theorem rows3509 : actualRows3509=WordField.canonicalRows actualModulus 3509 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3509 : actualRows3509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3509=2892 := by core033_kernel_decide
theorem rows3510 : actualRows3510=WordField.canonicalRows actualModulus 3510 (.bxor 96 3509) := by core033_kernel_decide
theorem stats3510 : actualRows3510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3510=7428 := by core033_kernel_decide
theorem rows3511 : actualRows3511=WordField.canonicalRows actualModulus 3511 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3511 : actualRows3511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3511=2820 := by core033_kernel_decide
theorem rows3512 : actualRows3512=WordField.canonicalRows actualModulus 3512 (.bnot 3511) := by core033_kernel_decide
theorem stats3512 : actualRows3512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3512=6276 := by core033_kernel_decide
theorem rows3513 : actualRows3513=WordField.canonicalRows actualModulus 3513 (.band 3510 3512) := by core033_kernel_decide
theorem stats3513 : actualRows3513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3513=5124 := by core033_kernel_decide
theorem rows3514 : actualRows3514=WordField.canonicalRows actualModulus 3514 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3514 : actualRows3514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3514=2892 := by core033_kernel_decide
theorem rows3515 : actualRows3515=WordField.canonicalRows actualModulus 3515 (.bxor 96 3514) := by core033_kernel_decide
theorem stats3515 : actualRows3515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3515=7428 := by core033_kernel_decide
theorem rows3516 : actualRows3516=WordField.canonicalRows actualModulus 3516 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3516 : actualRows3516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3516=2820 := by core033_kernel_decide
theorem rows3517 : actualRows3517=WordField.canonicalRows actualModulus 3517 (.bnot 3516) := by core033_kernel_decide
theorem stats3517 : actualRows3517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3517=6276 := by core033_kernel_decide
theorem rows3518 : actualRows3518=WordField.canonicalRows actualModulus 3518 (.bxor 3515 3517) := by core033_kernel_decide
theorem stats3518 : actualRows3518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3518=7428 := by core033_kernel_decide
theorem rows3519 : actualRows3519=WordField.canonicalRows actualModulus 3519 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3519 : actualRows3519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3519=2892 := by core033_kernel_decide
theorem rows3520 : actualRows3520=WordField.canonicalRows actualModulus 3520 (.bxor 96 3519) := by core033_kernel_decide
theorem stats3520 : actualRows3520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3520=7428 := by core033_kernel_decide
theorem rows3521 : actualRows3521=WordField.canonicalRows actualModulus 3521 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3521 : actualRows3521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3521=2820 := by core033_kernel_decide
theorem rows3522 : actualRows3522=WordField.canonicalRows actualModulus 3522 (.bnot 3521) := by core033_kernel_decide
theorem stats3522 : actualRows3522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3522=6276 := by core033_kernel_decide
theorem rows3523 : actualRows3523=WordField.canonicalRows actualModulus 3523 (.badd 3520 3522) := by core033_kernel_decide
theorem stats3523 : actualRows3523.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3523=5388 := by core033_kernel_decide
theorem rows3524 : actualRows3524=WordField.canonicalRows actualModulus 3524 (.bnot 3523) := by core033_kernel_decide
theorem stats3524 : actualRows3524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3524=6276 := by core033_kernel_decide
theorem rows3525 : actualRows3525=WordField.canonicalRows actualModulus 3525 (.band 3518 3524) := by core033_kernel_decide
theorem stats3525 : actualRows3525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3525=5124 := by core033_kernel_decide
theorem rows3526 : actualRows3526=WordField.canonicalRows actualModulus 3526 (.bxor 3513 3525) := by core033_kernel_decide
theorem stats3526 : actualRows3526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3526=7428 := by core033_kernel_decide
theorem rows3527 : actualRows3527=WordField.canonicalRows actualModulus 3527 (.shr 3526 31) := by core033_kernel_decide
theorem stats3527 : actualRows3527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3527=2892 := by core033_kernel_decide
theorem rows3528 : actualRows3528=WordField.canonicalRows actualModulus 3528 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3528 : actualRows3528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3528=2892 := by core033_kernel_decide
theorem rows3529 : actualRows3529=WordField.canonicalRows actualModulus 3529 (.bxor 3527 3528) := by core033_kernel_decide
theorem stats3529 : actualRows3529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3529=7428 := by core033_kernel_decide
theorem rows3530 : actualRows3530=WordField.canonicalRows actualModulus 3530 (.bnot 3529) := by core033_kernel_decide
theorem stats3530 : actualRows3530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3530=6276 := by core033_kernel_decide
theorem rows3531 : actualRows3531=WordField.canonicalRows actualModulus 3531 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3531 : actualRows3531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3531=2892 := by core033_kernel_decide
theorem rows3532 : actualRows3532=WordField.canonicalRows actualModulus 3532 (.badd 3530 3531) := by core033_kernel_decide
theorem stats3532 : actualRows3532.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3532=5388 := by core033_kernel_decide
theorem rows3533 : actualRows3533=WordField.canonicalRows actualModulus 3533 (.bnot 3532) := by core033_kernel_decide
theorem stats3533 : actualRows3533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3533=6276 := by core033_kernel_decide
theorem rows3534 : actualRows3534=WordField.canonicalRows actualModulus 3534 (.band 3533 1367) := by core033_kernel_decide
theorem stats3534 : actualRows3534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3534=5124 := by core033_kernel_decide
theorem rows3535 : actualRows3535=WordField.canonicalRows actualModulus 3535 (.bxor 3508 3534) := by core033_kernel_decide
theorem stats3535 : actualRows3535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3535=7428 := by core033_kernel_decide
theorem rows3536 : actualRows3536=WordField.canonicalRows actualModulus 3536 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3536 : actualRows3536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3536=2892 := by core033_kernel_decide
theorem rows3537 : actualRows3537=WordField.canonicalRows actualModulus 3537 (.bxor 96 3536) := by core033_kernel_decide
theorem stats3537 : actualRows3537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3537=7428 := by core033_kernel_decide
theorem rows3538 : actualRows3538=WordField.canonicalRows actualModulus 3538 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3538 : actualRows3538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3538=2820 := by core033_kernel_decide
theorem rows3539 : actualRows3539=WordField.canonicalRows actualModulus 3539 (.bnot 3538) := by core033_kernel_decide
theorem stats3539 : actualRows3539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3539=6276 := by core033_kernel_decide
theorem rows3540 : actualRows3540=WordField.canonicalRows actualModulus 3540 (.band 3537 3539) := by core033_kernel_decide
theorem stats3540 : actualRows3540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3540=5124 := by core033_kernel_decide
theorem rows3541 : actualRows3541=WordField.canonicalRows actualModulus 3541 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3541 : actualRows3541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3541=2892 := by core033_kernel_decide
theorem rows3542 : actualRows3542=WordField.canonicalRows actualModulus 3542 (.bxor 96 3541) := by core033_kernel_decide
theorem stats3542 : actualRows3542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3542=7428 := by core033_kernel_decide
theorem rows3543 : actualRows3543=WordField.canonicalRows actualModulus 3543 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3543 : actualRows3543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3543=2820 := by core033_kernel_decide
theorem rows3544 : actualRows3544=WordField.canonicalRows actualModulus 3544 (.bnot 3543) := by core033_kernel_decide
theorem stats3544 : actualRows3544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3544=6276 := by core033_kernel_decide
theorem rows3545 : actualRows3545=WordField.canonicalRows actualModulus 3545 (.bxor 3542 3544) := by core033_kernel_decide
theorem stats3545 : actualRows3545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3545=7428 := by core033_kernel_decide
theorem rows3546 : actualRows3546=WordField.canonicalRows actualModulus 3546 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3546 : actualRows3546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3546=2892 := by core033_kernel_decide
theorem rows3547 : actualRows3547=WordField.canonicalRows actualModulus 3547 (.bxor 96 3546) := by core033_kernel_decide
theorem stats3547 : actualRows3547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3547=7428 := by core033_kernel_decide
theorem rows3548 : actualRows3548=WordField.canonicalRows actualModulus 3548 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3548 : actualRows3548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3548=2820 := by core033_kernel_decide
theorem rows3549 : actualRows3549=WordField.canonicalRows actualModulus 3549 (.bnot 3548) := by core033_kernel_decide
theorem stats3549 : actualRows3549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3549=6276 := by core033_kernel_decide
theorem rows3550 : actualRows3550=WordField.canonicalRows actualModulus 3550 (.badd 3547 3549) := by core033_kernel_decide
theorem stats3550 : actualRows3550.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3550=5388 := by core033_kernel_decide
theorem rows3551 : actualRows3551=WordField.canonicalRows actualModulus 3551 (.bnot 3550) := by core033_kernel_decide
theorem stats3551 : actualRows3551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3551=6276 := by core033_kernel_decide
theorem rows3552 : actualRows3552=WordField.canonicalRows actualModulus 3552 (.band 3545 3551) := by core033_kernel_decide
theorem stats3552 : actualRows3552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3552=5124 := by core033_kernel_decide
theorem rows3553 : actualRows3553=WordField.canonicalRows actualModulus 3553 (.bxor 3540 3552) := by core033_kernel_decide
theorem stats3553 : actualRows3553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3553=7428 := by core033_kernel_decide
theorem rows3554 : actualRows3554=WordField.canonicalRows actualModulus 3554 (.shr 3553 31) := by core033_kernel_decide
theorem stats3554 : actualRows3554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3554=2892 := by core033_kernel_decide
theorem rows3555 : actualRows3555=WordField.canonicalRows actualModulus 3555 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3555 : actualRows3555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3555=2892 := by core033_kernel_decide
theorem rows3556 : actualRows3556=WordField.canonicalRows actualModulus 3556 (.bxor 3554 3555) := by core033_kernel_decide
theorem stats3556 : actualRows3556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3556=7428 := by core033_kernel_decide
theorem rows3557 : actualRows3557=WordField.canonicalRows actualModulus 3557 (.bnot 3556) := by core033_kernel_decide
theorem stats3557 : actualRows3557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3557=6276 := by core033_kernel_decide
theorem rows3558 : actualRows3558=WordField.canonicalRows actualModulus 3558 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3558 : actualRows3558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3558=2892 := by core033_kernel_decide
theorem rows3559 : actualRows3559=WordField.canonicalRows actualModulus 3559 (.badd 3557 3558) := by core033_kernel_decide
theorem stats3559 : actualRows3559.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3559=5388 := by core033_kernel_decide
theorem rows3560 : actualRows3560=WordField.canonicalRows actualModulus 3560 (.band 3559 1562) := by core033_kernel_decide
theorem stats3560 : actualRows3560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3560=5124 := by core033_kernel_decide
theorem rows3561 : actualRows3561=WordField.canonicalRows actualModulus 3561 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3561 : actualRows3561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3561=2892 := by core033_kernel_decide
theorem rows3562 : actualRows3562=WordField.canonicalRows actualModulus 3562 (.bxor 96 3561) := by core033_kernel_decide
theorem stats3562 : actualRows3562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3562=7428 := by core033_kernel_decide
def partRows54 : List R1CS.Row := actualRows3499++actualRows3500++actualRows3501++actualRows3502++actualRows3503++actualRows3504++actualRows3505++actualRows3506++actualRows3507++actualRows3508++actualRows3509++actualRows3510++actualRows3511++actualRows3512++actualRows3513++actualRows3514++actualRows3515++actualRows3516++actualRows3517++actualRows3518++actualRows3519++actualRows3520++actualRows3521++actualRows3522++actualRows3523++actualRows3524++actualRows3525++actualRows3526++actualRows3527++actualRows3528++actualRows3529++actualRows3530++actualRows3531++actualRows3532++actualRows3533++actualRows3534++actualRows3535++actualRows3536++actualRows3537++actualRows3538++actualRows3539++actualRows3540++actualRows3541++actualRows3542++actualRows3543++actualRows3544++actualRows3545++actualRows3546++actualRows3547++actualRows3548++actualRows3549++actualRows3550++actualRows3551++actualRows3552++actualRows3553++actualRows3554++actualRows3555++actualRows3556++actualRows3557++actualRows3558++actualRows3559++actualRows3560++actualRows3561++actualRows3562
def partOps54 : List WordIR.Op := [.bnot 3498,.band 3493 3499,.bxor 3488 3500,.shr 3501 31,.literal (BitVec.ofNat 32 1),.bxor 3502 3503,.bnot 3504,.literal (BitVec.ofNat 32 1),.badd 3505 3506,.band 3507 1559,.literal (BitVec.ofNat 32 2),.bxor 96 3509,.literal (BitVec.ofNat 32 0),.bnot 3511,.band 3510 3512,.literal (BitVec.ofNat 32 2),.bxor 96 3514,.literal (BitVec.ofNat 32 0),.bnot 3516,.bxor 3515 3517,.literal (BitVec.ofNat 32 2),.bxor 96 3519,.literal (BitVec.ofNat 32 0),.bnot 3521,.badd 3520 3522,.bnot 3523,.band 3518 3524,.bxor 3513 3525,.shr 3526 31,.literal (BitVec.ofNat 32 1),.bxor 3527 3528,.bnot 3529,.literal (BitVec.ofNat 32 1),.badd 3530 3531,.bnot 3532,.band 3533 1367,.bxor 3508 3534,.literal (BitVec.ofNat 32 2),.bxor 96 3536,.literal (BitVec.ofNat 32 0),.bnot 3538,.band 3537 3539,.literal (BitVec.ofNat 32 2),.bxor 96 3541,.literal (BitVec.ofNat 32 0),.bnot 3543,.bxor 3542 3544,.literal (BitVec.ofNat 32 2),.bxor 96 3546,.literal (BitVec.ofNat 32 0),.bnot 3548,.badd 3547 3549,.bnot 3550,.band 3545 3551,.bxor 3540 3552,.shr 3553 31,.literal (BitVec.ofNat 32 1),.bxor 3554 3555,.bnot 3556,.literal (BitVec.ofNat 32 1),.badd 3557 3558,.band 3559 1562,.literal (BitVec.ofNat 32 2),.bxor 96 3561]
theorem partExact54 : partRows54=WordField.rows actualModulus 3499 partOps54 := by
  simp only [partRows54,partOps54,WordField.rows,rows3499,rows3500,rows3501,rows3502,rows3503,rows3504,rows3505,rows3506,rows3507,rows3508,rows3509,rows3510,rows3511,rows3512,rows3513,rows3514,rows3515,rows3516,rows3517,rows3518,rows3519,rows3520,rows3521,rows3522,rows3523,rows3524,rows3525,rows3526,rows3527,rows3528,rows3529,rows3530,rows3531,rows3532,rows3533,rows3534,rows3535,rows3536,rows3537,rows3538,rows3539,rows3540,rows3541,rows3542,rows3543,rows3544,rows3545,rows3546,rows3547,rows3548,rows3549,rows3550,rows3551,rows3552,rows3553,rows3554,rows3555,rows3556,rows3557,rows3558,rows3559,rows3560,rows3561,rows3562,List.append_assoc,List.append_nil]
theorem partLength54 : partOps54.length=64 := by decide
theorem partStats54 : partRows54.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows54=331560 := by
  simp only [partRows54,List.length_append,MatrixRowBlocks.rows_weight_append,stats3499.1,stats3499.2,stats3500.1,stats3500.2,stats3501.1,stats3501.2,stats3502.1,stats3502.2,stats3503.1,stats3503.2,stats3504.1,stats3504.2,stats3505.1,stats3505.2,stats3506.1,stats3506.2,stats3507.1,stats3507.2,stats3508.1,stats3508.2,stats3509.1,stats3509.2,stats3510.1,stats3510.2,stats3511.1,stats3511.2,stats3512.1,stats3512.2,stats3513.1,stats3513.2,stats3514.1,stats3514.2,stats3515.1,stats3515.2,stats3516.1,stats3516.2,stats3517.1,stats3517.2,stats3518.1,stats3518.2,stats3519.1,stats3519.2,stats3520.1,stats3520.2,stats3521.1,stats3521.2,stats3522.1,stats3522.2,stats3523.1,stats3523.2,stats3524.1,stats3524.2,stats3525.1,stats3525.2,stats3526.1,stats3526.2,stats3527.1,stats3527.2,stats3528.1,stats3528.2,stats3529.1,stats3529.2,stats3530.1,stats3530.2,stats3531.1,stats3531.2,stats3532.1,stats3532.2,stats3533.1,stats3533.2,stats3534.1,stats3534.2,stats3535.1,stats3535.2,stats3536.1,stats3536.2,stats3537.1,stats3537.2,stats3538.1,stats3538.2,stats3539.1,stats3539.2,stats3540.1,stats3540.2,stats3541.1,stats3541.2,stats3542.1,stats3542.2,stats3543.1,stats3543.2,stats3544.1,stats3544.2,stats3545.1,stats3545.2,stats3546.1,stats3546.2,stats3547.1,stats3547.2,stats3548.1,stats3548.2,stats3549.1,stats3549.2,stats3550.1,stats3550.2,stats3551.1,stats3551.2,stats3552.1,stats3552.2,stats3553.1,stats3553.2,stats3554.1,stats3554.2,stats3555.1,stats3555.2,stats3556.1,stats3556.2,stats3557.1,stats3557.2,stats3558.1,stats3558.2,stats3559.1,stats3559.2,stats3560.1,stats3560.2,stats3561.1,stats3561.2,stats3562.1,stats3562.2]
  decide
end PathRoundDispatchCheckedRows
