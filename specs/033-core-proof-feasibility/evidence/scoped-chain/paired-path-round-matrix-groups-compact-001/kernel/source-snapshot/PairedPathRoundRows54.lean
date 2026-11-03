import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData55
import PairedPathRoundInstructionMatrixData56
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
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
theorem rows3560 : actualRows3560=WordField.canonicalRows actualModulus 3560 (.band 3559 2052) := by core033_kernel_decide
theorem stats3560 : actualRows3560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3560=5124 := by core033_kernel_decide
theorem rows3561 : actualRows3561=WordField.canonicalRows actualModulus 3561 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3561 : actualRows3561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3561=2892 := by core033_kernel_decide
theorem rows3562 : actualRows3562=WordField.canonicalRows actualModulus 3562 (.bxor 616 3561) := by core033_kernel_decide
theorem stats3562 : actualRows3562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3562=7428 := by core033_kernel_decide
theorem rows3563 : actualRows3563=WordField.canonicalRows actualModulus 3563 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3563 : actualRows3563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3563=2820 := by core033_kernel_decide
theorem rows3564 : actualRows3564=WordField.canonicalRows actualModulus 3564 (.bnot 3563) := by core033_kernel_decide
theorem stats3564 : actualRows3564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3564=6276 := by core033_kernel_decide
theorem rows3565 : actualRows3565=WordField.canonicalRows actualModulus 3565 (.band 3562 3564) := by core033_kernel_decide
theorem stats3565 : actualRows3565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3565=5124 := by core033_kernel_decide
theorem rows3566 : actualRows3566=WordField.canonicalRows actualModulus 3566 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3566 : actualRows3566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3566=2892 := by core033_kernel_decide
theorem rows3567 : actualRows3567=WordField.canonicalRows actualModulus 3567 (.bxor 616 3566) := by core033_kernel_decide
theorem stats3567 : actualRows3567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3567=7428 := by core033_kernel_decide
theorem rows3568 : actualRows3568=WordField.canonicalRows actualModulus 3568 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3568 : actualRows3568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3568=2820 := by core033_kernel_decide
theorem rows3569 : actualRows3569=WordField.canonicalRows actualModulus 3569 (.bnot 3568) := by core033_kernel_decide
theorem stats3569 : actualRows3569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3569=6276 := by core033_kernel_decide
theorem rows3570 : actualRows3570=WordField.canonicalRows actualModulus 3570 (.bxor 3567 3569) := by core033_kernel_decide
theorem stats3570 : actualRows3570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3570=7428 := by core033_kernel_decide
theorem rows3571 : actualRows3571=WordField.canonicalRows actualModulus 3571 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3571 : actualRows3571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3571=2892 := by core033_kernel_decide
theorem rows3572 : actualRows3572=WordField.canonicalRows actualModulus 3572 (.bxor 616 3571) := by core033_kernel_decide
theorem stats3572 : actualRows3572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3572=7428 := by core033_kernel_decide
theorem rows3573 : actualRows3573=WordField.canonicalRows actualModulus 3573 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3573 : actualRows3573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3573=2820 := by core033_kernel_decide
theorem rows3574 : actualRows3574=WordField.canonicalRows actualModulus 3574 (.bnot 3573) := by core033_kernel_decide
theorem stats3574 : actualRows3574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3574=6276 := by core033_kernel_decide
theorem rows3575 : actualRows3575=WordField.canonicalRows actualModulus 3575 (.badd 3572 3574) := by core033_kernel_decide
theorem stats3575 : actualRows3575.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3575=5388 := by core033_kernel_decide
theorem rows3576 : actualRows3576=WordField.canonicalRows actualModulus 3576 (.bnot 3575) := by core033_kernel_decide
theorem stats3576 : actualRows3576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3576=6276 := by core033_kernel_decide
theorem rows3577 : actualRows3577=WordField.canonicalRows actualModulus 3577 (.band 3570 3576) := by core033_kernel_decide
theorem stats3577 : actualRows3577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3577=5124 := by core033_kernel_decide
theorem rows3578 : actualRows3578=WordField.canonicalRows actualModulus 3578 (.bxor 3565 3577) := by core033_kernel_decide
theorem stats3578 : actualRows3578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3578=7428 := by core033_kernel_decide
theorem rows3579 : actualRows3579=WordField.canonicalRows actualModulus 3579 (.shr 3578 31) := by core033_kernel_decide
theorem stats3579 : actualRows3579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3579=2892 := by core033_kernel_decide
theorem rows3580 : actualRows3580=WordField.canonicalRows actualModulus 3580 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3580 : actualRows3580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3580=2892 := by core033_kernel_decide
theorem rows3581 : actualRows3581=WordField.canonicalRows actualModulus 3581 (.bxor 3579 3580) := by core033_kernel_decide
theorem stats3581 : actualRows3581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3581=7428 := by core033_kernel_decide
theorem rows3582 : actualRows3582=WordField.canonicalRows actualModulus 3582 (.bnot 3581) := by core033_kernel_decide
theorem stats3582 : actualRows3582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3582=6276 := by core033_kernel_decide
theorem rows3583 : actualRows3583=WordField.canonicalRows actualModulus 3583 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3583 : actualRows3583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3583=2892 := by core033_kernel_decide
theorem rows3584 : actualRows3584=WordField.canonicalRows actualModulus 3584 (.badd 3582 3583) := by core033_kernel_decide
theorem stats3584 : actualRows3584.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3584=5388 := by core033_kernel_decide
theorem rows3585 : actualRows3585=WordField.canonicalRows actualModulus 3585 (.bnot 3584) := by core033_kernel_decide
theorem stats3585 : actualRows3585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3585=6276 := by core033_kernel_decide
theorem rows3586 : actualRows3586=WordField.canonicalRows actualModulus 3586 (.band 3585 1876) := by core033_kernel_decide
theorem stats3586 : actualRows3586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3586=5124 := by core033_kernel_decide
theorem rows3587 : actualRows3587=WordField.canonicalRows actualModulus 3587 (.bxor 3560 3586) := by core033_kernel_decide
theorem stats3587 : actualRows3587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3587=7428 := by core033_kernel_decide
theorem rows3588 : actualRows3588=WordField.canonicalRows actualModulus 3588 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3588 : actualRows3588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3588=2892 := by core033_kernel_decide
theorem rows3589 : actualRows3589=WordField.canonicalRows actualModulus 3589 (.bxor 616 3588) := by core033_kernel_decide
theorem stats3589 : actualRows3589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3589=7428 := by core033_kernel_decide
theorem rows3590 : actualRows3590=WordField.canonicalRows actualModulus 3590 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3590 : actualRows3590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3590=2820 := by core033_kernel_decide
theorem rows3591 : actualRows3591=WordField.canonicalRows actualModulus 3591 (.bnot 3590) := by core033_kernel_decide
theorem stats3591 : actualRows3591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3591=6276 := by core033_kernel_decide
theorem rows3592 : actualRows3592=WordField.canonicalRows actualModulus 3592 (.band 3589 3591) := by core033_kernel_decide
theorem stats3592 : actualRows3592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3592=5124 := by core033_kernel_decide
theorem rows3593 : actualRows3593=WordField.canonicalRows actualModulus 3593 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3593 : actualRows3593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3593=2892 := by core033_kernel_decide
theorem rows3594 : actualRows3594=WordField.canonicalRows actualModulus 3594 (.bxor 616 3593) := by core033_kernel_decide
theorem stats3594 : actualRows3594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3594=7428 := by core033_kernel_decide
theorem rows3595 : actualRows3595=WordField.canonicalRows actualModulus 3595 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3595 : actualRows3595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3595=2820 := by core033_kernel_decide
theorem rows3596 : actualRows3596=WordField.canonicalRows actualModulus 3596 (.bnot 3595) := by core033_kernel_decide
theorem stats3596 : actualRows3596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3596=6276 := by core033_kernel_decide
theorem rows3597 : actualRows3597=WordField.canonicalRows actualModulus 3597 (.bxor 3594 3596) := by core033_kernel_decide
theorem stats3597 : actualRows3597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3597=7428 := by core033_kernel_decide
theorem rows3598 : actualRows3598=WordField.canonicalRows actualModulus 3598 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3598 : actualRows3598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3598=2892 := by core033_kernel_decide
theorem rows3599 : actualRows3599=WordField.canonicalRows actualModulus 3599 (.bxor 616 3598) := by core033_kernel_decide
theorem stats3599 : actualRows3599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3599=7428 := by core033_kernel_decide
theorem rows3600 : actualRows3600=WordField.canonicalRows actualModulus 3600 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3600 : actualRows3600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3600=2820 := by core033_kernel_decide
theorem rows3601 : actualRows3601=WordField.canonicalRows actualModulus 3601 (.bnot 3600) := by core033_kernel_decide
theorem stats3601 : actualRows3601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3601=6276 := by core033_kernel_decide
theorem rows3602 : actualRows3602=WordField.canonicalRows actualModulus 3602 (.badd 3599 3601) := by core033_kernel_decide
theorem stats3602 : actualRows3602.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3602=5388 := by core033_kernel_decide
theorem rows3603 : actualRows3603=WordField.canonicalRows actualModulus 3603 (.bnot 3602) := by core033_kernel_decide
theorem stats3603 : actualRows3603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3603=6276 := by core033_kernel_decide
theorem rows3604 : actualRows3604=WordField.canonicalRows actualModulus 3604 (.band 3597 3603) := by core033_kernel_decide
theorem stats3604 : actualRows3604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3604=5124 := by core033_kernel_decide
theorem rows3605 : actualRows3605=WordField.canonicalRows actualModulus 3605 (.bxor 3592 3604) := by core033_kernel_decide
theorem stats3605 : actualRows3605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3605=7428 := by core033_kernel_decide
theorem rows3606 : actualRows3606=WordField.canonicalRows actualModulus 3606 (.shr 3605 31) := by core033_kernel_decide
theorem stats3606 : actualRows3606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3606=2892 := by core033_kernel_decide
theorem rows3607 : actualRows3607=WordField.canonicalRows actualModulus 3607 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3607 : actualRows3607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3607=2892 := by core033_kernel_decide
theorem rows3608 : actualRows3608=WordField.canonicalRows actualModulus 3608 (.bxor 3606 3607) := by core033_kernel_decide
theorem stats3608 : actualRows3608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3608=7428 := by core033_kernel_decide
theorem rows3609 : actualRows3609=WordField.canonicalRows actualModulus 3609 (.bnot 3608) := by core033_kernel_decide
theorem stats3609 : actualRows3609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3609=6276 := by core033_kernel_decide
theorem rows3610 : actualRows3610=WordField.canonicalRows actualModulus 3610 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3610 : actualRows3610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3610=2892 := by core033_kernel_decide
theorem rows3611 : actualRows3611=WordField.canonicalRows actualModulus 3611 (.badd 3609 3610) := by core033_kernel_decide
theorem stats3611 : actualRows3611.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3611=5388 := by core033_kernel_decide
theorem rows3612 : actualRows3612=WordField.canonicalRows actualModulus 3612 (.band 3611 2055) := by core033_kernel_decide
theorem stats3612 : actualRows3612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3612=5124 := by core033_kernel_decide
theorem rows3613 : actualRows3613=WordField.canonicalRows actualModulus 3613 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3613 : actualRows3613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3613=2892 := by core033_kernel_decide
theorem rows3614 : actualRows3614=WordField.canonicalRows actualModulus 3614 (.bxor 616 3613) := by core033_kernel_decide
theorem stats3614 : actualRows3614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3614=7428 := by core033_kernel_decide
theorem rows3615 : actualRows3615=WordField.canonicalRows actualModulus 3615 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3615 : actualRows3615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3615=2820 := by core033_kernel_decide
def partRows54 : List R1CS.Row := actualRows3552++actualRows3553++actualRows3554++actualRows3555++actualRows3556++actualRows3557++actualRows3558++actualRows3559++actualRows3560++actualRows3561++actualRows3562++actualRows3563++actualRows3564++actualRows3565++actualRows3566++actualRows3567++actualRows3568++actualRows3569++actualRows3570++actualRows3571++actualRows3572++actualRows3573++actualRows3574++actualRows3575++actualRows3576++actualRows3577++actualRows3578++actualRows3579++actualRows3580++actualRows3581++actualRows3582++actualRows3583++actualRows3584++actualRows3585++actualRows3586++actualRows3587++actualRows3588++actualRows3589++actualRows3590++actualRows3591++actualRows3592++actualRows3593++actualRows3594++actualRows3595++actualRows3596++actualRows3597++actualRows3598++actualRows3599++actualRows3600++actualRows3601++actualRows3602++actualRows3603++actualRows3604++actualRows3605++actualRows3606++actualRows3607++actualRows3608++actualRows3609++actualRows3610++actualRows3611++actualRows3612++actualRows3613++actualRows3614++actualRows3615
def partOps54 : List WordIR.Op := [.band 3545 3551,.bxor 3540 3552,.shr 3553 31,.literal (BitVec.ofNat 32 1),.bxor 3554 3555,.bnot 3556,.literal (BitVec.ofNat 32 1),.badd 3557 3558,.band 3559 2052,.literal (BitVec.ofNat 32 2),.bxor 616 3561,.literal (BitVec.ofNat 32 0),.bnot 3563,.band 3562 3564,.literal (BitVec.ofNat 32 2),.bxor 616 3566,.literal (BitVec.ofNat 32 0),.bnot 3568,.bxor 3567 3569,.literal (BitVec.ofNat 32 2),.bxor 616 3571,.literal (BitVec.ofNat 32 0),.bnot 3573,.badd 3572 3574,.bnot 3575,.band 3570 3576,.bxor 3565 3577,.shr 3578 31,.literal (BitVec.ofNat 32 1),.bxor 3579 3580,.bnot 3581,.literal (BitVec.ofNat 32 1),.badd 3582 3583,.bnot 3584,.band 3585 1876,.bxor 3560 3586,.literal (BitVec.ofNat 32 2),.bxor 616 3588,.literal (BitVec.ofNat 32 0),.bnot 3590,.band 3589 3591,.literal (BitVec.ofNat 32 2),.bxor 616 3593,.literal (BitVec.ofNat 32 0),.bnot 3595,.bxor 3594 3596,.literal (BitVec.ofNat 32 2),.bxor 616 3598,.literal (BitVec.ofNat 32 0),.bnot 3600,.badd 3599 3601,.bnot 3602,.band 3597 3603,.bxor 3592 3604,.shr 3605 31,.literal (BitVec.ofNat 32 1),.bxor 3606 3607,.bnot 3608,.literal (BitVec.ofNat 32 1),.badd 3609 3610,.band 3611 2055,.literal (BitVec.ofNat 32 2),.bxor 616 3613,.literal (BitVec.ofNat 32 0)]
theorem partExact54 : partRows54=WordField.rows actualModulus 3552 partOps54 := by
  simp only [partRows54,partOps54,WordField.rows,rows3552,rows3553,rows3554,rows3555,rows3556,rows3557,rows3558,rows3559,rows3560,rows3561,rows3562,rows3563,rows3564,rows3565,rows3566,rows3567,rows3568,rows3569,rows3570,rows3571,rows3572,rows3573,rows3574,rows3575,rows3576,rows3577,rows3578,rows3579,rows3580,rows3581,rows3582,rows3583,rows3584,rows3585,rows3586,rows3587,rows3588,rows3589,rows3590,rows3591,rows3592,rows3593,rows3594,rows3595,rows3596,rows3597,rows3598,rows3599,rows3600,rows3601,rows3602,rows3603,rows3604,rows3605,rows3606,rows3607,rows3608,rows3609,rows3610,rows3611,rows3612,rows3613,rows3614,rows3615,List.append_assoc,List.append_nil]
theorem partLength54 : partOps54.length=64 := by decide
theorem partStats54 : partRows54.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows54=328104 := by
  simp only [partRows54,List.length_append,MatrixRowBlocks.rows_weight_append,stats3552.1,stats3552.2,stats3553.1,stats3553.2,stats3554.1,stats3554.2,stats3555.1,stats3555.2,stats3556.1,stats3556.2,stats3557.1,stats3557.2,stats3558.1,stats3558.2,stats3559.1,stats3559.2,stats3560.1,stats3560.2,stats3561.1,stats3561.2,stats3562.1,stats3562.2,stats3563.1,stats3563.2,stats3564.1,stats3564.2,stats3565.1,stats3565.2,stats3566.1,stats3566.2,stats3567.1,stats3567.2,stats3568.1,stats3568.2,stats3569.1,stats3569.2,stats3570.1,stats3570.2,stats3571.1,stats3571.2,stats3572.1,stats3572.2,stats3573.1,stats3573.2,stats3574.1,stats3574.2,stats3575.1,stats3575.2,stats3576.1,stats3576.2,stats3577.1,stats3577.2,stats3578.1,stats3578.2,stats3579.1,stats3579.2,stats3580.1,stats3580.2,stats3581.1,stats3581.2,stats3582.1,stats3582.2,stats3583.1,stats3583.2,stats3584.1,stats3584.2,stats3585.1,stats3585.2,stats3586.1,stats3586.2,stats3587.1,stats3587.2,stats3588.1,stats3588.2,stats3589.1,stats3589.2,stats3590.1,stats3590.2,stats3591.1,stats3591.2,stats3592.1,stats3592.2,stats3593.1,stats3593.2,stats3594.1,stats3594.2,stats3595.1,stats3595.2,stats3596.1,stats3596.2,stats3597.1,stats3597.2,stats3598.1,stats3598.2,stats3599.1,stats3599.2,stats3600.1,stats3600.2,stats3601.1,stats3601.2,stats3602.1,stats3602.2,stats3603.1,stats3603.2,stats3604.1,stats3604.2,stats3605.1,stats3605.2,stats3606.1,stats3606.2,stats3607.1,stats3607.2,stats3608.1,stats3608.2,stats3609.1,stats3609.2,stats3610.1,stats3610.2,stats3611.1,stats3611.2,stats3612.1,stats3612.2,stats3613.1,stats3613.2,stats3614.1,stats3614.2,stats3615.1,stats3615.2]
  decide
end PairedPathRoundCheckedRows
