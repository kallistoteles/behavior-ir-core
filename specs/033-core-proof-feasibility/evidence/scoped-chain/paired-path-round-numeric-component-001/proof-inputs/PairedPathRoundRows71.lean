import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData72
import PairedPathRoundInstructionMatrixData73
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4640 : actualRows4640=WordField.canonicalRows actualModulus 4640 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4640 : actualRows4640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4640=2820 := by core033_kernel_decide
theorem rows4641 : actualRows4641=WordField.canonicalRows actualModulus 4641 (.bnot 4640) := by core033_kernel_decide
theorem stats4641 : actualRows4641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4641=6276 := by core033_kernel_decide
theorem rows4642 : actualRows4642=WordField.canonicalRows actualModulus 4642 (.badd 4639 4641) := by core033_kernel_decide
theorem stats4642 : actualRows4642.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4642=5388 := by core033_kernel_decide
theorem rows4643 : actualRows4643=WordField.canonicalRows actualModulus 4643 (.bnot 4642) := by core033_kernel_decide
theorem stats4643 : actualRows4643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4643=6276 := by core033_kernel_decide
theorem rows4644 : actualRows4644=WordField.canonicalRows actualModulus 4644 (.band 4637 4643) := by core033_kernel_decide
theorem stats4644 : actualRows4644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4644=5124 := by core033_kernel_decide
theorem rows4645 : actualRows4645=WordField.canonicalRows actualModulus 4645 (.bxor 4632 4644) := by core033_kernel_decide
theorem stats4645 : actualRows4645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4645=7428 := by core033_kernel_decide
theorem rows4646 : actualRows4646=WordField.canonicalRows actualModulus 4646 (.shr 4645 31) := by core033_kernel_decide
theorem stats4646 : actualRows4646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4646=2892 := by core033_kernel_decide
theorem rows4647 : actualRows4647=WordField.canonicalRows actualModulus 4647 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4647 : actualRows4647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4647=2892 := by core033_kernel_decide
theorem rows4648 : actualRows4648=WordField.canonicalRows actualModulus 4648 (.bxor 4646 4647) := by core033_kernel_decide
theorem stats4648 : actualRows4648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4648=7428 := by core033_kernel_decide
theorem rows4649 : actualRows4649=WordField.canonicalRows actualModulus 4649 (.bnot 4648) := by core033_kernel_decide
theorem stats4649 : actualRows4649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4649=6276 := by core033_kernel_decide
theorem rows4650 : actualRows4650=WordField.canonicalRows actualModulus 4650 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4650 : actualRows4650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4650=2892 := by core033_kernel_decide
theorem rows4651 : actualRows4651=WordField.canonicalRows actualModulus 4651 (.badd 4649 4650) := by core033_kernel_decide
theorem stats4651 : actualRows4651.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4651=5388 := by core033_kernel_decide
theorem rows4652 : actualRows4652=WordField.canonicalRows actualModulus 4652 (.band 4651 2115) := by core033_kernel_decide
theorem stats4652 : actualRows4652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4652=5124 := by core033_kernel_decide
theorem rows4653 : actualRows4653=WordField.canonicalRows actualModulus 4653 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4653 : actualRows4653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4653=2892 := by core033_kernel_decide
theorem rows4654 : actualRows4654=WordField.canonicalRows actualModulus 4654 (.bxor 616 4653) := by core033_kernel_decide
theorem stats4654 : actualRows4654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4654=7428 := by core033_kernel_decide
theorem rows4655 : actualRows4655=WordField.canonicalRows actualModulus 4655 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4655 : actualRows4655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4655=2820 := by core033_kernel_decide
theorem rows4656 : actualRows4656=WordField.canonicalRows actualModulus 4656 (.bnot 4655) := by core033_kernel_decide
theorem stats4656 : actualRows4656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4656=6276 := by core033_kernel_decide
theorem rows4657 : actualRows4657=WordField.canonicalRows actualModulus 4657 (.band 4654 4656) := by core033_kernel_decide
theorem stats4657 : actualRows4657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4657=5124 := by core033_kernel_decide
theorem rows4658 : actualRows4658=WordField.canonicalRows actualModulus 4658 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4658 : actualRows4658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4658=2892 := by core033_kernel_decide
theorem rows4659 : actualRows4659=WordField.canonicalRows actualModulus 4659 (.bxor 616 4658) := by core033_kernel_decide
theorem stats4659 : actualRows4659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4659=7428 := by core033_kernel_decide
theorem rows4660 : actualRows4660=WordField.canonicalRows actualModulus 4660 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4660 : actualRows4660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4660=2820 := by core033_kernel_decide
theorem rows4661 : actualRows4661=WordField.canonicalRows actualModulus 4661 (.bnot 4660) := by core033_kernel_decide
theorem stats4661 : actualRows4661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4661=6276 := by core033_kernel_decide
theorem rows4662 : actualRows4662=WordField.canonicalRows actualModulus 4662 (.bxor 4659 4661) := by core033_kernel_decide
theorem stats4662 : actualRows4662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4662=7428 := by core033_kernel_decide
theorem rows4663 : actualRows4663=WordField.canonicalRows actualModulus 4663 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4663 : actualRows4663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4663=2892 := by core033_kernel_decide
theorem rows4664 : actualRows4664=WordField.canonicalRows actualModulus 4664 (.bxor 616 4663) := by core033_kernel_decide
theorem stats4664 : actualRows4664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4664=7428 := by core033_kernel_decide
theorem rows4665 : actualRows4665=WordField.canonicalRows actualModulus 4665 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4665 : actualRows4665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4665=2820 := by core033_kernel_decide
theorem rows4666 : actualRows4666=WordField.canonicalRows actualModulus 4666 (.bnot 4665) := by core033_kernel_decide
theorem stats4666 : actualRows4666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4666=6276 := by core033_kernel_decide
theorem rows4667 : actualRows4667=WordField.canonicalRows actualModulus 4667 (.badd 4664 4666) := by core033_kernel_decide
theorem stats4667 : actualRows4667.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4667=5388 := by core033_kernel_decide
theorem rows4668 : actualRows4668=WordField.canonicalRows actualModulus 4668 (.bnot 4667) := by core033_kernel_decide
theorem stats4668 : actualRows4668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4668=6276 := by core033_kernel_decide
theorem rows4669 : actualRows4669=WordField.canonicalRows actualModulus 4669 (.band 4662 4668) := by core033_kernel_decide
theorem stats4669 : actualRows4669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4669=5124 := by core033_kernel_decide
theorem rows4670 : actualRows4670=WordField.canonicalRows actualModulus 4670 (.bxor 4657 4669) := by core033_kernel_decide
theorem stats4670 : actualRows4670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4670=7428 := by core033_kernel_decide
theorem rows4671 : actualRows4671=WordField.canonicalRows actualModulus 4671 (.shr 4670 31) := by core033_kernel_decide
theorem stats4671 : actualRows4671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4671=2892 := by core033_kernel_decide
theorem rows4672 : actualRows4672=WordField.canonicalRows actualModulus 4672 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4672 : actualRows4672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4672=2892 := by core033_kernel_decide
theorem rows4673 : actualRows4673=WordField.canonicalRows actualModulus 4673 (.bxor 4671 4672) := by core033_kernel_decide
theorem stats4673 : actualRows4673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4673=7428 := by core033_kernel_decide
theorem rows4674 : actualRows4674=WordField.canonicalRows actualModulus 4674 (.bnot 4673) := by core033_kernel_decide
theorem stats4674 : actualRows4674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4674=6276 := by core033_kernel_decide
theorem rows4675 : actualRows4675=WordField.canonicalRows actualModulus 4675 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4675 : actualRows4675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4675=2892 := by core033_kernel_decide
theorem rows4676 : actualRows4676=WordField.canonicalRows actualModulus 4676 (.badd 4674 4675) := by core033_kernel_decide
theorem stats4676 : actualRows4676.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4676=5388 := by core033_kernel_decide
theorem rows4677 : actualRows4677=WordField.canonicalRows actualModulus 4677 (.bnot 4676) := by core033_kernel_decide
theorem stats4677 : actualRows4677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4677=6276 := by core033_kernel_decide
theorem rows4678 : actualRows4678=WordField.canonicalRows actualModulus 4678 (.band 4677 1923) := by core033_kernel_decide
theorem stats4678 : actualRows4678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4678=5124 := by core033_kernel_decide
theorem rows4679 : actualRows4679=WordField.canonicalRows actualModulus 4679 (.bxor 4652 4678) := by core033_kernel_decide
theorem stats4679 : actualRows4679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4679=7428 := by core033_kernel_decide
theorem rows4680 : actualRows4680=WordField.canonicalRows actualModulus 4680 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4680 : actualRows4680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4680=2892 := by core033_kernel_decide
theorem rows4681 : actualRows4681=WordField.canonicalRows actualModulus 4681 (.bxor 616 4680) := by core033_kernel_decide
theorem stats4681 : actualRows4681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4681=7428 := by core033_kernel_decide
theorem rows4682 : actualRows4682=WordField.canonicalRows actualModulus 4682 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4682 : actualRows4682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4682=2820 := by core033_kernel_decide
theorem rows4683 : actualRows4683=WordField.canonicalRows actualModulus 4683 (.bnot 4682) := by core033_kernel_decide
theorem stats4683 : actualRows4683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4683=6276 := by core033_kernel_decide
theorem rows4684 : actualRows4684=WordField.canonicalRows actualModulus 4684 (.band 4681 4683) := by core033_kernel_decide
theorem stats4684 : actualRows4684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4684=5124 := by core033_kernel_decide
theorem rows4685 : actualRows4685=WordField.canonicalRows actualModulus 4685 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4685 : actualRows4685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4685=2892 := by core033_kernel_decide
theorem rows4686 : actualRows4686=WordField.canonicalRows actualModulus 4686 (.bxor 616 4685) := by core033_kernel_decide
theorem stats4686 : actualRows4686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4686=7428 := by core033_kernel_decide
theorem rows4687 : actualRows4687=WordField.canonicalRows actualModulus 4687 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4687 : actualRows4687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4687=2820 := by core033_kernel_decide
theorem rows4688 : actualRows4688=WordField.canonicalRows actualModulus 4688 (.bnot 4687) := by core033_kernel_decide
theorem stats4688 : actualRows4688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4688=6276 := by core033_kernel_decide
theorem rows4689 : actualRows4689=WordField.canonicalRows actualModulus 4689 (.bxor 4686 4688) := by core033_kernel_decide
theorem stats4689 : actualRows4689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4689=7428 := by core033_kernel_decide
theorem rows4690 : actualRows4690=WordField.canonicalRows actualModulus 4690 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4690 : actualRows4690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4690=2892 := by core033_kernel_decide
theorem rows4691 : actualRows4691=WordField.canonicalRows actualModulus 4691 (.bxor 616 4690) := by core033_kernel_decide
theorem stats4691 : actualRows4691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4691=7428 := by core033_kernel_decide
theorem rows4692 : actualRows4692=WordField.canonicalRows actualModulus 4692 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4692 : actualRows4692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4692=2820 := by core033_kernel_decide
theorem rows4693 : actualRows4693=WordField.canonicalRows actualModulus 4693 (.bnot 4692) := by core033_kernel_decide
theorem stats4693 : actualRows4693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4693=6276 := by core033_kernel_decide
theorem rows4694 : actualRows4694=WordField.canonicalRows actualModulus 4694 (.badd 4691 4693) := by core033_kernel_decide
theorem stats4694 : actualRows4694.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4694=5388 := by core033_kernel_decide
theorem rows4695 : actualRows4695=WordField.canonicalRows actualModulus 4695 (.bnot 4694) := by core033_kernel_decide
theorem stats4695 : actualRows4695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4695=6276 := by core033_kernel_decide
theorem rows4696 : actualRows4696=WordField.canonicalRows actualModulus 4696 (.band 4689 4695) := by core033_kernel_decide
theorem stats4696 : actualRows4696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4696=5124 := by core033_kernel_decide
theorem rows4697 : actualRows4697=WordField.canonicalRows actualModulus 4697 (.bxor 4684 4696) := by core033_kernel_decide
theorem stats4697 : actualRows4697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4697=7428 := by core033_kernel_decide
theorem rows4698 : actualRows4698=WordField.canonicalRows actualModulus 4698 (.shr 4697 31) := by core033_kernel_decide
theorem stats4698 : actualRows4698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4698=2892 := by core033_kernel_decide
theorem rows4699 : actualRows4699=WordField.canonicalRows actualModulus 4699 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4699 : actualRows4699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4699=2892 := by core033_kernel_decide
theorem rows4700 : actualRows4700=WordField.canonicalRows actualModulus 4700 (.bxor 4698 4699) := by core033_kernel_decide
theorem stats4700 : actualRows4700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4700=7428 := by core033_kernel_decide
theorem rows4701 : actualRows4701=WordField.canonicalRows actualModulus 4701 (.bnot 4700) := by core033_kernel_decide
theorem stats4701 : actualRows4701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4701=6276 := by core033_kernel_decide
theorem rows4702 : actualRows4702=WordField.canonicalRows actualModulus 4702 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4702 : actualRows4702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4702=2892 := by core033_kernel_decide
theorem rows4703 : actualRows4703=WordField.canonicalRows actualModulus 4703 (.badd 4701 4702) := by core033_kernel_decide
theorem stats4703 : actualRows4703.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4703=5388 := by core033_kernel_decide
def partRows71 : List R1CS.Row := actualRows4640++actualRows4641++actualRows4642++actualRows4643++actualRows4644++actualRows4645++actualRows4646++actualRows4647++actualRows4648++actualRows4649++actualRows4650++actualRows4651++actualRows4652++actualRows4653++actualRows4654++actualRows4655++actualRows4656++actualRows4657++actualRows4658++actualRows4659++actualRows4660++actualRows4661++actualRows4662++actualRows4663++actualRows4664++actualRows4665++actualRows4666++actualRows4667++actualRows4668++actualRows4669++actualRows4670++actualRows4671++actualRows4672++actualRows4673++actualRows4674++actualRows4675++actualRows4676++actualRows4677++actualRows4678++actualRows4679++actualRows4680++actualRows4681++actualRows4682++actualRows4683++actualRows4684++actualRows4685++actualRows4686++actualRows4687++actualRows4688++actualRows4689++actualRows4690++actualRows4691++actualRows4692++actualRows4693++actualRows4694++actualRows4695++actualRows4696++actualRows4697++actualRows4698++actualRows4699++actualRows4700++actualRows4701++actualRows4702++actualRows4703
def partOps71 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 4640,.badd 4639 4641,.bnot 4642,.band 4637 4643,.bxor 4632 4644,.shr 4645 31,.literal (BitVec.ofNat 32 1),.bxor 4646 4647,.bnot 4648,.literal (BitVec.ofNat 32 1),.badd 4649 4650,.band 4651 2115,.literal (BitVec.ofNat 32 2),.bxor 616 4653,.literal (BitVec.ofNat 32 0),.bnot 4655,.band 4654 4656,.literal (BitVec.ofNat 32 2),.bxor 616 4658,.literal (BitVec.ofNat 32 0),.bnot 4660,.bxor 4659 4661,.literal (BitVec.ofNat 32 2),.bxor 616 4663,.literal (BitVec.ofNat 32 0),.bnot 4665,.badd 4664 4666,.bnot 4667,.band 4662 4668,.bxor 4657 4669,.shr 4670 31,.literal (BitVec.ofNat 32 1),.bxor 4671 4672,.bnot 4673,.literal (BitVec.ofNat 32 1),.badd 4674 4675,.bnot 4676,.band 4677 1923,.bxor 4652 4678,.literal (BitVec.ofNat 32 2),.bxor 616 4680,.literal (BitVec.ofNat 32 0),.bnot 4682,.band 4681 4683,.literal (BitVec.ofNat 32 2),.bxor 616 4685,.literal (BitVec.ofNat 32 0),.bnot 4687,.bxor 4686 4688,.literal (BitVec.ofNat 32 2),.bxor 616 4690,.literal (BitVec.ofNat 32 0),.bnot 4692,.badd 4691 4693,.bnot 4694,.band 4689 4695,.bxor 4684 4696,.shr 4697 31,.literal (BitVec.ofNat 32 1),.bxor 4698 4699,.bnot 4700,.literal (BitVec.ofNat 32 1),.badd 4701 4702]
theorem partExact71 : partRows71=WordField.rows actualModulus 4640 partOps71 := by
  simp only [partRows71,partOps71,WordField.rows,rows4640,rows4641,rows4642,rows4643,rows4644,rows4645,rows4646,rows4647,rows4648,rows4649,rows4650,rows4651,rows4652,rows4653,rows4654,rows4655,rows4656,rows4657,rows4658,rows4659,rows4660,rows4661,rows4662,rows4663,rows4664,rows4665,rows4666,rows4667,rows4668,rows4669,rows4670,rows4671,rows4672,rows4673,rows4674,rows4675,rows4676,rows4677,rows4678,rows4679,rows4680,rows4681,rows4682,rows4683,rows4684,rows4685,rows4686,rows4687,rows4688,rows4689,rows4690,rows4691,rows4692,rows4693,rows4694,rows4695,rows4696,rows4697,rows4698,rows4699,rows4700,rows4701,rows4702,rows4703,List.append_assoc,List.append_nil]
theorem partLength71 : partOps71.length=64 := by decide
theorem partStats71 : partRows71.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows71=330600 := by
  simp only [partRows71,List.length_append,MatrixRowBlocks.rows_weight_append,stats4640.1,stats4640.2,stats4641.1,stats4641.2,stats4642.1,stats4642.2,stats4643.1,stats4643.2,stats4644.1,stats4644.2,stats4645.1,stats4645.2,stats4646.1,stats4646.2,stats4647.1,stats4647.2,stats4648.1,stats4648.2,stats4649.1,stats4649.2,stats4650.1,stats4650.2,stats4651.1,stats4651.2,stats4652.1,stats4652.2,stats4653.1,stats4653.2,stats4654.1,stats4654.2,stats4655.1,stats4655.2,stats4656.1,stats4656.2,stats4657.1,stats4657.2,stats4658.1,stats4658.2,stats4659.1,stats4659.2,stats4660.1,stats4660.2,stats4661.1,stats4661.2,stats4662.1,stats4662.2,stats4663.1,stats4663.2,stats4664.1,stats4664.2,stats4665.1,stats4665.2,stats4666.1,stats4666.2,stats4667.1,stats4667.2,stats4668.1,stats4668.2,stats4669.1,stats4669.2,stats4670.1,stats4670.2,stats4671.1,stats4671.2,stats4672.1,stats4672.2,stats4673.1,stats4673.2,stats4674.1,stats4674.2,stats4675.1,stats4675.2,stats4676.1,stats4676.2,stats4677.1,stats4677.2,stats4678.1,stats4678.2,stats4679.1,stats4679.2,stats4680.1,stats4680.2,stats4681.1,stats4681.2,stats4682.1,stats4682.2,stats4683.1,stats4683.2,stats4684.1,stats4684.2,stats4685.1,stats4685.2,stats4686.1,stats4686.2,stats4687.1,stats4687.2,stats4688.1,stats4688.2,stats4689.1,stats4689.2,stats4690.1,stats4690.2,stats4691.1,stats4691.2,stats4692.1,stats4692.2,stats4693.1,stats4693.2,stats4694.1,stats4694.2,stats4695.1,stats4695.2,stats4696.1,stats4696.2,stats4697.1,stats4697.2,stats4698.1,stats4698.2,stats4699.1,stats4699.2,stats4700.1,stats4700.2,stats4701.1,stats4701.2,stats4702.1,stats4702.2,stats4703.1,stats4703.2]
  decide
end PairedPathRoundCheckedRows
