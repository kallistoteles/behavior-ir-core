import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData86
import PairedPathRoundInstructionMatrixData87
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5536 : actualRows5536=WordField.canonicalRows actualModulus 5536 (.literal (BitVec.ofNat 32 128)) := by core033_kernel_decide
theorem stats5536 : actualRows5536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5536=2892 := by core033_kernel_decide
theorem rows5537 : actualRows5537=WordField.canonicalRows actualModulus 5537 (.band 5535 5536) := by core033_kernel_decide
theorem stats5537 : actualRows5537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5537=5124 := by core033_kernel_decide
theorem rows5538 : actualRows5538=WordField.canonicalRows actualModulus 5538 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5538 : actualRows5538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5538=2892 := by core033_kernel_decide
theorem rows5539 : actualRows5539=WordField.canonicalRows actualModulus 5539 (.bxor 616 5538) := by core033_kernel_decide
theorem stats5539 : actualRows5539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5539=7428 := by core033_kernel_decide
theorem rows5540 : actualRows5540=WordField.canonicalRows actualModulus 5540 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5540 : actualRows5540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5540=2820 := by core033_kernel_decide
theorem rows5541 : actualRows5541=WordField.canonicalRows actualModulus 5541 (.bnot 5540) := by core033_kernel_decide
theorem stats5541 : actualRows5541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5541=6276 := by core033_kernel_decide
theorem rows5542 : actualRows5542=WordField.canonicalRows actualModulus 5542 (.band 5539 5541) := by core033_kernel_decide
theorem stats5542 : actualRows5542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5542=5124 := by core033_kernel_decide
theorem rows5543 : actualRows5543=WordField.canonicalRows actualModulus 5543 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5543 : actualRows5543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5543=2892 := by core033_kernel_decide
theorem rows5544 : actualRows5544=WordField.canonicalRows actualModulus 5544 (.bxor 616 5543) := by core033_kernel_decide
theorem stats5544 : actualRows5544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5544=7428 := by core033_kernel_decide
theorem rows5545 : actualRows5545=WordField.canonicalRows actualModulus 5545 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5545 : actualRows5545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5545=2820 := by core033_kernel_decide
theorem rows5546 : actualRows5546=WordField.canonicalRows actualModulus 5546 (.bnot 5545) := by core033_kernel_decide
theorem stats5546 : actualRows5546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5546=6276 := by core033_kernel_decide
theorem rows5547 : actualRows5547=WordField.canonicalRows actualModulus 5547 (.bxor 5544 5546) := by core033_kernel_decide
theorem stats5547 : actualRows5547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5547=7428 := by core033_kernel_decide
theorem rows5548 : actualRows5548=WordField.canonicalRows actualModulus 5548 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5548 : actualRows5548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5548=2892 := by core033_kernel_decide
theorem rows5549 : actualRows5549=WordField.canonicalRows actualModulus 5549 (.bxor 616 5548) := by core033_kernel_decide
theorem stats5549 : actualRows5549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5549=7428 := by core033_kernel_decide
theorem rows5550 : actualRows5550=WordField.canonicalRows actualModulus 5550 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5550 : actualRows5550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5550=2820 := by core033_kernel_decide
theorem rows5551 : actualRows5551=WordField.canonicalRows actualModulus 5551 (.bnot 5550) := by core033_kernel_decide
theorem stats5551 : actualRows5551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5551=6276 := by core033_kernel_decide
theorem rows5552 : actualRows5552=WordField.canonicalRows actualModulus 5552 (.badd 5549 5551) := by core033_kernel_decide
theorem stats5552 : actualRows5552.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5552=5388 := by core033_kernel_decide
theorem rows5553 : actualRows5553=WordField.canonicalRows actualModulus 5553 (.bnot 5552) := by core033_kernel_decide
theorem stats5553 : actualRows5553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5553=6276 := by core033_kernel_decide
theorem rows5554 : actualRows5554=WordField.canonicalRows actualModulus 5554 (.band 5547 5553) := by core033_kernel_decide
theorem stats5554 : actualRows5554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5554=5124 := by core033_kernel_decide
theorem rows5555 : actualRows5555=WordField.canonicalRows actualModulus 5555 (.bxor 5542 5554) := by core033_kernel_decide
theorem stats5555 : actualRows5555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5555=7428 := by core033_kernel_decide
theorem rows5556 : actualRows5556=WordField.canonicalRows actualModulus 5556 (.shr 5555 31) := by core033_kernel_decide
theorem stats5556 : actualRows5556.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5556=2892 := by core033_kernel_decide
theorem rows5557 : actualRows5557=WordField.canonicalRows actualModulus 5557 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5557 : actualRows5557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5557=2892 := by core033_kernel_decide
theorem rows5558 : actualRows5558=WordField.canonicalRows actualModulus 5558 (.bxor 5556 5557) := by core033_kernel_decide
theorem stats5558 : actualRows5558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5558=7428 := by core033_kernel_decide
theorem rows5559 : actualRows5559=WordField.canonicalRows actualModulus 5559 (.bnot 5558) := by core033_kernel_decide
theorem stats5559 : actualRows5559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5559=6276 := by core033_kernel_decide
theorem rows5560 : actualRows5560=WordField.canonicalRows actualModulus 5560 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5560 : actualRows5560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5560=2892 := by core033_kernel_decide
theorem rows5561 : actualRows5561=WordField.canonicalRows actualModulus 5561 (.badd 5559 5560) := by core033_kernel_decide
theorem stats5561 : actualRows5561.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5561=5388 := by core033_kernel_decide
theorem rows5562 : actualRows5562=WordField.canonicalRows actualModulus 5562 (.bnot 5561) := by core033_kernel_decide
theorem stats5562 : actualRows5562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5562=6276 := by core033_kernel_decide
theorem rows5563 : actualRows5563=WordField.canonicalRows actualModulus 5563 (.band 5562 1974) := by core033_kernel_decide
theorem stats5563 : actualRows5563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5563=5124 := by core033_kernel_decide
theorem rows5564 : actualRows5564=WordField.canonicalRows actualModulus 5564 (.bxor 5537 5563) := by core033_kernel_decide
theorem stats5564 : actualRows5564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5564=7428 := by core033_kernel_decide
theorem rows5565 : actualRows5565=WordField.canonicalRows actualModulus 5565 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5565 : actualRows5565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5565=2892 := by core033_kernel_decide
theorem rows5566 : actualRows5566=WordField.canonicalRows actualModulus 5566 (.bxor 616 5565) := by core033_kernel_decide
theorem stats5566 : actualRows5566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5566=7428 := by core033_kernel_decide
theorem rows5567 : actualRows5567=WordField.canonicalRows actualModulus 5567 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5567 : actualRows5567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5567=2820 := by core033_kernel_decide
theorem rows5568 : actualRows5568=WordField.canonicalRows actualModulus 5568 (.bnot 5567) := by core033_kernel_decide
theorem stats5568 : actualRows5568.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5568=6276 := by core033_kernel_decide
theorem rows5569 : actualRows5569=WordField.canonicalRows actualModulus 5569 (.band 5566 5568) := by core033_kernel_decide
theorem stats5569 : actualRows5569.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5569=5124 := by core033_kernel_decide
theorem rows5570 : actualRows5570=WordField.canonicalRows actualModulus 5570 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5570 : actualRows5570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5570=2892 := by core033_kernel_decide
theorem rows5571 : actualRows5571=WordField.canonicalRows actualModulus 5571 (.bxor 616 5570) := by core033_kernel_decide
theorem stats5571 : actualRows5571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5571=7428 := by core033_kernel_decide
theorem rows5572 : actualRows5572=WordField.canonicalRows actualModulus 5572 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5572 : actualRows5572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5572=2820 := by core033_kernel_decide
theorem rows5573 : actualRows5573=WordField.canonicalRows actualModulus 5573 (.bnot 5572) := by core033_kernel_decide
theorem stats5573 : actualRows5573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5573=6276 := by core033_kernel_decide
theorem rows5574 : actualRows5574=WordField.canonicalRows actualModulus 5574 (.bxor 5571 5573) := by core033_kernel_decide
theorem stats5574 : actualRows5574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5574=7428 := by core033_kernel_decide
theorem rows5575 : actualRows5575=WordField.canonicalRows actualModulus 5575 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5575 : actualRows5575.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5575=2892 := by core033_kernel_decide
theorem rows5576 : actualRows5576=WordField.canonicalRows actualModulus 5576 (.bxor 616 5575) := by core033_kernel_decide
theorem stats5576 : actualRows5576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5576=7428 := by core033_kernel_decide
theorem rows5577 : actualRows5577=WordField.canonicalRows actualModulus 5577 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5577 : actualRows5577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5577=2820 := by core033_kernel_decide
theorem rows5578 : actualRows5578=WordField.canonicalRows actualModulus 5578 (.bnot 5577) := by core033_kernel_decide
theorem stats5578 : actualRows5578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5578=6276 := by core033_kernel_decide
theorem rows5579 : actualRows5579=WordField.canonicalRows actualModulus 5579 (.badd 5576 5578) := by core033_kernel_decide
theorem stats5579 : actualRows5579.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5579=5388 := by core033_kernel_decide
theorem rows5580 : actualRows5580=WordField.canonicalRows actualModulus 5580 (.bnot 5579) := by core033_kernel_decide
theorem stats5580 : actualRows5580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5580=6276 := by core033_kernel_decide
theorem rows5581 : actualRows5581=WordField.canonicalRows actualModulus 5581 (.band 5574 5580) := by core033_kernel_decide
theorem stats5581 : actualRows5581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5581=5124 := by core033_kernel_decide
theorem rows5582 : actualRows5582=WordField.canonicalRows actualModulus 5582 (.bxor 5569 5581) := by core033_kernel_decide
theorem stats5582 : actualRows5582.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5582=7428 := by core033_kernel_decide
theorem rows5583 : actualRows5583=WordField.canonicalRows actualModulus 5583 (.shr 5582 31) := by core033_kernel_decide
theorem stats5583 : actualRows5583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5583=2892 := by core033_kernel_decide
theorem rows5584 : actualRows5584=WordField.canonicalRows actualModulus 5584 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5584 : actualRows5584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5584=2892 := by core033_kernel_decide
theorem rows5585 : actualRows5585=WordField.canonicalRows actualModulus 5585 (.bxor 5583 5584) := by core033_kernel_decide
theorem stats5585 : actualRows5585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5585=7428 := by core033_kernel_decide
theorem rows5586 : actualRows5586=WordField.canonicalRows actualModulus 5586 (.bnot 5585) := by core033_kernel_decide
theorem stats5586 : actualRows5586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5586=6276 := by core033_kernel_decide
theorem rows5587 : actualRows5587=WordField.canonicalRows actualModulus 5587 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5587 : actualRows5587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5587=2892 := by core033_kernel_decide
theorem rows5588 : actualRows5588=WordField.canonicalRows actualModulus 5588 (.badd 5586 5587) := by core033_kernel_decide
theorem stats5588 : actualRows5588.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5588=5388 := by core033_kernel_decide
theorem rows5589 : actualRows5589=WordField.canonicalRows actualModulus 5589 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5589 : actualRows5589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5589=2820 := by core033_kernel_decide
theorem rows5590 : actualRows5590=WordField.canonicalRows actualModulus 5590 (.band 5588 5589) := by core033_kernel_decide
theorem stats5590 : actualRows5590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5590=5124 := by core033_kernel_decide
theorem rows5591 : actualRows5591=WordField.canonicalRows actualModulus 5591 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5591 : actualRows5591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5591=2892 := by core033_kernel_decide
theorem rows5592 : actualRows5592=WordField.canonicalRows actualModulus 5592 (.bxor 616 5591) := by core033_kernel_decide
theorem stats5592 : actualRows5592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5592=7428 := by core033_kernel_decide
theorem rows5593 : actualRows5593=WordField.canonicalRows actualModulus 5593 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5593 : actualRows5593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5593=2820 := by core033_kernel_decide
theorem rows5594 : actualRows5594=WordField.canonicalRows actualModulus 5594 (.bnot 5593) := by core033_kernel_decide
theorem stats5594 : actualRows5594.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5594=6276 := by core033_kernel_decide
theorem rows5595 : actualRows5595=WordField.canonicalRows actualModulus 5595 (.band 5592 5594) := by core033_kernel_decide
theorem stats5595 : actualRows5595.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5595=5124 := by core033_kernel_decide
theorem rows5596 : actualRows5596=WordField.canonicalRows actualModulus 5596 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5596 : actualRows5596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5596=2892 := by core033_kernel_decide
theorem rows5597 : actualRows5597=WordField.canonicalRows actualModulus 5597 (.bxor 616 5596) := by core033_kernel_decide
theorem stats5597 : actualRows5597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5597=7428 := by core033_kernel_decide
theorem rows5598 : actualRows5598=WordField.canonicalRows actualModulus 5598 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5598 : actualRows5598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5598=2820 := by core033_kernel_decide
theorem rows5599 : actualRows5599=WordField.canonicalRows actualModulus 5599 (.bnot 5598) := by core033_kernel_decide
theorem stats5599 : actualRows5599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5599=6276 := by core033_kernel_decide
def partRows85 : List R1CS.Row := actualRows5536++actualRows5537++actualRows5538++actualRows5539++actualRows5540++actualRows5541++actualRows5542++actualRows5543++actualRows5544++actualRows5545++actualRows5546++actualRows5547++actualRows5548++actualRows5549++actualRows5550++actualRows5551++actualRows5552++actualRows5553++actualRows5554++actualRows5555++actualRows5556++actualRows5557++actualRows5558++actualRows5559++actualRows5560++actualRows5561++actualRows5562++actualRows5563++actualRows5564++actualRows5565++actualRows5566++actualRows5567++actualRows5568++actualRows5569++actualRows5570++actualRows5571++actualRows5572++actualRows5573++actualRows5574++actualRows5575++actualRows5576++actualRows5577++actualRows5578++actualRows5579++actualRows5580++actualRows5581++actualRows5582++actualRows5583++actualRows5584++actualRows5585++actualRows5586++actualRows5587++actualRows5588++actualRows5589++actualRows5590++actualRows5591++actualRows5592++actualRows5593++actualRows5594++actualRows5595++actualRows5596++actualRows5597++actualRows5598++actualRows5599
def partOps85 : List WordIR.Op := [.literal (BitVec.ofNat 32 128),.band 5535 5536,.literal (BitVec.ofNat 32 2),.bxor 616 5538,.literal (BitVec.ofNat 32 0),.bnot 5540,.band 5539 5541,.literal (BitVec.ofNat 32 2),.bxor 616 5543,.literal (BitVec.ofNat 32 0),.bnot 5545,.bxor 5544 5546,.literal (BitVec.ofNat 32 2),.bxor 616 5548,.literal (BitVec.ofNat 32 0),.bnot 5550,.badd 5549 5551,.bnot 5552,.band 5547 5553,.bxor 5542 5554,.shr 5555 31,.literal (BitVec.ofNat 32 1),.bxor 5556 5557,.bnot 5558,.literal (BitVec.ofNat 32 1),.badd 5559 5560,.bnot 5561,.band 5562 1974,.bxor 5537 5563,.literal (BitVec.ofNat 32 2),.bxor 616 5565,.literal (BitVec.ofNat 32 0),.bnot 5567,.band 5566 5568,.literal (BitVec.ofNat 32 2),.bxor 616 5570,.literal (BitVec.ofNat 32 0),.bnot 5572,.bxor 5571 5573,.literal (BitVec.ofNat 32 2),.bxor 616 5575,.literal (BitVec.ofNat 32 0),.bnot 5577,.badd 5576 5578,.bnot 5579,.band 5574 5580,.bxor 5569 5581,.shr 5582 31,.literal (BitVec.ofNat 32 1),.bxor 5583 5584,.bnot 5585,.literal (BitVec.ofNat 32 1),.badd 5586 5587,.literal (BitVec.ofNat 32 0),.band 5588 5589,.literal (BitVec.ofNat 32 2),.bxor 616 5591,.literal (BitVec.ofNat 32 0),.bnot 5593,.band 5592 5594,.literal (BitVec.ofNat 32 2),.bxor 616 5596,.literal (BitVec.ofNat 32 0),.bnot 5598]
theorem partExact85 : partRows85=WordField.rows actualModulus 5536 partOps85 := by
  simp only [partRows85,partOps85,WordField.rows,rows5536,rows5537,rows5538,rows5539,rows5540,rows5541,rows5542,rows5543,rows5544,rows5545,rows5546,rows5547,rows5548,rows5549,rows5550,rows5551,rows5552,rows5553,rows5554,rows5555,rows5556,rows5557,rows5558,rows5559,rows5560,rows5561,rows5562,rows5563,rows5564,rows5565,rows5566,rows5567,rows5568,rows5569,rows5570,rows5571,rows5572,rows5573,rows5574,rows5575,rows5576,rows5577,rows5578,rows5579,rows5580,rows5581,rows5582,rows5583,rows5584,rows5585,rows5586,rows5587,rows5588,rows5589,rows5590,rows5591,rows5592,rows5593,rows5594,rows5595,rows5596,rows5597,rows5598,rows5599,List.append_assoc,List.append_nil]
theorem partLength85 : partOps85.length=64 := by decide
theorem partStats85 : partRows85.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows85=324312 := by
  simp only [partRows85,List.length_append,MatrixRowBlocks.rows_weight_append,stats5536.1,stats5536.2,stats5537.1,stats5537.2,stats5538.1,stats5538.2,stats5539.1,stats5539.2,stats5540.1,stats5540.2,stats5541.1,stats5541.2,stats5542.1,stats5542.2,stats5543.1,stats5543.2,stats5544.1,stats5544.2,stats5545.1,stats5545.2,stats5546.1,stats5546.2,stats5547.1,stats5547.2,stats5548.1,stats5548.2,stats5549.1,stats5549.2,stats5550.1,stats5550.2,stats5551.1,stats5551.2,stats5552.1,stats5552.2,stats5553.1,stats5553.2,stats5554.1,stats5554.2,stats5555.1,stats5555.2,stats5556.1,stats5556.2,stats5557.1,stats5557.2,stats5558.1,stats5558.2,stats5559.1,stats5559.2,stats5560.1,stats5560.2,stats5561.1,stats5561.2,stats5562.1,stats5562.2,stats5563.1,stats5563.2,stats5564.1,stats5564.2,stats5565.1,stats5565.2,stats5566.1,stats5566.2,stats5567.1,stats5567.2,stats5568.1,stats5568.2,stats5569.1,stats5569.2,stats5570.1,stats5570.2,stats5571.1,stats5571.2,stats5572.1,stats5572.2,stats5573.1,stats5573.2,stats5574.1,stats5574.2,stats5575.1,stats5575.2,stats5576.1,stats5576.2,stats5577.1,stats5577.2,stats5578.1,stats5578.2,stats5579.1,stats5579.2,stats5580.1,stats5580.2,stats5581.1,stats5581.2,stats5582.1,stats5582.2,stats5583.1,stats5583.2,stats5584.1,stats5584.2,stats5585.1,stats5585.2,stats5586.1,stats5586.2,stats5587.1,stats5587.2,stats5588.1,stats5588.2,stats5589.1,stats5589.2,stats5590.1,stats5590.2,stats5591.1,stats5591.2,stats5592.1,stats5592.2,stats5593.1,stats5593.2,stats5594.1,stats5594.2,stats5595.1,stats5595.2,stats5596.1,stats5596.2,stats5597.1,stats5597.2,stats5598.1,stats5598.2,stats5599.1,stats5599.2]
  decide
end PairedPathRoundCheckedRows
