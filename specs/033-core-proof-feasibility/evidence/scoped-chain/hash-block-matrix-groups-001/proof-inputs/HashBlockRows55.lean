import ActualHashBlockIR
import ArtifactHashBlockBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import HashBlockInstructionMatrixData56
import HashBlockInstructionMatrixData57
namespace HashBlockCheckedRows
open Core033 HashBlockInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows3592 : actualRows3592=WordField.canonicalRows actualModulus 3592 (.rotr 3590 11) := by core033_kernel_decide
theorem stats3592 : actualRows3592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3592=5124 := by core033_kernel_decide
theorem rows3593 : actualRows3593=WordField.canonicalRows actualModulus 3593 (.bxor 3591 3592) := by core033_kernel_decide
theorem stats3593 : actualRows3593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3593=7428 := by core033_kernel_decide
theorem rows3594 : actualRows3594=WordField.canonicalRows actualModulus 3594 (.rotr 3590 25) := by core033_kernel_decide
theorem stats3594 : actualRows3594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3594=5124 := by core033_kernel_decide
theorem rows3595 : actualRows3595=WordField.canonicalRows actualModulus 3595 (.bxor 3593 3594) := by core033_kernel_decide
theorem stats3595 : actualRows3595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3595=7428 := by core033_kernel_decide
theorem rows3596 : actualRows3596=WordField.canonicalRows actualModulus 3596 (.badd 3509 3595) := by core033_kernel_decide
theorem stats3596 : actualRows3596.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3596=5388 := by core033_kernel_decide
theorem rows3597 : actualRows3597=WordField.canonicalRows actualModulus 3597 (.band 3590 3563) := by core033_kernel_decide
theorem stats3597 : actualRows3597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3597=5124 := by core033_kernel_decide
theorem rows3598 : actualRows3598=WordField.canonicalRows actualModulus 3598 (.bnot 3590) := by core033_kernel_decide
theorem stats3598 : actualRows3598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3598=6276 := by core033_kernel_decide
theorem rows3599 : actualRows3599=WordField.canonicalRows actualModulus 3599 (.band 3598 3536) := by core033_kernel_decide
theorem stats3599 : actualRows3599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3599=5124 := by core033_kernel_decide
theorem rows3600 : actualRows3600=WordField.canonicalRows actualModulus 3600 (.bxor 3597 3599) := by core033_kernel_decide
theorem stats3600 : actualRows3600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3600=7428 := by core033_kernel_decide
theorem rows3601 : actualRows3601=WordField.canonicalRows actualModulus 3601 (.badd 3596 3600) := by core033_kernel_decide
theorem stats3601 : actualRows3601.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3601=5388 := by core033_kernel_decide
theorem rows3602 : actualRows3602=WordField.canonicalRows actualModulus 3602 (.literal (BitVec.ofNat 32 2756734187)) := by core033_kernel_decide
theorem stats3602 : actualRows3602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3602=3900 := by core033_kernel_decide
theorem rows3603 : actualRows3603=WordField.canonicalRows actualModulus 3603 (.badd 3601 3602) := by core033_kernel_decide
theorem stats3603 : actualRows3603.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3603=5388 := by core033_kernel_decide
theorem rows3604 : actualRows3604=WordField.canonicalRows actualModulus 3604 (.badd 3603 1917) := by core033_kernel_decide
theorem stats3604 : actualRows3604.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3604=5388 := by core033_kernel_decide
theorem rows3605 : actualRows3605=WordField.canonicalRows actualModulus 3605 (.rotr 3589 2) := by core033_kernel_decide
theorem stats3605 : actualRows3605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3605=5124 := by core033_kernel_decide
theorem rows3606 : actualRows3606=WordField.canonicalRows actualModulus 3606 (.rotr 3589 13) := by core033_kernel_decide
theorem stats3606 : actualRows3606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3606=5124 := by core033_kernel_decide
theorem rows3607 : actualRows3607=WordField.canonicalRows actualModulus 3607 (.bxor 3605 3606) := by core033_kernel_decide
theorem stats3607 : actualRows3607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3607=7428 := by core033_kernel_decide
theorem rows3608 : actualRows3608=WordField.canonicalRows actualModulus 3608 (.rotr 3589 22) := by core033_kernel_decide
theorem stats3608 : actualRows3608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3608=5124 := by core033_kernel_decide
theorem rows3609 : actualRows3609=WordField.canonicalRows actualModulus 3609 (.bxor 3607 3608) := by core033_kernel_decide
theorem stats3609 : actualRows3609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3609=7428 := by core033_kernel_decide
theorem rows3610 : actualRows3610=WordField.canonicalRows actualModulus 3610 (.band 3589 3562) := by core033_kernel_decide
theorem stats3610 : actualRows3610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3610=5124 := by core033_kernel_decide
theorem rows3611 : actualRows3611=WordField.canonicalRows actualModulus 3611 (.band 3589 3535) := by core033_kernel_decide
theorem stats3611 : actualRows3611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3611=5124 := by core033_kernel_decide
theorem rows3612 : actualRows3612=WordField.canonicalRows actualModulus 3612 (.bxor 3610 3611) := by core033_kernel_decide
theorem stats3612 : actualRows3612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3612=7428 := by core033_kernel_decide
theorem rows3613 : actualRows3613=WordField.canonicalRows actualModulus 3613 (.band 3562 3535) := by core033_kernel_decide
theorem stats3613 : actualRows3613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3613=5124 := by core033_kernel_decide
theorem rows3614 : actualRows3614=WordField.canonicalRows actualModulus 3614 (.bxor 3612 3613) := by core033_kernel_decide
theorem stats3614 : actualRows3614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3614=7428 := by core033_kernel_decide
theorem rows3615 : actualRows3615=WordField.canonicalRows actualModulus 3615 (.badd 3609 3614) := by core033_kernel_decide
theorem stats3615 : actualRows3615.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3615=5388 := by core033_kernel_decide
theorem rows3616 : actualRows3616=WordField.canonicalRows actualModulus 3616 (.badd 3604 3615) := by core033_kernel_decide
theorem stats3616 : actualRows3616.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3616=5388 := by core033_kernel_decide
theorem rows3617 : actualRows3617=WordField.canonicalRows actualModulus 3617 (.badd 3508 3604) := by core033_kernel_decide
theorem stats3617 : actualRows3617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3617=5388 := by core033_kernel_decide
theorem rows3618 : actualRows3618=WordField.canonicalRows actualModulus 3618 (.rotr 3617 6) := by core033_kernel_decide
theorem stats3618 : actualRows3618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3618=5124 := by core033_kernel_decide
theorem rows3619 : actualRows3619=WordField.canonicalRows actualModulus 3619 (.rotr 3617 11) := by core033_kernel_decide
theorem stats3619 : actualRows3619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3619=5124 := by core033_kernel_decide
theorem rows3620 : actualRows3620=WordField.canonicalRows actualModulus 3620 (.bxor 3618 3619) := by core033_kernel_decide
theorem stats3620 : actualRows3620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3620=7428 := by core033_kernel_decide
theorem rows3621 : actualRows3621=WordField.canonicalRows actualModulus 3621 (.rotr 3617 25) := by core033_kernel_decide
theorem stats3621 : actualRows3621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3621=5124 := by core033_kernel_decide
theorem rows3622 : actualRows3622=WordField.canonicalRows actualModulus 3622 (.bxor 3620 3621) := by core033_kernel_decide
theorem stats3622 : actualRows3622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3622=7428 := by core033_kernel_decide
theorem rows3623 : actualRows3623=WordField.canonicalRows actualModulus 3623 (.badd 3536 3622) := by core033_kernel_decide
theorem stats3623 : actualRows3623.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3623=5388 := by core033_kernel_decide
theorem rows3624 : actualRows3624=WordField.canonicalRows actualModulus 3624 (.band 3617 3590) := by core033_kernel_decide
theorem stats3624 : actualRows3624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3624=5124 := by core033_kernel_decide
theorem rows3625 : actualRows3625=WordField.canonicalRows actualModulus 3625 (.bnot 3617) := by core033_kernel_decide
theorem stats3625 : actualRows3625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3625=6276 := by core033_kernel_decide
theorem rows3626 : actualRows3626=WordField.canonicalRows actualModulus 3626 (.band 3625 3563) := by core033_kernel_decide
theorem stats3626 : actualRows3626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3626=5124 := by core033_kernel_decide
theorem rows3627 : actualRows3627=WordField.canonicalRows actualModulus 3627 (.bxor 3624 3626) := by core033_kernel_decide
theorem stats3627 : actualRows3627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3627=7428 := by core033_kernel_decide
theorem rows3628 : actualRows3628=WordField.canonicalRows actualModulus 3628 (.badd 3623 3627) := by core033_kernel_decide
theorem stats3628 : actualRows3628.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3628=5388 := by core033_kernel_decide
theorem rows3629 : actualRows3629=WordField.canonicalRows actualModulus 3629 (.literal (BitVec.ofNat 32 3204031479)) := by core033_kernel_decide
theorem stats3629 : actualRows3629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3629=4476 := by core033_kernel_decide
theorem rows3630 : actualRows3630=WordField.canonicalRows actualModulus 3630 (.badd 3628 3629) := by core033_kernel_decide
theorem stats3630 : actualRows3630.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3630=5388 := by core033_kernel_decide
theorem rows3631 : actualRows3631=WordField.canonicalRows actualModulus 3631 (.badd 3630 1930) := by core033_kernel_decide
theorem stats3631 : actualRows3631.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3631=5388 := by core033_kernel_decide
theorem rows3632 : actualRows3632=WordField.canonicalRows actualModulus 3632 (.rotr 3616 2) := by core033_kernel_decide
theorem stats3632 : actualRows3632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3632=5124 := by core033_kernel_decide
theorem rows3633 : actualRows3633=WordField.canonicalRows actualModulus 3633 (.rotr 3616 13) := by core033_kernel_decide
theorem stats3633 : actualRows3633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3633=5124 := by core033_kernel_decide
theorem rows3634 : actualRows3634=WordField.canonicalRows actualModulus 3634 (.bxor 3632 3633) := by core033_kernel_decide
theorem stats3634 : actualRows3634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3634=7428 := by core033_kernel_decide
theorem rows3635 : actualRows3635=WordField.canonicalRows actualModulus 3635 (.rotr 3616 22) := by core033_kernel_decide
theorem stats3635 : actualRows3635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3635=5124 := by core033_kernel_decide
theorem rows3636 : actualRows3636=WordField.canonicalRows actualModulus 3636 (.bxor 3634 3635) := by core033_kernel_decide
theorem stats3636 : actualRows3636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3636=7428 := by core033_kernel_decide
theorem rows3637 : actualRows3637=WordField.canonicalRows actualModulus 3637 (.band 3616 3589) := by core033_kernel_decide
theorem stats3637 : actualRows3637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3637=5124 := by core033_kernel_decide
theorem rows3638 : actualRows3638=WordField.canonicalRows actualModulus 3638 (.band 3616 3562) := by core033_kernel_decide
theorem stats3638 : actualRows3638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3638=5124 := by core033_kernel_decide
theorem rows3639 : actualRows3639=WordField.canonicalRows actualModulus 3639 (.bxor 3637 3638) := by core033_kernel_decide
theorem stats3639 : actualRows3639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3639=7428 := by core033_kernel_decide
theorem rows3640 : actualRows3640=WordField.canonicalRows actualModulus 3640 (.band 3589 3562) := by core033_kernel_decide
theorem stats3640 : actualRows3640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3640=5124 := by core033_kernel_decide
theorem rows3641 : actualRows3641=WordField.canonicalRows actualModulus 3641 (.bxor 3639 3640) := by core033_kernel_decide
theorem stats3641 : actualRows3641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3641=7428 := by core033_kernel_decide
theorem rows3642 : actualRows3642=WordField.canonicalRows actualModulus 3642 (.badd 3636 3641) := by core033_kernel_decide
theorem stats3642 : actualRows3642.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3642=5388 := by core033_kernel_decide
theorem rows3643 : actualRows3643=WordField.canonicalRows actualModulus 3643 (.badd 3631 3642) := by core033_kernel_decide
theorem stats3643 : actualRows3643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3643=5388 := by core033_kernel_decide
theorem rows3644 : actualRows3644=WordField.canonicalRows actualModulus 3644 (.badd 3535 3631) := by core033_kernel_decide
theorem stats3644 : actualRows3644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3644=5388 := by core033_kernel_decide
theorem rows3645 : actualRows3645=WordField.canonicalRows actualModulus 3645 (.rotr 3644 6) := by core033_kernel_decide
theorem stats3645 : actualRows3645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3645=5124 := by core033_kernel_decide
theorem rows3646 : actualRows3646=WordField.canonicalRows actualModulus 3646 (.rotr 3644 11) := by core033_kernel_decide
theorem stats3646 : actualRows3646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3646=5124 := by core033_kernel_decide
theorem rows3647 : actualRows3647=WordField.canonicalRows actualModulus 3647 (.bxor 3645 3646) := by core033_kernel_decide
theorem stats3647 : actualRows3647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3647=7428 := by core033_kernel_decide
theorem rows3648 : actualRows3648=WordField.canonicalRows actualModulus 3648 (.rotr 3644 25) := by core033_kernel_decide
theorem stats3648 : actualRows3648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3648=5124 := by core033_kernel_decide
theorem rows3649 : actualRows3649=WordField.canonicalRows actualModulus 3649 (.bxor 3647 3648) := by core033_kernel_decide
theorem stats3649 : actualRows3649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3649=7428 := by core033_kernel_decide
theorem rows3650 : actualRows3650=WordField.canonicalRows actualModulus 3650 (.badd 3563 3649) := by core033_kernel_decide
theorem stats3650 : actualRows3650.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3650=5388 := by core033_kernel_decide
theorem rows3651 : actualRows3651=WordField.canonicalRows actualModulus 3651 (.band 3644 3617) := by core033_kernel_decide
theorem stats3651 : actualRows3651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3651=5124 := by core033_kernel_decide
theorem rows3652 : actualRows3652=WordField.canonicalRows actualModulus 3652 (.bnot 3644) := by core033_kernel_decide
theorem stats3652 : actualRows3652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3652=6276 := by core033_kernel_decide
theorem rows3653 : actualRows3653=WordField.canonicalRows actualModulus 3653 (.band 3652 3590) := by core033_kernel_decide
theorem stats3653 : actualRows3653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3653=5124 := by core033_kernel_decide
theorem rows3654 : actualRows3654=WordField.canonicalRows actualModulus 3654 (.bxor 3651 3653) := by core033_kernel_decide
theorem stats3654 : actualRows3654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3654=7428 := by core033_kernel_decide
theorem rows3655 : actualRows3655=WordField.canonicalRows actualModulus 3655 (.badd 3650 3654) := by core033_kernel_decide
theorem stats3655 : actualRows3655.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows3655=5388 := by core033_kernel_decide
def partRows55 : List R1CS.Row := actualRows3592++actualRows3593++actualRows3594++actualRows3595++actualRows3596++actualRows3597++actualRows3598++actualRows3599++actualRows3600++actualRows3601++actualRows3602++actualRows3603++actualRows3604++actualRows3605++actualRows3606++actualRows3607++actualRows3608++actualRows3609++actualRows3610++actualRows3611++actualRows3612++actualRows3613++actualRows3614++actualRows3615++actualRows3616++actualRows3617++actualRows3618++actualRows3619++actualRows3620++actualRows3621++actualRows3622++actualRows3623++actualRows3624++actualRows3625++actualRows3626++actualRows3627++actualRows3628++actualRows3629++actualRows3630++actualRows3631++actualRows3632++actualRows3633++actualRows3634++actualRows3635++actualRows3636++actualRows3637++actualRows3638++actualRows3639++actualRows3640++actualRows3641++actualRows3642++actualRows3643++actualRows3644++actualRows3645++actualRows3646++actualRows3647++actualRows3648++actualRows3649++actualRows3650++actualRows3651++actualRows3652++actualRows3653++actualRows3654++actualRows3655
def partOps55 : List WordIR.Op := [.rotr 3590 11,.bxor 3591 3592,.rotr 3590 25,.bxor 3593 3594,.badd 3509 3595,.band 3590 3563,.bnot 3590,.band 3598 3536,.bxor 3597 3599,.badd 3596 3600,.literal (BitVec.ofNat 32 2756734187),.badd 3601 3602,.badd 3603 1917,.rotr 3589 2,.rotr 3589 13,.bxor 3605 3606,.rotr 3589 22,.bxor 3607 3608,.band 3589 3562,.band 3589 3535,.bxor 3610 3611,.band 3562 3535,.bxor 3612 3613,.badd 3609 3614,.badd 3604 3615,.badd 3508 3604,.rotr 3617 6,.rotr 3617 11,.bxor 3618 3619,.rotr 3617 25,.bxor 3620 3621,.badd 3536 3622,.band 3617 3590,.bnot 3617,.band 3625 3563,.bxor 3624 3626,.badd 3623 3627,.literal (BitVec.ofNat 32 3204031479),.badd 3628 3629,.badd 3630 1930,.rotr 3616 2,.rotr 3616 13,.bxor 3632 3633,.rotr 3616 22,.bxor 3634 3635,.band 3616 3589,.band 3616 3562,.bxor 3637 3638,.band 3589 3562,.bxor 3639 3640,.badd 3636 3641,.badd 3631 3642,.badd 3535 3631,.rotr 3644 6,.rotr 3644 11,.bxor 3645 3646,.rotr 3644 25,.bxor 3647 3648,.badd 3563 3649,.band 3644 3617,.bnot 3644,.band 3652 3590,.bxor 3651 3653,.badd 3650 3654]
theorem partExact55 : partRows55=WordField.rows actualModulus 3592 partOps55 := by
  simp only [partRows55,partOps55,WordField.rows,rows3592,rows3593,rows3594,rows3595,rows3596,rows3597,rows3598,rows3599,rows3600,rows3601,rows3602,rows3603,rows3604,rows3605,rows3606,rows3607,rows3608,rows3609,rows3610,rows3611,rows3612,rows3613,rows3614,rows3615,rows3616,rows3617,rows3618,rows3619,rows3620,rows3621,rows3622,rows3623,rows3624,rows3625,rows3626,rows3627,rows3628,rows3629,rows3630,rows3631,rows3632,rows3633,rows3634,rows3635,rows3636,rows3637,rows3638,rows3639,rows3640,rows3641,rows3642,rows3643,rows3644,rows3645,rows3646,rows3647,rows3648,rows3649,rows3650,rows3651,rows3652,rows3653,rows3654,rows3655,List.append_assoc,List.append_nil]
theorem partLength55 : partOps55.length=64 := by decide
theorem partStats55 : partRows55.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows55=372912 := by
  simp only [partRows55,List.length_append,MatrixRowBlocks.rows_weight_append,stats3592.1,stats3592.2,stats3593.1,stats3593.2,stats3594.1,stats3594.2,stats3595.1,stats3595.2,stats3596.1,stats3596.2,stats3597.1,stats3597.2,stats3598.1,stats3598.2,stats3599.1,stats3599.2,stats3600.1,stats3600.2,stats3601.1,stats3601.2,stats3602.1,stats3602.2,stats3603.1,stats3603.2,stats3604.1,stats3604.2,stats3605.1,stats3605.2,stats3606.1,stats3606.2,stats3607.1,stats3607.2,stats3608.1,stats3608.2,stats3609.1,stats3609.2,stats3610.1,stats3610.2,stats3611.1,stats3611.2,stats3612.1,stats3612.2,stats3613.1,stats3613.2,stats3614.1,stats3614.2,stats3615.1,stats3615.2,stats3616.1,stats3616.2,stats3617.1,stats3617.2,stats3618.1,stats3618.2,stats3619.1,stats3619.2,stats3620.1,stats3620.2,stats3621.1,stats3621.2,stats3622.1,stats3622.2,stats3623.1,stats3623.2,stats3624.1,stats3624.2,stats3625.1,stats3625.2,stats3626.1,stats3626.2,stats3627.1,stats3627.2,stats3628.1,stats3628.2,stats3629.1,stats3629.2,stats3630.1,stats3630.2,stats3631.1,stats3631.2,stats3632.1,stats3632.2,stats3633.1,stats3633.2,stats3634.1,stats3634.2,stats3635.1,stats3635.2,stats3636.1,stats3636.2,stats3637.1,stats3637.2,stats3638.1,stats3638.2,stats3639.1,stats3639.2,stats3640.1,stats3640.2,stats3641.1,stats3641.2,stats3642.1,stats3642.2,stats3643.1,stats3643.2,stats3644.1,stats3644.2,stats3645.1,stats3645.2,stats3646.1,stats3646.2,stats3647.1,stats3647.2,stats3648.1,stats3648.2,stats3649.1,stats3649.2,stats3650.1,stats3650.2,stats3651.1,stats3651.2,stats3652.1,stats3652.2,stats3653.1,stats3653.2,stats3654.1,stats3654.2,stats3655.1,stats3655.2]
  decide
end HashBlockCheckedRows
