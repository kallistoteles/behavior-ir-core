import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData196
import PairedPathRoundInstructionMatrixData197
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12576 : actualRows12576=WordField.canonicalRows actualModulus 12576 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12576 : actualRows12576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12576=2964 := by core033_kernel_decide
theorem rows12577 : actualRows12577=WordField.canonicalRows actualModulus 12577 (.bxor 442 12576) := by core033_kernel_decide
theorem stats12577 : actualRows12577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12577=7428 := by core033_kernel_decide
theorem rows12578 : actualRows12578=WordField.canonicalRows actualModulus 12578 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12578 : actualRows12578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12578=2820 := by core033_kernel_decide
theorem rows12579 : actualRows12579=WordField.canonicalRows actualModulus 12579 (.bnot 12578) := by core033_kernel_decide
theorem stats12579 : actualRows12579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12579=6276 := by core033_kernel_decide
theorem rows12580 : actualRows12580=WordField.canonicalRows actualModulus 12580 (.badd 12577 12579) := by core033_kernel_decide
theorem stats12580 : actualRows12580.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12580=5388 := by core033_kernel_decide
theorem rows12581 : actualRows12581=WordField.canonicalRows actualModulus 12581 (.bnot 12580) := by core033_kernel_decide
theorem stats12581 : actualRows12581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12581=6276 := by core033_kernel_decide
theorem rows12582 : actualRows12582=WordField.canonicalRows actualModulus 12582 (.band 12575 12581) := by core033_kernel_decide
theorem stats12582 : actualRows12582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12582=5124 := by core033_kernel_decide
theorem rows12583 : actualRows12583=WordField.canonicalRows actualModulus 12583 (.bxor 12570 12582) := by core033_kernel_decide
theorem stats12583 : actualRows12583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12583=7428 := by core033_kernel_decide
theorem rows12584 : actualRows12584=WordField.canonicalRows actualModulus 12584 (.shr 12583 31) := by core033_kernel_decide
theorem stats12584 : actualRows12584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12584=2892 := by core033_kernel_decide
theorem rows12585 : actualRows12585=WordField.canonicalRows actualModulus 12585 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12585 : actualRows12585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12585=2892 := by core033_kernel_decide
theorem rows12586 : actualRows12586=WordField.canonicalRows actualModulus 12586 (.bxor 12584 12585) := by core033_kernel_decide
theorem stats12586 : actualRows12586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12586=7428 := by core033_kernel_decide
theorem rows12587 : actualRows12587=WordField.canonicalRows actualModulus 12587 (.bnot 12586) := by core033_kernel_decide
theorem stats12587 : actualRows12587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12587=6276 := by core033_kernel_decide
theorem rows12588 : actualRows12588=WordField.canonicalRows actualModulus 12588 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12588 : actualRows12588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12588=2892 := by core033_kernel_decide
theorem rows12589 : actualRows12589=WordField.canonicalRows actualModulus 12589 (.badd 12587 12588) := by core033_kernel_decide
theorem stats12589 : actualRows12589.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12589=5388 := by core033_kernel_decide
theorem rows12590 : actualRows12590=WordField.canonicalRows actualModulus 12590 (.band 12589 10322) := by core033_kernel_decide
theorem stats12590 : actualRows12590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12590=5124 := by core033_kernel_decide
theorem rows12591 : actualRows12591=WordField.canonicalRows actualModulus 12591 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12591 : actualRows12591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12591=2964 := by core033_kernel_decide
theorem rows12592 : actualRows12592=WordField.canonicalRows actualModulus 12592 (.bxor 442 12591) := by core033_kernel_decide
theorem stats12592 : actualRows12592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12592=7428 := by core033_kernel_decide
theorem rows12593 : actualRows12593=WordField.canonicalRows actualModulus 12593 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12593 : actualRows12593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12593=2820 := by core033_kernel_decide
theorem rows12594 : actualRows12594=WordField.canonicalRows actualModulus 12594 (.bnot 12593) := by core033_kernel_decide
theorem stats12594 : actualRows12594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12594=6276 := by core033_kernel_decide
theorem rows12595 : actualRows12595=WordField.canonicalRows actualModulus 12595 (.band 12592 12594) := by core033_kernel_decide
theorem stats12595 : actualRows12595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12595=5124 := by core033_kernel_decide
theorem rows12596 : actualRows12596=WordField.canonicalRows actualModulus 12596 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12596 : actualRows12596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12596=2964 := by core033_kernel_decide
theorem rows12597 : actualRows12597=WordField.canonicalRows actualModulus 12597 (.bxor 442 12596) := by core033_kernel_decide
theorem stats12597 : actualRows12597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12597=7428 := by core033_kernel_decide
theorem rows12598 : actualRows12598=WordField.canonicalRows actualModulus 12598 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12598 : actualRows12598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12598=2820 := by core033_kernel_decide
theorem rows12599 : actualRows12599=WordField.canonicalRows actualModulus 12599 (.bnot 12598) := by core033_kernel_decide
theorem stats12599 : actualRows12599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12599=6276 := by core033_kernel_decide
theorem rows12600 : actualRows12600=WordField.canonicalRows actualModulus 12600 (.bxor 12597 12599) := by core033_kernel_decide
theorem stats12600 : actualRows12600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12600=7428 := by core033_kernel_decide
theorem rows12601 : actualRows12601=WordField.canonicalRows actualModulus 12601 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12601 : actualRows12601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12601=2964 := by core033_kernel_decide
theorem rows12602 : actualRows12602=WordField.canonicalRows actualModulus 12602 (.bxor 442 12601) := by core033_kernel_decide
theorem stats12602 : actualRows12602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12602=7428 := by core033_kernel_decide
theorem rows12603 : actualRows12603=WordField.canonicalRows actualModulus 12603 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12603 : actualRows12603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12603=2820 := by core033_kernel_decide
theorem rows12604 : actualRows12604=WordField.canonicalRows actualModulus 12604 (.bnot 12603) := by core033_kernel_decide
theorem stats12604 : actualRows12604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12604=6276 := by core033_kernel_decide
theorem rows12605 : actualRows12605=WordField.canonicalRows actualModulus 12605 (.badd 12602 12604) := by core033_kernel_decide
theorem stats12605 : actualRows12605.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12605=5388 := by core033_kernel_decide
theorem rows12606 : actualRows12606=WordField.canonicalRows actualModulus 12606 (.bnot 12605) := by core033_kernel_decide
theorem stats12606 : actualRows12606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12606=6276 := by core033_kernel_decide
theorem rows12607 : actualRows12607=WordField.canonicalRows actualModulus 12607 (.band 12600 12606) := by core033_kernel_decide
theorem stats12607 : actualRows12607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12607=5124 := by core033_kernel_decide
theorem rows12608 : actualRows12608=WordField.canonicalRows actualModulus 12608 (.bxor 12595 12607) := by core033_kernel_decide
theorem stats12608 : actualRows12608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12608=7428 := by core033_kernel_decide
theorem rows12609 : actualRows12609=WordField.canonicalRows actualModulus 12609 (.shr 12608 31) := by core033_kernel_decide
theorem stats12609 : actualRows12609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12609=2892 := by core033_kernel_decide
theorem rows12610 : actualRows12610=WordField.canonicalRows actualModulus 12610 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12610 : actualRows12610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12610=2892 := by core033_kernel_decide
theorem rows12611 : actualRows12611=WordField.canonicalRows actualModulus 12611 (.bxor 12609 12610) := by core033_kernel_decide
theorem stats12611 : actualRows12611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12611=7428 := by core033_kernel_decide
theorem rows12612 : actualRows12612=WordField.canonicalRows actualModulus 12612 (.bnot 12611) := by core033_kernel_decide
theorem stats12612 : actualRows12612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12612=6276 := by core033_kernel_decide
theorem rows12613 : actualRows12613=WordField.canonicalRows actualModulus 12613 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12613 : actualRows12613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12613=2892 := by core033_kernel_decide
theorem rows12614 : actualRows12614=WordField.canonicalRows actualModulus 12614 (.badd 12612 12613) := by core033_kernel_decide
theorem stats12614 : actualRows12614.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12614=5388 := by core033_kernel_decide
theorem rows12615 : actualRows12615=WordField.canonicalRows actualModulus 12615 (.bnot 12614) := by core033_kernel_decide
theorem stats12615 : actualRows12615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12615=6276 := by core033_kernel_decide
theorem rows12616 : actualRows12616=WordField.canonicalRows actualModulus 12616 (.band 12615 9801) := by core033_kernel_decide
theorem stats12616 : actualRows12616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12616=5124 := by core033_kernel_decide
theorem rows12617 : actualRows12617=WordField.canonicalRows actualModulus 12617 (.bxor 12590 12616) := by core033_kernel_decide
theorem stats12617 : actualRows12617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12617=7428 := by core033_kernel_decide
theorem rows12618 : actualRows12618=WordField.canonicalRows actualModulus 12618 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12618 : actualRows12618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12618=2964 := by core033_kernel_decide
theorem rows12619 : actualRows12619=WordField.canonicalRows actualModulus 12619 (.bxor 442 12618) := by core033_kernel_decide
theorem stats12619 : actualRows12619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12619=7428 := by core033_kernel_decide
theorem rows12620 : actualRows12620=WordField.canonicalRows actualModulus 12620 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12620 : actualRows12620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12620=2820 := by core033_kernel_decide
theorem rows12621 : actualRows12621=WordField.canonicalRows actualModulus 12621 (.bnot 12620) := by core033_kernel_decide
theorem stats12621 : actualRows12621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12621=6276 := by core033_kernel_decide
theorem rows12622 : actualRows12622=WordField.canonicalRows actualModulus 12622 (.band 12619 12621) := by core033_kernel_decide
theorem stats12622 : actualRows12622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12622=5124 := by core033_kernel_decide
theorem rows12623 : actualRows12623=WordField.canonicalRows actualModulus 12623 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12623 : actualRows12623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12623=2964 := by core033_kernel_decide
theorem rows12624 : actualRows12624=WordField.canonicalRows actualModulus 12624 (.bxor 442 12623) := by core033_kernel_decide
theorem stats12624 : actualRows12624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12624=7428 := by core033_kernel_decide
theorem rows12625 : actualRows12625=WordField.canonicalRows actualModulus 12625 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12625 : actualRows12625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12625=2820 := by core033_kernel_decide
theorem rows12626 : actualRows12626=WordField.canonicalRows actualModulus 12626 (.bnot 12625) := by core033_kernel_decide
theorem stats12626 : actualRows12626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12626=6276 := by core033_kernel_decide
theorem rows12627 : actualRows12627=WordField.canonicalRows actualModulus 12627 (.bxor 12624 12626) := by core033_kernel_decide
theorem stats12627 : actualRows12627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12627=7428 := by core033_kernel_decide
theorem rows12628 : actualRows12628=WordField.canonicalRows actualModulus 12628 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12628 : actualRows12628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12628=2964 := by core033_kernel_decide
theorem rows12629 : actualRows12629=WordField.canonicalRows actualModulus 12629 (.bxor 442 12628) := by core033_kernel_decide
theorem stats12629 : actualRows12629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12629=7428 := by core033_kernel_decide
theorem rows12630 : actualRows12630=WordField.canonicalRows actualModulus 12630 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12630 : actualRows12630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12630=2820 := by core033_kernel_decide
theorem rows12631 : actualRows12631=WordField.canonicalRows actualModulus 12631 (.bnot 12630) := by core033_kernel_decide
theorem stats12631 : actualRows12631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12631=6276 := by core033_kernel_decide
theorem rows12632 : actualRows12632=WordField.canonicalRows actualModulus 12632 (.badd 12629 12631) := by core033_kernel_decide
theorem stats12632 : actualRows12632.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12632=5388 := by core033_kernel_decide
theorem rows12633 : actualRows12633=WordField.canonicalRows actualModulus 12633 (.bnot 12632) := by core033_kernel_decide
theorem stats12633 : actualRows12633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12633=6276 := by core033_kernel_decide
theorem rows12634 : actualRows12634=WordField.canonicalRows actualModulus 12634 (.band 12627 12633) := by core033_kernel_decide
theorem stats12634 : actualRows12634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12634=5124 := by core033_kernel_decide
theorem rows12635 : actualRows12635=WordField.canonicalRows actualModulus 12635 (.bxor 12622 12634) := by core033_kernel_decide
theorem stats12635 : actualRows12635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12635=7428 := by core033_kernel_decide
theorem rows12636 : actualRows12636=WordField.canonicalRows actualModulus 12636 (.shr 12635 31) := by core033_kernel_decide
theorem stats12636 : actualRows12636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12636=2892 := by core033_kernel_decide
theorem rows12637 : actualRows12637=WordField.canonicalRows actualModulus 12637 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12637 : actualRows12637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12637=2892 := by core033_kernel_decide
theorem rows12638 : actualRows12638=WordField.canonicalRows actualModulus 12638 (.bxor 12636 12637) := by core033_kernel_decide
theorem stats12638 : actualRows12638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12638=7428 := by core033_kernel_decide
theorem rows12639 : actualRows12639=WordField.canonicalRows actualModulus 12639 (.bnot 12638) := by core033_kernel_decide
theorem stats12639 : actualRows12639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12639=6276 := by core033_kernel_decide
def partRows195 : List R1CS.Row := actualRows12576++actualRows12577++actualRows12578++actualRows12579++actualRows12580++actualRows12581++actualRows12582++actualRows12583++actualRows12584++actualRows12585++actualRows12586++actualRows12587++actualRows12588++actualRows12589++actualRows12590++actualRows12591++actualRows12592++actualRows12593++actualRows12594++actualRows12595++actualRows12596++actualRows12597++actualRows12598++actualRows12599++actualRows12600++actualRows12601++actualRows12602++actualRows12603++actualRows12604++actualRows12605++actualRows12606++actualRows12607++actualRows12608++actualRows12609++actualRows12610++actualRows12611++actualRows12612++actualRows12613++actualRows12614++actualRows12615++actualRows12616++actualRows12617++actualRows12618++actualRows12619++actualRows12620++actualRows12621++actualRows12622++actualRows12623++actualRows12624++actualRows12625++actualRows12626++actualRows12627++actualRows12628++actualRows12629++actualRows12630++actualRows12631++actualRows12632++actualRows12633++actualRows12634++actualRows12635++actualRows12636++actualRows12637++actualRows12638++actualRows12639
def partOps195 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 442 12576,.literal (BitVec.ofNat 32 0),.bnot 12578,.badd 12577 12579,.bnot 12580,.band 12575 12581,.bxor 12570 12582,.shr 12583 31,.literal (BitVec.ofNat 32 1),.bxor 12584 12585,.bnot 12586,.literal (BitVec.ofNat 32 1),.badd 12587 12588,.band 12589 10322,.literal (BitVec.ofNat 32 3),.bxor 442 12591,.literal (BitVec.ofNat 32 0),.bnot 12593,.band 12592 12594,.literal (BitVec.ofNat 32 3),.bxor 442 12596,.literal (BitVec.ofNat 32 0),.bnot 12598,.bxor 12597 12599,.literal (BitVec.ofNat 32 3),.bxor 442 12601,.literal (BitVec.ofNat 32 0),.bnot 12603,.badd 12602 12604,.bnot 12605,.band 12600 12606,.bxor 12595 12607,.shr 12608 31,.literal (BitVec.ofNat 32 1),.bxor 12609 12610,.bnot 12611,.literal (BitVec.ofNat 32 1),.badd 12612 12613,.bnot 12614,.band 12615 9801,.bxor 12590 12616,.literal (BitVec.ofNat 32 3),.bxor 442 12618,.literal (BitVec.ofNat 32 0),.bnot 12620,.band 12619 12621,.literal (BitVec.ofNat 32 3),.bxor 442 12623,.literal (BitVec.ofNat 32 0),.bnot 12625,.bxor 12624 12626,.literal (BitVec.ofNat 32 3),.bxor 442 12628,.literal (BitVec.ofNat 32 0),.bnot 12630,.badd 12629 12631,.bnot 12632,.band 12627 12633,.bxor 12622 12634,.shr 12635 31,.literal (BitVec.ofNat 32 1),.bxor 12636 12637,.bnot 12638]
theorem partExact195 : partRows195=WordField.rows actualModulus 12576 partOps195 := by
  simp only [partRows195,partOps195,WordField.rows,rows12576,rows12577,rows12578,rows12579,rows12580,rows12581,rows12582,rows12583,rows12584,rows12585,rows12586,rows12587,rows12588,rows12589,rows12590,rows12591,rows12592,rows12593,rows12594,rows12595,rows12596,rows12597,rows12598,rows12599,rows12600,rows12601,rows12602,rows12603,rows12604,rows12605,rows12606,rows12607,rows12608,rows12609,rows12610,rows12611,rows12612,rows12613,rows12614,rows12615,rows12616,rows12617,rows12618,rows12619,rows12620,rows12621,rows12622,rows12623,rows12624,rows12625,rows12626,rows12627,rows12628,rows12629,rows12630,rows12631,rows12632,rows12633,rows12634,rows12635,rows12636,rows12637,rows12638,rows12639,List.append_assoc,List.append_nil]
theorem partLength195 : partOps195.length=64 := by decide
theorem partStats195 : partRows195.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows195=333144 := by
  simp only [partRows195,List.length_append,MatrixRowBlocks.rows_weight_append,stats12576.1,stats12576.2,stats12577.1,stats12577.2,stats12578.1,stats12578.2,stats12579.1,stats12579.2,stats12580.1,stats12580.2,stats12581.1,stats12581.2,stats12582.1,stats12582.2,stats12583.1,stats12583.2,stats12584.1,stats12584.2,stats12585.1,stats12585.2,stats12586.1,stats12586.2,stats12587.1,stats12587.2,stats12588.1,stats12588.2,stats12589.1,stats12589.2,stats12590.1,stats12590.2,stats12591.1,stats12591.2,stats12592.1,stats12592.2,stats12593.1,stats12593.2,stats12594.1,stats12594.2,stats12595.1,stats12595.2,stats12596.1,stats12596.2,stats12597.1,stats12597.2,stats12598.1,stats12598.2,stats12599.1,stats12599.2,stats12600.1,stats12600.2,stats12601.1,stats12601.2,stats12602.1,stats12602.2,stats12603.1,stats12603.2,stats12604.1,stats12604.2,stats12605.1,stats12605.2,stats12606.1,stats12606.2,stats12607.1,stats12607.2,stats12608.1,stats12608.2,stats12609.1,stats12609.2,stats12610.1,stats12610.2,stats12611.1,stats12611.2,stats12612.1,stats12612.2,stats12613.1,stats12613.2,stats12614.1,stats12614.2,stats12615.1,stats12615.2,stats12616.1,stats12616.2,stats12617.1,stats12617.2,stats12618.1,stats12618.2,stats12619.1,stats12619.2,stats12620.1,stats12620.2,stats12621.1,stats12621.2,stats12622.1,stats12622.2,stats12623.1,stats12623.2,stats12624.1,stats12624.2,stats12625.1,stats12625.2,stats12626.1,stats12626.2,stats12627.1,stats12627.2,stats12628.1,stats12628.2,stats12629.1,stats12629.2,stats12630.1,stats12630.2,stats12631.1,stats12631.2,stats12632.1,stats12632.2,stats12633.1,stats12633.2,stats12634.1,stats12634.2,stats12635.1,stats12635.2,stats12636.1,stats12636.2,stats12637.1,stats12637.2,stats12638.1,stats12638.2,stats12639.1,stats12639.2]
  decide
end PairedPathRoundCheckedRows
