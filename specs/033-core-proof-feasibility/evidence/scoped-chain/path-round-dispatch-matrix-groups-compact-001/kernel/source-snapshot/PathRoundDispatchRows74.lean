import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData74
import PathRoundDispatchInstructionMatrixData75
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4779 : actualRows4779=WordField.canonicalRows actualModulus 4779 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4779 : actualRows4779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4779=2892 := by core033_kernel_decide
theorem rows4780 : actualRows4780=WordField.canonicalRows actualModulus 4780 (.badd 4778 4779) := by core033_kernel_decide
theorem stats4780 : actualRows4780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4780=5388 := by core033_kernel_decide
theorem rows4781 : actualRows4781=WordField.canonicalRows actualModulus 4781 (.bnot 4780) := by core033_kernel_decide
theorem stats4781 : actualRows4781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4781=6276 := by core033_kernel_decide
theorem rows4782 : actualRows4782=WordField.canonicalRows actualModulus 4782 (.band 4781 1439) := by core033_kernel_decide
theorem stats4782 : actualRows4782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4782=5124 := by core033_kernel_decide
theorem rows4783 : actualRows4783=WordField.canonicalRows actualModulus 4783 (.bxor 4756 4782) := by core033_kernel_decide
theorem stats4783 : actualRows4783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4783=7428 := by core033_kernel_decide
theorem rows4784 : actualRows4784=WordField.canonicalRows actualModulus 4784 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4784 : actualRows4784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4784=2892 := by core033_kernel_decide
theorem rows4785 : actualRows4785=WordField.canonicalRows actualModulus 4785 (.bxor 96 4784) := by core033_kernel_decide
theorem stats4785 : actualRows4785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4785=7428 := by core033_kernel_decide
theorem rows4786 : actualRows4786=WordField.canonicalRows actualModulus 4786 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4786 : actualRows4786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4786=2820 := by core033_kernel_decide
theorem rows4787 : actualRows4787=WordField.canonicalRows actualModulus 4787 (.bnot 4786) := by core033_kernel_decide
theorem stats4787 : actualRows4787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4787=6276 := by core033_kernel_decide
theorem rows4788 : actualRows4788=WordField.canonicalRows actualModulus 4788 (.band 4785 4787) := by core033_kernel_decide
theorem stats4788 : actualRows4788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4788=5124 := by core033_kernel_decide
theorem rows4789 : actualRows4789=WordField.canonicalRows actualModulus 4789 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4789 : actualRows4789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4789=2892 := by core033_kernel_decide
theorem rows4790 : actualRows4790=WordField.canonicalRows actualModulus 4790 (.bxor 96 4789) := by core033_kernel_decide
theorem stats4790 : actualRows4790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4790=7428 := by core033_kernel_decide
theorem rows4791 : actualRows4791=WordField.canonicalRows actualModulus 4791 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4791 : actualRows4791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4791=2820 := by core033_kernel_decide
theorem rows4792 : actualRows4792=WordField.canonicalRows actualModulus 4792 (.bnot 4791) := by core033_kernel_decide
theorem stats4792 : actualRows4792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4792=6276 := by core033_kernel_decide
theorem rows4793 : actualRows4793=WordField.canonicalRows actualModulus 4793 (.bxor 4790 4792) := by core033_kernel_decide
theorem stats4793 : actualRows4793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4793=7428 := by core033_kernel_decide
theorem rows4794 : actualRows4794=WordField.canonicalRows actualModulus 4794 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4794 : actualRows4794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4794=2892 := by core033_kernel_decide
theorem rows4795 : actualRows4795=WordField.canonicalRows actualModulus 4795 (.bxor 96 4794) := by core033_kernel_decide
theorem stats4795 : actualRows4795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4795=7428 := by core033_kernel_decide
theorem rows4796 : actualRows4796=WordField.canonicalRows actualModulus 4796 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4796 : actualRows4796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4796=2820 := by core033_kernel_decide
theorem rows4797 : actualRows4797=WordField.canonicalRows actualModulus 4797 (.bnot 4796) := by core033_kernel_decide
theorem stats4797 : actualRows4797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4797=6276 := by core033_kernel_decide
theorem rows4798 : actualRows4798=WordField.canonicalRows actualModulus 4798 (.badd 4795 4797) := by core033_kernel_decide
theorem stats4798 : actualRows4798.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4798=5388 := by core033_kernel_decide
theorem rows4799 : actualRows4799=WordField.canonicalRows actualModulus 4799 (.bnot 4798) := by core033_kernel_decide
theorem stats4799 : actualRows4799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4799=6276 := by core033_kernel_decide
theorem rows4800 : actualRows4800=WordField.canonicalRows actualModulus 4800 (.band 4793 4799) := by core033_kernel_decide
theorem stats4800 : actualRows4800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4800=5124 := by core033_kernel_decide
theorem rows4801 : actualRows4801=WordField.canonicalRows actualModulus 4801 (.bxor 4788 4800) := by core033_kernel_decide
theorem stats4801 : actualRows4801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4801=7428 := by core033_kernel_decide
theorem rows4802 : actualRows4802=WordField.canonicalRows actualModulus 4802 (.shr 4801 31) := by core033_kernel_decide
theorem stats4802 : actualRows4802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4802=2892 := by core033_kernel_decide
theorem rows4803 : actualRows4803=WordField.canonicalRows actualModulus 4803 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4803 : actualRows4803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4803=2892 := by core033_kernel_decide
theorem rows4804 : actualRows4804=WordField.canonicalRows actualModulus 4804 (.bxor 4802 4803) := by core033_kernel_decide
theorem stats4804 : actualRows4804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4804=7428 := by core033_kernel_decide
theorem rows4805 : actualRows4805=WordField.canonicalRows actualModulus 4805 (.bnot 4804) := by core033_kernel_decide
theorem stats4805 : actualRows4805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4805=6276 := by core033_kernel_decide
theorem rows4806 : actualRows4806=WordField.canonicalRows actualModulus 4806 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4806 : actualRows4806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4806=2892 := by core033_kernel_decide
theorem rows4807 : actualRows4807=WordField.canonicalRows actualModulus 4807 (.badd 4805 4806) := by core033_kernel_decide
theorem stats4807 : actualRows4807.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4807=5388 := by core033_kernel_decide
theorem rows4808 : actualRows4808=WordField.canonicalRows actualModulus 4808 (.band 4807 1634) := by core033_kernel_decide
theorem stats4808 : actualRows4808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4808=5124 := by core033_kernel_decide
theorem rows4809 : actualRows4809=WordField.canonicalRows actualModulus 4809 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4809 : actualRows4809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4809=2892 := by core033_kernel_decide
theorem rows4810 : actualRows4810=WordField.canonicalRows actualModulus 4810 (.bxor 96 4809) := by core033_kernel_decide
theorem stats4810 : actualRows4810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4810=7428 := by core033_kernel_decide
theorem rows4811 : actualRows4811=WordField.canonicalRows actualModulus 4811 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4811 : actualRows4811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4811=2820 := by core033_kernel_decide
theorem rows4812 : actualRows4812=WordField.canonicalRows actualModulus 4812 (.bnot 4811) := by core033_kernel_decide
theorem stats4812 : actualRows4812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4812=6276 := by core033_kernel_decide
theorem rows4813 : actualRows4813=WordField.canonicalRows actualModulus 4813 (.band 4810 4812) := by core033_kernel_decide
theorem stats4813 : actualRows4813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4813=5124 := by core033_kernel_decide
theorem rows4814 : actualRows4814=WordField.canonicalRows actualModulus 4814 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4814 : actualRows4814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4814=2892 := by core033_kernel_decide
theorem rows4815 : actualRows4815=WordField.canonicalRows actualModulus 4815 (.bxor 96 4814) := by core033_kernel_decide
theorem stats4815 : actualRows4815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4815=7428 := by core033_kernel_decide
theorem rows4816 : actualRows4816=WordField.canonicalRows actualModulus 4816 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4816 : actualRows4816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4816=2820 := by core033_kernel_decide
theorem rows4817 : actualRows4817=WordField.canonicalRows actualModulus 4817 (.bnot 4816) := by core033_kernel_decide
theorem stats4817 : actualRows4817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4817=6276 := by core033_kernel_decide
theorem rows4818 : actualRows4818=WordField.canonicalRows actualModulus 4818 (.bxor 4815 4817) := by core033_kernel_decide
theorem stats4818 : actualRows4818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4818=7428 := by core033_kernel_decide
theorem rows4819 : actualRows4819=WordField.canonicalRows actualModulus 4819 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4819 : actualRows4819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4819=2892 := by core033_kernel_decide
theorem rows4820 : actualRows4820=WordField.canonicalRows actualModulus 4820 (.bxor 96 4819) := by core033_kernel_decide
theorem stats4820 : actualRows4820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4820=7428 := by core033_kernel_decide
theorem rows4821 : actualRows4821=WordField.canonicalRows actualModulus 4821 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4821 : actualRows4821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4821=2820 := by core033_kernel_decide
theorem rows4822 : actualRows4822=WordField.canonicalRows actualModulus 4822 (.bnot 4821) := by core033_kernel_decide
theorem stats4822 : actualRows4822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4822=6276 := by core033_kernel_decide
theorem rows4823 : actualRows4823=WordField.canonicalRows actualModulus 4823 (.badd 4820 4822) := by core033_kernel_decide
theorem stats4823 : actualRows4823.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4823=5388 := by core033_kernel_decide
theorem rows4824 : actualRows4824=WordField.canonicalRows actualModulus 4824 (.bnot 4823) := by core033_kernel_decide
theorem stats4824 : actualRows4824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4824=6276 := by core033_kernel_decide
theorem rows4825 : actualRows4825=WordField.canonicalRows actualModulus 4825 (.band 4818 4824) := by core033_kernel_decide
theorem stats4825 : actualRows4825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4825=5124 := by core033_kernel_decide
theorem rows4826 : actualRows4826=WordField.canonicalRows actualModulus 4826 (.bxor 4813 4825) := by core033_kernel_decide
theorem stats4826 : actualRows4826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4826=7428 := by core033_kernel_decide
theorem rows4827 : actualRows4827=WordField.canonicalRows actualModulus 4827 (.shr 4826 31) := by core033_kernel_decide
theorem stats4827 : actualRows4827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4827=2892 := by core033_kernel_decide
theorem rows4828 : actualRows4828=WordField.canonicalRows actualModulus 4828 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4828 : actualRows4828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4828=2892 := by core033_kernel_decide
theorem rows4829 : actualRows4829=WordField.canonicalRows actualModulus 4829 (.bxor 4827 4828) := by core033_kernel_decide
theorem stats4829 : actualRows4829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4829=7428 := by core033_kernel_decide
theorem rows4830 : actualRows4830=WordField.canonicalRows actualModulus 4830 (.bnot 4829) := by core033_kernel_decide
theorem stats4830 : actualRows4830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4830=6276 := by core033_kernel_decide
theorem rows4831 : actualRows4831=WordField.canonicalRows actualModulus 4831 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4831 : actualRows4831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4831=2892 := by core033_kernel_decide
theorem rows4832 : actualRows4832=WordField.canonicalRows actualModulus 4832 (.badd 4830 4831) := by core033_kernel_decide
theorem stats4832 : actualRows4832.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4832=5388 := by core033_kernel_decide
theorem rows4833 : actualRows4833=WordField.canonicalRows actualModulus 4833 (.bnot 4832) := by core033_kernel_decide
theorem stats4833 : actualRows4833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4833=6276 := by core033_kernel_decide
theorem rows4834 : actualRows4834=WordField.canonicalRows actualModulus 4834 (.band 4833 1442) := by core033_kernel_decide
theorem stats4834 : actualRows4834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4834=5124 := by core033_kernel_decide
theorem rows4835 : actualRows4835=WordField.canonicalRows actualModulus 4835 (.bxor 4808 4834) := by core033_kernel_decide
theorem stats4835 : actualRows4835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4835=7428 := by core033_kernel_decide
theorem rows4836 : actualRows4836=WordField.canonicalRows actualModulus 4836 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4836 : actualRows4836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4836=2892 := by core033_kernel_decide
theorem rows4837 : actualRows4837=WordField.canonicalRows actualModulus 4837 (.bxor 96 4836) := by core033_kernel_decide
theorem stats4837 : actualRows4837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4837=7428 := by core033_kernel_decide
theorem rows4838 : actualRows4838=WordField.canonicalRows actualModulus 4838 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4838 : actualRows4838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4838=2820 := by core033_kernel_decide
theorem rows4839 : actualRows4839=WordField.canonicalRows actualModulus 4839 (.bnot 4838) := by core033_kernel_decide
theorem stats4839 : actualRows4839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4839=6276 := by core033_kernel_decide
theorem rows4840 : actualRows4840=WordField.canonicalRows actualModulus 4840 (.band 4837 4839) := by core033_kernel_decide
theorem stats4840 : actualRows4840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4840=5124 := by core033_kernel_decide
theorem rows4841 : actualRows4841=WordField.canonicalRows actualModulus 4841 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4841 : actualRows4841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4841=2892 := by core033_kernel_decide
theorem rows4842 : actualRows4842=WordField.canonicalRows actualModulus 4842 (.bxor 96 4841) := by core033_kernel_decide
theorem stats4842 : actualRows4842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4842=7428 := by core033_kernel_decide
def partRows74 : List R1CS.Row := actualRows4779++actualRows4780++actualRows4781++actualRows4782++actualRows4783++actualRows4784++actualRows4785++actualRows4786++actualRows4787++actualRows4788++actualRows4789++actualRows4790++actualRows4791++actualRows4792++actualRows4793++actualRows4794++actualRows4795++actualRows4796++actualRows4797++actualRows4798++actualRows4799++actualRows4800++actualRows4801++actualRows4802++actualRows4803++actualRows4804++actualRows4805++actualRows4806++actualRows4807++actualRows4808++actualRows4809++actualRows4810++actualRows4811++actualRows4812++actualRows4813++actualRows4814++actualRows4815++actualRows4816++actualRows4817++actualRows4818++actualRows4819++actualRows4820++actualRows4821++actualRows4822++actualRows4823++actualRows4824++actualRows4825++actualRows4826++actualRows4827++actualRows4828++actualRows4829++actualRows4830++actualRows4831++actualRows4832++actualRows4833++actualRows4834++actualRows4835++actualRows4836++actualRows4837++actualRows4838++actualRows4839++actualRows4840++actualRows4841++actualRows4842
def partOps74 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 4778 4779,.bnot 4780,.band 4781 1439,.bxor 4756 4782,.literal (BitVec.ofNat 32 2),.bxor 96 4784,.literal (BitVec.ofNat 32 0),.bnot 4786,.band 4785 4787,.literal (BitVec.ofNat 32 2),.bxor 96 4789,.literal (BitVec.ofNat 32 0),.bnot 4791,.bxor 4790 4792,.literal (BitVec.ofNat 32 2),.bxor 96 4794,.literal (BitVec.ofNat 32 0),.bnot 4796,.badd 4795 4797,.bnot 4798,.band 4793 4799,.bxor 4788 4800,.shr 4801 31,.literal (BitVec.ofNat 32 1),.bxor 4802 4803,.bnot 4804,.literal (BitVec.ofNat 32 1),.badd 4805 4806,.band 4807 1634,.literal (BitVec.ofNat 32 2),.bxor 96 4809,.literal (BitVec.ofNat 32 0),.bnot 4811,.band 4810 4812,.literal (BitVec.ofNat 32 2),.bxor 96 4814,.literal (BitVec.ofNat 32 0),.bnot 4816,.bxor 4815 4817,.literal (BitVec.ofNat 32 2),.bxor 96 4819,.literal (BitVec.ofNat 32 0),.bnot 4821,.badd 4820 4822,.bnot 4823,.band 4818 4824,.bxor 4813 4825,.shr 4826 31,.literal (BitVec.ofNat 32 1),.bxor 4827 4828,.bnot 4829,.literal (BitVec.ofNat 32 1),.badd 4830 4831,.bnot 4832,.band 4833 1442,.bxor 4808 4834,.literal (BitVec.ofNat 32 2),.bxor 96 4836,.literal (BitVec.ofNat 32 0),.bnot 4838,.band 4837 4839,.literal (BitVec.ofNat 32 2),.bxor 96 4841]
theorem partExact74 : partRows74=WordField.rows actualModulus 4779 partOps74 := by
  simp only [partRows74,partOps74,WordField.rows,rows4779,rows4780,rows4781,rows4782,rows4783,rows4784,rows4785,rows4786,rows4787,rows4788,rows4789,rows4790,rows4791,rows4792,rows4793,rows4794,rows4795,rows4796,rows4797,rows4798,rows4799,rows4800,rows4801,rows4802,rows4803,rows4804,rows4805,rows4806,rows4807,rows4808,rows4809,rows4810,rows4811,rows4812,rows4813,rows4814,rows4815,rows4816,rows4817,rows4818,rows4819,rows4820,rows4821,rows4822,rows4823,rows4824,rows4825,rows4826,rows4827,rows4828,rows4829,rows4830,rows4831,rows4832,rows4833,rows4834,rows4835,rows4836,rows4837,rows4838,rows4839,rows4840,rows4841,rows4842,List.append_assoc,List.append_nil]
theorem partLength74 : partOps74.length=64 := by decide
theorem partStats74 : partRows74.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows74=331488 := by
  simp only [partRows74,List.length_append,MatrixRowBlocks.rows_weight_append,stats4779.1,stats4779.2,stats4780.1,stats4780.2,stats4781.1,stats4781.2,stats4782.1,stats4782.2,stats4783.1,stats4783.2,stats4784.1,stats4784.2,stats4785.1,stats4785.2,stats4786.1,stats4786.2,stats4787.1,stats4787.2,stats4788.1,stats4788.2,stats4789.1,stats4789.2,stats4790.1,stats4790.2,stats4791.1,stats4791.2,stats4792.1,stats4792.2,stats4793.1,stats4793.2,stats4794.1,stats4794.2,stats4795.1,stats4795.2,stats4796.1,stats4796.2,stats4797.1,stats4797.2,stats4798.1,stats4798.2,stats4799.1,stats4799.2,stats4800.1,stats4800.2,stats4801.1,stats4801.2,stats4802.1,stats4802.2,stats4803.1,stats4803.2,stats4804.1,stats4804.2,stats4805.1,stats4805.2,stats4806.1,stats4806.2,stats4807.1,stats4807.2,stats4808.1,stats4808.2,stats4809.1,stats4809.2,stats4810.1,stats4810.2,stats4811.1,stats4811.2,stats4812.1,stats4812.2,stats4813.1,stats4813.2,stats4814.1,stats4814.2,stats4815.1,stats4815.2,stats4816.1,stats4816.2,stats4817.1,stats4817.2,stats4818.1,stats4818.2,stats4819.1,stats4819.2,stats4820.1,stats4820.2,stats4821.1,stats4821.2,stats4822.1,stats4822.2,stats4823.1,stats4823.2,stats4824.1,stats4824.2,stats4825.1,stats4825.2,stats4826.1,stats4826.2,stats4827.1,stats4827.2,stats4828.1,stats4828.2,stats4829.1,stats4829.2,stats4830.1,stats4830.2,stats4831.1,stats4831.2,stats4832.1,stats4832.2,stats4833.1,stats4833.2,stats4834.1,stats4834.2,stats4835.1,stats4835.2,stats4836.1,stats4836.2,stats4837.1,stats4837.2,stats4838.1,stats4838.2,stats4839.1,stats4839.2,stats4840.1,stats4840.2,stats4841.1,stats4841.2,stats4842.1,stats4842.2]
  decide
end PathRoundDispatchCheckedRows
