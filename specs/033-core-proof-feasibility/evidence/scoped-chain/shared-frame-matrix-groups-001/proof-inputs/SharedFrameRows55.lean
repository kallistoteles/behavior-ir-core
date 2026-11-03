import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData55
import SharedFrameInstructionMatrixData56
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3563 : actualRows3563=WordField.canonicalRows actualModulus 3563 (.badd 3479 3562) := by core033_kernel_decide
theorem stats3563 : actualRows3563.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3563=5388 := by core033_kernel_decide
theorem rows3564 : actualRows3564=WordField.canonicalRows actualModulus 3564 (.band 3557 3531) := by core033_kernel_decide
theorem stats3564 : actualRows3564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3564=5124 := by core033_kernel_decide
theorem rows3565 : actualRows3565=WordField.canonicalRows actualModulus 3565 (.bnot 3557) := by core033_kernel_decide
theorem stats3565 : actualRows3565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3565=6276 := by core033_kernel_decide
theorem rows3566 : actualRows3566=WordField.canonicalRows actualModulus 3566 (.band 3565 3505) := by core033_kernel_decide
theorem stats3566 : actualRows3566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3566=5124 := by core033_kernel_decide
theorem rows3567 : actualRows3567=WordField.canonicalRows actualModulus 3567 (.bxor 3564 3566) := by core033_kernel_decide
theorem stats3567 : actualRows3567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3567=7428 := by core033_kernel_decide
theorem rows3568 : actualRows3568=WordField.canonicalRows actualModulus 3568 (.badd 3563 3567) := by core033_kernel_decide
theorem stats3568 : actualRows3568.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3568=5388 := by core033_kernel_decide
theorem rows3569 : actualRows3569=WordField.canonicalRows actualModulus 3569 (.literal (BitVec.ofNat 32 1537002063)) := by core033_kernel_decide
theorem stats3569 : actualRows3569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3569=4116 := by core033_kernel_decide
theorem rows3570 : actualRows3570=WordField.canonicalRows actualModulus 3570 (.badd 3568 3569) := by core033_kernel_decide
theorem stats3570 : actualRows3570.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3570=5388 := by core033_kernel_decide
theorem rows3571 : actualRows3571=WordField.canonicalRows actualModulus 3571 (.badd 3570 2035) := by core033_kernel_decide
theorem stats3571 : actualRows3571.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3571=5388 := by core033_kernel_decide
theorem rows3572 : actualRows3572=WordField.canonicalRows actualModulus 3572 (.rotr 3556 2) := by core033_kernel_decide
theorem stats3572 : actualRows3572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3572=5124 := by core033_kernel_decide
theorem rows3573 : actualRows3573=WordField.canonicalRows actualModulus 3573 (.rotr 3556 13) := by core033_kernel_decide
theorem stats3573 : actualRows3573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3573=5124 := by core033_kernel_decide
theorem rows3574 : actualRows3574=WordField.canonicalRows actualModulus 3574 (.bxor 3572 3573) := by core033_kernel_decide
theorem stats3574 : actualRows3574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3574=7428 := by core033_kernel_decide
theorem rows3575 : actualRows3575=WordField.canonicalRows actualModulus 3575 (.rotr 3556 22) := by core033_kernel_decide
theorem stats3575 : actualRows3575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3575=5124 := by core033_kernel_decide
theorem rows3576 : actualRows3576=WordField.canonicalRows actualModulus 3576 (.bxor 3574 3575) := by core033_kernel_decide
theorem stats3576 : actualRows3576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3576=7428 := by core033_kernel_decide
theorem rows3577 : actualRows3577=WordField.canonicalRows actualModulus 3577 (.band 3556 3530) := by core033_kernel_decide
theorem stats3577 : actualRows3577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3577=5124 := by core033_kernel_decide
theorem rows3578 : actualRows3578=WordField.canonicalRows actualModulus 3578 (.band 3556 3504) := by core033_kernel_decide
theorem stats3578 : actualRows3578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3578=5124 := by core033_kernel_decide
theorem rows3579 : actualRows3579=WordField.canonicalRows actualModulus 3579 (.bxor 3577 3578) := by core033_kernel_decide
theorem stats3579 : actualRows3579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3579=7428 := by core033_kernel_decide
theorem rows3580 : actualRows3580=WordField.canonicalRows actualModulus 3580 (.bxor 3579 3551) := by core033_kernel_decide
theorem stats3580 : actualRows3580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3580=7428 := by core033_kernel_decide
theorem rows3581 : actualRows3581=WordField.canonicalRows actualModulus 3581 (.badd 3576 3580) := by core033_kernel_decide
theorem stats3581 : actualRows3581.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3581=5388 := by core033_kernel_decide
theorem rows3582 : actualRows3582=WordField.canonicalRows actualModulus 3582 (.badd 3571 3581) := by core033_kernel_decide
theorem stats3582 : actualRows3582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3582=5388 := by core033_kernel_decide
theorem rows3583 : actualRows3583=WordField.canonicalRows actualModulus 3583 (.badd 3478 3571) := by core033_kernel_decide
theorem stats3583 : actualRows3583.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3583=5388 := by core033_kernel_decide
theorem rows3584 : actualRows3584=WordField.canonicalRows actualModulus 3584 (.rotr 3583 6) := by core033_kernel_decide
theorem stats3584 : actualRows3584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3584=5124 := by core033_kernel_decide
theorem rows3585 : actualRows3585=WordField.canonicalRows actualModulus 3585 (.rotr 3583 11) := by core033_kernel_decide
theorem stats3585 : actualRows3585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3585=5124 := by core033_kernel_decide
theorem rows3586 : actualRows3586=WordField.canonicalRows actualModulus 3586 (.bxor 3584 3585) := by core033_kernel_decide
theorem stats3586 : actualRows3586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3586=7428 := by core033_kernel_decide
theorem rows3587 : actualRows3587=WordField.canonicalRows actualModulus 3587 (.rotr 3583 25) := by core033_kernel_decide
theorem stats3587 : actualRows3587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3587=5124 := by core033_kernel_decide
theorem rows3588 : actualRows3588=WordField.canonicalRows actualModulus 3588 (.bxor 3586 3587) := by core033_kernel_decide
theorem stats3588 : actualRows3588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3588=7428 := by core033_kernel_decide
theorem rows3589 : actualRows3589=WordField.canonicalRows actualModulus 3589 (.badd 3505 3588) := by core033_kernel_decide
theorem stats3589 : actualRows3589.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3589=5388 := by core033_kernel_decide
theorem rows3590 : actualRows3590=WordField.canonicalRows actualModulus 3590 (.band 3583 3557) := by core033_kernel_decide
theorem stats3590 : actualRows3590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3590=5124 := by core033_kernel_decide
theorem rows3591 : actualRows3591=WordField.canonicalRows actualModulus 3591 (.bnot 3583) := by core033_kernel_decide
theorem stats3591 : actualRows3591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3591=6276 := by core033_kernel_decide
theorem rows3592 : actualRows3592=WordField.canonicalRows actualModulus 3592 (.band 3591 3531) := by core033_kernel_decide
theorem stats3592 : actualRows3592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3592=5124 := by core033_kernel_decide
theorem rows3593 : actualRows3593=WordField.canonicalRows actualModulus 3593 (.bxor 3590 3592) := by core033_kernel_decide
theorem stats3593 : actualRows3593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3593=7428 := by core033_kernel_decide
theorem rows3594 : actualRows3594=WordField.canonicalRows actualModulus 3594 (.badd 3589 3593) := by core033_kernel_decide
theorem stats3594 : actualRows3594.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3594=5388 := by core033_kernel_decide
theorem rows3595 : actualRows3595=WordField.canonicalRows actualModulus 3595 (.literal (BitVec.ofNat 32 1747873779)) := by core033_kernel_decide
theorem stats3595 : actualRows3595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3595=4188 := by core033_kernel_decide
theorem rows3596 : actualRows3596=WordField.canonicalRows actualModulus 3596 (.badd 3594 3595) := by core033_kernel_decide
theorem stats3596 : actualRows3596.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3596=5388 := by core033_kernel_decide
theorem rows3597 : actualRows3597=WordField.canonicalRows actualModulus 3597 (.badd 3596 2048) := by core033_kernel_decide
theorem stats3597 : actualRows3597.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3597=5388 := by core033_kernel_decide
theorem rows3598 : actualRows3598=WordField.canonicalRows actualModulus 3598 (.rotr 3582 2) := by core033_kernel_decide
theorem stats3598 : actualRows3598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3598=5124 := by core033_kernel_decide
theorem rows3599 : actualRows3599=WordField.canonicalRows actualModulus 3599 (.rotr 3582 13) := by core033_kernel_decide
theorem stats3599 : actualRows3599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3599=5124 := by core033_kernel_decide
theorem rows3600 : actualRows3600=WordField.canonicalRows actualModulus 3600 (.bxor 3598 3599) := by core033_kernel_decide
theorem stats3600 : actualRows3600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3600=7428 := by core033_kernel_decide
theorem rows3601 : actualRows3601=WordField.canonicalRows actualModulus 3601 (.rotr 3582 22) := by core033_kernel_decide
theorem stats3601 : actualRows3601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3601=5124 := by core033_kernel_decide
theorem rows3602 : actualRows3602=WordField.canonicalRows actualModulus 3602 (.bxor 3600 3601) := by core033_kernel_decide
theorem stats3602 : actualRows3602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3602=7428 := by core033_kernel_decide
theorem rows3603 : actualRows3603=WordField.canonicalRows actualModulus 3603 (.band 3582 3556) := by core033_kernel_decide
theorem stats3603 : actualRows3603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3603=5124 := by core033_kernel_decide
theorem rows3604 : actualRows3604=WordField.canonicalRows actualModulus 3604 (.band 3582 3530) := by core033_kernel_decide
theorem stats3604 : actualRows3604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3604=5124 := by core033_kernel_decide
theorem rows3605 : actualRows3605=WordField.canonicalRows actualModulus 3605 (.bxor 3603 3604) := by core033_kernel_decide
theorem stats3605 : actualRows3605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3605=7428 := by core033_kernel_decide
theorem rows3606 : actualRows3606=WordField.canonicalRows actualModulus 3606 (.bxor 3605 3577) := by core033_kernel_decide
theorem stats3606 : actualRows3606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3606=7428 := by core033_kernel_decide
theorem rows3607 : actualRows3607=WordField.canonicalRows actualModulus 3607 (.badd 3602 3606) := by core033_kernel_decide
theorem stats3607 : actualRows3607.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3607=5388 := by core033_kernel_decide
theorem rows3608 : actualRows3608=WordField.canonicalRows actualModulus 3608 (.badd 3597 3607) := by core033_kernel_decide
theorem stats3608 : actualRows3608.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3608=5388 := by core033_kernel_decide
theorem rows3609 : actualRows3609=WordField.canonicalRows actualModulus 3609 (.badd 3504 3597) := by core033_kernel_decide
theorem stats3609 : actualRows3609.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3609=5388 := by core033_kernel_decide
theorem rows3610 : actualRows3610=WordField.canonicalRows actualModulus 3610 (.rotr 3609 6) := by core033_kernel_decide
theorem stats3610 : actualRows3610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3610=5124 := by core033_kernel_decide
theorem rows3611 : actualRows3611=WordField.canonicalRows actualModulus 3611 (.rotr 3609 11) := by core033_kernel_decide
theorem stats3611 : actualRows3611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3611=5124 := by core033_kernel_decide
theorem rows3612 : actualRows3612=WordField.canonicalRows actualModulus 3612 (.bxor 3610 3611) := by core033_kernel_decide
theorem stats3612 : actualRows3612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3612=7428 := by core033_kernel_decide
theorem rows3613 : actualRows3613=WordField.canonicalRows actualModulus 3613 (.rotr 3609 25) := by core033_kernel_decide
theorem stats3613 : actualRows3613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3613=5124 := by core033_kernel_decide
theorem rows3614 : actualRows3614=WordField.canonicalRows actualModulus 3614 (.bxor 3612 3613) := by core033_kernel_decide
theorem stats3614 : actualRows3614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3614=7428 := by core033_kernel_decide
theorem rows3615 : actualRows3615=WordField.canonicalRows actualModulus 3615 (.badd 3531 3614) := by core033_kernel_decide
theorem stats3615 : actualRows3615.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3615=5388 := by core033_kernel_decide
theorem rows3616 : actualRows3616=WordField.canonicalRows actualModulus 3616 (.band 3609 3583) := by core033_kernel_decide
theorem stats3616 : actualRows3616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3616=5124 := by core033_kernel_decide
theorem rows3617 : actualRows3617=WordField.canonicalRows actualModulus 3617 (.bnot 3609) := by core033_kernel_decide
theorem stats3617 : actualRows3617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3617=6276 := by core033_kernel_decide
theorem rows3618 : actualRows3618=WordField.canonicalRows actualModulus 3618 (.band 3617 3557) := by core033_kernel_decide
theorem stats3618 : actualRows3618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3618=5124 := by core033_kernel_decide
theorem rows3619 : actualRows3619=WordField.canonicalRows actualModulus 3619 (.bxor 3616 3618) := by core033_kernel_decide
theorem stats3619 : actualRows3619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3619=7428 := by core033_kernel_decide
theorem rows3620 : actualRows3620=WordField.canonicalRows actualModulus 3620 (.badd 3615 3619) := by core033_kernel_decide
theorem stats3620 : actualRows3620.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3620=5388 := by core033_kernel_decide
theorem rows3621 : actualRows3621=WordField.canonicalRows actualModulus 3621 (.literal (BitVec.ofNat 32 1955562222)) := by core033_kernel_decide
theorem stats3621 : actualRows3621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3621=4044 := by core033_kernel_decide
theorem rows3622 : actualRows3622=WordField.canonicalRows actualModulus 3622 (.badd 3620 3621) := by core033_kernel_decide
theorem stats3622 : actualRows3622.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3622=5388 := by core033_kernel_decide
theorem rows3623 : actualRows3623=WordField.canonicalRows actualModulus 3623 (.badd 3622 2061) := by core033_kernel_decide
theorem stats3623 : actualRows3623.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3623=5388 := by core033_kernel_decide
theorem rows3624 : actualRows3624=WordField.canonicalRows actualModulus 3624 (.rotr 3608 2) := by core033_kernel_decide
theorem stats3624 : actualRows3624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3624=5124 := by core033_kernel_decide
theorem rows3625 : actualRows3625=WordField.canonicalRows actualModulus 3625 (.rotr 3608 13) := by core033_kernel_decide
theorem stats3625 : actualRows3625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3625=5124 := by core033_kernel_decide
theorem rows3626 : actualRows3626=WordField.canonicalRows actualModulus 3626 (.bxor 3624 3625) := by core033_kernel_decide
theorem stats3626 : actualRows3626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3626=7428 := by core033_kernel_decide
def partRows55 : List R1CS.Row := actualRows3563++actualRows3564++actualRows3565++actualRows3566++actualRows3567++actualRows3568++actualRows3569++actualRows3570++actualRows3571++actualRows3572++actualRows3573++actualRows3574++actualRows3575++actualRows3576++actualRows3577++actualRows3578++actualRows3579++actualRows3580++actualRows3581++actualRows3582++actualRows3583++actualRows3584++actualRows3585++actualRows3586++actualRows3587++actualRows3588++actualRows3589++actualRows3590++actualRows3591++actualRows3592++actualRows3593++actualRows3594++actualRows3595++actualRows3596++actualRows3597++actualRows3598++actualRows3599++actualRows3600++actualRows3601++actualRows3602++actualRows3603++actualRows3604++actualRows3605++actualRows3606++actualRows3607++actualRows3608++actualRows3609++actualRows3610++actualRows3611++actualRows3612++actualRows3613++actualRows3614++actualRows3615++actualRows3616++actualRows3617++actualRows3618++actualRows3619++actualRows3620++actualRows3621++actualRows3622++actualRows3623++actualRows3624++actualRows3625++actualRows3626
def partOps55 : List WordIR.Op := [.badd 3479 3562,.band 3557 3531,.bnot 3557,.band 3565 3505,.bxor 3564 3566,.badd 3563 3567,.literal (BitVec.ofNat 32 1537002063),.badd 3568 3569,.badd 3570 2035,.rotr 3556 2,.rotr 3556 13,.bxor 3572 3573,.rotr 3556 22,.bxor 3574 3575,.band 3556 3530,.band 3556 3504,.bxor 3577 3578,.bxor 3579 3551,.badd 3576 3580,.badd 3571 3581,.badd 3478 3571,.rotr 3583 6,.rotr 3583 11,.bxor 3584 3585,.rotr 3583 25,.bxor 3586 3587,.badd 3505 3588,.band 3583 3557,.bnot 3583,.band 3591 3531,.bxor 3590 3592,.badd 3589 3593,.literal (BitVec.ofNat 32 1747873779),.badd 3594 3595,.badd 3596 2048,.rotr 3582 2,.rotr 3582 13,.bxor 3598 3599,.rotr 3582 22,.bxor 3600 3601,.band 3582 3556,.band 3582 3530,.bxor 3603 3604,.bxor 3605 3577,.badd 3602 3606,.badd 3597 3607,.badd 3504 3597,.rotr 3609 6,.rotr 3609 11,.bxor 3610 3611,.rotr 3609 25,.bxor 3612 3613,.badd 3531 3614,.band 3609 3583,.bnot 3609,.band 3617 3557,.bxor 3616 3618,.badd 3615 3619,.literal (BitVec.ofNat 32 1955562222),.badd 3620 3621,.badd 3622 2061,.rotr 3608 2,.rotr 3608 13,.bxor 3624 3625]
theorem partExact55 : partRows55=WordField.rows actualModulus 3563 partOps55 := by
  simp only [partRows55,partOps55,WordField.rows,rows3563,rows3564,rows3565,rows3566,rows3567,rows3568,rows3569,rows3570,rows3571,rows3572,rows3573,rows3574,rows3575,rows3576,rows3577,rows3578,rows3579,rows3580,rows3581,rows3582,rows3583,rows3584,rows3585,rows3586,rows3587,rows3588,rows3589,rows3590,rows3591,rows3592,rows3593,rows3594,rows3595,rows3596,rows3597,rows3598,rows3599,rows3600,rows3601,rows3602,rows3603,rows3604,rows3605,rows3606,rows3607,rows3608,rows3609,rows3610,rows3611,rows3612,rows3613,rows3614,rows3615,rows3616,rows3617,rows3618,rows3619,rows3620,rows3621,rows3622,rows3623,rows3624,rows3625,rows3626,List.append_assoc,List.append_nil]
theorem partLength55 : partOps55.length=64 := by decide
theorem partStats55 : partRows55.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows55=369984 := by
  simp only [partRows55,List.length_append,MatrixRowBlocks.rows_weight_append,stats3563.1,stats3563.2,stats3564.1,stats3564.2,stats3565.1,stats3565.2,stats3566.1,stats3566.2,stats3567.1,stats3567.2,stats3568.1,stats3568.2,stats3569.1,stats3569.2,stats3570.1,stats3570.2,stats3571.1,stats3571.2,stats3572.1,stats3572.2,stats3573.1,stats3573.2,stats3574.1,stats3574.2,stats3575.1,stats3575.2,stats3576.1,stats3576.2,stats3577.1,stats3577.2,stats3578.1,stats3578.2,stats3579.1,stats3579.2,stats3580.1,stats3580.2,stats3581.1,stats3581.2,stats3582.1,stats3582.2,stats3583.1,stats3583.2,stats3584.1,stats3584.2,stats3585.1,stats3585.2,stats3586.1,stats3586.2,stats3587.1,stats3587.2,stats3588.1,stats3588.2,stats3589.1,stats3589.2,stats3590.1,stats3590.2,stats3591.1,stats3591.2,stats3592.1,stats3592.2,stats3593.1,stats3593.2,stats3594.1,stats3594.2,stats3595.1,stats3595.2,stats3596.1,stats3596.2,stats3597.1,stats3597.2,stats3598.1,stats3598.2,stats3599.1,stats3599.2,stats3600.1,stats3600.2,stats3601.1,stats3601.2,stats3602.1,stats3602.2,stats3603.1,stats3603.2,stats3604.1,stats3604.2,stats3605.1,stats3605.2,stats3606.1,stats3606.2,stats3607.1,stats3607.2,stats3608.1,stats3608.2,stats3609.1,stats3609.2,stats3610.1,stats3610.2,stats3611.1,stats3611.2,stats3612.1,stats3612.2,stats3613.1,stats3613.2,stats3614.1,stats3614.2,stats3615.1,stats3615.2,stats3616.1,stats3616.2,stats3617.1,stats3617.2,stats3618.1,stats3618.2,stats3619.1,stats3619.2,stats3620.1,stats3620.2,stats3621.1,stats3621.2,stats3622.1,stats3622.2,stats3623.1,stats3623.2,stats3624.1,stats3624.2,stats3625.1,stats3625.2,stats3626.1,stats3626.2]
  decide
end SharedFrameCheckedRows
