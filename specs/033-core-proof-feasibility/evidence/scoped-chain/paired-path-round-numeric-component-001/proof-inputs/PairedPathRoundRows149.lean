import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData150
import PairedPathRoundInstructionMatrixData151
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9632 : actualRows9632=WordField.canonicalRows actualModulus 9632 (.band 9610 9556) := by core033_kernel_decide
theorem stats9632 : actualRows9632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9632=5124 := by core033_kernel_decide
theorem rows9633 : actualRows9633=WordField.canonicalRows actualModulus 9633 (.bxor 9631 9632) := by core033_kernel_decide
theorem stats9633 : actualRows9633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9633=7428 := by core033_kernel_decide
theorem rows9634 : actualRows9634=WordField.canonicalRows actualModulus 9634 (.band 9583 9556) := by core033_kernel_decide
theorem stats9634 : actualRows9634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9634=5124 := by core033_kernel_decide
theorem rows9635 : actualRows9635=WordField.canonicalRows actualModulus 9635 (.bxor 9633 9634) := by core033_kernel_decide
theorem stats9635 : actualRows9635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9635=7428 := by core033_kernel_decide
theorem rows9636 : actualRows9636=WordField.canonicalRows actualModulus 9636 (.badd 9630 9635) := by core033_kernel_decide
theorem stats9636 : actualRows9636.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9636=5388 := by core033_kernel_decide
theorem rows9637 : actualRows9637=WordField.canonicalRows actualModulus 9637 (.badd 9625 9636) := by core033_kernel_decide
theorem stats9637 : actualRows9637.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9637=5388 := by core033_kernel_decide
theorem rows9638 : actualRows9638=WordField.canonicalRows actualModulus 9638 (.badd 9529 9625) := by core033_kernel_decide
theorem stats9638 : actualRows9638.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9638=5388 := by core033_kernel_decide
theorem rows9639 : actualRows9639=WordField.canonicalRows actualModulus 9639 (.rotr 9638 6) := by core033_kernel_decide
theorem stats9639 : actualRows9639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9639=5124 := by core033_kernel_decide
theorem rows9640 : actualRows9640=WordField.canonicalRows actualModulus 9640 (.rotr 9638 11) := by core033_kernel_decide
theorem stats9640 : actualRows9640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9640=5124 := by core033_kernel_decide
theorem rows9641 : actualRows9641=WordField.canonicalRows actualModulus 9641 (.bxor 9639 9640) := by core033_kernel_decide
theorem stats9641 : actualRows9641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9641=7428 := by core033_kernel_decide
theorem rows9642 : actualRows9642=WordField.canonicalRows actualModulus 9642 (.rotr 9638 25) := by core033_kernel_decide
theorem stats9642 : actualRows9642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9642=5124 := by core033_kernel_decide
theorem rows9643 : actualRows9643=WordField.canonicalRows actualModulus 9643 (.bxor 9641 9642) := by core033_kernel_decide
theorem stats9643 : actualRows9643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9643=7428 := by core033_kernel_decide
theorem rows9644 : actualRows9644=WordField.canonicalRows actualModulus 9644 (.badd 9557 9643) := by core033_kernel_decide
theorem stats9644 : actualRows9644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9644=5388 := by core033_kernel_decide
theorem rows9645 : actualRows9645=WordField.canonicalRows actualModulus 9645 (.band 9638 9611) := by core033_kernel_decide
theorem stats9645 : actualRows9645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9645=5124 := by core033_kernel_decide
theorem rows9646 : actualRows9646=WordField.canonicalRows actualModulus 9646 (.bnot 9638) := by core033_kernel_decide
theorem stats9646 : actualRows9646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9646=6276 := by core033_kernel_decide
theorem rows9647 : actualRows9647=WordField.canonicalRows actualModulus 9647 (.band 9646 9584) := by core033_kernel_decide
theorem stats9647 : actualRows9647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9647=5124 := by core033_kernel_decide
theorem rows9648 : actualRows9648=WordField.canonicalRows actualModulus 9648 (.bxor 9645 9647) := by core033_kernel_decide
theorem stats9648 : actualRows9648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9648=7428 := by core033_kernel_decide
theorem rows9649 : actualRows9649=WordField.canonicalRows actualModulus 9649 (.badd 9644 9648) := by core033_kernel_decide
theorem stats9649 : actualRows9649.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9649=5388 := by core033_kernel_decide
theorem rows9650 : actualRows9650=WordField.canonicalRows actualModulus 9650 (.literal (BitVec.ofNat 32 2227730452)) := by core033_kernel_decide
theorem stats9650 : actualRows9650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9650=3612 := by core033_kernel_decide
theorem rows9651 : actualRows9651=WordField.canonicalRows actualModulus 9651 (.badd 9649 9650) := by core033_kernel_decide
theorem stats9651 : actualRows9651.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9651=5388 := by core033_kernel_decide
theorem rows9652 : actualRows9652=WordField.canonicalRows actualModulus 9652 (.badd 9651 8007) := by core033_kernel_decide
theorem stats9652 : actualRows9652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9652=5388 := by core033_kernel_decide
theorem rows9653 : actualRows9653=WordField.canonicalRows actualModulus 9653 (.rotr 9637 2) := by core033_kernel_decide
theorem stats9653 : actualRows9653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9653=5124 := by core033_kernel_decide
theorem rows9654 : actualRows9654=WordField.canonicalRows actualModulus 9654 (.rotr 9637 13) := by core033_kernel_decide
theorem stats9654 : actualRows9654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9654=5124 := by core033_kernel_decide
theorem rows9655 : actualRows9655=WordField.canonicalRows actualModulus 9655 (.bxor 9653 9654) := by core033_kernel_decide
theorem stats9655 : actualRows9655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9655=7428 := by core033_kernel_decide
theorem rows9656 : actualRows9656=WordField.canonicalRows actualModulus 9656 (.rotr 9637 22) := by core033_kernel_decide
theorem stats9656 : actualRows9656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9656=5124 := by core033_kernel_decide
theorem rows9657 : actualRows9657=WordField.canonicalRows actualModulus 9657 (.bxor 9655 9656) := by core033_kernel_decide
theorem stats9657 : actualRows9657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9657=7428 := by core033_kernel_decide
theorem rows9658 : actualRows9658=WordField.canonicalRows actualModulus 9658 (.band 9637 9610) := by core033_kernel_decide
theorem stats9658 : actualRows9658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9658=5124 := by core033_kernel_decide
theorem rows9659 : actualRows9659=WordField.canonicalRows actualModulus 9659 (.band 9637 9583) := by core033_kernel_decide
theorem stats9659 : actualRows9659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9659=5124 := by core033_kernel_decide
theorem rows9660 : actualRows9660=WordField.canonicalRows actualModulus 9660 (.bxor 9658 9659) := by core033_kernel_decide
theorem stats9660 : actualRows9660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9660=7428 := by core033_kernel_decide
theorem rows9661 : actualRows9661=WordField.canonicalRows actualModulus 9661 (.band 9610 9583) := by core033_kernel_decide
theorem stats9661 : actualRows9661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9661=5124 := by core033_kernel_decide
theorem rows9662 : actualRows9662=WordField.canonicalRows actualModulus 9662 (.bxor 9660 9661) := by core033_kernel_decide
theorem stats9662 : actualRows9662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9662=7428 := by core033_kernel_decide
theorem rows9663 : actualRows9663=WordField.canonicalRows actualModulus 9663 (.badd 9657 9662) := by core033_kernel_decide
theorem stats9663 : actualRows9663.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9663=5388 := by core033_kernel_decide
theorem rows9664 : actualRows9664=WordField.canonicalRows actualModulus 9664 (.badd 9652 9663) := by core033_kernel_decide
theorem stats9664 : actualRows9664.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9664=5388 := by core033_kernel_decide
theorem rows9665 : actualRows9665=WordField.canonicalRows actualModulus 9665 (.badd 9556 9652) := by core033_kernel_decide
theorem stats9665 : actualRows9665.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9665=5388 := by core033_kernel_decide
theorem rows9666 : actualRows9666=WordField.canonicalRows actualModulus 9666 (.rotr 9665 6) := by core033_kernel_decide
theorem stats9666 : actualRows9666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9666=5124 := by core033_kernel_decide
theorem rows9667 : actualRows9667=WordField.canonicalRows actualModulus 9667 (.rotr 9665 11) := by core033_kernel_decide
theorem stats9667 : actualRows9667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9667=5124 := by core033_kernel_decide
theorem rows9668 : actualRows9668=WordField.canonicalRows actualModulus 9668 (.bxor 9666 9667) := by core033_kernel_decide
theorem stats9668 : actualRows9668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9668=7428 := by core033_kernel_decide
theorem rows9669 : actualRows9669=WordField.canonicalRows actualModulus 9669 (.rotr 9665 25) := by core033_kernel_decide
theorem stats9669 : actualRows9669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9669=5124 := by core033_kernel_decide
theorem rows9670 : actualRows9670=WordField.canonicalRows actualModulus 9670 (.bxor 9668 9669) := by core033_kernel_decide
theorem stats9670 : actualRows9670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9670=7428 := by core033_kernel_decide
theorem rows9671 : actualRows9671=WordField.canonicalRows actualModulus 9671 (.badd 9584 9670) := by core033_kernel_decide
theorem stats9671 : actualRows9671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9671=5388 := by core033_kernel_decide
theorem rows9672 : actualRows9672=WordField.canonicalRows actualModulus 9672 (.band 9665 9638) := by core033_kernel_decide
theorem stats9672 : actualRows9672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9672=5124 := by core033_kernel_decide
theorem rows9673 : actualRows9673=WordField.canonicalRows actualModulus 9673 (.bnot 9665) := by core033_kernel_decide
theorem stats9673 : actualRows9673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9673=6276 := by core033_kernel_decide
theorem rows9674 : actualRows9674=WordField.canonicalRows actualModulus 9674 (.band 9673 9611) := by core033_kernel_decide
theorem stats9674 : actualRows9674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9674=5124 := by core033_kernel_decide
theorem rows9675 : actualRows9675=WordField.canonicalRows actualModulus 9675 (.bxor 9672 9674) := by core033_kernel_decide
theorem stats9675 : actualRows9675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9675=7428 := by core033_kernel_decide
theorem rows9676 : actualRows9676=WordField.canonicalRows actualModulus 9676 (.badd 9671 9675) := by core033_kernel_decide
theorem stats9676 : actualRows9676.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9676=5388 := by core033_kernel_decide
theorem rows9677 : actualRows9677=WordField.canonicalRows actualModulus 9677 (.literal (BitVec.ofNat 32 2361852424)) := by core033_kernel_decide
theorem stats9677 : actualRows9677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9677=3540 := by core033_kernel_decide
theorem rows9678 : actualRows9678=WordField.canonicalRows actualModulus 9678 (.badd 9676 9677) := by core033_kernel_decide
theorem stats9678 : actualRows9678.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9678=5388 := by core033_kernel_decide
theorem rows9679 : actualRows9679=WordField.canonicalRows actualModulus 9679 (.badd 9678 8020) := by core033_kernel_decide
theorem stats9679 : actualRows9679.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9679=5388 := by core033_kernel_decide
theorem rows9680 : actualRows9680=WordField.canonicalRows actualModulus 9680 (.rotr 9664 2) := by core033_kernel_decide
theorem stats9680 : actualRows9680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9680=5124 := by core033_kernel_decide
theorem rows9681 : actualRows9681=WordField.canonicalRows actualModulus 9681 (.rotr 9664 13) := by core033_kernel_decide
theorem stats9681 : actualRows9681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9681=5124 := by core033_kernel_decide
theorem rows9682 : actualRows9682=WordField.canonicalRows actualModulus 9682 (.bxor 9680 9681) := by core033_kernel_decide
theorem stats9682 : actualRows9682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9682=7428 := by core033_kernel_decide
theorem rows9683 : actualRows9683=WordField.canonicalRows actualModulus 9683 (.rotr 9664 22) := by core033_kernel_decide
theorem stats9683 : actualRows9683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9683=5124 := by core033_kernel_decide
theorem rows9684 : actualRows9684=WordField.canonicalRows actualModulus 9684 (.bxor 9682 9683) := by core033_kernel_decide
theorem stats9684 : actualRows9684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9684=7428 := by core033_kernel_decide
theorem rows9685 : actualRows9685=WordField.canonicalRows actualModulus 9685 (.band 9664 9637) := by core033_kernel_decide
theorem stats9685 : actualRows9685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9685=5124 := by core033_kernel_decide
theorem rows9686 : actualRows9686=WordField.canonicalRows actualModulus 9686 (.band 9664 9610) := by core033_kernel_decide
theorem stats9686 : actualRows9686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9686=5124 := by core033_kernel_decide
theorem rows9687 : actualRows9687=WordField.canonicalRows actualModulus 9687 (.bxor 9685 9686) := by core033_kernel_decide
theorem stats9687 : actualRows9687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9687=7428 := by core033_kernel_decide
theorem rows9688 : actualRows9688=WordField.canonicalRows actualModulus 9688 (.band 9637 9610) := by core033_kernel_decide
theorem stats9688 : actualRows9688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9688=5124 := by core033_kernel_decide
theorem rows9689 : actualRows9689=WordField.canonicalRows actualModulus 9689 (.bxor 9687 9688) := by core033_kernel_decide
theorem stats9689 : actualRows9689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9689=7428 := by core033_kernel_decide
theorem rows9690 : actualRows9690=WordField.canonicalRows actualModulus 9690 (.badd 9684 9689) := by core033_kernel_decide
theorem stats9690 : actualRows9690.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9690=5388 := by core033_kernel_decide
theorem rows9691 : actualRows9691=WordField.canonicalRows actualModulus 9691 (.badd 9679 9690) := by core033_kernel_decide
theorem stats9691 : actualRows9691.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9691=5388 := by core033_kernel_decide
theorem rows9692 : actualRows9692=WordField.canonicalRows actualModulus 9692 (.badd 9583 9679) := by core033_kernel_decide
theorem stats9692 : actualRows9692.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9692=5388 := by core033_kernel_decide
theorem rows9693 : actualRows9693=WordField.canonicalRows actualModulus 9693 (.rotr 9692 6) := by core033_kernel_decide
theorem stats9693 : actualRows9693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9693=5124 := by core033_kernel_decide
theorem rows9694 : actualRows9694=WordField.canonicalRows actualModulus 9694 (.rotr 9692 11) := by core033_kernel_decide
theorem stats9694 : actualRows9694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9694=5124 := by core033_kernel_decide
theorem rows9695 : actualRows9695=WordField.canonicalRows actualModulus 9695 (.bxor 9693 9694) := by core033_kernel_decide
theorem stats9695 : actualRows9695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9695=7428 := by core033_kernel_decide
def partRows149 : List R1CS.Row := actualRows9632++actualRows9633++actualRows9634++actualRows9635++actualRows9636++actualRows9637++actualRows9638++actualRows9639++actualRows9640++actualRows9641++actualRows9642++actualRows9643++actualRows9644++actualRows9645++actualRows9646++actualRows9647++actualRows9648++actualRows9649++actualRows9650++actualRows9651++actualRows9652++actualRows9653++actualRows9654++actualRows9655++actualRows9656++actualRows9657++actualRows9658++actualRows9659++actualRows9660++actualRows9661++actualRows9662++actualRows9663++actualRows9664++actualRows9665++actualRows9666++actualRows9667++actualRows9668++actualRows9669++actualRows9670++actualRows9671++actualRows9672++actualRows9673++actualRows9674++actualRows9675++actualRows9676++actualRows9677++actualRows9678++actualRows9679++actualRows9680++actualRows9681++actualRows9682++actualRows9683++actualRows9684++actualRows9685++actualRows9686++actualRows9687++actualRows9688++actualRows9689++actualRows9690++actualRows9691++actualRows9692++actualRows9693++actualRows9694++actualRows9695
def partOps149 : List WordIR.Op := [.band 9610 9556,.bxor 9631 9632,.band 9583 9556,.bxor 9633 9634,.badd 9630 9635,.badd 9625 9636,.badd 9529 9625,.rotr 9638 6,.rotr 9638 11,.bxor 9639 9640,.rotr 9638 25,.bxor 9641 9642,.badd 9557 9643,.band 9638 9611,.bnot 9638,.band 9646 9584,.bxor 9645 9647,.badd 9644 9648,.literal (BitVec.ofNat 32 2227730452),.badd 9649 9650,.badd 9651 8007,.rotr 9637 2,.rotr 9637 13,.bxor 9653 9654,.rotr 9637 22,.bxor 9655 9656,.band 9637 9610,.band 9637 9583,.bxor 9658 9659,.band 9610 9583,.bxor 9660 9661,.badd 9657 9662,.badd 9652 9663,.badd 9556 9652,.rotr 9665 6,.rotr 9665 11,.bxor 9666 9667,.rotr 9665 25,.bxor 9668 9669,.badd 9584 9670,.band 9665 9638,.bnot 9665,.band 9673 9611,.bxor 9672 9674,.badd 9671 9675,.literal (BitVec.ofNat 32 2361852424),.badd 9676 9677,.badd 9678 8020,.rotr 9664 2,.rotr 9664 13,.bxor 9680 9681,.rotr 9664 22,.bxor 9682 9683,.band 9664 9637,.band 9664 9610,.bxor 9685 9686,.band 9637 9610,.bxor 9687 9688,.badd 9684 9689,.badd 9679 9690,.badd 9583 9679,.rotr 9692 6,.rotr 9692 11,.bxor 9693 9694]
theorem partExact149 : partRows149=WordField.rows actualModulus 9632 partOps149 := by
  simp only [partRows149,partOps149,WordField.rows,rows9632,rows9633,rows9634,rows9635,rows9636,rows9637,rows9638,rows9639,rows9640,rows9641,rows9642,rows9643,rows9644,rows9645,rows9646,rows9647,rows9648,rows9649,rows9650,rows9651,rows9652,rows9653,rows9654,rows9655,rows9656,rows9657,rows9658,rows9659,rows9660,rows9661,rows9662,rows9663,rows9664,rows9665,rows9666,rows9667,rows9668,rows9669,rows9670,rows9671,rows9672,rows9673,rows9674,rows9675,rows9676,rows9677,rows9678,rows9679,rows9680,rows9681,rows9682,rows9683,rows9684,rows9685,rows9686,rows9687,rows9688,rows9689,rows9690,rows9691,rows9692,rows9693,rows9694,rows9695,List.append_assoc,List.append_nil]
theorem partLength149 : partOps149.length=64 := by decide
theorem partStats149 : partRows149.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows149=370800 := by
  simp only [partRows149,List.length_append,MatrixRowBlocks.rows_weight_append,stats9632.1,stats9632.2,stats9633.1,stats9633.2,stats9634.1,stats9634.2,stats9635.1,stats9635.2,stats9636.1,stats9636.2,stats9637.1,stats9637.2,stats9638.1,stats9638.2,stats9639.1,stats9639.2,stats9640.1,stats9640.2,stats9641.1,stats9641.2,stats9642.1,stats9642.2,stats9643.1,stats9643.2,stats9644.1,stats9644.2,stats9645.1,stats9645.2,stats9646.1,stats9646.2,stats9647.1,stats9647.2,stats9648.1,stats9648.2,stats9649.1,stats9649.2,stats9650.1,stats9650.2,stats9651.1,stats9651.2,stats9652.1,stats9652.2,stats9653.1,stats9653.2,stats9654.1,stats9654.2,stats9655.1,stats9655.2,stats9656.1,stats9656.2,stats9657.1,stats9657.2,stats9658.1,stats9658.2,stats9659.1,stats9659.2,stats9660.1,stats9660.2,stats9661.1,stats9661.2,stats9662.1,stats9662.2,stats9663.1,stats9663.2,stats9664.1,stats9664.2,stats9665.1,stats9665.2,stats9666.1,stats9666.2,stats9667.1,stats9667.2,stats9668.1,stats9668.2,stats9669.1,stats9669.2,stats9670.1,stats9670.2,stats9671.1,stats9671.2,stats9672.1,stats9672.2,stats9673.1,stats9673.2,stats9674.1,stats9674.2,stats9675.1,stats9675.2,stats9676.1,stats9676.2,stats9677.1,stats9677.2,stats9678.1,stats9678.2,stats9679.1,stats9679.2,stats9680.1,stats9680.2,stats9681.1,stats9681.2,stats9682.1,stats9682.2,stats9683.1,stats9683.2,stats9684.1,stats9684.2,stats9685.1,stats9685.2,stats9686.1,stats9686.2,stats9687.1,stats9687.2,stats9688.1,stats9688.2,stats9689.1,stats9689.2,stats9690.1,stats9690.2,stats9691.1,stats9691.2,stats9692.1,stats9692.2,stats9693.1,stats9693.2,stats9694.1,stats9694.2,stats9695.1,stats9695.2]
  decide
end PairedPathRoundCheckedRows
