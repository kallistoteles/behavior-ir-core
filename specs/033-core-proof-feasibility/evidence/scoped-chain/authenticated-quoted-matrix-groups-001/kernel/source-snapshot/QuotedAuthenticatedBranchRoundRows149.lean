import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData150
import AuthenticatedBranchRoundInstructionMatrixData151
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9654 : actualRows9654=WordField.canonicalRows actualModulus 9654 (.bnot 9646) := by core033_kernel_decide
theorem stats9654 : actualRows9654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9654=6276 := by core033_kernel_decide
theorem rows9655 : actualRows9655=WordField.canonicalRows actualModulus 9655 (.band 9654 9592) := by core033_kernel_decide
theorem stats9655 : actualRows9655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9655=5124 := by core033_kernel_decide
theorem rows9656 : actualRows9656=WordField.canonicalRows actualModulus 9656 (.bxor 9653 9655) := by core033_kernel_decide
theorem stats9656 : actualRows9656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9656=7428 := by core033_kernel_decide
theorem rows9657 : actualRows9657=WordField.canonicalRows actualModulus 9657 (.badd 9652 9656) := by core033_kernel_decide
theorem stats9657 : actualRows9657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9657=5388 := by core033_kernel_decide
theorem rows9658 : actualRows9658=WordField.canonicalRows actualModulus 9658 (.literal (BitVec.ofNat 32 773529912)) := by core033_kernel_decide
theorem stats9658 : actualRows9658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9658=3756 := by core033_kernel_decide
theorem rows9659 : actualRows9659=WordField.canonicalRows actualModulus 9659 (.badd 9657 9658) := by core033_kernel_decide
theorem stats9659 : actualRows9659.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9659=5388 := by core033_kernel_decide
theorem rows9660 : actualRows9660=WordField.canonicalRows actualModulus 9660 (.badd 9659 8365) := by core033_kernel_decide
theorem stats9660 : actualRows9660.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9660=5388 := by core033_kernel_decide
theorem rows9661 : actualRows9661=WordField.canonicalRows actualModulus 9661 (.rotr 9645 2) := by core033_kernel_decide
theorem stats9661 : actualRows9661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9661=5124 := by core033_kernel_decide
theorem rows9662 : actualRows9662=WordField.canonicalRows actualModulus 9662 (.rotr 9645 13) := by core033_kernel_decide
theorem stats9662 : actualRows9662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9662=5124 := by core033_kernel_decide
theorem rows9663 : actualRows9663=WordField.canonicalRows actualModulus 9663 (.bxor 9661 9662) := by core033_kernel_decide
theorem stats9663 : actualRows9663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9663=7428 := by core033_kernel_decide
theorem rows9664 : actualRows9664=WordField.canonicalRows actualModulus 9664 (.rotr 9645 22) := by core033_kernel_decide
theorem stats9664 : actualRows9664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9664=5124 := by core033_kernel_decide
theorem rows9665 : actualRows9665=WordField.canonicalRows actualModulus 9665 (.bxor 9663 9664) := by core033_kernel_decide
theorem stats9665 : actualRows9665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9665=7428 := by core033_kernel_decide
theorem rows9666 : actualRows9666=WordField.canonicalRows actualModulus 9666 (.band 9645 9618) := by core033_kernel_decide
theorem stats9666 : actualRows9666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9666=5124 := by core033_kernel_decide
theorem rows9667 : actualRows9667=WordField.canonicalRows actualModulus 9667 (.band 9645 9591) := by core033_kernel_decide
theorem stats9667 : actualRows9667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9667=5124 := by core033_kernel_decide
theorem rows9668 : actualRows9668=WordField.canonicalRows actualModulus 9668 (.bxor 9666 9667) := by core033_kernel_decide
theorem stats9668 : actualRows9668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9668=7428 := by core033_kernel_decide
theorem rows9669 : actualRows9669=WordField.canonicalRows actualModulus 9669 (.band 9618 9591) := by core033_kernel_decide
theorem stats9669 : actualRows9669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9669=5124 := by core033_kernel_decide
theorem rows9670 : actualRows9670=WordField.canonicalRows actualModulus 9670 (.bxor 9668 9669) := by core033_kernel_decide
theorem stats9670 : actualRows9670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9670=7428 := by core033_kernel_decide
theorem rows9671 : actualRows9671=WordField.canonicalRows actualModulus 9671 (.badd 9665 9670) := by core033_kernel_decide
theorem stats9671 : actualRows9671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9671=5388 := by core033_kernel_decide
theorem rows9672 : actualRows9672=WordField.canonicalRows actualModulus 9672 (.badd 9660 9671) := by core033_kernel_decide
theorem stats9672 : actualRows9672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9672=5388 := by core033_kernel_decide
theorem rows9673 : actualRows9673=WordField.canonicalRows actualModulus 9673 (.badd 9564 9660) := by core033_kernel_decide
theorem stats9673 : actualRows9673.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9673=5388 := by core033_kernel_decide
theorem rows9674 : actualRows9674=WordField.canonicalRows actualModulus 9674 (.rotr 9673 6) := by core033_kernel_decide
theorem stats9674 : actualRows9674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9674=5124 := by core033_kernel_decide
theorem rows9675 : actualRows9675=WordField.canonicalRows actualModulus 9675 (.rotr 9673 11) := by core033_kernel_decide
theorem stats9675 : actualRows9675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9675=5124 := by core033_kernel_decide
theorem rows9676 : actualRows9676=WordField.canonicalRows actualModulus 9676 (.bxor 9674 9675) := by core033_kernel_decide
theorem stats9676 : actualRows9676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9676=7428 := by core033_kernel_decide
theorem rows9677 : actualRows9677=WordField.canonicalRows actualModulus 9677 (.rotr 9673 25) := by core033_kernel_decide
theorem stats9677 : actualRows9677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9677=5124 := by core033_kernel_decide
theorem rows9678 : actualRows9678=WordField.canonicalRows actualModulus 9678 (.bxor 9676 9677) := by core033_kernel_decide
theorem stats9678 : actualRows9678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9678=7428 := by core033_kernel_decide
theorem rows9679 : actualRows9679=WordField.canonicalRows actualModulus 9679 (.badd 9592 9678) := by core033_kernel_decide
theorem stats9679 : actualRows9679.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9679=5388 := by core033_kernel_decide
theorem rows9680 : actualRows9680=WordField.canonicalRows actualModulus 9680 (.band 9673 9646) := by core033_kernel_decide
theorem stats9680 : actualRows9680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9680=5124 := by core033_kernel_decide
theorem rows9681 : actualRows9681=WordField.canonicalRows actualModulus 9681 (.bnot 9673) := by core033_kernel_decide
theorem stats9681 : actualRows9681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9681=6276 := by core033_kernel_decide
theorem rows9682 : actualRows9682=WordField.canonicalRows actualModulus 9682 (.band 9681 9619) := by core033_kernel_decide
theorem stats9682 : actualRows9682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9682=5124 := by core033_kernel_decide
theorem rows9683 : actualRows9683=WordField.canonicalRows actualModulus 9683 (.bxor 9680 9682) := by core033_kernel_decide
theorem stats9683 : actualRows9683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9683=7428 := by core033_kernel_decide
theorem rows9684 : actualRows9684=WordField.canonicalRows actualModulus 9684 (.badd 9679 9683) := by core033_kernel_decide
theorem stats9684 : actualRows9684.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9684=5388 := by core033_kernel_decide
theorem rows9685 : actualRows9685=WordField.canonicalRows actualModulus 9685 (.literal (BitVec.ofNat 32 1294757372)) := by core033_kernel_decide
theorem stats9685 : actualRows9685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9685=4116 := by core033_kernel_decide
theorem rows9686 : actualRows9686=WordField.canonicalRows actualModulus 9686 (.badd 9684 9685) := by core033_kernel_decide
theorem stats9686 : actualRows9686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9686=5388 := by core033_kernel_decide
theorem rows9687 : actualRows9687=WordField.canonicalRows actualModulus 9687 (.badd 9686 8378) := by core033_kernel_decide
theorem stats9687 : actualRows9687.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9687=5388 := by core033_kernel_decide
theorem rows9688 : actualRows9688=WordField.canonicalRows actualModulus 9688 (.rotr 9672 2) := by core033_kernel_decide
theorem stats9688 : actualRows9688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9688=5124 := by core033_kernel_decide
theorem rows9689 : actualRows9689=WordField.canonicalRows actualModulus 9689 (.rotr 9672 13) := by core033_kernel_decide
theorem stats9689 : actualRows9689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9689=5124 := by core033_kernel_decide
theorem rows9690 : actualRows9690=WordField.canonicalRows actualModulus 9690 (.bxor 9688 9689) := by core033_kernel_decide
theorem stats9690 : actualRows9690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9690=7428 := by core033_kernel_decide
theorem rows9691 : actualRows9691=WordField.canonicalRows actualModulus 9691 (.rotr 9672 22) := by core033_kernel_decide
theorem stats9691 : actualRows9691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9691=5124 := by core033_kernel_decide
theorem rows9692 : actualRows9692=WordField.canonicalRows actualModulus 9692 (.bxor 9690 9691) := by core033_kernel_decide
theorem stats9692 : actualRows9692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9692=7428 := by core033_kernel_decide
theorem rows9693 : actualRows9693=WordField.canonicalRows actualModulus 9693 (.band 9672 9645) := by core033_kernel_decide
theorem stats9693 : actualRows9693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9693=5124 := by core033_kernel_decide
theorem rows9694 : actualRows9694=WordField.canonicalRows actualModulus 9694 (.band 9672 9618) := by core033_kernel_decide
theorem stats9694 : actualRows9694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9694=5124 := by core033_kernel_decide
theorem rows9695 : actualRows9695=WordField.canonicalRows actualModulus 9695 (.bxor 9693 9694) := by core033_kernel_decide
theorem stats9695 : actualRows9695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9695=7428 := by core033_kernel_decide
theorem rows9696 : actualRows9696=WordField.canonicalRows actualModulus 9696 (.band 9645 9618) := by core033_kernel_decide
theorem stats9696 : actualRows9696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9696=5124 := by core033_kernel_decide
theorem rows9697 : actualRows9697=WordField.canonicalRows actualModulus 9697 (.bxor 9695 9696) := by core033_kernel_decide
theorem stats9697 : actualRows9697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9697=7428 := by core033_kernel_decide
theorem rows9698 : actualRows9698=WordField.canonicalRows actualModulus 9698 (.badd 9692 9697) := by core033_kernel_decide
theorem stats9698 : actualRows9698.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9698=5388 := by core033_kernel_decide
theorem rows9699 : actualRows9699=WordField.canonicalRows actualModulus 9699 (.badd 9687 9698) := by core033_kernel_decide
theorem stats9699 : actualRows9699.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9699=5388 := by core033_kernel_decide
theorem rows9700 : actualRows9700=WordField.canonicalRows actualModulus 9700 (.badd 9591 9687) := by core033_kernel_decide
theorem stats9700 : actualRows9700.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9700=5388 := by core033_kernel_decide
theorem rows9701 : actualRows9701=WordField.canonicalRows actualModulus 9701 (.rotr 9700 6) := by core033_kernel_decide
theorem stats9701 : actualRows9701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9701=5124 := by core033_kernel_decide
theorem rows9702 : actualRows9702=WordField.canonicalRows actualModulus 9702 (.rotr 9700 11) := by core033_kernel_decide
theorem stats9702 : actualRows9702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9702=5124 := by core033_kernel_decide
theorem rows9703 : actualRows9703=WordField.canonicalRows actualModulus 9703 (.bxor 9701 9702) := by core033_kernel_decide
theorem stats9703 : actualRows9703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9703=7428 := by core033_kernel_decide
theorem rows9704 : actualRows9704=WordField.canonicalRows actualModulus 9704 (.rotr 9700 25) := by core033_kernel_decide
theorem stats9704 : actualRows9704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9704=5124 := by core033_kernel_decide
theorem rows9705 : actualRows9705=WordField.canonicalRows actualModulus 9705 (.bxor 9703 9704) := by core033_kernel_decide
theorem stats9705 : actualRows9705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9705=7428 := by core033_kernel_decide
theorem rows9706 : actualRows9706=WordField.canonicalRows actualModulus 9706 (.badd 9619 9705) := by core033_kernel_decide
theorem stats9706 : actualRows9706.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9706=5388 := by core033_kernel_decide
theorem rows9707 : actualRows9707=WordField.canonicalRows actualModulus 9707 (.band 9700 9673) := by core033_kernel_decide
theorem stats9707 : actualRows9707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9707=5124 := by core033_kernel_decide
theorem rows9708 : actualRows9708=WordField.canonicalRows actualModulus 9708 (.bnot 9700) := by core033_kernel_decide
theorem stats9708 : actualRows9708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9708=6276 := by core033_kernel_decide
theorem rows9709 : actualRows9709=WordField.canonicalRows actualModulus 9709 (.band 9708 9646) := by core033_kernel_decide
theorem stats9709 : actualRows9709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9709=5124 := by core033_kernel_decide
theorem rows9710 : actualRows9710=WordField.canonicalRows actualModulus 9710 (.bxor 9707 9709) := by core033_kernel_decide
theorem stats9710 : actualRows9710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9710=7428 := by core033_kernel_decide
theorem rows9711 : actualRows9711=WordField.canonicalRows actualModulus 9711 (.badd 9706 9710) := by core033_kernel_decide
theorem stats9711 : actualRows9711.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9711=5388 := by core033_kernel_decide
theorem rows9712 : actualRows9712=WordField.canonicalRows actualModulus 9712 (.literal (BitVec.ofNat 32 1396182291)) := by core033_kernel_decide
theorem stats9712 : actualRows9712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9712=3756 := by core033_kernel_decide
theorem rows9713 : actualRows9713=WordField.canonicalRows actualModulus 9713 (.badd 9711 9712) := by core033_kernel_decide
theorem stats9713 : actualRows9713.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9713=5388 := by core033_kernel_decide
theorem rows9714 : actualRows9714=WordField.canonicalRows actualModulus 9714 (.badd 9713 8391) := by core033_kernel_decide
theorem stats9714 : actualRows9714.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9714=5388 := by core033_kernel_decide
theorem rows9715 : actualRows9715=WordField.canonicalRows actualModulus 9715 (.rotr 9699 2) := by core033_kernel_decide
theorem stats9715 : actualRows9715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9715=5124 := by core033_kernel_decide
theorem rows9716 : actualRows9716=WordField.canonicalRows actualModulus 9716 (.rotr 9699 13) := by core033_kernel_decide
theorem stats9716 : actualRows9716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9716=5124 := by core033_kernel_decide
theorem rows9717 : actualRows9717=WordField.canonicalRows actualModulus 9717 (.bxor 9715 9716) := by core033_kernel_decide
theorem stats9717 : actualRows9717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9717=7428 := by core033_kernel_decide
def partRows149 : List R1CS.Row := actualRows9654++actualRows9655++actualRows9656++actualRows9657++actualRows9658++actualRows9659++actualRows9660++actualRows9661++actualRows9662++actualRows9663++actualRows9664++actualRows9665++actualRows9666++actualRows9667++actualRows9668++actualRows9669++actualRows9670++actualRows9671++actualRows9672++actualRows9673++actualRows9674++actualRows9675++actualRows9676++actualRows9677++actualRows9678++actualRows9679++actualRows9680++actualRows9681++actualRows9682++actualRows9683++actualRows9684++actualRows9685++actualRows9686++actualRows9687++actualRows9688++actualRows9689++actualRows9690++actualRows9691++actualRows9692++actualRows9693++actualRows9694++actualRows9695++actualRows9696++actualRows9697++actualRows9698++actualRows9699++actualRows9700++actualRows9701++actualRows9702++actualRows9703++actualRows9704++actualRows9705++actualRows9706++actualRows9707++actualRows9708++actualRows9709++actualRows9710++actualRows9711++actualRows9712++actualRows9713++actualRows9714++actualRows9715++actualRows9716++actualRows9717
def partOps149 : List WordIR.Op := [.bnot 9646,.band 9654 9592,.bxor 9653 9655,.badd 9652 9656,.literal (BitVec.ofNat 32 773529912),.badd 9657 9658,.badd 9659 8365,.rotr 9645 2,.rotr 9645 13,.bxor 9661 9662,.rotr 9645 22,.bxor 9663 9664,.band 9645 9618,.band 9645 9591,.bxor 9666 9667,.band 9618 9591,.bxor 9668 9669,.badd 9665 9670,.badd 9660 9671,.badd 9564 9660,.rotr 9673 6,.rotr 9673 11,.bxor 9674 9675,.rotr 9673 25,.bxor 9676 9677,.badd 9592 9678,.band 9673 9646,.bnot 9673,.band 9681 9619,.bxor 9680 9682,.badd 9679 9683,.literal (BitVec.ofNat 32 1294757372),.badd 9684 9685,.badd 9686 8378,.rotr 9672 2,.rotr 9672 13,.bxor 9688 9689,.rotr 9672 22,.bxor 9690 9691,.band 9672 9645,.band 9672 9618,.bxor 9693 9694,.band 9645 9618,.bxor 9695 9696,.badd 9692 9697,.badd 9687 9698,.badd 9591 9687,.rotr 9700 6,.rotr 9700 11,.bxor 9701 9702,.rotr 9700 25,.bxor 9703 9704,.badd 9619 9705,.band 9700 9673,.bnot 9700,.band 9708 9646,.bxor 9707 9709,.badd 9706 9710,.literal (BitVec.ofNat 32 1396182291),.badd 9711 9712,.badd 9713 8391,.rotr 9699 2,.rotr 9699 13,.bxor 9715 9716]
theorem partExact149 : partRows149=WordField.rows actualModulus 9654 partOps149 := by
  simp only [partRows149,partOps149,WordField.rows,rows9654,rows9655,rows9656,rows9657,rows9658,rows9659,rows9660,rows9661,rows9662,rows9663,rows9664,rows9665,rows9666,rows9667,rows9668,rows9669,rows9670,rows9671,rows9672,rows9673,rows9674,rows9675,rows9676,rows9677,rows9678,rows9679,rows9680,rows9681,rows9682,rows9683,rows9684,rows9685,rows9686,rows9687,rows9688,rows9689,rows9690,rows9691,rows9692,rows9693,rows9694,rows9695,rows9696,rows9697,rows9698,rows9699,rows9700,rows9701,rows9702,rows9703,rows9704,rows9705,rows9706,rows9707,rows9708,rows9709,rows9710,rows9711,rows9712,rows9713,rows9714,rows9715,rows9716,rows9717,List.append_assoc,List.append_nil]
theorem partLength149 : partOps149.length=64 := by decide
theorem partStats149 : partRows149.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows149=369000 := by
  simp only [partRows149,List.length_append,MatrixRowBlocks.rows_weight_append,stats9654.1,stats9654.2,stats9655.1,stats9655.2,stats9656.1,stats9656.2,stats9657.1,stats9657.2,stats9658.1,stats9658.2,stats9659.1,stats9659.2,stats9660.1,stats9660.2,stats9661.1,stats9661.2,stats9662.1,stats9662.2,stats9663.1,stats9663.2,stats9664.1,stats9664.2,stats9665.1,stats9665.2,stats9666.1,stats9666.2,stats9667.1,stats9667.2,stats9668.1,stats9668.2,stats9669.1,stats9669.2,stats9670.1,stats9670.2,stats9671.1,stats9671.2,stats9672.1,stats9672.2,stats9673.1,stats9673.2,stats9674.1,stats9674.2,stats9675.1,stats9675.2,stats9676.1,stats9676.2,stats9677.1,stats9677.2,stats9678.1,stats9678.2,stats9679.1,stats9679.2,stats9680.1,stats9680.2,stats9681.1,stats9681.2,stats9682.1,stats9682.2,stats9683.1,stats9683.2,stats9684.1,stats9684.2,stats9685.1,stats9685.2,stats9686.1,stats9686.2,stats9687.1,stats9687.2,stats9688.1,stats9688.2,stats9689.1,stats9689.2,stats9690.1,stats9690.2,stats9691.1,stats9691.2,stats9692.1,stats9692.2,stats9693.1,stats9693.2,stats9694.1,stats9694.2,stats9695.1,stats9695.2,stats9696.1,stats9696.2,stats9697.1,stats9697.2,stats9698.1,stats9698.2,stats9699.1,stats9699.2,stats9700.1,stats9700.2,stats9701.1,stats9701.2,stats9702.1,stats9702.2,stats9703.1,stats9703.2,stats9704.1,stats9704.2,stats9705.1,stats9705.2,stats9706.1,stats9706.2,stats9707.1,stats9707.2,stats9708.1,stats9708.2,stats9709.1,stats9709.2,stats9710.1,stats9710.2,stats9711.1,stats9711.2,stats9712.1,stats9712.2,stats9713.1,stats9713.2,stats9714.1,stats9714.2,stats9715.1,stats9715.2,stats9716.1,stats9716.2,stats9717.1,stats9717.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
