import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData74
import AuthenticatedBranchRoundInstructionMatrixData75
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4790 : actualRows4790=WordField.canonicalRows actualModulus 4790 (.bxor 4763 4789) := by core033_kernel_decide
theorem stats4790 : actualRows4790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4790=7428 := by core033_kernel_decide
theorem rows4791 : actualRows4791=WordField.canonicalRows actualModulus 4791 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4791 : actualRows4791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4791=2892 := by core033_kernel_decide
theorem rows4792 : actualRows4792=WordField.canonicalRows actualModulus 4792 (.bxor 1299 4791) := by core033_kernel_decide
theorem stats4792 : actualRows4792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4792=7428 := by core033_kernel_decide
theorem rows4793 : actualRows4793=WordField.canonicalRows actualModulus 4793 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4793 : actualRows4793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4793=2820 := by core033_kernel_decide
theorem rows4794 : actualRows4794=WordField.canonicalRows actualModulus 4794 (.bnot 4793) := by core033_kernel_decide
theorem stats4794 : actualRows4794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4794=6276 := by core033_kernel_decide
theorem rows4795 : actualRows4795=WordField.canonicalRows actualModulus 4795 (.band 4792 4794) := by core033_kernel_decide
theorem stats4795 : actualRows4795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4795=5124 := by core033_kernel_decide
theorem rows4796 : actualRows4796=WordField.canonicalRows actualModulus 4796 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4796 : actualRows4796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4796=2892 := by core033_kernel_decide
theorem rows4797 : actualRows4797=WordField.canonicalRows actualModulus 4797 (.bxor 1299 4796) := by core033_kernel_decide
theorem stats4797 : actualRows4797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4797=7428 := by core033_kernel_decide
theorem rows4798 : actualRows4798=WordField.canonicalRows actualModulus 4798 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4798 : actualRows4798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4798=2820 := by core033_kernel_decide
theorem rows4799 : actualRows4799=WordField.canonicalRows actualModulus 4799 (.bnot 4798) := by core033_kernel_decide
theorem stats4799 : actualRows4799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4799=6276 := by core033_kernel_decide
theorem rows4800 : actualRows4800=WordField.canonicalRows actualModulus 4800 (.bxor 4797 4799) := by core033_kernel_decide
theorem stats4800 : actualRows4800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4800=7428 := by core033_kernel_decide
theorem rows4801 : actualRows4801=WordField.canonicalRows actualModulus 4801 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4801 : actualRows4801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4801=2892 := by core033_kernel_decide
theorem rows4802 : actualRows4802=WordField.canonicalRows actualModulus 4802 (.bxor 1299 4801) := by core033_kernel_decide
theorem stats4802 : actualRows4802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4802=7428 := by core033_kernel_decide
theorem rows4803 : actualRows4803=WordField.canonicalRows actualModulus 4803 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4803 : actualRows4803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4803=2820 := by core033_kernel_decide
theorem rows4804 : actualRows4804=WordField.canonicalRows actualModulus 4804 (.bnot 4803) := by core033_kernel_decide
theorem stats4804 : actualRows4804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4804=6276 := by core033_kernel_decide
theorem rows4805 : actualRows4805=WordField.canonicalRows actualModulus 4805 (.badd 4802 4804) := by core033_kernel_decide
theorem stats4805 : actualRows4805.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4805=5388 := by core033_kernel_decide
theorem rows4806 : actualRows4806=WordField.canonicalRows actualModulus 4806 (.bnot 4805) := by core033_kernel_decide
theorem stats4806 : actualRows4806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4806=6276 := by core033_kernel_decide
theorem rows4807 : actualRows4807=WordField.canonicalRows actualModulus 4807 (.band 4800 4806) := by core033_kernel_decide
theorem stats4807 : actualRows4807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4807=5124 := by core033_kernel_decide
theorem rows4808 : actualRows4808=WordField.canonicalRows actualModulus 4808 (.bxor 4795 4807) := by core033_kernel_decide
theorem stats4808 : actualRows4808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4808=7428 := by core033_kernel_decide
theorem rows4809 : actualRows4809=WordField.canonicalRows actualModulus 4809 (.shr 4808 31) := by core033_kernel_decide
theorem stats4809 : actualRows4809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4809=2892 := by core033_kernel_decide
theorem rows4810 : actualRows4810=WordField.canonicalRows actualModulus 4810 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4810 : actualRows4810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4810=2892 := by core033_kernel_decide
theorem rows4811 : actualRows4811=WordField.canonicalRows actualModulus 4811 (.bxor 4809 4810) := by core033_kernel_decide
theorem stats4811 : actualRows4811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4811=7428 := by core033_kernel_decide
theorem rows4812 : actualRows4812=WordField.canonicalRows actualModulus 4812 (.bnot 4811) := by core033_kernel_decide
theorem stats4812 : actualRows4812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4812=6276 := by core033_kernel_decide
theorem rows4813 : actualRows4813=WordField.canonicalRows actualModulus 4813 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4813 : actualRows4813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4813=2892 := by core033_kernel_decide
theorem rows4814 : actualRows4814=WordField.canonicalRows actualModulus 4814 (.badd 4812 4813) := by core033_kernel_decide
theorem stats4814 : actualRows4814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4814=5388 := by core033_kernel_decide
theorem rows4815 : actualRows4815=WordField.canonicalRows actualModulus 4815 (.band 4814 2768) := by core033_kernel_decide
theorem stats4815 : actualRows4815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4815=5124 := by core033_kernel_decide
theorem rows4816 : actualRows4816=WordField.canonicalRows actualModulus 4816 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4816 : actualRows4816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4816=2892 := by core033_kernel_decide
theorem rows4817 : actualRows4817=WordField.canonicalRows actualModulus 4817 (.bxor 1299 4816) := by core033_kernel_decide
theorem stats4817 : actualRows4817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4817=7428 := by core033_kernel_decide
theorem rows4818 : actualRows4818=WordField.canonicalRows actualModulus 4818 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4818 : actualRows4818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4818=2820 := by core033_kernel_decide
theorem rows4819 : actualRows4819=WordField.canonicalRows actualModulus 4819 (.bnot 4818) := by core033_kernel_decide
theorem stats4819 : actualRows4819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4819=6276 := by core033_kernel_decide
theorem rows4820 : actualRows4820=WordField.canonicalRows actualModulus 4820 (.band 4817 4819) := by core033_kernel_decide
theorem stats4820 : actualRows4820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4820=5124 := by core033_kernel_decide
theorem rows4821 : actualRows4821=WordField.canonicalRows actualModulus 4821 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4821 : actualRows4821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4821=2892 := by core033_kernel_decide
theorem rows4822 : actualRows4822=WordField.canonicalRows actualModulus 4822 (.bxor 1299 4821) := by core033_kernel_decide
theorem stats4822 : actualRows4822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4822=7428 := by core033_kernel_decide
theorem rows4823 : actualRows4823=WordField.canonicalRows actualModulus 4823 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4823 : actualRows4823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4823=2820 := by core033_kernel_decide
theorem rows4824 : actualRows4824=WordField.canonicalRows actualModulus 4824 (.bnot 4823) := by core033_kernel_decide
theorem stats4824 : actualRows4824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4824=6276 := by core033_kernel_decide
theorem rows4825 : actualRows4825=WordField.canonicalRows actualModulus 4825 (.bxor 4822 4824) := by core033_kernel_decide
theorem stats4825 : actualRows4825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4825=7428 := by core033_kernel_decide
theorem rows4826 : actualRows4826=WordField.canonicalRows actualModulus 4826 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4826 : actualRows4826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4826=2892 := by core033_kernel_decide
theorem rows4827 : actualRows4827=WordField.canonicalRows actualModulus 4827 (.bxor 1299 4826) := by core033_kernel_decide
theorem stats4827 : actualRows4827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4827=7428 := by core033_kernel_decide
theorem rows4828 : actualRows4828=WordField.canonicalRows actualModulus 4828 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4828 : actualRows4828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4828=2820 := by core033_kernel_decide
theorem rows4829 : actualRows4829=WordField.canonicalRows actualModulus 4829 (.bnot 4828) := by core033_kernel_decide
theorem stats4829 : actualRows4829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4829=6276 := by core033_kernel_decide
theorem rows4830 : actualRows4830=WordField.canonicalRows actualModulus 4830 (.badd 4827 4829) := by core033_kernel_decide
theorem stats4830 : actualRows4830.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4830=5388 := by core033_kernel_decide
theorem rows4831 : actualRows4831=WordField.canonicalRows actualModulus 4831 (.bnot 4830) := by core033_kernel_decide
theorem stats4831 : actualRows4831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4831=6276 := by core033_kernel_decide
theorem rows4832 : actualRows4832=WordField.canonicalRows actualModulus 4832 (.band 4825 4831) := by core033_kernel_decide
theorem stats4832 : actualRows4832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4832=5124 := by core033_kernel_decide
theorem rows4833 : actualRows4833=WordField.canonicalRows actualModulus 4833 (.bxor 4820 4832) := by core033_kernel_decide
theorem stats4833 : actualRows4833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4833=7428 := by core033_kernel_decide
theorem rows4834 : actualRows4834=WordField.canonicalRows actualModulus 4834 (.shr 4833 31) := by core033_kernel_decide
theorem stats4834 : actualRows4834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4834=2892 := by core033_kernel_decide
theorem rows4835 : actualRows4835=WordField.canonicalRows actualModulus 4835 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4835 : actualRows4835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4835=2892 := by core033_kernel_decide
theorem rows4836 : actualRows4836=WordField.canonicalRows actualModulus 4836 (.bxor 4834 4835) := by core033_kernel_decide
theorem stats4836 : actualRows4836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4836=7428 := by core033_kernel_decide
theorem rows4837 : actualRows4837=WordField.canonicalRows actualModulus 4837 (.bnot 4836) := by core033_kernel_decide
theorem stats4837 : actualRows4837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4837=6276 := by core033_kernel_decide
theorem rows4838 : actualRows4838=WordField.canonicalRows actualModulus 4838 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4838 : actualRows4838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4838=2892 := by core033_kernel_decide
theorem rows4839 : actualRows4839=WordField.canonicalRows actualModulus 4839 (.badd 4837 4838) := by core033_kernel_decide
theorem stats4839 : actualRows4839.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4839=5388 := by core033_kernel_decide
theorem rows4840 : actualRows4840=WordField.canonicalRows actualModulus 4840 (.bnot 4839) := by core033_kernel_decide
theorem stats4840 : actualRows4840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4840=6276 := by core033_kernel_decide
theorem rows4841 : actualRows4841=WordField.canonicalRows actualModulus 4841 (.band 4840 2576) := by core033_kernel_decide
theorem stats4841 : actualRows4841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4841=5124 := by core033_kernel_decide
theorem rows4842 : actualRows4842=WordField.canonicalRows actualModulus 4842 (.bxor 4815 4841) := by core033_kernel_decide
theorem stats4842 : actualRows4842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4842=7428 := by core033_kernel_decide
theorem rows4843 : actualRows4843=WordField.canonicalRows actualModulus 4843 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4843 : actualRows4843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4843=2892 := by core033_kernel_decide
theorem rows4844 : actualRows4844=WordField.canonicalRows actualModulus 4844 (.bxor 1299 4843) := by core033_kernel_decide
theorem stats4844 : actualRows4844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4844=7428 := by core033_kernel_decide
theorem rows4845 : actualRows4845=WordField.canonicalRows actualModulus 4845 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4845 : actualRows4845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4845=2820 := by core033_kernel_decide
theorem rows4846 : actualRows4846=WordField.canonicalRows actualModulus 4846 (.bnot 4845) := by core033_kernel_decide
theorem stats4846 : actualRows4846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4846=6276 := by core033_kernel_decide
theorem rows4847 : actualRows4847=WordField.canonicalRows actualModulus 4847 (.band 4844 4846) := by core033_kernel_decide
theorem stats4847 : actualRows4847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4847=5124 := by core033_kernel_decide
theorem rows4848 : actualRows4848=WordField.canonicalRows actualModulus 4848 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4848 : actualRows4848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4848=2892 := by core033_kernel_decide
theorem rows4849 : actualRows4849=WordField.canonicalRows actualModulus 4849 (.bxor 1299 4848) := by core033_kernel_decide
theorem stats4849 : actualRows4849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4849=7428 := by core033_kernel_decide
theorem rows4850 : actualRows4850=WordField.canonicalRows actualModulus 4850 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4850 : actualRows4850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4850=2820 := by core033_kernel_decide
theorem rows4851 : actualRows4851=WordField.canonicalRows actualModulus 4851 (.bnot 4850) := by core033_kernel_decide
theorem stats4851 : actualRows4851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4851=6276 := by core033_kernel_decide
theorem rows4852 : actualRows4852=WordField.canonicalRows actualModulus 4852 (.bxor 4849 4851) := by core033_kernel_decide
theorem stats4852 : actualRows4852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4852=7428 := by core033_kernel_decide
theorem rows4853 : actualRows4853=WordField.canonicalRows actualModulus 4853 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4853 : actualRows4853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4853=2892 := by core033_kernel_decide
def partRows73 : List R1CS.Row := actualRows4790++actualRows4791++actualRows4792++actualRows4793++actualRows4794++actualRows4795++actualRows4796++actualRows4797++actualRows4798++actualRows4799++actualRows4800++actualRows4801++actualRows4802++actualRows4803++actualRows4804++actualRows4805++actualRows4806++actualRows4807++actualRows4808++actualRows4809++actualRows4810++actualRows4811++actualRows4812++actualRows4813++actualRows4814++actualRows4815++actualRows4816++actualRows4817++actualRows4818++actualRows4819++actualRows4820++actualRows4821++actualRows4822++actualRows4823++actualRows4824++actualRows4825++actualRows4826++actualRows4827++actualRows4828++actualRows4829++actualRows4830++actualRows4831++actualRows4832++actualRows4833++actualRows4834++actualRows4835++actualRows4836++actualRows4837++actualRows4838++actualRows4839++actualRows4840++actualRows4841++actualRows4842++actualRows4843++actualRows4844++actualRows4845++actualRows4846++actualRows4847++actualRows4848++actualRows4849++actualRows4850++actualRows4851++actualRows4852++actualRows4853
def partOps73 : List WordIR.Op := [.bxor 4763 4789,.literal (BitVec.ofNat 32 2),.bxor 1299 4791,.literal (BitVec.ofNat 32 0),.bnot 4793,.band 4792 4794,.literal (BitVec.ofNat 32 2),.bxor 1299 4796,.literal (BitVec.ofNat 32 0),.bnot 4798,.bxor 4797 4799,.literal (BitVec.ofNat 32 2),.bxor 1299 4801,.literal (BitVec.ofNat 32 0),.bnot 4803,.badd 4802 4804,.bnot 4805,.band 4800 4806,.bxor 4795 4807,.shr 4808 31,.literal (BitVec.ofNat 32 1),.bxor 4809 4810,.bnot 4811,.literal (BitVec.ofNat 32 1),.badd 4812 4813,.band 4814 2768,.literal (BitVec.ofNat 32 2),.bxor 1299 4816,.literal (BitVec.ofNat 32 0),.bnot 4818,.band 4817 4819,.literal (BitVec.ofNat 32 2),.bxor 1299 4821,.literal (BitVec.ofNat 32 0),.bnot 4823,.bxor 4822 4824,.literal (BitVec.ofNat 32 2),.bxor 1299 4826,.literal (BitVec.ofNat 32 0),.bnot 4828,.badd 4827 4829,.bnot 4830,.band 4825 4831,.bxor 4820 4832,.shr 4833 31,.literal (BitVec.ofNat 32 1),.bxor 4834 4835,.bnot 4836,.literal (BitVec.ofNat 32 1),.badd 4837 4838,.bnot 4839,.band 4840 2576,.bxor 4815 4841,.literal (BitVec.ofNat 32 2),.bxor 1299 4843,.literal (BitVec.ofNat 32 0),.bnot 4845,.band 4844 4846,.literal (BitVec.ofNat 32 2),.bxor 1299 4848,.literal (BitVec.ofNat 32 0),.bnot 4850,.bxor 4849 4851,.literal (BitVec.ofNat 32 2)]
theorem partExact73 : partRows73=WordField.rows actualModulus 4790 partOps73 := by
  simp only [partRows73,partOps73,WordField.rows,rows4790,rows4791,rows4792,rows4793,rows4794,rows4795,rows4796,rows4797,rows4798,rows4799,rows4800,rows4801,rows4802,rows4803,rows4804,rows4805,rows4806,rows4807,rows4808,rows4809,rows4810,rows4811,rows4812,rows4813,rows4814,rows4815,rows4816,rows4817,rows4818,rows4819,rows4820,rows4821,rows4822,rows4823,rows4824,rows4825,rows4826,rows4827,rows4828,rows4829,rows4830,rows4831,rows4832,rows4833,rows4834,rows4835,rows4836,rows4837,rows4838,rows4839,rows4840,rows4841,rows4842,rows4843,rows4844,rows4845,rows4846,rows4847,rows4848,rows4849,rows4850,rows4851,rows4852,rows4853,List.append_assoc,List.append_nil]
theorem partLength73 : partOps73.length=64 := by decide
theorem partStats73 : partRows73.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows73=331224 := by
  simp only [partRows73,List.length_append,MatrixRowBlocks.rows_weight_append,stats4790.1,stats4790.2,stats4791.1,stats4791.2,stats4792.1,stats4792.2,stats4793.1,stats4793.2,stats4794.1,stats4794.2,stats4795.1,stats4795.2,stats4796.1,stats4796.2,stats4797.1,stats4797.2,stats4798.1,stats4798.2,stats4799.1,stats4799.2,stats4800.1,stats4800.2,stats4801.1,stats4801.2,stats4802.1,stats4802.2,stats4803.1,stats4803.2,stats4804.1,stats4804.2,stats4805.1,stats4805.2,stats4806.1,stats4806.2,stats4807.1,stats4807.2,stats4808.1,stats4808.2,stats4809.1,stats4809.2,stats4810.1,stats4810.2,stats4811.1,stats4811.2,stats4812.1,stats4812.2,stats4813.1,stats4813.2,stats4814.1,stats4814.2,stats4815.1,stats4815.2,stats4816.1,stats4816.2,stats4817.1,stats4817.2,stats4818.1,stats4818.2,stats4819.1,stats4819.2,stats4820.1,stats4820.2,stats4821.1,stats4821.2,stats4822.1,stats4822.2,stats4823.1,stats4823.2,stats4824.1,stats4824.2,stats4825.1,stats4825.2,stats4826.1,stats4826.2,stats4827.1,stats4827.2,stats4828.1,stats4828.2,stats4829.1,stats4829.2,stats4830.1,stats4830.2,stats4831.1,stats4831.2,stats4832.1,stats4832.2,stats4833.1,stats4833.2,stats4834.1,stats4834.2,stats4835.1,stats4835.2,stats4836.1,stats4836.2,stats4837.1,stats4837.2,stats4838.1,stats4838.2,stats4839.1,stats4839.2,stats4840.1,stats4840.2,stats4841.1,stats4841.2,stats4842.1,stats4842.2,stats4843.1,stats4843.2,stats4844.1,stats4844.2,stats4845.1,stats4845.2,stats4846.1,stats4846.2,stats4847.1,stats4847.2,stats4848.1,stats4848.2,stats4849.1,stats4849.2,stats4850.1,stats4850.2,stats4851.1,stats4851.2,stats4852.1,stats4852.2,stats4853.1,stats4853.2]
  decide
end AuthenticatedBranchRoundCheckedRows
