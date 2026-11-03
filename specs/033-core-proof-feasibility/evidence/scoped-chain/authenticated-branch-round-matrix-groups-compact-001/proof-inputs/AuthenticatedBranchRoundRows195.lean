import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData196
import AuthenticatedBranchRoundInstructionMatrixData197
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12598 : actualRows12598=WordField.canonicalRows actualModulus 12598 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12598 : actualRows12598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12598=2964 := by core033_kernel_decide
theorem rows12599 : actualRows12599=WordField.canonicalRows actualModulus 12599 (.bxor 693 12598) := by core033_kernel_decide
theorem stats12599 : actualRows12599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12599=7428 := by core033_kernel_decide
theorem rows12600 : actualRows12600=WordField.canonicalRows actualModulus 12600 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12600 : actualRows12600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12600=2820 := by core033_kernel_decide
theorem rows12601 : actualRows12601=WordField.canonicalRows actualModulus 12601 (.bnot 12600) := by core033_kernel_decide
theorem stats12601 : actualRows12601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12601=6276 := by core033_kernel_decide
theorem rows12602 : actualRows12602=WordField.canonicalRows actualModulus 12602 (.band 12599 12601) := by core033_kernel_decide
theorem stats12602 : actualRows12602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12602=5124 := by core033_kernel_decide
theorem rows12603 : actualRows12603=WordField.canonicalRows actualModulus 12603 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12603 : actualRows12603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12603=2964 := by core033_kernel_decide
theorem rows12604 : actualRows12604=WordField.canonicalRows actualModulus 12604 (.bxor 693 12603) := by core033_kernel_decide
theorem stats12604 : actualRows12604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12604=7428 := by core033_kernel_decide
theorem rows12605 : actualRows12605=WordField.canonicalRows actualModulus 12605 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12605 : actualRows12605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12605=2820 := by core033_kernel_decide
theorem rows12606 : actualRows12606=WordField.canonicalRows actualModulus 12606 (.bnot 12605) := by core033_kernel_decide
theorem stats12606 : actualRows12606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12606=6276 := by core033_kernel_decide
theorem rows12607 : actualRows12607=WordField.canonicalRows actualModulus 12607 (.bxor 12604 12606) := by core033_kernel_decide
theorem stats12607 : actualRows12607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12607=7428 := by core033_kernel_decide
theorem rows12608 : actualRows12608=WordField.canonicalRows actualModulus 12608 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12608 : actualRows12608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12608=2964 := by core033_kernel_decide
theorem rows12609 : actualRows12609=WordField.canonicalRows actualModulus 12609 (.bxor 693 12608) := by core033_kernel_decide
theorem stats12609 : actualRows12609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12609=7428 := by core033_kernel_decide
theorem rows12610 : actualRows12610=WordField.canonicalRows actualModulus 12610 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12610 : actualRows12610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12610=2820 := by core033_kernel_decide
theorem rows12611 : actualRows12611=WordField.canonicalRows actualModulus 12611 (.bnot 12610) := by core033_kernel_decide
theorem stats12611 : actualRows12611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12611=6276 := by core033_kernel_decide
theorem rows12612 : actualRows12612=WordField.canonicalRows actualModulus 12612 (.badd 12609 12611) := by core033_kernel_decide
theorem stats12612 : actualRows12612.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12612=5388 := by core033_kernel_decide
theorem rows12613 : actualRows12613=WordField.canonicalRows actualModulus 12613 (.bnot 12612) := by core033_kernel_decide
theorem stats12613 : actualRows12613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12613=6276 := by core033_kernel_decide
theorem rows12614 : actualRows12614=WordField.canonicalRows actualModulus 12614 (.band 12607 12613) := by core033_kernel_decide
theorem stats12614 : actualRows12614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12614=5124 := by core033_kernel_decide
theorem rows12615 : actualRows12615=WordField.canonicalRows actualModulus 12615 (.bxor 12602 12614) := by core033_kernel_decide
theorem stats12615 : actualRows12615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12615=7428 := by core033_kernel_decide
theorem rows12616 : actualRows12616=WordField.canonicalRows actualModulus 12616 (.shr 12615 31) := by core033_kernel_decide
theorem stats12616 : actualRows12616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12616=2892 := by core033_kernel_decide
theorem rows12617 : actualRows12617=WordField.canonicalRows actualModulus 12617 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12617 : actualRows12617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12617=2892 := by core033_kernel_decide
theorem rows12618 : actualRows12618=WordField.canonicalRows actualModulus 12618 (.bxor 12616 12617) := by core033_kernel_decide
theorem stats12618 : actualRows12618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12618=7428 := by core033_kernel_decide
theorem rows12619 : actualRows12619=WordField.canonicalRows actualModulus 12619 (.bnot 12618) := by core033_kernel_decide
theorem stats12619 : actualRows12619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12619=6276 := by core033_kernel_decide
theorem rows12620 : actualRows12620=WordField.canonicalRows actualModulus 12620 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12620 : actualRows12620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12620=2892 := by core033_kernel_decide
theorem rows12621 : actualRows12621=WordField.canonicalRows actualModulus 12621 (.badd 12619 12620) := by core033_kernel_decide
theorem stats12621 : actualRows12621.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12621=5388 := by core033_kernel_decide
theorem rows12622 : actualRows12622=WordField.canonicalRows actualModulus 12622 (.bnot 12621) := by core033_kernel_decide
theorem stats12622 : actualRows12622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12622=6276 := by core033_kernel_decide
theorem rows12623 : actualRows12623=WordField.canonicalRows actualModulus 12623 (.band 12622 1541) := by core033_kernel_decide
theorem stats12623 : actualRows12623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12623=5124 := by core033_kernel_decide
theorem rows12624 : actualRows12624=WordField.canonicalRows actualModulus 12624 (.bxor 12597 12623) := by core033_kernel_decide
theorem stats12624 : actualRows12624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12624=7428 := by core033_kernel_decide
theorem rows12625 : actualRows12625=WordField.canonicalRows actualModulus 12625 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12625 : actualRows12625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12625=2964 := by core033_kernel_decide
theorem rows12626 : actualRows12626=WordField.canonicalRows actualModulus 12626 (.bxor 693 12625) := by core033_kernel_decide
theorem stats12626 : actualRows12626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12626=7428 := by core033_kernel_decide
theorem rows12627 : actualRows12627=WordField.canonicalRows actualModulus 12627 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12627 : actualRows12627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12627=2820 := by core033_kernel_decide
theorem rows12628 : actualRows12628=WordField.canonicalRows actualModulus 12628 (.bnot 12627) := by core033_kernel_decide
theorem stats12628 : actualRows12628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12628=6276 := by core033_kernel_decide
theorem rows12629 : actualRows12629=WordField.canonicalRows actualModulus 12629 (.band 12626 12628) := by core033_kernel_decide
theorem stats12629 : actualRows12629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12629=5124 := by core033_kernel_decide
theorem rows12630 : actualRows12630=WordField.canonicalRows actualModulus 12630 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12630 : actualRows12630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12630=2964 := by core033_kernel_decide
theorem rows12631 : actualRows12631=WordField.canonicalRows actualModulus 12631 (.bxor 693 12630) := by core033_kernel_decide
theorem stats12631 : actualRows12631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12631=7428 := by core033_kernel_decide
theorem rows12632 : actualRows12632=WordField.canonicalRows actualModulus 12632 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12632 : actualRows12632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12632=2820 := by core033_kernel_decide
theorem rows12633 : actualRows12633=WordField.canonicalRows actualModulus 12633 (.bnot 12632) := by core033_kernel_decide
theorem stats12633 : actualRows12633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12633=6276 := by core033_kernel_decide
theorem rows12634 : actualRows12634=WordField.canonicalRows actualModulus 12634 (.bxor 12631 12633) := by core033_kernel_decide
theorem stats12634 : actualRows12634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12634=7428 := by core033_kernel_decide
theorem rows12635 : actualRows12635=WordField.canonicalRows actualModulus 12635 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12635 : actualRows12635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12635=2964 := by core033_kernel_decide
theorem rows12636 : actualRows12636=WordField.canonicalRows actualModulus 12636 (.bxor 693 12635) := by core033_kernel_decide
theorem stats12636 : actualRows12636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12636=7428 := by core033_kernel_decide
theorem rows12637 : actualRows12637=WordField.canonicalRows actualModulus 12637 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12637 : actualRows12637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12637=2820 := by core033_kernel_decide
theorem rows12638 : actualRows12638=WordField.canonicalRows actualModulus 12638 (.bnot 12637) := by core033_kernel_decide
theorem stats12638 : actualRows12638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12638=6276 := by core033_kernel_decide
theorem rows12639 : actualRows12639=WordField.canonicalRows actualModulus 12639 (.badd 12636 12638) := by core033_kernel_decide
theorem stats12639 : actualRows12639.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12639=5388 := by core033_kernel_decide
theorem rows12640 : actualRows12640=WordField.canonicalRows actualModulus 12640 (.bnot 12639) := by core033_kernel_decide
theorem stats12640 : actualRows12640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12640=6276 := by core033_kernel_decide
theorem rows12641 : actualRows12641=WordField.canonicalRows actualModulus 12641 (.band 12634 12640) := by core033_kernel_decide
theorem stats12641 : actualRows12641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12641=5124 := by core033_kernel_decide
theorem rows12642 : actualRows12642=WordField.canonicalRows actualModulus 12642 (.bxor 12629 12641) := by core033_kernel_decide
theorem stats12642 : actualRows12642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12642=7428 := by core033_kernel_decide
theorem rows12643 : actualRows12643=WordField.canonicalRows actualModulus 12643 (.shr 12642 31) := by core033_kernel_decide
theorem stats12643 : actualRows12643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12643=2892 := by core033_kernel_decide
theorem rows12644 : actualRows12644=WordField.canonicalRows actualModulus 12644 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12644 : actualRows12644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12644=2892 := by core033_kernel_decide
theorem rows12645 : actualRows12645=WordField.canonicalRows actualModulus 12645 (.bxor 12643 12644) := by core033_kernel_decide
theorem stats12645 : actualRows12645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12645=7428 := by core033_kernel_decide
theorem rows12646 : actualRows12646=WordField.canonicalRows actualModulus 12646 (.bnot 12645) := by core033_kernel_decide
theorem stats12646 : actualRows12646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12646=6276 := by core033_kernel_decide
theorem rows12647 : actualRows12647=WordField.canonicalRows actualModulus 12647 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12647 : actualRows12647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12647=2892 := by core033_kernel_decide
theorem rows12648 : actualRows12648=WordField.canonicalRows actualModulus 12648 (.badd 12646 12647) := by core033_kernel_decide
theorem stats12648 : actualRows12648.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12648=5388 := by core033_kernel_decide
theorem rows12649 : actualRows12649=WordField.canonicalRows actualModulus 12649 (.band 12648 10873) := by core033_kernel_decide
theorem stats12649 : actualRows12649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12649=5124 := by core033_kernel_decide
theorem rows12650 : actualRows12650=WordField.canonicalRows actualModulus 12650 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12650 : actualRows12650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12650=2964 := by core033_kernel_decide
theorem rows12651 : actualRows12651=WordField.canonicalRows actualModulus 12651 (.bxor 693 12650) := by core033_kernel_decide
theorem stats12651 : actualRows12651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12651=7428 := by core033_kernel_decide
theorem rows12652 : actualRows12652=WordField.canonicalRows actualModulus 12652 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12652 : actualRows12652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12652=2820 := by core033_kernel_decide
theorem rows12653 : actualRows12653=WordField.canonicalRows actualModulus 12653 (.bnot 12652) := by core033_kernel_decide
theorem stats12653 : actualRows12653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12653=6276 := by core033_kernel_decide
theorem rows12654 : actualRows12654=WordField.canonicalRows actualModulus 12654 (.band 12651 12653) := by core033_kernel_decide
theorem stats12654 : actualRows12654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12654=5124 := by core033_kernel_decide
theorem rows12655 : actualRows12655=WordField.canonicalRows actualModulus 12655 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12655 : actualRows12655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12655=2964 := by core033_kernel_decide
theorem rows12656 : actualRows12656=WordField.canonicalRows actualModulus 12656 (.bxor 693 12655) := by core033_kernel_decide
theorem stats12656 : actualRows12656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12656=7428 := by core033_kernel_decide
theorem rows12657 : actualRows12657=WordField.canonicalRows actualModulus 12657 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12657 : actualRows12657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12657=2820 := by core033_kernel_decide
theorem rows12658 : actualRows12658=WordField.canonicalRows actualModulus 12658 (.bnot 12657) := by core033_kernel_decide
theorem stats12658 : actualRows12658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12658=6276 := by core033_kernel_decide
theorem rows12659 : actualRows12659=WordField.canonicalRows actualModulus 12659 (.bxor 12656 12658) := by core033_kernel_decide
theorem stats12659 : actualRows12659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12659=7428 := by core033_kernel_decide
theorem rows12660 : actualRows12660=WordField.canonicalRows actualModulus 12660 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12660 : actualRows12660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12660=2964 := by core033_kernel_decide
theorem rows12661 : actualRows12661=WordField.canonicalRows actualModulus 12661 (.bxor 693 12660) := by core033_kernel_decide
theorem stats12661 : actualRows12661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12661=7428 := by core033_kernel_decide
def partRows195 : List R1CS.Row := actualRows12598++actualRows12599++actualRows12600++actualRows12601++actualRows12602++actualRows12603++actualRows12604++actualRows12605++actualRows12606++actualRows12607++actualRows12608++actualRows12609++actualRows12610++actualRows12611++actualRows12612++actualRows12613++actualRows12614++actualRows12615++actualRows12616++actualRows12617++actualRows12618++actualRows12619++actualRows12620++actualRows12621++actualRows12622++actualRows12623++actualRows12624++actualRows12625++actualRows12626++actualRows12627++actualRows12628++actualRows12629++actualRows12630++actualRows12631++actualRows12632++actualRows12633++actualRows12634++actualRows12635++actualRows12636++actualRows12637++actualRows12638++actualRows12639++actualRows12640++actualRows12641++actualRows12642++actualRows12643++actualRows12644++actualRows12645++actualRows12646++actualRows12647++actualRows12648++actualRows12649++actualRows12650++actualRows12651++actualRows12652++actualRows12653++actualRows12654++actualRows12655++actualRows12656++actualRows12657++actualRows12658++actualRows12659++actualRows12660++actualRows12661
def partOps195 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 693 12598,.literal (BitVec.ofNat 32 0),.bnot 12600,.band 12599 12601,.literal (BitVec.ofNat 32 3),.bxor 693 12603,.literal (BitVec.ofNat 32 0),.bnot 12605,.bxor 12604 12606,.literal (BitVec.ofNat 32 3),.bxor 693 12608,.literal (BitVec.ofNat 32 0),.bnot 12610,.badd 12609 12611,.bnot 12612,.band 12607 12613,.bxor 12602 12614,.shr 12615 31,.literal (BitVec.ofNat 32 1),.bxor 12616 12617,.bnot 12618,.literal (BitVec.ofNat 32 1),.badd 12619 12620,.bnot 12621,.band 12622 1541,.bxor 12597 12623,.literal (BitVec.ofNat 32 3),.bxor 693 12625,.literal (BitVec.ofNat 32 0),.bnot 12627,.band 12626 12628,.literal (BitVec.ofNat 32 3),.bxor 693 12630,.literal (BitVec.ofNat 32 0),.bnot 12632,.bxor 12631 12633,.literal (BitVec.ofNat 32 3),.bxor 693 12635,.literal (BitVec.ofNat 32 0),.bnot 12637,.badd 12636 12638,.bnot 12639,.band 12634 12640,.bxor 12629 12641,.shr 12642 31,.literal (BitVec.ofNat 32 1),.bxor 12643 12644,.bnot 12645,.literal (BitVec.ofNat 32 1),.badd 12646 12647,.band 12648 10873,.literal (BitVec.ofNat 32 3),.bxor 693 12650,.literal (BitVec.ofNat 32 0),.bnot 12652,.band 12651 12653,.literal (BitVec.ofNat 32 3),.bxor 693 12655,.literal (BitVec.ofNat 32 0),.bnot 12657,.bxor 12656 12658,.literal (BitVec.ofNat 32 3),.bxor 693 12660]
theorem partExact195 : partRows195=WordField.rows actualModulus 12598 partOps195 := by
  simp only [partRows195,partOps195,WordField.rows,rows12598,rows12599,rows12600,rows12601,rows12602,rows12603,rows12604,rows12605,rows12606,rows12607,rows12608,rows12609,rows12610,rows12611,rows12612,rows12613,rows12614,rows12615,rows12616,rows12617,rows12618,rows12619,rows12620,rows12621,rows12622,rows12623,rows12624,rows12625,rows12626,rows12627,rows12628,rows12629,rows12630,rows12631,rows12632,rows12633,rows12634,rows12635,rows12636,rows12637,rows12638,rows12639,rows12640,rows12641,rows12642,rows12643,rows12644,rows12645,rows12646,rows12647,rows12648,rows12649,rows12650,rows12651,rows12652,rows12653,rows12654,rows12655,rows12656,rows12657,rows12658,rows12659,rows12660,rows12661,List.append_assoc,List.append_nil]
theorem partLength195 : partOps195.length=64 := by decide
theorem partStats195 : partRows195.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows195=331872 := by
  simp only [partRows195,List.length_append,MatrixRowBlocks.rows_weight_append,stats12598.1,stats12598.2,stats12599.1,stats12599.2,stats12600.1,stats12600.2,stats12601.1,stats12601.2,stats12602.1,stats12602.2,stats12603.1,stats12603.2,stats12604.1,stats12604.2,stats12605.1,stats12605.2,stats12606.1,stats12606.2,stats12607.1,stats12607.2,stats12608.1,stats12608.2,stats12609.1,stats12609.2,stats12610.1,stats12610.2,stats12611.1,stats12611.2,stats12612.1,stats12612.2,stats12613.1,stats12613.2,stats12614.1,stats12614.2,stats12615.1,stats12615.2,stats12616.1,stats12616.2,stats12617.1,stats12617.2,stats12618.1,stats12618.2,stats12619.1,stats12619.2,stats12620.1,stats12620.2,stats12621.1,stats12621.2,stats12622.1,stats12622.2,stats12623.1,stats12623.2,stats12624.1,stats12624.2,stats12625.1,stats12625.2,stats12626.1,stats12626.2,stats12627.1,stats12627.2,stats12628.1,stats12628.2,stats12629.1,stats12629.2,stats12630.1,stats12630.2,stats12631.1,stats12631.2,stats12632.1,stats12632.2,stats12633.1,stats12633.2,stats12634.1,stats12634.2,stats12635.1,stats12635.2,stats12636.1,stats12636.2,stats12637.1,stats12637.2,stats12638.1,stats12638.2,stats12639.1,stats12639.2,stats12640.1,stats12640.2,stats12641.1,stats12641.2,stats12642.1,stats12642.2,stats12643.1,stats12643.2,stats12644.1,stats12644.2,stats12645.1,stats12645.2,stats12646.1,stats12646.2,stats12647.1,stats12647.2,stats12648.1,stats12648.2,stats12649.1,stats12649.2,stats12650.1,stats12650.2,stats12651.1,stats12651.2,stats12652.1,stats12652.2,stats12653.1,stats12653.2,stats12654.1,stats12654.2,stats12655.1,stats12655.2,stats12656.1,stats12656.2,stats12657.1,stats12657.2,stats12658.1,stats12658.2,stats12659.1,stats12659.2,stats12660.1,stats12660.2,stats12661.1,stats12661.2]
  decide
end AuthenticatedBranchRoundCheckedRows
