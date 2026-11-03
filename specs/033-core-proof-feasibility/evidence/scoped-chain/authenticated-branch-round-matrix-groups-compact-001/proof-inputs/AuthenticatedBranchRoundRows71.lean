import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData72
import AuthenticatedBranchRoundInstructionMatrixData73
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4662 : actualRows4662=WordField.canonicalRows actualModulus 4662 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4662 : actualRows4662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4662=2820 := by core033_kernel_decide
theorem rows4663 : actualRows4663=WordField.canonicalRows actualModulus 4663 (.bnot 4662) := by core033_kernel_decide
theorem stats4663 : actualRows4663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4663=6276 := by core033_kernel_decide
theorem rows4664 : actualRows4664=WordField.canonicalRows actualModulus 4664 (.band 4661 4663) := by core033_kernel_decide
theorem stats4664 : actualRows4664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4664=5124 := by core033_kernel_decide
theorem rows4665 : actualRows4665=WordField.canonicalRows actualModulus 4665 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4665 : actualRows4665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4665=2892 := by core033_kernel_decide
theorem rows4666 : actualRows4666=WordField.canonicalRows actualModulus 4666 (.bxor 1299 4665) := by core033_kernel_decide
theorem stats4666 : actualRows4666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4666=7428 := by core033_kernel_decide
theorem rows4667 : actualRows4667=WordField.canonicalRows actualModulus 4667 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4667 : actualRows4667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4667=2820 := by core033_kernel_decide
theorem rows4668 : actualRows4668=WordField.canonicalRows actualModulus 4668 (.bnot 4667) := by core033_kernel_decide
theorem stats4668 : actualRows4668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4668=6276 := by core033_kernel_decide
theorem rows4669 : actualRows4669=WordField.canonicalRows actualModulus 4669 (.bxor 4666 4668) := by core033_kernel_decide
theorem stats4669 : actualRows4669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4669=7428 := by core033_kernel_decide
theorem rows4670 : actualRows4670=WordField.canonicalRows actualModulus 4670 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4670 : actualRows4670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4670=2892 := by core033_kernel_decide
theorem rows4671 : actualRows4671=WordField.canonicalRows actualModulus 4671 (.bxor 1299 4670) := by core033_kernel_decide
theorem stats4671 : actualRows4671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4671=7428 := by core033_kernel_decide
theorem rows4672 : actualRows4672=WordField.canonicalRows actualModulus 4672 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4672 : actualRows4672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4672=2820 := by core033_kernel_decide
theorem rows4673 : actualRows4673=WordField.canonicalRows actualModulus 4673 (.bnot 4672) := by core033_kernel_decide
theorem stats4673 : actualRows4673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4673=6276 := by core033_kernel_decide
theorem rows4674 : actualRows4674=WordField.canonicalRows actualModulus 4674 (.badd 4671 4673) := by core033_kernel_decide
theorem stats4674 : actualRows4674.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4674=5388 := by core033_kernel_decide
theorem rows4675 : actualRows4675=WordField.canonicalRows actualModulus 4675 (.bnot 4674) := by core033_kernel_decide
theorem stats4675 : actualRows4675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4675=6276 := by core033_kernel_decide
theorem rows4676 : actualRows4676=WordField.canonicalRows actualModulus 4676 (.band 4669 4675) := by core033_kernel_decide
theorem stats4676 : actualRows4676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4676=5124 := by core033_kernel_decide
theorem rows4677 : actualRows4677=WordField.canonicalRows actualModulus 4677 (.bxor 4664 4676) := by core033_kernel_decide
theorem stats4677 : actualRows4677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4677=7428 := by core033_kernel_decide
theorem rows4678 : actualRows4678=WordField.canonicalRows actualModulus 4678 (.shr 4677 31) := by core033_kernel_decide
theorem stats4678 : actualRows4678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4678=2892 := by core033_kernel_decide
theorem rows4679 : actualRows4679=WordField.canonicalRows actualModulus 4679 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4679 : actualRows4679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4679=2892 := by core033_kernel_decide
theorem rows4680 : actualRows4680=WordField.canonicalRows actualModulus 4680 (.bxor 4678 4679) := by core033_kernel_decide
theorem stats4680 : actualRows4680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4680=7428 := by core033_kernel_decide
theorem rows4681 : actualRows4681=WordField.canonicalRows actualModulus 4681 (.bnot 4680) := by core033_kernel_decide
theorem stats4681 : actualRows4681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4681=6276 := by core033_kernel_decide
theorem rows4682 : actualRows4682=WordField.canonicalRows actualModulus 4682 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4682 : actualRows4682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4682=2892 := by core033_kernel_decide
theorem rows4683 : actualRows4683=WordField.canonicalRows actualModulus 4683 (.badd 4681 4682) := by core033_kernel_decide
theorem stats4683 : actualRows4683.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4683=5388 := by core033_kernel_decide
theorem rows4684 : actualRows4684=WordField.canonicalRows actualModulus 4684 (.bnot 4683) := by core033_kernel_decide
theorem stats4684 : actualRows4684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4684=6276 := by core033_kernel_decide
theorem rows4685 : actualRows4685=WordField.canonicalRows actualModulus 4685 (.band 4684 2567) := by core033_kernel_decide
theorem stats4685 : actualRows4685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4685=5124 := by core033_kernel_decide
theorem rows4686 : actualRows4686=WordField.canonicalRows actualModulus 4686 (.bxor 4659 4685) := by core033_kernel_decide
theorem stats4686 : actualRows4686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4686=7428 := by core033_kernel_decide
theorem rows4687 : actualRows4687=WordField.canonicalRows actualModulus 4687 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4687 : actualRows4687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4687=2892 := by core033_kernel_decide
theorem rows4688 : actualRows4688=WordField.canonicalRows actualModulus 4688 (.bxor 1299 4687) := by core033_kernel_decide
theorem stats4688 : actualRows4688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4688=7428 := by core033_kernel_decide
theorem rows4689 : actualRows4689=WordField.canonicalRows actualModulus 4689 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4689 : actualRows4689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4689=2820 := by core033_kernel_decide
theorem rows4690 : actualRows4690=WordField.canonicalRows actualModulus 4690 (.bnot 4689) := by core033_kernel_decide
theorem stats4690 : actualRows4690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4690=6276 := by core033_kernel_decide
theorem rows4691 : actualRows4691=WordField.canonicalRows actualModulus 4691 (.band 4688 4690) := by core033_kernel_decide
theorem stats4691 : actualRows4691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4691=5124 := by core033_kernel_decide
theorem rows4692 : actualRows4692=WordField.canonicalRows actualModulus 4692 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4692 : actualRows4692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4692=2892 := by core033_kernel_decide
theorem rows4693 : actualRows4693=WordField.canonicalRows actualModulus 4693 (.bxor 1299 4692) := by core033_kernel_decide
theorem stats4693 : actualRows4693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4693=7428 := by core033_kernel_decide
theorem rows4694 : actualRows4694=WordField.canonicalRows actualModulus 4694 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4694 : actualRows4694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4694=2820 := by core033_kernel_decide
theorem rows4695 : actualRows4695=WordField.canonicalRows actualModulus 4695 (.bnot 4694) := by core033_kernel_decide
theorem stats4695 : actualRows4695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4695=6276 := by core033_kernel_decide
theorem rows4696 : actualRows4696=WordField.canonicalRows actualModulus 4696 (.bxor 4693 4695) := by core033_kernel_decide
theorem stats4696 : actualRows4696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4696=7428 := by core033_kernel_decide
theorem rows4697 : actualRows4697=WordField.canonicalRows actualModulus 4697 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4697 : actualRows4697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4697=2892 := by core033_kernel_decide
theorem rows4698 : actualRows4698=WordField.canonicalRows actualModulus 4698 (.bxor 1299 4697) := by core033_kernel_decide
theorem stats4698 : actualRows4698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4698=7428 := by core033_kernel_decide
theorem rows4699 : actualRows4699=WordField.canonicalRows actualModulus 4699 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4699 : actualRows4699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4699=2820 := by core033_kernel_decide
theorem rows4700 : actualRows4700=WordField.canonicalRows actualModulus 4700 (.bnot 4699) := by core033_kernel_decide
theorem stats4700 : actualRows4700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4700=6276 := by core033_kernel_decide
theorem rows4701 : actualRows4701=WordField.canonicalRows actualModulus 4701 (.badd 4698 4700) := by core033_kernel_decide
theorem stats4701 : actualRows4701.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4701=5388 := by core033_kernel_decide
theorem rows4702 : actualRows4702=WordField.canonicalRows actualModulus 4702 (.bnot 4701) := by core033_kernel_decide
theorem stats4702 : actualRows4702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4702=6276 := by core033_kernel_decide
theorem rows4703 : actualRows4703=WordField.canonicalRows actualModulus 4703 (.band 4696 4702) := by core033_kernel_decide
theorem stats4703 : actualRows4703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4703=5124 := by core033_kernel_decide
theorem rows4704 : actualRows4704=WordField.canonicalRows actualModulus 4704 (.bxor 4691 4703) := by core033_kernel_decide
theorem stats4704 : actualRows4704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4704=7428 := by core033_kernel_decide
theorem rows4705 : actualRows4705=WordField.canonicalRows actualModulus 4705 (.shr 4704 31) := by core033_kernel_decide
theorem stats4705 : actualRows4705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4705=2892 := by core033_kernel_decide
theorem rows4706 : actualRows4706=WordField.canonicalRows actualModulus 4706 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4706 : actualRows4706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4706=2892 := by core033_kernel_decide
theorem rows4707 : actualRows4707=WordField.canonicalRows actualModulus 4707 (.bxor 4705 4706) := by core033_kernel_decide
theorem stats4707 : actualRows4707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4707=7428 := by core033_kernel_decide
theorem rows4708 : actualRows4708=WordField.canonicalRows actualModulus 4708 (.bnot 4707) := by core033_kernel_decide
theorem stats4708 : actualRows4708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4708=6276 := by core033_kernel_decide
theorem rows4709 : actualRows4709=WordField.canonicalRows actualModulus 4709 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4709 : actualRows4709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4709=2892 := by core033_kernel_decide
theorem rows4710 : actualRows4710=WordField.canonicalRows actualModulus 4710 (.badd 4708 4709) := by core033_kernel_decide
theorem stats4710 : actualRows4710.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4710=5388 := by core033_kernel_decide
theorem rows4711 : actualRows4711=WordField.canonicalRows actualModulus 4711 (.band 4710 2762) := by core033_kernel_decide
theorem stats4711 : actualRows4711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4711=5124 := by core033_kernel_decide
theorem rows4712 : actualRows4712=WordField.canonicalRows actualModulus 4712 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4712 : actualRows4712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4712=2892 := by core033_kernel_decide
theorem rows4713 : actualRows4713=WordField.canonicalRows actualModulus 4713 (.bxor 1299 4712) := by core033_kernel_decide
theorem stats4713 : actualRows4713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4713=7428 := by core033_kernel_decide
theorem rows4714 : actualRows4714=WordField.canonicalRows actualModulus 4714 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4714 : actualRows4714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4714=2820 := by core033_kernel_decide
theorem rows4715 : actualRows4715=WordField.canonicalRows actualModulus 4715 (.bnot 4714) := by core033_kernel_decide
theorem stats4715 : actualRows4715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4715=6276 := by core033_kernel_decide
theorem rows4716 : actualRows4716=WordField.canonicalRows actualModulus 4716 (.band 4713 4715) := by core033_kernel_decide
theorem stats4716 : actualRows4716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4716=5124 := by core033_kernel_decide
theorem rows4717 : actualRows4717=WordField.canonicalRows actualModulus 4717 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4717 : actualRows4717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4717=2892 := by core033_kernel_decide
theorem rows4718 : actualRows4718=WordField.canonicalRows actualModulus 4718 (.bxor 1299 4717) := by core033_kernel_decide
theorem stats4718 : actualRows4718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4718=7428 := by core033_kernel_decide
theorem rows4719 : actualRows4719=WordField.canonicalRows actualModulus 4719 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4719 : actualRows4719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4719=2820 := by core033_kernel_decide
theorem rows4720 : actualRows4720=WordField.canonicalRows actualModulus 4720 (.bnot 4719) := by core033_kernel_decide
theorem stats4720 : actualRows4720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4720=6276 := by core033_kernel_decide
theorem rows4721 : actualRows4721=WordField.canonicalRows actualModulus 4721 (.bxor 4718 4720) := by core033_kernel_decide
theorem stats4721 : actualRows4721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4721=7428 := by core033_kernel_decide
theorem rows4722 : actualRows4722=WordField.canonicalRows actualModulus 4722 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4722 : actualRows4722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4722=2892 := by core033_kernel_decide
theorem rows4723 : actualRows4723=WordField.canonicalRows actualModulus 4723 (.bxor 1299 4722) := by core033_kernel_decide
theorem stats4723 : actualRows4723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4723=7428 := by core033_kernel_decide
theorem rows4724 : actualRows4724=WordField.canonicalRows actualModulus 4724 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4724 : actualRows4724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4724=2820 := by core033_kernel_decide
theorem rows4725 : actualRows4725=WordField.canonicalRows actualModulus 4725 (.bnot 4724) := by core033_kernel_decide
theorem stats4725 : actualRows4725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4725=6276 := by core033_kernel_decide
def partRows71 : List R1CS.Row := actualRows4662++actualRows4663++actualRows4664++actualRows4665++actualRows4666++actualRows4667++actualRows4668++actualRows4669++actualRows4670++actualRows4671++actualRows4672++actualRows4673++actualRows4674++actualRows4675++actualRows4676++actualRows4677++actualRows4678++actualRows4679++actualRows4680++actualRows4681++actualRows4682++actualRows4683++actualRows4684++actualRows4685++actualRows4686++actualRows4687++actualRows4688++actualRows4689++actualRows4690++actualRows4691++actualRows4692++actualRows4693++actualRows4694++actualRows4695++actualRows4696++actualRows4697++actualRows4698++actualRows4699++actualRows4700++actualRows4701++actualRows4702++actualRows4703++actualRows4704++actualRows4705++actualRows4706++actualRows4707++actualRows4708++actualRows4709++actualRows4710++actualRows4711++actualRows4712++actualRows4713++actualRows4714++actualRows4715++actualRows4716++actualRows4717++actualRows4718++actualRows4719++actualRows4720++actualRows4721++actualRows4722++actualRows4723++actualRows4724++actualRows4725
def partOps71 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 4662,.band 4661 4663,.literal (BitVec.ofNat 32 2),.bxor 1299 4665,.literal (BitVec.ofNat 32 0),.bnot 4667,.bxor 4666 4668,.literal (BitVec.ofNat 32 2),.bxor 1299 4670,.literal (BitVec.ofNat 32 0),.bnot 4672,.badd 4671 4673,.bnot 4674,.band 4669 4675,.bxor 4664 4676,.shr 4677 31,.literal (BitVec.ofNat 32 1),.bxor 4678 4679,.bnot 4680,.literal (BitVec.ofNat 32 1),.badd 4681 4682,.bnot 4683,.band 4684 2567,.bxor 4659 4685,.literal (BitVec.ofNat 32 2),.bxor 1299 4687,.literal (BitVec.ofNat 32 0),.bnot 4689,.band 4688 4690,.literal (BitVec.ofNat 32 2),.bxor 1299 4692,.literal (BitVec.ofNat 32 0),.bnot 4694,.bxor 4693 4695,.literal (BitVec.ofNat 32 2),.bxor 1299 4697,.literal (BitVec.ofNat 32 0),.bnot 4699,.badd 4698 4700,.bnot 4701,.band 4696 4702,.bxor 4691 4703,.shr 4704 31,.literal (BitVec.ofNat 32 1),.bxor 4705 4706,.bnot 4707,.literal (BitVec.ofNat 32 1),.badd 4708 4709,.band 4710 2762,.literal (BitVec.ofNat 32 2),.bxor 1299 4712,.literal (BitVec.ofNat 32 0),.bnot 4714,.band 4713 4715,.literal (BitVec.ofNat 32 2),.bxor 1299 4717,.literal (BitVec.ofNat 32 0),.bnot 4719,.bxor 4718 4720,.literal (BitVec.ofNat 32 2),.bxor 1299 4722,.literal (BitVec.ofNat 32 0),.bnot 4724]
theorem partExact71 : partRows71=WordField.rows actualModulus 4662 partOps71 := by
  simp only [partRows71,partOps71,WordField.rows,rows4662,rows4663,rows4664,rows4665,rows4666,rows4667,rows4668,rows4669,rows4670,rows4671,rows4672,rows4673,rows4674,rows4675,rows4676,rows4677,rows4678,rows4679,rows4680,rows4681,rows4682,rows4683,rows4684,rows4685,rows4686,rows4687,rows4688,rows4689,rows4690,rows4691,rows4692,rows4693,rows4694,rows4695,rows4696,rows4697,rows4698,rows4699,rows4700,rows4701,rows4702,rows4703,rows4704,rows4705,rows4706,rows4707,rows4708,rows4709,rows4710,rows4711,rows4712,rows4713,rows4714,rows4715,rows4716,rows4717,rows4718,rows4719,rows4720,rows4721,rows4722,rows4723,rows4724,rows4725,List.append_assoc,List.append_nil]
theorem partLength71 : partOps71.length=64 := by decide
theorem partStats71 : partRows71.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows71=330000 := by
  simp only [partRows71,List.length_append,MatrixRowBlocks.rows_weight_append,stats4662.1,stats4662.2,stats4663.1,stats4663.2,stats4664.1,stats4664.2,stats4665.1,stats4665.2,stats4666.1,stats4666.2,stats4667.1,stats4667.2,stats4668.1,stats4668.2,stats4669.1,stats4669.2,stats4670.1,stats4670.2,stats4671.1,stats4671.2,stats4672.1,stats4672.2,stats4673.1,stats4673.2,stats4674.1,stats4674.2,stats4675.1,stats4675.2,stats4676.1,stats4676.2,stats4677.1,stats4677.2,stats4678.1,stats4678.2,stats4679.1,stats4679.2,stats4680.1,stats4680.2,stats4681.1,stats4681.2,stats4682.1,stats4682.2,stats4683.1,stats4683.2,stats4684.1,stats4684.2,stats4685.1,stats4685.2,stats4686.1,stats4686.2,stats4687.1,stats4687.2,stats4688.1,stats4688.2,stats4689.1,stats4689.2,stats4690.1,stats4690.2,stats4691.1,stats4691.2,stats4692.1,stats4692.2,stats4693.1,stats4693.2,stats4694.1,stats4694.2,stats4695.1,stats4695.2,stats4696.1,stats4696.2,stats4697.1,stats4697.2,stats4698.1,stats4698.2,stats4699.1,stats4699.2,stats4700.1,stats4700.2,stats4701.1,stats4701.2,stats4702.1,stats4702.2,stats4703.1,stats4703.2,stats4704.1,stats4704.2,stats4705.1,stats4705.2,stats4706.1,stats4706.2,stats4707.1,stats4707.2,stats4708.1,stats4708.2,stats4709.1,stats4709.2,stats4710.1,stats4710.2,stats4711.1,stats4711.2,stats4712.1,stats4712.2,stats4713.1,stats4713.2,stats4714.1,stats4714.2,stats4715.1,stats4715.2,stats4716.1,stats4716.2,stats4717.1,stats4717.2,stats4718.1,stats4718.2,stats4719.1,stats4719.2,stats4720.1,stats4720.2,stats4721.1,stats4721.2,stats4722.1,stats4722.2,stats4723.1,stats4723.2,stats4724.1,stats4724.2,stats4725.1,stats4725.2]
  decide
end AuthenticatedBranchRoundCheckedRows
