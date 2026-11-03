import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData150
import PathRoundDispatchInstructionMatrixData151
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9643 : actualRows9643=WordField.canonicalRows actualModulus 9643 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9643 : actualRows9643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9643=2892 := by core033_kernel_decide
theorem rows9644 : actualRows9644=WordField.canonicalRows actualModulus 9644 (.badd 9642 9643) := by core033_kernel_decide
theorem stats9644 : actualRows9644.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9644=5388 := by core033_kernel_decide
theorem rows9645 : actualRows9645=WordField.canonicalRows actualModulus 9645 (.bnot 9644) := by core033_kernel_decide
theorem stats9645 : actualRows9645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9645=6276 := by core033_kernel_decide
theorem rows9646 : actualRows9646=WordField.canonicalRows actualModulus 9646 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9646 : actualRows9646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9646=2820 := by core033_kernel_decide
theorem rows9647 : actualRows9647=WordField.canonicalRows actualModulus 9647 (.band 9645 9646) := by core033_kernel_decide
theorem stats9647 : actualRows9647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9647=5124 := by core033_kernel_decide
theorem rows9648 : actualRows9648=WordField.canonicalRows actualModulus 9648 (.bxor 9641 9647) := by core033_kernel_decide
theorem stats9648 : actualRows9648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9648=7428 := by core033_kernel_decide
theorem rows9649 : actualRows9649=WordField.canonicalRows actualModulus 9649 (.bnot 9406) := by core033_kernel_decide
theorem stats9649 : actualRows9649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9649=6276 := by core033_kernel_decide
theorem rows9650 : actualRows9650=WordField.canonicalRows actualModulus 9650 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9650 : actualRows9650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9650=2892 := by core033_kernel_decide
theorem rows9651 : actualRows9651=WordField.canonicalRows actualModulus 9651 (.badd 9649 9650) := by core033_kernel_decide
theorem stats9651 : actualRows9651.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9651=5388 := by core033_kernel_decide
theorem rows9652 : actualRows9652=WordField.canonicalRows actualModulus 9652 (.band 9651 22) := by core033_kernel_decide
theorem stats9652 : actualRows9652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9652=5124 := by core033_kernel_decide
theorem rows9653 : actualRows9653=WordField.canonicalRows actualModulus 9653 (.bnot 9406) := by core033_kernel_decide
theorem stats9653 : actualRows9653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9653=6276 := by core033_kernel_decide
theorem rows9654 : actualRows9654=WordField.canonicalRows actualModulus 9654 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9654 : actualRows9654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9654=2892 := by core033_kernel_decide
theorem rows9655 : actualRows9655=WordField.canonicalRows actualModulus 9655 (.badd 9653 9654) := by core033_kernel_decide
theorem stats9655 : actualRows9655.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9655=5388 := by core033_kernel_decide
theorem rows9656 : actualRows9656=WordField.canonicalRows actualModulus 9656 (.bnot 9655) := by core033_kernel_decide
theorem stats9656 : actualRows9656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9656=6276 := by core033_kernel_decide
theorem rows9657 : actualRows9657=WordField.canonicalRows actualModulus 9657 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9657 : actualRows9657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9657=2820 := by core033_kernel_decide
theorem rows9658 : actualRows9658=WordField.canonicalRows actualModulus 9658 (.band 9656 9657) := by core033_kernel_decide
theorem stats9658 : actualRows9658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9658=5124 := by core033_kernel_decide
theorem rows9659 : actualRows9659=WordField.canonicalRows actualModulus 9659 (.bxor 9652 9658) := by core033_kernel_decide
theorem stats9659 : actualRows9659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9659=7428 := by core033_kernel_decide
theorem rows9660 : actualRows9660=WordField.canonicalRows actualModulus 9660 (.bnot 9406) := by core033_kernel_decide
theorem stats9660 : actualRows9660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9660=6276 := by core033_kernel_decide
theorem rows9661 : actualRows9661=WordField.canonicalRows actualModulus 9661 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9661 : actualRows9661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9661=2892 := by core033_kernel_decide
theorem rows9662 : actualRows9662=WordField.canonicalRows actualModulus 9662 (.badd 9660 9661) := by core033_kernel_decide
theorem stats9662 : actualRows9662.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9662=5388 := by core033_kernel_decide
theorem rows9663 : actualRows9663=WordField.canonicalRows actualModulus 9663 (.band 9662 23) := by core033_kernel_decide
theorem stats9663 : actualRows9663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9663=5124 := by core033_kernel_decide
theorem rows9664 : actualRows9664=WordField.canonicalRows actualModulus 9664 (.bnot 9406) := by core033_kernel_decide
theorem stats9664 : actualRows9664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9664=6276 := by core033_kernel_decide
theorem rows9665 : actualRows9665=WordField.canonicalRows actualModulus 9665 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9665 : actualRows9665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9665=2892 := by core033_kernel_decide
theorem rows9666 : actualRows9666=WordField.canonicalRows actualModulus 9666 (.badd 9664 9665) := by core033_kernel_decide
theorem stats9666 : actualRows9666.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9666=5388 := by core033_kernel_decide
theorem rows9667 : actualRows9667=WordField.canonicalRows actualModulus 9667 (.bnot 9666) := by core033_kernel_decide
theorem stats9667 : actualRows9667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9667=6276 := by core033_kernel_decide
theorem rows9668 : actualRows9668=WordField.canonicalRows actualModulus 9668 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9668 : actualRows9668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9668=2820 := by core033_kernel_decide
theorem rows9669 : actualRows9669=WordField.canonicalRows actualModulus 9669 (.band 9667 9668) := by core033_kernel_decide
theorem stats9669 : actualRows9669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9669=5124 := by core033_kernel_decide
theorem rows9670 : actualRows9670=WordField.canonicalRows actualModulus 9670 (.bxor 9663 9669) := by core033_kernel_decide
theorem stats9670 : actualRows9670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9670=7428 := by core033_kernel_decide
theorem rows9671 : actualRows9671=WordField.canonicalRows actualModulus 9671 (.bnot 9406) := by core033_kernel_decide
theorem stats9671 : actualRows9671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9671=6276 := by core033_kernel_decide
theorem rows9672 : actualRows9672=WordField.canonicalRows actualModulus 9672 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9672 : actualRows9672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9672=2892 := by core033_kernel_decide
theorem rows9673 : actualRows9673=WordField.canonicalRows actualModulus 9673 (.badd 9671 9672) := by core033_kernel_decide
theorem stats9673 : actualRows9673.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9673=5388 := by core033_kernel_decide
theorem rows9674 : actualRows9674=WordField.canonicalRows actualModulus 9674 (.band 9673 24) := by core033_kernel_decide
theorem stats9674 : actualRows9674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9674=5124 := by core033_kernel_decide
theorem rows9675 : actualRows9675=WordField.canonicalRows actualModulus 9675 (.bnot 9406) := by core033_kernel_decide
theorem stats9675 : actualRows9675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9675=6276 := by core033_kernel_decide
theorem rows9676 : actualRows9676=WordField.canonicalRows actualModulus 9676 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9676 : actualRows9676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9676=2892 := by core033_kernel_decide
theorem rows9677 : actualRows9677=WordField.canonicalRows actualModulus 9677 (.badd 9675 9676) := by core033_kernel_decide
theorem stats9677 : actualRows9677.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9677=5388 := by core033_kernel_decide
theorem rows9678 : actualRows9678=WordField.canonicalRows actualModulus 9678 (.bnot 9677) := by core033_kernel_decide
theorem stats9678 : actualRows9678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9678=6276 := by core033_kernel_decide
theorem rows9679 : actualRows9679=WordField.canonicalRows actualModulus 9679 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9679 : actualRows9679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9679=2820 := by core033_kernel_decide
theorem rows9680 : actualRows9680=WordField.canonicalRows actualModulus 9680 (.band 9678 9679) := by core033_kernel_decide
theorem stats9680 : actualRows9680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9680=5124 := by core033_kernel_decide
theorem rows9681 : actualRows9681=WordField.canonicalRows actualModulus 9681 (.bxor 9674 9680) := by core033_kernel_decide
theorem stats9681 : actualRows9681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9681=7428 := by core033_kernel_decide
theorem rows9682 : actualRows9682=WordField.canonicalRows actualModulus 9682 (.bnot 9406) := by core033_kernel_decide
theorem stats9682 : actualRows9682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9682=6276 := by core033_kernel_decide
theorem rows9683 : actualRows9683=WordField.canonicalRows actualModulus 9683 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9683 : actualRows9683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9683=2892 := by core033_kernel_decide
theorem rows9684 : actualRows9684=WordField.canonicalRows actualModulus 9684 (.badd 9682 9683) := by core033_kernel_decide
theorem stats9684 : actualRows9684.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9684=5388 := by core033_kernel_decide
theorem rows9685 : actualRows9685=WordField.canonicalRows actualModulus 9685 (.band 9684 25) := by core033_kernel_decide
theorem stats9685 : actualRows9685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9685=5124 := by core033_kernel_decide
theorem rows9686 : actualRows9686=WordField.canonicalRows actualModulus 9686 (.bnot 9406) := by core033_kernel_decide
theorem stats9686 : actualRows9686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9686=6276 := by core033_kernel_decide
theorem rows9687 : actualRows9687=WordField.canonicalRows actualModulus 9687 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9687 : actualRows9687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9687=2892 := by core033_kernel_decide
theorem rows9688 : actualRows9688=WordField.canonicalRows actualModulus 9688 (.badd 9686 9687) := by core033_kernel_decide
theorem stats9688 : actualRows9688.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9688=5388 := by core033_kernel_decide
theorem rows9689 : actualRows9689=WordField.canonicalRows actualModulus 9689 (.bnot 9688) := by core033_kernel_decide
theorem stats9689 : actualRows9689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9689=6276 := by core033_kernel_decide
theorem rows9690 : actualRows9690=WordField.canonicalRows actualModulus 9690 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9690 : actualRows9690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9690=2820 := by core033_kernel_decide
theorem rows9691 : actualRows9691=WordField.canonicalRows actualModulus 9691 (.band 9689 9690) := by core033_kernel_decide
theorem stats9691 : actualRows9691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9691=5124 := by core033_kernel_decide
theorem rows9692 : actualRows9692=WordField.canonicalRows actualModulus 9692 (.bxor 9685 9691) := by core033_kernel_decide
theorem stats9692 : actualRows9692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9692=7428 := by core033_kernel_decide
theorem rows9693 : actualRows9693=WordField.canonicalRows actualModulus 9693 (.bnot 9406) := by core033_kernel_decide
theorem stats9693 : actualRows9693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9693=6276 := by core033_kernel_decide
theorem rows9694 : actualRows9694=WordField.canonicalRows actualModulus 9694 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9694 : actualRows9694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9694=2892 := by core033_kernel_decide
theorem rows9695 : actualRows9695=WordField.canonicalRows actualModulus 9695 (.badd 9693 9694) := by core033_kernel_decide
theorem stats9695 : actualRows9695.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9695=5388 := by core033_kernel_decide
theorem rows9696 : actualRows9696=WordField.canonicalRows actualModulus 9696 (.band 9695 26) := by core033_kernel_decide
theorem stats9696 : actualRows9696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9696=5124 := by core033_kernel_decide
theorem rows9697 : actualRows9697=WordField.canonicalRows actualModulus 9697 (.bnot 9406) := by core033_kernel_decide
theorem stats9697 : actualRows9697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9697=6276 := by core033_kernel_decide
theorem rows9698 : actualRows9698=WordField.canonicalRows actualModulus 9698 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9698 : actualRows9698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9698=2892 := by core033_kernel_decide
theorem rows9699 : actualRows9699=WordField.canonicalRows actualModulus 9699 (.badd 9697 9698) := by core033_kernel_decide
theorem stats9699 : actualRows9699.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9699=5388 := by core033_kernel_decide
theorem rows9700 : actualRows9700=WordField.canonicalRows actualModulus 9700 (.bnot 9699) := by core033_kernel_decide
theorem stats9700 : actualRows9700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9700=6276 := by core033_kernel_decide
theorem rows9701 : actualRows9701=WordField.canonicalRows actualModulus 9701 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9701 : actualRows9701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9701=2820 := by core033_kernel_decide
theorem rows9702 : actualRows9702=WordField.canonicalRows actualModulus 9702 (.band 9700 9701) := by core033_kernel_decide
theorem stats9702 : actualRows9702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9702=5124 := by core033_kernel_decide
theorem rows9703 : actualRows9703=WordField.canonicalRows actualModulus 9703 (.bxor 9696 9702) := by core033_kernel_decide
theorem stats9703 : actualRows9703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9703=7428 := by core033_kernel_decide
theorem rows9704 : actualRows9704=WordField.canonicalRows actualModulus 9704 (.bnot 9406) := by core033_kernel_decide
theorem stats9704 : actualRows9704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9704=6276 := by core033_kernel_decide
theorem rows9705 : actualRows9705=WordField.canonicalRows actualModulus 9705 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9705 : actualRows9705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9705=2892 := by core033_kernel_decide
theorem rows9706 : actualRows9706=WordField.canonicalRows actualModulus 9706 (.badd 9704 9705) := by core033_kernel_decide
theorem stats9706 : actualRows9706.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9706=5388 := by core033_kernel_decide
def partRows150 : List R1CS.Row := actualRows9643++actualRows9644++actualRows9645++actualRows9646++actualRows9647++actualRows9648++actualRows9649++actualRows9650++actualRows9651++actualRows9652++actualRows9653++actualRows9654++actualRows9655++actualRows9656++actualRows9657++actualRows9658++actualRows9659++actualRows9660++actualRows9661++actualRows9662++actualRows9663++actualRows9664++actualRows9665++actualRows9666++actualRows9667++actualRows9668++actualRows9669++actualRows9670++actualRows9671++actualRows9672++actualRows9673++actualRows9674++actualRows9675++actualRows9676++actualRows9677++actualRows9678++actualRows9679++actualRows9680++actualRows9681++actualRows9682++actualRows9683++actualRows9684++actualRows9685++actualRows9686++actualRows9687++actualRows9688++actualRows9689++actualRows9690++actualRows9691++actualRows9692++actualRows9693++actualRows9694++actualRows9695++actualRows9696++actualRows9697++actualRows9698++actualRows9699++actualRows9700++actualRows9701++actualRows9702++actualRows9703++actualRows9704++actualRows9705++actualRows9706
def partOps150 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 9642 9643,.bnot 9644,.literal (BitVec.ofNat 32 0),.band 9645 9646,.bxor 9641 9647,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9649 9650,.band 9651 22,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9653 9654,.bnot 9655,.literal (BitVec.ofNat 32 0),.band 9656 9657,.bxor 9652 9658,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9660 9661,.band 9662 23,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9664 9665,.bnot 9666,.literal (BitVec.ofNat 32 0),.band 9667 9668,.bxor 9663 9669,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9671 9672,.band 9673 24,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9675 9676,.bnot 9677,.literal (BitVec.ofNat 32 0),.band 9678 9679,.bxor 9674 9680,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9682 9683,.band 9684 25,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9686 9687,.bnot 9688,.literal (BitVec.ofNat 32 0),.band 9689 9690,.bxor 9685 9691,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9693 9694,.band 9695 26,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9697 9698,.bnot 9699,.literal (BitVec.ofNat 32 0),.band 9700 9701,.bxor 9696 9702,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9704 9705]
theorem partExact150 : partRows150=WordField.rows actualModulus 9643 partOps150 := by
  simp only [partRows150,partOps150,WordField.rows,rows9643,rows9644,rows9645,rows9646,rows9647,rows9648,rows9649,rows9650,rows9651,rows9652,rows9653,rows9654,rows9655,rows9656,rows9657,rows9658,rows9659,rows9660,rows9661,rows9662,rows9663,rows9664,rows9665,rows9666,rows9667,rows9668,rows9669,rows9670,rows9671,rows9672,rows9673,rows9674,rows9675,rows9676,rows9677,rows9678,rows9679,rows9680,rows9681,rows9682,rows9683,rows9684,rows9685,rows9686,rows9687,rows9688,rows9689,rows9690,rows9691,rows9692,rows9693,rows9694,rows9695,rows9696,rows9697,rows9698,rows9699,rows9700,rows9701,rows9702,rows9703,rows9704,rows9705,rows9706,List.append_assoc,List.append_nil]
theorem partLength150 : partOps150.length=64 := by decide
theorem partStats150 : partRows150.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows150=323904 := by
  simp only [partRows150,List.length_append,MatrixRowBlocks.rows_weight_append,stats9643.1,stats9643.2,stats9644.1,stats9644.2,stats9645.1,stats9645.2,stats9646.1,stats9646.2,stats9647.1,stats9647.2,stats9648.1,stats9648.2,stats9649.1,stats9649.2,stats9650.1,stats9650.2,stats9651.1,stats9651.2,stats9652.1,stats9652.2,stats9653.1,stats9653.2,stats9654.1,stats9654.2,stats9655.1,stats9655.2,stats9656.1,stats9656.2,stats9657.1,stats9657.2,stats9658.1,stats9658.2,stats9659.1,stats9659.2,stats9660.1,stats9660.2,stats9661.1,stats9661.2,stats9662.1,stats9662.2,stats9663.1,stats9663.2,stats9664.1,stats9664.2,stats9665.1,stats9665.2,stats9666.1,stats9666.2,stats9667.1,stats9667.2,stats9668.1,stats9668.2,stats9669.1,stats9669.2,stats9670.1,stats9670.2,stats9671.1,stats9671.2,stats9672.1,stats9672.2,stats9673.1,stats9673.2,stats9674.1,stats9674.2,stats9675.1,stats9675.2,stats9676.1,stats9676.2,stats9677.1,stats9677.2,stats9678.1,stats9678.2,stats9679.1,stats9679.2,stats9680.1,stats9680.2,stats9681.1,stats9681.2,stats9682.1,stats9682.2,stats9683.1,stats9683.2,stats9684.1,stats9684.2,stats9685.1,stats9685.2,stats9686.1,stats9686.2,stats9687.1,stats9687.2,stats9688.1,stats9688.2,stats9689.1,stats9689.2,stats9690.1,stats9690.2,stats9691.1,stats9691.2,stats9692.1,stats9692.2,stats9693.1,stats9693.2,stats9694.1,stats9694.2,stats9695.1,stats9695.2,stats9696.1,stats9696.2,stats9697.1,stats9697.2,stats9698.1,stats9698.2,stats9699.1,stats9699.2,stats9700.1,stats9700.2,stats9701.1,stats9701.2,stats9702.1,stats9702.2,stats9703.1,stats9703.2,stats9704.1,stats9704.2,stats9705.1,stats9705.2,stats9706.1,stats9706.2]
  decide
end PathRoundDispatchCheckedRows
