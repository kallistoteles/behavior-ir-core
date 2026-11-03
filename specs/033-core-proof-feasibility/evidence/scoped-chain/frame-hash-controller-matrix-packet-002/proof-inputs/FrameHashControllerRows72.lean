import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData72
import FrameHashControllerInstructionMatrixData73
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4651 : actualRows4651=WordField.canonicalRows actualModulus 4651 (.band 4644 4650) := by core033_kernel_decide
theorem stats4651 : actualRows4651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4651=5124 := by core033_kernel_decide
theorem rows4652 : actualRows4652=WordField.canonicalRows actualModulus 4652 (.bxor 4639 4651) := by core033_kernel_decide
theorem stats4652 : actualRows4652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4652=7428 := by core033_kernel_decide
theorem rows4653 : actualRows4653=WordField.canonicalRows actualModulus 4653 (.shr 4652 31) := by core033_kernel_decide
theorem stats4653 : actualRows4653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4653=2892 := by core033_kernel_decide
theorem rows4654 : actualRows4654=WordField.canonicalRows actualModulus 4654 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4654 : actualRows4654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4654=2892 := by core033_kernel_decide
theorem rows4655 : actualRows4655=WordField.canonicalRows actualModulus 4655 (.bxor 4653 4654) := by core033_kernel_decide
theorem stats4655 : actualRows4655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4655=7428 := by core033_kernel_decide
theorem rows4656 : actualRows4656=WordField.canonicalRows actualModulus 4656 (.bnot 4655) := by core033_kernel_decide
theorem stats4656 : actualRows4656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4656=6276 := by core033_kernel_decide
theorem rows4657 : actualRows4657=WordField.canonicalRows actualModulus 4657 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4657 : actualRows4657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4657=2892 := by core033_kernel_decide
theorem rows4658 : actualRows4658=WordField.canonicalRows actualModulus 4658 (.badd 4656 4657) := by core033_kernel_decide
theorem stats4658 : actualRows4658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4658=5388 := by core033_kernel_decide
theorem rows4659 : actualRows4659=WordField.canonicalRows actualModulus 4659 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4659 : actualRows4659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4659=2820 := by core033_kernel_decide
theorem rows4660 : actualRows4660=WordField.canonicalRows actualModulus 4660 (.band 4658 4659) := by core033_kernel_decide
theorem stats4660 : actualRows4660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4660=5124 := by core033_kernel_decide
theorem rows4661 : actualRows4661=WordField.canonicalRows actualModulus 4661 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4661 : actualRows4661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4661=2892 := by core033_kernel_decide
theorem rows4662 : actualRows4662=WordField.canonicalRows actualModulus 4662 (.bxor 0 4661) := by core033_kernel_decide
theorem stats4662 : actualRows4662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4662=7428 := by core033_kernel_decide
theorem rows4663 : actualRows4663=WordField.canonicalRows actualModulus 4663 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4663 : actualRows4663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4663=2820 := by core033_kernel_decide
theorem rows4664 : actualRows4664=WordField.canonicalRows actualModulus 4664 (.bnot 4663) := by core033_kernel_decide
theorem stats4664 : actualRows4664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4664=6276 := by core033_kernel_decide
theorem rows4665 : actualRows4665=WordField.canonicalRows actualModulus 4665 (.band 4662 4664) := by core033_kernel_decide
theorem stats4665 : actualRows4665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4665=5124 := by core033_kernel_decide
theorem rows4666 : actualRows4666=WordField.canonicalRows actualModulus 4666 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4666 : actualRows4666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4666=2892 := by core033_kernel_decide
theorem rows4667 : actualRows4667=WordField.canonicalRows actualModulus 4667 (.bxor 0 4666) := by core033_kernel_decide
theorem stats4667 : actualRows4667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4667=7428 := by core033_kernel_decide
theorem rows4668 : actualRows4668=WordField.canonicalRows actualModulus 4668 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4668 : actualRows4668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4668=2820 := by core033_kernel_decide
theorem rows4669 : actualRows4669=WordField.canonicalRows actualModulus 4669 (.bnot 4668) := by core033_kernel_decide
theorem stats4669 : actualRows4669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4669=6276 := by core033_kernel_decide
theorem rows4670 : actualRows4670=WordField.canonicalRows actualModulus 4670 (.bxor 4667 4669) := by core033_kernel_decide
theorem stats4670 : actualRows4670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4670=7428 := by core033_kernel_decide
theorem rows4671 : actualRows4671=WordField.canonicalRows actualModulus 4671 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4671 : actualRows4671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4671=2892 := by core033_kernel_decide
theorem rows4672 : actualRows4672=WordField.canonicalRows actualModulus 4672 (.bxor 0 4671) := by core033_kernel_decide
theorem stats4672 : actualRows4672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4672=7428 := by core033_kernel_decide
theorem rows4673 : actualRows4673=WordField.canonicalRows actualModulus 4673 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4673 : actualRows4673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4673=2820 := by core033_kernel_decide
theorem rows4674 : actualRows4674=WordField.canonicalRows actualModulus 4674 (.bnot 4673) := by core033_kernel_decide
theorem stats4674 : actualRows4674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4674=6276 := by core033_kernel_decide
theorem rows4675 : actualRows4675=WordField.canonicalRows actualModulus 4675 (.badd 4672 4674) := by core033_kernel_decide
theorem stats4675 : actualRows4675.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4675=5388 := by core033_kernel_decide
theorem rows4676 : actualRows4676=WordField.canonicalRows actualModulus 4676 (.bnot 4675) := by core033_kernel_decide
theorem stats4676 : actualRows4676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4676=6276 := by core033_kernel_decide
theorem rows4677 : actualRows4677=WordField.canonicalRows actualModulus 4677 (.band 4670 4676) := by core033_kernel_decide
theorem stats4677 : actualRows4677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4677=5124 := by core033_kernel_decide
theorem rows4678 : actualRows4678=WordField.canonicalRows actualModulus 4678 (.bxor 4665 4677) := by core033_kernel_decide
theorem stats4678 : actualRows4678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4678=7428 := by core033_kernel_decide
theorem rows4679 : actualRows4679=WordField.canonicalRows actualModulus 4679 (.shr 4678 31) := by core033_kernel_decide
theorem stats4679 : actualRows4679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4679=2892 := by core033_kernel_decide
theorem rows4680 : actualRows4680=WordField.canonicalRows actualModulus 4680 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4680 : actualRows4680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4680=2892 := by core033_kernel_decide
theorem rows4681 : actualRows4681=WordField.canonicalRows actualModulus 4681 (.bxor 4679 4680) := by core033_kernel_decide
theorem stats4681 : actualRows4681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4681=7428 := by core033_kernel_decide
theorem rows4682 : actualRows4682=WordField.canonicalRows actualModulus 4682 (.bnot 4681) := by core033_kernel_decide
theorem stats4682 : actualRows4682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4682=6276 := by core033_kernel_decide
theorem rows4683 : actualRows4683=WordField.canonicalRows actualModulus 4683 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4683 : actualRows4683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4683=2892 := by core033_kernel_decide
theorem rows4684 : actualRows4684=WordField.canonicalRows actualModulus 4684 (.badd 4682 4683) := by core033_kernel_decide
theorem stats4684 : actualRows4684.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4684=5388 := by core033_kernel_decide
theorem rows4685 : actualRows4685=WordField.canonicalRows actualModulus 4685 (.bnot 4684) := by core033_kernel_decide
theorem stats4685 : actualRows4685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4685=6276 := by core033_kernel_decide
theorem rows4686 : actualRows4686=WordField.canonicalRows actualModulus 4686 (.band 4685 947) := by core033_kernel_decide
theorem stats4686 : actualRows4686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4686=5124 := by core033_kernel_decide
theorem rows4687 : actualRows4687=WordField.canonicalRows actualModulus 4687 (.bxor 4660 4686) := by core033_kernel_decide
theorem stats4687 : actualRows4687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4687=7428 := by core033_kernel_decide
theorem rows4688 : actualRows4688=WordField.canonicalRows actualModulus 4688 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4688 : actualRows4688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4688=2892 := by core033_kernel_decide
theorem rows4689 : actualRows4689=WordField.canonicalRows actualModulus 4689 (.bxor 0 4688) := by core033_kernel_decide
theorem stats4689 : actualRows4689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4689=7428 := by core033_kernel_decide
theorem rows4690 : actualRows4690=WordField.canonicalRows actualModulus 4690 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4690 : actualRows4690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4690=2820 := by core033_kernel_decide
theorem rows4691 : actualRows4691=WordField.canonicalRows actualModulus 4691 (.bnot 4690) := by core033_kernel_decide
theorem stats4691 : actualRows4691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4691=6276 := by core033_kernel_decide
theorem rows4692 : actualRows4692=WordField.canonicalRows actualModulus 4692 (.band 4689 4691) := by core033_kernel_decide
theorem stats4692 : actualRows4692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4692=5124 := by core033_kernel_decide
theorem rows4693 : actualRows4693=WordField.canonicalRows actualModulus 4693 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4693 : actualRows4693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4693=2892 := by core033_kernel_decide
theorem rows4694 : actualRows4694=WordField.canonicalRows actualModulus 4694 (.bxor 0 4693) := by core033_kernel_decide
theorem stats4694 : actualRows4694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4694=7428 := by core033_kernel_decide
theorem rows4695 : actualRows4695=WordField.canonicalRows actualModulus 4695 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4695 : actualRows4695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4695=2820 := by core033_kernel_decide
theorem rows4696 : actualRows4696=WordField.canonicalRows actualModulus 4696 (.bnot 4695) := by core033_kernel_decide
theorem stats4696 : actualRows4696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4696=6276 := by core033_kernel_decide
theorem rows4697 : actualRows4697=WordField.canonicalRows actualModulus 4697 (.bxor 4694 4696) := by core033_kernel_decide
theorem stats4697 : actualRows4697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4697=7428 := by core033_kernel_decide
theorem rows4698 : actualRows4698=WordField.canonicalRows actualModulus 4698 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4698 : actualRows4698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4698=2892 := by core033_kernel_decide
theorem rows4699 : actualRows4699=WordField.canonicalRows actualModulus 4699 (.bxor 0 4698) := by core033_kernel_decide
theorem stats4699 : actualRows4699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4699=7428 := by core033_kernel_decide
theorem rows4700 : actualRows4700=WordField.canonicalRows actualModulus 4700 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4700 : actualRows4700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4700=2820 := by core033_kernel_decide
theorem rows4701 : actualRows4701=WordField.canonicalRows actualModulus 4701 (.bnot 4700) := by core033_kernel_decide
theorem stats4701 : actualRows4701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4701=6276 := by core033_kernel_decide
theorem rows4702 : actualRows4702=WordField.canonicalRows actualModulus 4702 (.badd 4699 4701) := by core033_kernel_decide
theorem stats4702 : actualRows4702.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4702=5388 := by core033_kernel_decide
theorem rows4703 : actualRows4703=WordField.canonicalRows actualModulus 4703 (.bnot 4702) := by core033_kernel_decide
theorem stats4703 : actualRows4703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4703=6276 := by core033_kernel_decide
theorem rows4704 : actualRows4704=WordField.canonicalRows actualModulus 4704 (.band 4697 4703) := by core033_kernel_decide
theorem stats4704 : actualRows4704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4704=5124 := by core033_kernel_decide
theorem rows4705 : actualRows4705=WordField.canonicalRows actualModulus 4705 (.bxor 4692 4704) := by core033_kernel_decide
theorem stats4705 : actualRows4705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4705=7428 := by core033_kernel_decide
theorem rows4706 : actualRows4706=WordField.canonicalRows actualModulus 4706 (.shr 4705 31) := by core033_kernel_decide
theorem stats4706 : actualRows4706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4706=2892 := by core033_kernel_decide
theorem rows4707 : actualRows4707=WordField.canonicalRows actualModulus 4707 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4707 : actualRows4707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4707=2892 := by core033_kernel_decide
theorem rows4708 : actualRows4708=WordField.canonicalRows actualModulus 4708 (.bxor 4706 4707) := by core033_kernel_decide
theorem stats4708 : actualRows4708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4708=7428 := by core033_kernel_decide
theorem rows4709 : actualRows4709=WordField.canonicalRows actualModulus 4709 (.bnot 4708) := by core033_kernel_decide
theorem stats4709 : actualRows4709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4709=6276 := by core033_kernel_decide
theorem rows4710 : actualRows4710=WordField.canonicalRows actualModulus 4710 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4710 : actualRows4710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4710=2892 := by core033_kernel_decide
theorem rows4711 : actualRows4711=WordField.canonicalRows actualModulus 4711 (.badd 4709 4710) := by core033_kernel_decide
theorem stats4711 : actualRows4711.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4711=5388 := by core033_kernel_decide
theorem rows4712 : actualRows4712=WordField.canonicalRows actualModulus 4712 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4712 : actualRows4712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4712=2820 := by core033_kernel_decide
theorem rows4713 : actualRows4713=WordField.canonicalRows actualModulus 4713 (.band 4711 4712) := by core033_kernel_decide
theorem stats4713 : actualRows4713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4713=5124 := by core033_kernel_decide
theorem rows4714 : actualRows4714=WordField.canonicalRows actualModulus 4714 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4714 : actualRows4714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4714=2892 := by core033_kernel_decide
def partRows72 : List R1CS.Row := actualRows4651++actualRows4652++actualRows4653++actualRows4654++actualRows4655++actualRows4656++actualRows4657++actualRows4658++actualRows4659++actualRows4660++actualRows4661++actualRows4662++actualRows4663++actualRows4664++actualRows4665++actualRows4666++actualRows4667++actualRows4668++actualRows4669++actualRows4670++actualRows4671++actualRows4672++actualRows4673++actualRows4674++actualRows4675++actualRows4676++actualRows4677++actualRows4678++actualRows4679++actualRows4680++actualRows4681++actualRows4682++actualRows4683++actualRows4684++actualRows4685++actualRows4686++actualRows4687++actualRows4688++actualRows4689++actualRows4690++actualRows4691++actualRows4692++actualRows4693++actualRows4694++actualRows4695++actualRows4696++actualRows4697++actualRows4698++actualRows4699++actualRows4700++actualRows4701++actualRows4702++actualRows4703++actualRows4704++actualRows4705++actualRows4706++actualRows4707++actualRows4708++actualRows4709++actualRows4710++actualRows4711++actualRows4712++actualRows4713++actualRows4714
def partOps72 : List WordIR.Op := [.band 4644 4650,.bxor 4639 4651,.shr 4652 31,.literal (BitVec.ofNat 32 1),.bxor 4653 4654,.bnot 4655,.literal (BitVec.ofNat 32 1),.badd 4656 4657,.literal (BitVec.ofNat 32 0),.band 4658 4659,.literal (BitVec.ofNat 32 2),.bxor 0 4661,.literal (BitVec.ofNat 32 0),.bnot 4663,.band 4662 4664,.literal (BitVec.ofNat 32 2),.bxor 0 4666,.literal (BitVec.ofNat 32 0),.bnot 4668,.bxor 4667 4669,.literal (BitVec.ofNat 32 2),.bxor 0 4671,.literal (BitVec.ofNat 32 0),.bnot 4673,.badd 4672 4674,.bnot 4675,.band 4670 4676,.bxor 4665 4677,.shr 4678 31,.literal (BitVec.ofNat 32 1),.bxor 4679 4680,.bnot 4681,.literal (BitVec.ofNat 32 1),.badd 4682 4683,.bnot 4684,.band 4685 947,.bxor 4660 4686,.literal (BitVec.ofNat 32 2),.bxor 0 4688,.literal (BitVec.ofNat 32 0),.bnot 4690,.band 4689 4691,.literal (BitVec.ofNat 32 2),.bxor 0 4693,.literal (BitVec.ofNat 32 0),.bnot 4695,.bxor 4694 4696,.literal (BitVec.ofNat 32 2),.bxor 0 4698,.literal (BitVec.ofNat 32 0),.bnot 4700,.badd 4699 4701,.bnot 4702,.band 4697 4703,.bxor 4692 4704,.shr 4705 31,.literal (BitVec.ofNat 32 1),.bxor 4706 4707,.bnot 4708,.literal (BitVec.ofNat 32 1),.badd 4709 4710,.literal (BitVec.ofNat 32 0),.band 4711 4712,.literal (BitVec.ofNat 32 2)]
theorem partExact72 : partRows72=WordField.rows actualModulus 4651 partOps72 := by
  simp only [partRows72,partOps72,WordField.rows,rows4651,rows4652,rows4653,rows4654,rows4655,rows4656,rows4657,rows4658,rows4659,rows4660,rows4661,rows4662,rows4663,rows4664,rows4665,rows4666,rows4667,rows4668,rows4669,rows4670,rows4671,rows4672,rows4673,rows4674,rows4675,rows4676,rows4677,rows4678,rows4679,rows4680,rows4681,rows4682,rows4683,rows4684,rows4685,rows4686,rows4687,rows4688,rows4689,rows4690,rows4691,rows4692,rows4693,rows4694,rows4695,rows4696,rows4697,rows4698,rows4699,rows4700,rows4701,rows4702,rows4703,rows4704,rows4705,rows4706,rows4707,rows4708,rows4709,rows4710,rows4711,rows4712,rows4713,rows4714,List.append_assoc,List.append_nil]
theorem partLength72 : partOps72.length=64 := by decide
theorem partStats72 : partRows72.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows72=323496 := by
  simp only [partRows72,List.length_append,MatrixRowBlocks.rows_weight_append,stats4651.1,stats4651.2,stats4652.1,stats4652.2,stats4653.1,stats4653.2,stats4654.1,stats4654.2,stats4655.1,stats4655.2,stats4656.1,stats4656.2,stats4657.1,stats4657.2,stats4658.1,stats4658.2,stats4659.1,stats4659.2,stats4660.1,stats4660.2,stats4661.1,stats4661.2,stats4662.1,stats4662.2,stats4663.1,stats4663.2,stats4664.1,stats4664.2,stats4665.1,stats4665.2,stats4666.1,stats4666.2,stats4667.1,stats4667.2,stats4668.1,stats4668.2,stats4669.1,stats4669.2,stats4670.1,stats4670.2,stats4671.1,stats4671.2,stats4672.1,stats4672.2,stats4673.1,stats4673.2,stats4674.1,stats4674.2,stats4675.1,stats4675.2,stats4676.1,stats4676.2,stats4677.1,stats4677.2,stats4678.1,stats4678.2,stats4679.1,stats4679.2,stats4680.1,stats4680.2,stats4681.1,stats4681.2,stats4682.1,stats4682.2,stats4683.1,stats4683.2,stats4684.1,stats4684.2,stats4685.1,stats4685.2,stats4686.1,stats4686.2,stats4687.1,stats4687.2,stats4688.1,stats4688.2,stats4689.1,stats4689.2,stats4690.1,stats4690.2,stats4691.1,stats4691.2,stats4692.1,stats4692.2,stats4693.1,stats4693.2,stats4694.1,stats4694.2,stats4695.1,stats4695.2,stats4696.1,stats4696.2,stats4697.1,stats4697.2,stats4698.1,stats4698.2,stats4699.1,stats4699.2,stats4700.1,stats4700.2,stats4701.1,stats4701.2,stats4702.1,stats4702.2,stats4703.1,stats4703.2,stats4704.1,stats4704.2,stats4705.1,stats4705.2,stats4706.1,stats4706.2,stats4707.1,stats4707.2,stats4708.1,stats4708.2,stats4709.1,stats4709.2,stats4710.1,stats4710.2,stats4711.1,stats4711.2,stats4712.1,stats4712.2,stats4713.1,stats4713.2,stats4714.1,stats4714.2]
  decide
end FrameHashControllerCheckedRows
