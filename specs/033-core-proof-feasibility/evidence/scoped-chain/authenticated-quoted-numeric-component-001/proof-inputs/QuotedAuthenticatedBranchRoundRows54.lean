import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData55
import AuthenticatedBranchRoundInstructionMatrixData56
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3574 : actualRows3574=WordField.canonicalRows actualModulus 3574 (.bxor 1299 3573) := by core033_kernel_decide
theorem stats3574 : actualRows3574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3574=7428 := by core033_kernel_decide
theorem rows3575 : actualRows3575=WordField.canonicalRows actualModulus 3575 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3575 : actualRows3575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3575=2820 := by core033_kernel_decide
theorem rows3576 : actualRows3576=WordField.canonicalRows actualModulus 3576 (.bnot 3575) := by core033_kernel_decide
theorem stats3576 : actualRows3576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3576=6276 := by core033_kernel_decide
theorem rows3577 : actualRows3577=WordField.canonicalRows actualModulus 3577 (.bxor 3574 3576) := by core033_kernel_decide
theorem stats3577 : actualRows3577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3577=7428 := by core033_kernel_decide
theorem rows3578 : actualRows3578=WordField.canonicalRows actualModulus 3578 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3578 : actualRows3578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3578=2892 := by core033_kernel_decide
theorem rows3579 : actualRows3579=WordField.canonicalRows actualModulus 3579 (.bxor 1299 3578) := by core033_kernel_decide
theorem stats3579 : actualRows3579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3579=7428 := by core033_kernel_decide
theorem rows3580 : actualRows3580=WordField.canonicalRows actualModulus 3580 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3580 : actualRows3580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3580=2820 := by core033_kernel_decide
theorem rows3581 : actualRows3581=WordField.canonicalRows actualModulus 3581 (.bnot 3580) := by core033_kernel_decide
theorem stats3581 : actualRows3581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3581=6276 := by core033_kernel_decide
theorem rows3582 : actualRows3582=WordField.canonicalRows actualModulus 3582 (.badd 3579 3581) := by core033_kernel_decide
theorem stats3582 : actualRows3582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3582=5388 := by core033_kernel_decide
theorem rows3583 : actualRows3583=WordField.canonicalRows actualModulus 3583 (.bnot 3582) := by core033_kernel_decide
theorem stats3583 : actualRows3583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3583=6276 := by core033_kernel_decide
theorem rows3584 : actualRows3584=WordField.canonicalRows actualModulus 3584 (.band 3577 3583) := by core033_kernel_decide
theorem stats3584 : actualRows3584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3584=5124 := by core033_kernel_decide
theorem rows3585 : actualRows3585=WordField.canonicalRows actualModulus 3585 (.bxor 3572 3584) := by core033_kernel_decide
theorem stats3585 : actualRows3585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3585=7428 := by core033_kernel_decide
theorem rows3586 : actualRows3586=WordField.canonicalRows actualModulus 3586 (.shr 3585 31) := by core033_kernel_decide
theorem stats3586 : actualRows3586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3586=2892 := by core033_kernel_decide
theorem rows3587 : actualRows3587=WordField.canonicalRows actualModulus 3587 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3587 : actualRows3587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3587=2892 := by core033_kernel_decide
theorem rows3588 : actualRows3588=WordField.canonicalRows actualModulus 3588 (.bxor 3586 3587) := by core033_kernel_decide
theorem stats3588 : actualRows3588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3588=7428 := by core033_kernel_decide
theorem rows3589 : actualRows3589=WordField.canonicalRows actualModulus 3589 (.bnot 3588) := by core033_kernel_decide
theorem stats3589 : actualRows3589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3589=6276 := by core033_kernel_decide
theorem rows3590 : actualRows3590=WordField.canonicalRows actualModulus 3590 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3590 : actualRows3590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3590=2892 := by core033_kernel_decide
theorem rows3591 : actualRows3591=WordField.canonicalRows actualModulus 3591 (.badd 3589 3590) := by core033_kernel_decide
theorem stats3591 : actualRows3591.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3591=5388 := by core033_kernel_decide
theorem rows3592 : actualRows3592=WordField.canonicalRows actualModulus 3592 (.bnot 3591) := by core033_kernel_decide
theorem stats3592 : actualRows3592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3592=6276 := by core033_kernel_decide
theorem rows3593 : actualRows3593=WordField.canonicalRows actualModulus 3593 (.band 3592 2546) := by core033_kernel_decide
theorem stats3593 : actualRows3593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3593=5124 := by core033_kernel_decide
theorem rows3594 : actualRows3594=WordField.canonicalRows actualModulus 3594 (.bxor 3567 3593) := by core033_kernel_decide
theorem stats3594 : actualRows3594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3594=7428 := by core033_kernel_decide
theorem rows3595 : actualRows3595=WordField.canonicalRows actualModulus 3595 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3595 : actualRows3595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3595=2892 := by core033_kernel_decide
theorem rows3596 : actualRows3596=WordField.canonicalRows actualModulus 3596 (.bxor 1299 3595) := by core033_kernel_decide
theorem stats3596 : actualRows3596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3596=7428 := by core033_kernel_decide
theorem rows3597 : actualRows3597=WordField.canonicalRows actualModulus 3597 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3597 : actualRows3597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3597=2820 := by core033_kernel_decide
theorem rows3598 : actualRows3598=WordField.canonicalRows actualModulus 3598 (.bnot 3597) := by core033_kernel_decide
theorem stats3598 : actualRows3598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3598=6276 := by core033_kernel_decide
theorem rows3599 : actualRows3599=WordField.canonicalRows actualModulus 3599 (.band 3596 3598) := by core033_kernel_decide
theorem stats3599 : actualRows3599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3599=5124 := by core033_kernel_decide
theorem rows3600 : actualRows3600=WordField.canonicalRows actualModulus 3600 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3600 : actualRows3600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3600=2892 := by core033_kernel_decide
theorem rows3601 : actualRows3601=WordField.canonicalRows actualModulus 3601 (.bxor 1299 3600) := by core033_kernel_decide
theorem stats3601 : actualRows3601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3601=7428 := by core033_kernel_decide
theorem rows3602 : actualRows3602=WordField.canonicalRows actualModulus 3602 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3602 : actualRows3602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3602=2820 := by core033_kernel_decide
theorem rows3603 : actualRows3603=WordField.canonicalRows actualModulus 3603 (.bnot 3602) := by core033_kernel_decide
theorem stats3603 : actualRows3603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3603=6276 := by core033_kernel_decide
theorem rows3604 : actualRows3604=WordField.canonicalRows actualModulus 3604 (.bxor 3601 3603) := by core033_kernel_decide
theorem stats3604 : actualRows3604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3604=7428 := by core033_kernel_decide
theorem rows3605 : actualRows3605=WordField.canonicalRows actualModulus 3605 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3605 : actualRows3605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3605=2892 := by core033_kernel_decide
theorem rows3606 : actualRows3606=WordField.canonicalRows actualModulus 3606 (.bxor 1299 3605) := by core033_kernel_decide
theorem stats3606 : actualRows3606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3606=7428 := by core033_kernel_decide
theorem rows3607 : actualRows3607=WordField.canonicalRows actualModulus 3607 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3607 : actualRows3607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3607=2820 := by core033_kernel_decide
theorem rows3608 : actualRows3608=WordField.canonicalRows actualModulus 3608 (.bnot 3607) := by core033_kernel_decide
theorem stats3608 : actualRows3608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3608=6276 := by core033_kernel_decide
theorem rows3609 : actualRows3609=WordField.canonicalRows actualModulus 3609 (.badd 3606 3608) := by core033_kernel_decide
theorem stats3609 : actualRows3609.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3609=5388 := by core033_kernel_decide
theorem rows3610 : actualRows3610=WordField.canonicalRows actualModulus 3610 (.bnot 3609) := by core033_kernel_decide
theorem stats3610 : actualRows3610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3610=6276 := by core033_kernel_decide
theorem rows3611 : actualRows3611=WordField.canonicalRows actualModulus 3611 (.band 3604 3610) := by core033_kernel_decide
theorem stats3611 : actualRows3611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3611=5124 := by core033_kernel_decide
theorem rows3612 : actualRows3612=WordField.canonicalRows actualModulus 3612 (.bxor 3599 3611) := by core033_kernel_decide
theorem stats3612 : actualRows3612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3612=7428 := by core033_kernel_decide
theorem rows3613 : actualRows3613=WordField.canonicalRows actualModulus 3613 (.shr 3612 31) := by core033_kernel_decide
theorem stats3613 : actualRows3613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3613=2892 := by core033_kernel_decide
theorem rows3614 : actualRows3614=WordField.canonicalRows actualModulus 3614 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3614 : actualRows3614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3614=2892 := by core033_kernel_decide
theorem rows3615 : actualRows3615=WordField.canonicalRows actualModulus 3615 (.bxor 3613 3614) := by core033_kernel_decide
theorem stats3615 : actualRows3615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3615=7428 := by core033_kernel_decide
theorem rows3616 : actualRows3616=WordField.canonicalRows actualModulus 3616 (.bnot 3615) := by core033_kernel_decide
theorem stats3616 : actualRows3616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3616=6276 := by core033_kernel_decide
theorem rows3617 : actualRows3617=WordField.canonicalRows actualModulus 3617 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3617 : actualRows3617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3617=2892 := by core033_kernel_decide
theorem rows3618 : actualRows3618=WordField.canonicalRows actualModulus 3618 (.badd 3616 3617) := by core033_kernel_decide
theorem stats3618 : actualRows3618.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3618=5388 := by core033_kernel_decide
theorem rows3619 : actualRows3619=WordField.canonicalRows actualModulus 3619 (.band 3618 2699) := by core033_kernel_decide
theorem stats3619 : actualRows3619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3619=5124 := by core033_kernel_decide
theorem rows3620 : actualRows3620=WordField.canonicalRows actualModulus 3620 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3620 : actualRows3620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3620=2892 := by core033_kernel_decide
theorem rows3621 : actualRows3621=WordField.canonicalRows actualModulus 3621 (.bxor 1299 3620) := by core033_kernel_decide
theorem stats3621 : actualRows3621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3621=7428 := by core033_kernel_decide
theorem rows3622 : actualRows3622=WordField.canonicalRows actualModulus 3622 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3622 : actualRows3622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3622=2820 := by core033_kernel_decide
theorem rows3623 : actualRows3623=WordField.canonicalRows actualModulus 3623 (.bnot 3622) := by core033_kernel_decide
theorem stats3623 : actualRows3623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3623=6276 := by core033_kernel_decide
theorem rows3624 : actualRows3624=WordField.canonicalRows actualModulus 3624 (.band 3621 3623) := by core033_kernel_decide
theorem stats3624 : actualRows3624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3624=5124 := by core033_kernel_decide
theorem rows3625 : actualRows3625=WordField.canonicalRows actualModulus 3625 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3625 : actualRows3625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3625=2892 := by core033_kernel_decide
theorem rows3626 : actualRows3626=WordField.canonicalRows actualModulus 3626 (.bxor 1299 3625) := by core033_kernel_decide
theorem stats3626 : actualRows3626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3626=7428 := by core033_kernel_decide
theorem rows3627 : actualRows3627=WordField.canonicalRows actualModulus 3627 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3627 : actualRows3627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3627=2820 := by core033_kernel_decide
theorem rows3628 : actualRows3628=WordField.canonicalRows actualModulus 3628 (.bnot 3627) := by core033_kernel_decide
theorem stats3628 : actualRows3628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3628=6276 := by core033_kernel_decide
theorem rows3629 : actualRows3629=WordField.canonicalRows actualModulus 3629 (.bxor 3626 3628) := by core033_kernel_decide
theorem stats3629 : actualRows3629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3629=7428 := by core033_kernel_decide
theorem rows3630 : actualRows3630=WordField.canonicalRows actualModulus 3630 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats3630 : actualRows3630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3630=2892 := by core033_kernel_decide
theorem rows3631 : actualRows3631=WordField.canonicalRows actualModulus 3631 (.bxor 1299 3630) := by core033_kernel_decide
theorem stats3631 : actualRows3631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3631=7428 := by core033_kernel_decide
theorem rows3632 : actualRows3632=WordField.canonicalRows actualModulus 3632 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats3632 : actualRows3632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3632=2820 := by core033_kernel_decide
theorem rows3633 : actualRows3633=WordField.canonicalRows actualModulus 3633 (.bnot 3632) := by core033_kernel_decide
theorem stats3633 : actualRows3633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3633=6276 := by core033_kernel_decide
theorem rows3634 : actualRows3634=WordField.canonicalRows actualModulus 3634 (.badd 3631 3633) := by core033_kernel_decide
theorem stats3634 : actualRows3634.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3634=5388 := by core033_kernel_decide
theorem rows3635 : actualRows3635=WordField.canonicalRows actualModulus 3635 (.bnot 3634) := by core033_kernel_decide
theorem stats3635 : actualRows3635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3635=6276 := by core033_kernel_decide
theorem rows3636 : actualRows3636=WordField.canonicalRows actualModulus 3636 (.band 3629 3635) := by core033_kernel_decide
theorem stats3636 : actualRows3636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3636=5124 := by core033_kernel_decide
theorem rows3637 : actualRows3637=WordField.canonicalRows actualModulus 3637 (.bxor 3624 3636) := by core033_kernel_decide
theorem stats3637 : actualRows3637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3637=7428 := by core033_kernel_decide
def partRows54 : List R1CS.Row := actualRows3574++actualRows3575++actualRows3576++actualRows3577++actualRows3578++actualRows3579++actualRows3580++actualRows3581++actualRows3582++actualRows3583++actualRows3584++actualRows3585++actualRows3586++actualRows3587++actualRows3588++actualRows3589++actualRows3590++actualRows3591++actualRows3592++actualRows3593++actualRows3594++actualRows3595++actualRows3596++actualRows3597++actualRows3598++actualRows3599++actualRows3600++actualRows3601++actualRows3602++actualRows3603++actualRows3604++actualRows3605++actualRows3606++actualRows3607++actualRows3608++actualRows3609++actualRows3610++actualRows3611++actualRows3612++actualRows3613++actualRows3614++actualRows3615++actualRows3616++actualRows3617++actualRows3618++actualRows3619++actualRows3620++actualRows3621++actualRows3622++actualRows3623++actualRows3624++actualRows3625++actualRows3626++actualRows3627++actualRows3628++actualRows3629++actualRows3630++actualRows3631++actualRows3632++actualRows3633++actualRows3634++actualRows3635++actualRows3636++actualRows3637
def partOps54 : List WordIR.Op := [.bxor 1299 3573,.literal (BitVec.ofNat 32 0),.bnot 3575,.bxor 3574 3576,.literal (BitVec.ofNat 32 2),.bxor 1299 3578,.literal (BitVec.ofNat 32 0),.bnot 3580,.badd 3579 3581,.bnot 3582,.band 3577 3583,.bxor 3572 3584,.shr 3585 31,.literal (BitVec.ofNat 32 1),.bxor 3586 3587,.bnot 3588,.literal (BitVec.ofNat 32 1),.badd 3589 3590,.bnot 3591,.band 3592 2546,.bxor 3567 3593,.literal (BitVec.ofNat 32 2),.bxor 1299 3595,.literal (BitVec.ofNat 32 0),.bnot 3597,.band 3596 3598,.literal (BitVec.ofNat 32 2),.bxor 1299 3600,.literal (BitVec.ofNat 32 0),.bnot 3602,.bxor 3601 3603,.literal (BitVec.ofNat 32 2),.bxor 1299 3605,.literal (BitVec.ofNat 32 0),.bnot 3607,.badd 3606 3608,.bnot 3609,.band 3604 3610,.bxor 3599 3611,.shr 3612 31,.literal (BitVec.ofNat 32 1),.bxor 3613 3614,.bnot 3615,.literal (BitVec.ofNat 32 1),.badd 3616 3617,.band 3618 2699,.literal (BitVec.ofNat 32 2),.bxor 1299 3620,.literal (BitVec.ofNat 32 0),.bnot 3622,.band 3621 3623,.literal (BitVec.ofNat 32 2),.bxor 1299 3625,.literal (BitVec.ofNat 32 0),.bnot 3627,.bxor 3626 3628,.literal (BitVec.ofNat 32 2),.bxor 1299 3630,.literal (BitVec.ofNat 32 0),.bnot 3632,.badd 3631 3633,.bnot 3634,.band 3629 3635,.bxor 3624 3636]
theorem partExact54 : partRows54=WordField.rows actualModulus 3574 partOps54 := by
  simp only [partRows54,partOps54,WordField.rows,rows3574,rows3575,rows3576,rows3577,rows3578,rows3579,rows3580,rows3581,rows3582,rows3583,rows3584,rows3585,rows3586,rows3587,rows3588,rows3589,rows3590,rows3591,rows3592,rows3593,rows3594,rows3595,rows3596,rows3597,rows3598,rows3599,rows3600,rows3601,rows3602,rows3603,rows3604,rows3605,rows3606,rows3607,rows3608,rows3609,rows3610,rows3611,rows3612,rows3613,rows3614,rows3615,rows3616,rows3617,rows3618,rows3619,rows3620,rows3621,rows3622,rows3623,rows3624,rows3625,rows3626,rows3627,rows3628,rows3629,rows3630,rows3631,rows3632,rows3633,rows3634,rows3635,rows3636,rows3637,List.append_assoc,List.append_nil]
theorem partLength54 : partOps54.length=64 := by decide
theorem partStats54 : partRows54.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows54=337104 := by
  simp only [partRows54,List.length_append,MatrixRowBlocks.rows_weight_append,stats3574.1,stats3574.2,stats3575.1,stats3575.2,stats3576.1,stats3576.2,stats3577.1,stats3577.2,stats3578.1,stats3578.2,stats3579.1,stats3579.2,stats3580.1,stats3580.2,stats3581.1,stats3581.2,stats3582.1,stats3582.2,stats3583.1,stats3583.2,stats3584.1,stats3584.2,stats3585.1,stats3585.2,stats3586.1,stats3586.2,stats3587.1,stats3587.2,stats3588.1,stats3588.2,stats3589.1,stats3589.2,stats3590.1,stats3590.2,stats3591.1,stats3591.2,stats3592.1,stats3592.2,stats3593.1,stats3593.2,stats3594.1,stats3594.2,stats3595.1,stats3595.2,stats3596.1,stats3596.2,stats3597.1,stats3597.2,stats3598.1,stats3598.2,stats3599.1,stats3599.2,stats3600.1,stats3600.2,stats3601.1,stats3601.2,stats3602.1,stats3602.2,stats3603.1,stats3603.2,stats3604.1,stats3604.2,stats3605.1,stats3605.2,stats3606.1,stats3606.2,stats3607.1,stats3607.2,stats3608.1,stats3608.2,stats3609.1,stats3609.2,stats3610.1,stats3610.2,stats3611.1,stats3611.2,stats3612.1,stats3612.2,stats3613.1,stats3613.2,stats3614.1,stats3614.2,stats3615.1,stats3615.2,stats3616.1,stats3616.2,stats3617.1,stats3617.2,stats3618.1,stats3618.2,stats3619.1,stats3619.2,stats3620.1,stats3620.2,stats3621.1,stats3621.2,stats3622.1,stats3622.2,stats3623.1,stats3623.2,stats3624.1,stats3624.2,stats3625.1,stats3625.2,stats3626.1,stats3626.2,stats3627.1,stats3627.2,stats3628.1,stats3628.2,stats3629.1,stats3629.2,stats3630.1,stats3630.2,stats3631.1,stats3631.2,stats3632.1,stats3632.2,stats3633.1,stats3633.2,stats3634.1,stats3634.2,stats3635.1,stats3635.2,stats3636.1,stats3636.2,stats3637.1,stats3637.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
