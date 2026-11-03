import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData54
import FrameHashControllerInstructionMatrixData55
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3499 : actualRows3499=WordField.canonicalRows actualModulus 3499 (.bxor 0 3498) := by core033_kernel_decide
theorem stats3499 : actualRows3499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3499=7428 := by core033_kernel_decide
theorem rows3500 : actualRows3500=WordField.canonicalRows actualModulus 3500 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3500 : actualRows3500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3500=2820 := by core033_kernel_decide
theorem rows3501 : actualRows3501=WordField.canonicalRows actualModulus 3501 (.bnot 3500) := by core033_kernel_decide
theorem stats3501 : actualRows3501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3501=6276 := by core033_kernel_decide
theorem rows3502 : actualRows3502=WordField.canonicalRows actualModulus 3502 (.badd 3499 3501) := by core033_kernel_decide
theorem stats3502 : actualRows3502.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3502=5388 := by core033_kernel_decide
theorem rows3503 : actualRows3503=WordField.canonicalRows actualModulus 3503 (.bnot 3502) := by core033_kernel_decide
theorem stats3503 : actualRows3503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3503=6276 := by core033_kernel_decide
theorem rows3504 : actualRows3504=WordField.canonicalRows actualModulus 3504 (.band 3497 3503) := by core033_kernel_decide
theorem stats3504 : actualRows3504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3504=5124 := by core033_kernel_decide
theorem rows3505 : actualRows3505=WordField.canonicalRows actualModulus 3505 (.bxor 3492 3504) := by core033_kernel_decide
theorem stats3505 : actualRows3505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3505=7428 := by core033_kernel_decide
theorem rows3506 : actualRows3506=WordField.canonicalRows actualModulus 3506 (.shr 3505 31) := by core033_kernel_decide
theorem stats3506 : actualRows3506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3506=2892 := by core033_kernel_decide
theorem rows3507 : actualRows3507=WordField.canonicalRows actualModulus 3507 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3507 : actualRows3507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3507=2892 := by core033_kernel_decide
theorem rows3508 : actualRows3508=WordField.canonicalRows actualModulus 3508 (.bxor 3506 3507) := by core033_kernel_decide
theorem stats3508 : actualRows3508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3508=7428 := by core033_kernel_decide
theorem rows3509 : actualRows3509=WordField.canonicalRows actualModulus 3509 (.bnot 3508) := by core033_kernel_decide
theorem stats3509 : actualRows3509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3509=6276 := by core033_kernel_decide
theorem rows3510 : actualRows3510=WordField.canonicalRows actualModulus 3510 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3510 : actualRows3510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3510=2892 := by core033_kernel_decide
theorem rows3511 : actualRows3511=WordField.canonicalRows actualModulus 3511 (.badd 3509 3510) := by core033_kernel_decide
theorem stats3511 : actualRows3511.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3511=5388 := by core033_kernel_decide
theorem rows3512 : actualRows3512=WordField.canonicalRows actualModulus 3512 (.band 3511 1073) := by core033_kernel_decide
theorem stats3512 : actualRows3512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3512=5124 := by core033_kernel_decide
theorem rows3513 : actualRows3513=WordField.canonicalRows actualModulus 3513 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3513 : actualRows3513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3513=2892 := by core033_kernel_decide
theorem rows3514 : actualRows3514=WordField.canonicalRows actualModulus 3514 (.bxor 0 3513) := by core033_kernel_decide
theorem stats3514 : actualRows3514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3514=7428 := by core033_kernel_decide
theorem rows3515 : actualRows3515=WordField.canonicalRows actualModulus 3515 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3515 : actualRows3515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3515=2820 := by core033_kernel_decide
theorem rows3516 : actualRows3516=WordField.canonicalRows actualModulus 3516 (.bnot 3515) := by core033_kernel_decide
theorem stats3516 : actualRows3516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3516=6276 := by core033_kernel_decide
theorem rows3517 : actualRows3517=WordField.canonicalRows actualModulus 3517 (.band 3514 3516) := by core033_kernel_decide
theorem stats3517 : actualRows3517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3517=5124 := by core033_kernel_decide
theorem rows3518 : actualRows3518=WordField.canonicalRows actualModulus 3518 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3518 : actualRows3518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3518=2892 := by core033_kernel_decide
theorem rows3519 : actualRows3519=WordField.canonicalRows actualModulus 3519 (.bxor 0 3518) := by core033_kernel_decide
theorem stats3519 : actualRows3519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3519=7428 := by core033_kernel_decide
theorem rows3520 : actualRows3520=WordField.canonicalRows actualModulus 3520 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3520 : actualRows3520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3520=2820 := by core033_kernel_decide
theorem rows3521 : actualRows3521=WordField.canonicalRows actualModulus 3521 (.bnot 3520) := by core033_kernel_decide
theorem stats3521 : actualRows3521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3521=6276 := by core033_kernel_decide
theorem rows3522 : actualRows3522=WordField.canonicalRows actualModulus 3522 (.bxor 3519 3521) := by core033_kernel_decide
theorem stats3522 : actualRows3522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3522=7428 := by core033_kernel_decide
theorem rows3523 : actualRows3523=WordField.canonicalRows actualModulus 3523 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3523 : actualRows3523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3523=2892 := by core033_kernel_decide
theorem rows3524 : actualRows3524=WordField.canonicalRows actualModulus 3524 (.bxor 0 3523) := by core033_kernel_decide
theorem stats3524 : actualRows3524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3524=7428 := by core033_kernel_decide
theorem rows3525 : actualRows3525=WordField.canonicalRows actualModulus 3525 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3525 : actualRows3525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3525=2820 := by core033_kernel_decide
theorem rows3526 : actualRows3526=WordField.canonicalRows actualModulus 3526 (.bnot 3525) := by core033_kernel_decide
theorem stats3526 : actualRows3526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3526=6276 := by core033_kernel_decide
theorem rows3527 : actualRows3527=WordField.canonicalRows actualModulus 3527 (.badd 3524 3526) := by core033_kernel_decide
theorem stats3527 : actualRows3527.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3527=5388 := by core033_kernel_decide
theorem rows3528 : actualRows3528=WordField.canonicalRows actualModulus 3528 (.bnot 3527) := by core033_kernel_decide
theorem stats3528 : actualRows3528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3528=6276 := by core033_kernel_decide
theorem rows3529 : actualRows3529=WordField.canonicalRows actualModulus 3529 (.band 3522 3528) := by core033_kernel_decide
theorem stats3529 : actualRows3529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3529=5124 := by core033_kernel_decide
theorem rows3530 : actualRows3530=WordField.canonicalRows actualModulus 3530 (.bxor 3517 3529) := by core033_kernel_decide
theorem stats3530 : actualRows3530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3530=7428 := by core033_kernel_decide
theorem rows3531 : actualRows3531=WordField.canonicalRows actualModulus 3531 (.shr 3530 31) := by core033_kernel_decide
theorem stats3531 : actualRows3531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3531=2892 := by core033_kernel_decide
theorem rows3532 : actualRows3532=WordField.canonicalRows actualModulus 3532 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3532 : actualRows3532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3532=2892 := by core033_kernel_decide
theorem rows3533 : actualRows3533=WordField.canonicalRows actualModulus 3533 (.bxor 3531 3532) := by core033_kernel_decide
theorem stats3533 : actualRows3533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3533=7428 := by core033_kernel_decide
theorem rows3534 : actualRows3534=WordField.canonicalRows actualModulus 3534 (.bnot 3533) := by core033_kernel_decide
theorem stats3534 : actualRows3534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3534=6276 := by core033_kernel_decide
theorem rows3535 : actualRows3535=WordField.canonicalRows actualModulus 3535 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3535 : actualRows3535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3535=2892 := by core033_kernel_decide
theorem rows3536 : actualRows3536=WordField.canonicalRows actualModulus 3536 (.badd 3534 3535) := by core033_kernel_decide
theorem stats3536 : actualRows3536.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3536=5388 := by core033_kernel_decide
theorem rows3537 : actualRows3537=WordField.canonicalRows actualModulus 3537 (.bnot 3536) := by core033_kernel_decide
theorem stats3537 : actualRows3537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3537=6276 := by core033_kernel_decide
theorem rows3538 : actualRows3538=WordField.canonicalRows actualModulus 3538 (.band 3537 881) := by core033_kernel_decide
theorem stats3538 : actualRows3538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3538=5124 := by core033_kernel_decide
theorem rows3539 : actualRows3539=WordField.canonicalRows actualModulus 3539 (.bxor 3512 3538) := by core033_kernel_decide
theorem stats3539 : actualRows3539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3539=7428 := by core033_kernel_decide
theorem rows3540 : actualRows3540=WordField.canonicalRows actualModulus 3540 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3540 : actualRows3540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3540=2892 := by core033_kernel_decide
theorem rows3541 : actualRows3541=WordField.canonicalRows actualModulus 3541 (.bxor 0 3540) := by core033_kernel_decide
theorem stats3541 : actualRows3541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3541=7428 := by core033_kernel_decide
theorem rows3542 : actualRows3542=WordField.canonicalRows actualModulus 3542 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3542 : actualRows3542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3542=2820 := by core033_kernel_decide
theorem rows3543 : actualRows3543=WordField.canonicalRows actualModulus 3543 (.bnot 3542) := by core033_kernel_decide
theorem stats3543 : actualRows3543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3543=6276 := by core033_kernel_decide
theorem rows3544 : actualRows3544=WordField.canonicalRows actualModulus 3544 (.band 3541 3543) := by core033_kernel_decide
theorem stats3544 : actualRows3544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3544=5124 := by core033_kernel_decide
theorem rows3545 : actualRows3545=WordField.canonicalRows actualModulus 3545 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3545 : actualRows3545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3545=2892 := by core033_kernel_decide
theorem rows3546 : actualRows3546=WordField.canonicalRows actualModulus 3546 (.bxor 0 3545) := by core033_kernel_decide
theorem stats3546 : actualRows3546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3546=7428 := by core033_kernel_decide
theorem rows3547 : actualRows3547=WordField.canonicalRows actualModulus 3547 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3547 : actualRows3547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3547=2820 := by core033_kernel_decide
theorem rows3548 : actualRows3548=WordField.canonicalRows actualModulus 3548 (.bnot 3547) := by core033_kernel_decide
theorem stats3548 : actualRows3548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3548=6276 := by core033_kernel_decide
theorem rows3549 : actualRows3549=WordField.canonicalRows actualModulus 3549 (.bxor 3546 3548) := by core033_kernel_decide
theorem stats3549 : actualRows3549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3549=7428 := by core033_kernel_decide
theorem rows3550 : actualRows3550=WordField.canonicalRows actualModulus 3550 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3550 : actualRows3550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3550=2892 := by core033_kernel_decide
theorem rows3551 : actualRows3551=WordField.canonicalRows actualModulus 3551 (.bxor 0 3550) := by core033_kernel_decide
theorem stats3551 : actualRows3551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3551=7428 := by core033_kernel_decide
theorem rows3552 : actualRows3552=WordField.canonicalRows actualModulus 3552 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3552 : actualRows3552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3552=2820 := by core033_kernel_decide
theorem rows3553 : actualRows3553=WordField.canonicalRows actualModulus 3553 (.bnot 3552) := by core033_kernel_decide
theorem stats3553 : actualRows3553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3553=6276 := by core033_kernel_decide
theorem rows3554 : actualRows3554=WordField.canonicalRows actualModulus 3554 (.badd 3551 3553) := by core033_kernel_decide
theorem stats3554 : actualRows3554.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3554=5388 := by core033_kernel_decide
theorem rows3555 : actualRows3555=WordField.canonicalRows actualModulus 3555 (.bnot 3554) := by core033_kernel_decide
theorem stats3555 : actualRows3555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3555=6276 := by core033_kernel_decide
theorem rows3556 : actualRows3556=WordField.canonicalRows actualModulus 3556 (.band 3549 3555) := by core033_kernel_decide
theorem stats3556 : actualRows3556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3556=5124 := by core033_kernel_decide
theorem rows3557 : actualRows3557=WordField.canonicalRows actualModulus 3557 (.bxor 3544 3556) := by core033_kernel_decide
theorem stats3557 : actualRows3557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3557=7428 := by core033_kernel_decide
theorem rows3558 : actualRows3558=WordField.canonicalRows actualModulus 3558 (.shr 3557 31) := by core033_kernel_decide
theorem stats3558 : actualRows3558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3558=2892 := by core033_kernel_decide
theorem rows3559 : actualRows3559=WordField.canonicalRows actualModulus 3559 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3559 : actualRows3559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3559=2892 := by core033_kernel_decide
theorem rows3560 : actualRows3560=WordField.canonicalRows actualModulus 3560 (.bxor 3558 3559) := by core033_kernel_decide
theorem stats3560 : actualRows3560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3560=7428 := by core033_kernel_decide
theorem rows3561 : actualRows3561=WordField.canonicalRows actualModulus 3561 (.bnot 3560) := by core033_kernel_decide
theorem stats3561 : actualRows3561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3561=6276 := by core033_kernel_decide
theorem rows3562 : actualRows3562=WordField.canonicalRows actualModulus 3562 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3562 : actualRows3562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3562=2892 := by core033_kernel_decide
def partRows54 : List R1CS.Row := actualRows3499++actualRows3500++actualRows3501++actualRows3502++actualRows3503++actualRows3504++actualRows3505++actualRows3506++actualRows3507++actualRows3508++actualRows3509++actualRows3510++actualRows3511++actualRows3512++actualRows3513++actualRows3514++actualRows3515++actualRows3516++actualRows3517++actualRows3518++actualRows3519++actualRows3520++actualRows3521++actualRows3522++actualRows3523++actualRows3524++actualRows3525++actualRows3526++actualRows3527++actualRows3528++actualRows3529++actualRows3530++actualRows3531++actualRows3532++actualRows3533++actualRows3534++actualRows3535++actualRows3536++actualRows3537++actualRows3538++actualRows3539++actualRows3540++actualRows3541++actualRows3542++actualRows3543++actualRows3544++actualRows3545++actualRows3546++actualRows3547++actualRows3548++actualRows3549++actualRows3550++actualRows3551++actualRows3552++actualRows3553++actualRows3554++actualRows3555++actualRows3556++actualRows3557++actualRows3558++actualRows3559++actualRows3560++actualRows3561++actualRows3562
def partOps54 : List WordIR.Op := [.bxor 0 3498,.literal (BitVec.ofNat 32 0),.bnot 3500,.badd 3499 3501,.bnot 3502,.band 3497 3503,.bxor 3492 3504,.shr 3505 31,.literal (BitVec.ofNat 32 1),.bxor 3506 3507,.bnot 3508,.literal (BitVec.ofNat 32 1),.badd 3509 3510,.band 3511 1073,.literal (BitVec.ofNat 32 2),.bxor 0 3513,.literal (BitVec.ofNat 32 0),.bnot 3515,.band 3514 3516,.literal (BitVec.ofNat 32 2),.bxor 0 3518,.literal (BitVec.ofNat 32 0),.bnot 3520,.bxor 3519 3521,.literal (BitVec.ofNat 32 2),.bxor 0 3523,.literal (BitVec.ofNat 32 0),.bnot 3525,.badd 3524 3526,.bnot 3527,.band 3522 3528,.bxor 3517 3529,.shr 3530 31,.literal (BitVec.ofNat 32 1),.bxor 3531 3532,.bnot 3533,.literal (BitVec.ofNat 32 1),.badd 3534 3535,.bnot 3536,.band 3537 881,.bxor 3512 3538,.literal (BitVec.ofNat 32 2),.bxor 0 3540,.literal (BitVec.ofNat 32 0),.bnot 3542,.band 3541 3543,.literal (BitVec.ofNat 32 2),.bxor 0 3545,.literal (BitVec.ofNat 32 0),.bnot 3547,.bxor 3546 3548,.literal (BitVec.ofNat 32 2),.bxor 0 3550,.literal (BitVec.ofNat 32 0),.bnot 3552,.badd 3551 3553,.bnot 3554,.band 3549 3555,.bxor 3544 3556,.shr 3557 31,.literal (BitVec.ofNat 32 1),.bxor 3558 3559,.bnot 3560,.literal (BitVec.ofNat 32 1)]
theorem partExact54 : partRows54=WordField.rows actualModulus 3499 partOps54 := by
  simp only [partRows54,partOps54,WordField.rows,rows3499,rows3500,rows3501,rows3502,rows3503,rows3504,rows3505,rows3506,rows3507,rows3508,rows3509,rows3510,rows3511,rows3512,rows3513,rows3514,rows3515,rows3516,rows3517,rows3518,rows3519,rows3520,rows3521,rows3522,rows3523,rows3524,rows3525,rows3526,rows3527,rows3528,rows3529,rows3530,rows3531,rows3532,rows3533,rows3534,rows3535,rows3536,rows3537,rows3538,rows3539,rows3540,rows3541,rows3542,rows3543,rows3544,rows3545,rows3546,rows3547,rows3548,rows3549,rows3550,rows3551,rows3552,rows3553,rows3554,rows3555,rows3556,rows3557,rows3558,rows3559,rows3560,rows3561,rows3562,List.append_assoc,List.append_nil]
theorem partLength54 : partOps54.length=64 := by decide
theorem partStats54 : partRows54.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows54=332640 := by
  simp only [partRows54,List.length_append,MatrixRowBlocks.rows_weight_append,stats3499.1,stats3499.2,stats3500.1,stats3500.2,stats3501.1,stats3501.2,stats3502.1,stats3502.2,stats3503.1,stats3503.2,stats3504.1,stats3504.2,stats3505.1,stats3505.2,stats3506.1,stats3506.2,stats3507.1,stats3507.2,stats3508.1,stats3508.2,stats3509.1,stats3509.2,stats3510.1,stats3510.2,stats3511.1,stats3511.2,stats3512.1,stats3512.2,stats3513.1,stats3513.2,stats3514.1,stats3514.2,stats3515.1,stats3515.2,stats3516.1,stats3516.2,stats3517.1,stats3517.2,stats3518.1,stats3518.2,stats3519.1,stats3519.2,stats3520.1,stats3520.2,stats3521.1,stats3521.2,stats3522.1,stats3522.2,stats3523.1,stats3523.2,stats3524.1,stats3524.2,stats3525.1,stats3525.2,stats3526.1,stats3526.2,stats3527.1,stats3527.2,stats3528.1,stats3528.2,stats3529.1,stats3529.2,stats3530.1,stats3530.2,stats3531.1,stats3531.2,stats3532.1,stats3532.2,stats3533.1,stats3533.2,stats3534.1,stats3534.2,stats3535.1,stats3535.2,stats3536.1,stats3536.2,stats3537.1,stats3537.2,stats3538.1,stats3538.2,stats3539.1,stats3539.2,stats3540.1,stats3540.2,stats3541.1,stats3541.2,stats3542.1,stats3542.2,stats3543.1,stats3543.2,stats3544.1,stats3544.2,stats3545.1,stats3545.2,stats3546.1,stats3546.2,stats3547.1,stats3547.2,stats3548.1,stats3548.2,stats3549.1,stats3549.2,stats3550.1,stats3550.2,stats3551.1,stats3551.2,stats3552.1,stats3552.2,stats3553.1,stats3553.2,stats3554.1,stats3554.2,stats3555.1,stats3555.2,stats3556.1,stats3556.2,stats3557.1,stats3557.2,stats3558.1,stats3558.2,stats3559.1,stats3559.2,stats3560.1,stats3560.2,stats3561.1,stats3561.2,stats3562.1,stats3562.2]
  decide
end FrameHashControllerCheckedRows
