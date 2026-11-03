import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData86
import AuthenticatedBranchRoundInstructionMatrixData87
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5558 : actualRows5558=WordField.canonicalRows actualModulus 5558 (.badd 5555 5557) := by core033_kernel_decide
theorem stats5558 : actualRows5558.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5558=5388 := by core033_kernel_decide
theorem rows5559 : actualRows5559=WordField.canonicalRows actualModulus 5559 (.bnot 5558) := by core033_kernel_decide
theorem stats5559 : actualRows5559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5559=6276 := by core033_kernel_decide
theorem rows5560 : actualRows5560=WordField.canonicalRows actualModulus 5560 (.band 5553 5559) := by core033_kernel_decide
theorem stats5560 : actualRows5560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5560=5124 := by core033_kernel_decide
theorem rows5561 : actualRows5561=WordField.canonicalRows actualModulus 5561 (.bxor 5548 5560) := by core033_kernel_decide
theorem stats5561 : actualRows5561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5561=7428 := by core033_kernel_decide
theorem rows5562 : actualRows5562=WordField.canonicalRows actualModulus 5562 (.shr 5561 31) := by core033_kernel_decide
theorem stats5562 : actualRows5562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5562=2892 := by core033_kernel_decide
theorem rows5563 : actualRows5563=WordField.canonicalRows actualModulus 5563 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5563 : actualRows5563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5563=2892 := by core033_kernel_decide
theorem rows5564 : actualRows5564=WordField.canonicalRows actualModulus 5564 (.bxor 5562 5563) := by core033_kernel_decide
theorem stats5564 : actualRows5564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5564=7428 := by core033_kernel_decide
theorem rows5565 : actualRows5565=WordField.canonicalRows actualModulus 5565 (.bnot 5564) := by core033_kernel_decide
theorem stats5565 : actualRows5565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5565=6276 := by core033_kernel_decide
theorem rows5566 : actualRows5566=WordField.canonicalRows actualModulus 5566 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5566 : actualRows5566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5566=2892 := by core033_kernel_decide
theorem rows5567 : actualRows5567=WordField.canonicalRows actualModulus 5567 (.badd 5565 5566) := by core033_kernel_decide
theorem stats5567 : actualRows5567.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5567=5388 := by core033_kernel_decide
theorem rows5568 : actualRows5568=WordField.canonicalRows actualModulus 5568 (.bnot 5567) := by core033_kernel_decide
theorem stats5568 : actualRows5568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5568=6276 := by core033_kernel_decide
theorem rows5569 : actualRows5569=WordField.canonicalRows actualModulus 5569 (.band 5568 2618) := by core033_kernel_decide
theorem stats5569 : actualRows5569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5569=5124 := by core033_kernel_decide
theorem rows5570 : actualRows5570=WordField.canonicalRows actualModulus 5570 (.bxor 5543 5569) := by core033_kernel_decide
theorem stats5570 : actualRows5570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5570=7428 := by core033_kernel_decide
theorem rows5571 : actualRows5571=WordField.canonicalRows actualModulus 5571 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5571 : actualRows5571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5571=2892 := by core033_kernel_decide
theorem rows5572 : actualRows5572=WordField.canonicalRows actualModulus 5572 (.bxor 1299 5571) := by core033_kernel_decide
theorem stats5572 : actualRows5572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5572=7428 := by core033_kernel_decide
theorem rows5573 : actualRows5573=WordField.canonicalRows actualModulus 5573 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5573 : actualRows5573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5573=2820 := by core033_kernel_decide
theorem rows5574 : actualRows5574=WordField.canonicalRows actualModulus 5574 (.bnot 5573) := by core033_kernel_decide
theorem stats5574 : actualRows5574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5574=6276 := by core033_kernel_decide
theorem rows5575 : actualRows5575=WordField.canonicalRows actualModulus 5575 (.band 5572 5574) := by core033_kernel_decide
theorem stats5575 : actualRows5575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5575=5124 := by core033_kernel_decide
theorem rows5576 : actualRows5576=WordField.canonicalRows actualModulus 5576 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5576 : actualRows5576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5576=2892 := by core033_kernel_decide
theorem rows5577 : actualRows5577=WordField.canonicalRows actualModulus 5577 (.bxor 1299 5576) := by core033_kernel_decide
theorem stats5577 : actualRows5577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5577=7428 := by core033_kernel_decide
theorem rows5578 : actualRows5578=WordField.canonicalRows actualModulus 5578 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5578 : actualRows5578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5578=2820 := by core033_kernel_decide
theorem rows5579 : actualRows5579=WordField.canonicalRows actualModulus 5579 (.bnot 5578) := by core033_kernel_decide
theorem stats5579 : actualRows5579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5579=6276 := by core033_kernel_decide
theorem rows5580 : actualRows5580=WordField.canonicalRows actualModulus 5580 (.bxor 5577 5579) := by core033_kernel_decide
theorem stats5580 : actualRows5580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5580=7428 := by core033_kernel_decide
theorem rows5581 : actualRows5581=WordField.canonicalRows actualModulus 5581 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5581 : actualRows5581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5581=2892 := by core033_kernel_decide
theorem rows5582 : actualRows5582=WordField.canonicalRows actualModulus 5582 (.bxor 1299 5581) := by core033_kernel_decide
theorem stats5582 : actualRows5582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5582=7428 := by core033_kernel_decide
theorem rows5583 : actualRows5583=WordField.canonicalRows actualModulus 5583 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5583 : actualRows5583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5583=2820 := by core033_kernel_decide
theorem rows5584 : actualRows5584=WordField.canonicalRows actualModulus 5584 (.bnot 5583) := by core033_kernel_decide
theorem stats5584 : actualRows5584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5584=6276 := by core033_kernel_decide
theorem rows5585 : actualRows5585=WordField.canonicalRows actualModulus 5585 (.badd 5582 5584) := by core033_kernel_decide
theorem stats5585 : actualRows5585.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5585=5388 := by core033_kernel_decide
theorem rows5586 : actualRows5586=WordField.canonicalRows actualModulus 5586 (.bnot 5585) := by core033_kernel_decide
theorem stats5586 : actualRows5586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5586=6276 := by core033_kernel_decide
theorem rows5587 : actualRows5587=WordField.canonicalRows actualModulus 5587 (.band 5580 5586) := by core033_kernel_decide
theorem stats5587 : actualRows5587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5587=5124 := by core033_kernel_decide
theorem rows5588 : actualRows5588=WordField.canonicalRows actualModulus 5588 (.bxor 5575 5587) := by core033_kernel_decide
theorem stats5588 : actualRows5588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5588=7428 := by core033_kernel_decide
theorem rows5589 : actualRows5589=WordField.canonicalRows actualModulus 5589 (.shr 5588 31) := by core033_kernel_decide
theorem stats5589 : actualRows5589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5589=2892 := by core033_kernel_decide
theorem rows5590 : actualRows5590=WordField.canonicalRows actualModulus 5590 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5590 : actualRows5590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5590=2892 := by core033_kernel_decide
theorem rows5591 : actualRows5591=WordField.canonicalRows actualModulus 5591 (.bxor 5589 5590) := by core033_kernel_decide
theorem stats5591 : actualRows5591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5591=7428 := by core033_kernel_decide
theorem rows5592 : actualRows5592=WordField.canonicalRows actualModulus 5592 (.bnot 5591) := by core033_kernel_decide
theorem stats5592 : actualRows5592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5592=6276 := by core033_kernel_decide
theorem rows5593 : actualRows5593=WordField.canonicalRows actualModulus 5593 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5593 : actualRows5593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5593=2892 := by core033_kernel_decide
theorem rows5594 : actualRows5594=WordField.canonicalRows actualModulus 5594 (.badd 5592 5593) := by core033_kernel_decide
theorem stats5594 : actualRows5594.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5594=5388 := by core033_kernel_decide
theorem rows5595 : actualRows5595=WordField.canonicalRows actualModulus 5595 (.band 5594 2813) := by core033_kernel_decide
theorem stats5595 : actualRows5595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5595=5124 := by core033_kernel_decide
theorem rows5596 : actualRows5596=WordField.canonicalRows actualModulus 5596 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5596 : actualRows5596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5596=2892 := by core033_kernel_decide
theorem rows5597 : actualRows5597=WordField.canonicalRows actualModulus 5597 (.bxor 1299 5596) := by core033_kernel_decide
theorem stats5597 : actualRows5597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5597=7428 := by core033_kernel_decide
theorem rows5598 : actualRows5598=WordField.canonicalRows actualModulus 5598 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5598 : actualRows5598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5598=2820 := by core033_kernel_decide
theorem rows5599 : actualRows5599=WordField.canonicalRows actualModulus 5599 (.bnot 5598) := by core033_kernel_decide
theorem stats5599 : actualRows5599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5599=6276 := by core033_kernel_decide
theorem rows5600 : actualRows5600=WordField.canonicalRows actualModulus 5600 (.band 5597 5599) := by core033_kernel_decide
theorem stats5600 : actualRows5600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5600=5124 := by core033_kernel_decide
theorem rows5601 : actualRows5601=WordField.canonicalRows actualModulus 5601 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5601 : actualRows5601.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5601=2892 := by core033_kernel_decide
theorem rows5602 : actualRows5602=WordField.canonicalRows actualModulus 5602 (.bxor 1299 5601) := by core033_kernel_decide
theorem stats5602 : actualRows5602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5602=7428 := by core033_kernel_decide
theorem rows5603 : actualRows5603=WordField.canonicalRows actualModulus 5603 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5603 : actualRows5603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5603=2820 := by core033_kernel_decide
theorem rows5604 : actualRows5604=WordField.canonicalRows actualModulus 5604 (.bnot 5603) := by core033_kernel_decide
theorem stats5604 : actualRows5604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5604=6276 := by core033_kernel_decide
theorem rows5605 : actualRows5605=WordField.canonicalRows actualModulus 5605 (.bxor 5602 5604) := by core033_kernel_decide
theorem stats5605 : actualRows5605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5605=7428 := by core033_kernel_decide
theorem rows5606 : actualRows5606=WordField.canonicalRows actualModulus 5606 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5606 : actualRows5606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5606=2892 := by core033_kernel_decide
theorem rows5607 : actualRows5607=WordField.canonicalRows actualModulus 5607 (.bxor 1299 5606) := by core033_kernel_decide
theorem stats5607 : actualRows5607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5607=7428 := by core033_kernel_decide
theorem rows5608 : actualRows5608=WordField.canonicalRows actualModulus 5608 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5608 : actualRows5608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5608=2820 := by core033_kernel_decide
theorem rows5609 : actualRows5609=WordField.canonicalRows actualModulus 5609 (.bnot 5608) := by core033_kernel_decide
theorem stats5609 : actualRows5609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5609=6276 := by core033_kernel_decide
theorem rows5610 : actualRows5610=WordField.canonicalRows actualModulus 5610 (.badd 5607 5609) := by core033_kernel_decide
theorem stats5610 : actualRows5610.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5610=5388 := by core033_kernel_decide
theorem rows5611 : actualRows5611=WordField.canonicalRows actualModulus 5611 (.bnot 5610) := by core033_kernel_decide
theorem stats5611 : actualRows5611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5611=6276 := by core033_kernel_decide
theorem rows5612 : actualRows5612=WordField.canonicalRows actualModulus 5612 (.band 5605 5611) := by core033_kernel_decide
theorem stats5612 : actualRows5612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5612=5124 := by core033_kernel_decide
theorem rows5613 : actualRows5613=WordField.canonicalRows actualModulus 5613 (.bxor 5600 5612) := by core033_kernel_decide
theorem stats5613 : actualRows5613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5613=7428 := by core033_kernel_decide
theorem rows5614 : actualRows5614=WordField.canonicalRows actualModulus 5614 (.shr 5613 31) := by core033_kernel_decide
theorem stats5614 : actualRows5614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5614=2892 := by core033_kernel_decide
theorem rows5615 : actualRows5615=WordField.canonicalRows actualModulus 5615 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5615 : actualRows5615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5615=2892 := by core033_kernel_decide
theorem rows5616 : actualRows5616=WordField.canonicalRows actualModulus 5616 (.bxor 5614 5615) := by core033_kernel_decide
theorem stats5616 : actualRows5616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5616=7428 := by core033_kernel_decide
theorem rows5617 : actualRows5617=WordField.canonicalRows actualModulus 5617 (.bnot 5616) := by core033_kernel_decide
theorem stats5617 : actualRows5617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5617=6276 := by core033_kernel_decide
theorem rows5618 : actualRows5618=WordField.canonicalRows actualModulus 5618 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5618 : actualRows5618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5618=2892 := by core033_kernel_decide
theorem rows5619 : actualRows5619=WordField.canonicalRows actualModulus 5619 (.badd 5617 5618) := by core033_kernel_decide
theorem stats5619 : actualRows5619.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5619=5388 := by core033_kernel_decide
theorem rows5620 : actualRows5620=WordField.canonicalRows actualModulus 5620 (.bnot 5619) := by core033_kernel_decide
theorem stats5620 : actualRows5620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5620=6276 := by core033_kernel_decide
theorem rows5621 : actualRows5621=WordField.canonicalRows actualModulus 5621 (.band 5620 2621) := by core033_kernel_decide
theorem stats5621 : actualRows5621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5621=5124 := by core033_kernel_decide
def partRows85 : List R1CS.Row := actualRows5558++actualRows5559++actualRows5560++actualRows5561++actualRows5562++actualRows5563++actualRows5564++actualRows5565++actualRows5566++actualRows5567++actualRows5568++actualRows5569++actualRows5570++actualRows5571++actualRows5572++actualRows5573++actualRows5574++actualRows5575++actualRows5576++actualRows5577++actualRows5578++actualRows5579++actualRows5580++actualRows5581++actualRows5582++actualRows5583++actualRows5584++actualRows5585++actualRows5586++actualRows5587++actualRows5588++actualRows5589++actualRows5590++actualRows5591++actualRows5592++actualRows5593++actualRows5594++actualRows5595++actualRows5596++actualRows5597++actualRows5598++actualRows5599++actualRows5600++actualRows5601++actualRows5602++actualRows5603++actualRows5604++actualRows5605++actualRows5606++actualRows5607++actualRows5608++actualRows5609++actualRows5610++actualRows5611++actualRows5612++actualRows5613++actualRows5614++actualRows5615++actualRows5616++actualRows5617++actualRows5618++actualRows5619++actualRows5620++actualRows5621
def partOps85 : List WordIR.Op := [.badd 5555 5557,.bnot 5558,.band 5553 5559,.bxor 5548 5560,.shr 5561 31,.literal (BitVec.ofNat 32 1),.bxor 5562 5563,.bnot 5564,.literal (BitVec.ofNat 32 1),.badd 5565 5566,.bnot 5567,.band 5568 2618,.bxor 5543 5569,.literal (BitVec.ofNat 32 2),.bxor 1299 5571,.literal (BitVec.ofNat 32 0),.bnot 5573,.band 5572 5574,.literal (BitVec.ofNat 32 2),.bxor 1299 5576,.literal (BitVec.ofNat 32 0),.bnot 5578,.bxor 5577 5579,.literal (BitVec.ofNat 32 2),.bxor 1299 5581,.literal (BitVec.ofNat 32 0),.bnot 5583,.badd 5582 5584,.bnot 5585,.band 5580 5586,.bxor 5575 5587,.shr 5588 31,.literal (BitVec.ofNat 32 1),.bxor 5589 5590,.bnot 5591,.literal (BitVec.ofNat 32 1),.badd 5592 5593,.band 5594 2813,.literal (BitVec.ofNat 32 2),.bxor 1299 5596,.literal (BitVec.ofNat 32 0),.bnot 5598,.band 5597 5599,.literal (BitVec.ofNat 32 2),.bxor 1299 5601,.literal (BitVec.ofNat 32 0),.bnot 5603,.bxor 5602 5604,.literal (BitVec.ofNat 32 2),.bxor 1299 5606,.literal (BitVec.ofNat 32 0),.bnot 5608,.badd 5607 5609,.bnot 5610,.band 5605 5611,.bxor 5600 5612,.shr 5613 31,.literal (BitVec.ofNat 32 1),.bxor 5614 5615,.bnot 5616,.literal (BitVec.ofNat 32 1),.badd 5617 5618,.bnot 5619,.band 5620 2621]
theorem partExact85 : partRows85=WordField.rows actualModulus 5558 partOps85 := by
  simp only [partRows85,partOps85,WordField.rows,rows5558,rows5559,rows5560,rows5561,rows5562,rows5563,rows5564,rows5565,rows5566,rows5567,rows5568,rows5569,rows5570,rows5571,rows5572,rows5573,rows5574,rows5575,rows5576,rows5577,rows5578,rows5579,rows5580,rows5581,rows5582,rows5583,rows5584,rows5585,rows5586,rows5587,rows5588,rows5589,rows5590,rows5591,rows5592,rows5593,rows5594,rows5595,rows5596,rows5597,rows5598,rows5599,rows5600,rows5601,rows5602,rows5603,rows5604,rows5605,rows5606,rows5607,rows5608,rows5609,rows5610,rows5611,rows5612,rows5613,rows5614,rows5615,rows5616,rows5617,rows5618,rows5619,rows5620,rows5621,List.append_assoc,List.append_nil]
theorem partLength85 : partOps85.length=64 := by decide
theorem partStats85 : partRows85.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows85=332904 := by
  simp only [partRows85,List.length_append,MatrixRowBlocks.rows_weight_append,stats5558.1,stats5558.2,stats5559.1,stats5559.2,stats5560.1,stats5560.2,stats5561.1,stats5561.2,stats5562.1,stats5562.2,stats5563.1,stats5563.2,stats5564.1,stats5564.2,stats5565.1,stats5565.2,stats5566.1,stats5566.2,stats5567.1,stats5567.2,stats5568.1,stats5568.2,stats5569.1,stats5569.2,stats5570.1,stats5570.2,stats5571.1,stats5571.2,stats5572.1,stats5572.2,stats5573.1,stats5573.2,stats5574.1,stats5574.2,stats5575.1,stats5575.2,stats5576.1,stats5576.2,stats5577.1,stats5577.2,stats5578.1,stats5578.2,stats5579.1,stats5579.2,stats5580.1,stats5580.2,stats5581.1,stats5581.2,stats5582.1,stats5582.2,stats5583.1,stats5583.2,stats5584.1,stats5584.2,stats5585.1,stats5585.2,stats5586.1,stats5586.2,stats5587.1,stats5587.2,stats5588.1,stats5588.2,stats5589.1,stats5589.2,stats5590.1,stats5590.2,stats5591.1,stats5591.2,stats5592.1,stats5592.2,stats5593.1,stats5593.2,stats5594.1,stats5594.2,stats5595.1,stats5595.2,stats5596.1,stats5596.2,stats5597.1,stats5597.2,stats5598.1,stats5598.2,stats5599.1,stats5599.2,stats5600.1,stats5600.2,stats5601.1,stats5601.2,stats5602.1,stats5602.2,stats5603.1,stats5603.2,stats5604.1,stats5604.2,stats5605.1,stats5605.2,stats5606.1,stats5606.2,stats5607.1,stats5607.2,stats5608.1,stats5608.2,stats5609.1,stats5609.2,stats5610.1,stats5610.2,stats5611.1,stats5611.2,stats5612.1,stats5612.2,stats5613.1,stats5613.2,stats5614.1,stats5614.2,stats5615.1,stats5615.2,stats5616.1,stats5616.2,stats5617.1,stats5617.2,stats5618.1,stats5618.2,stats5619.1,stats5619.2,stats5620.1,stats5620.2,stats5621.1,stats5621.2]
  decide
end AuthenticatedBranchRoundCheckedRows
