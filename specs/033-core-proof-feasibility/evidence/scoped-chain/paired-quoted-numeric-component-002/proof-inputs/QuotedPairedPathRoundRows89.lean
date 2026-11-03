import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData90
import PairedPathRoundInstructionMatrixData91
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5792 : actualRows5792=WordField.canonicalRows actualModulus 5792 (.bnot 5791) := by core033_kernel_decide
theorem stats5792 : actualRows5792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5792=6276 := by core033_kernel_decide
theorem rows5793 : actualRows5793=WordField.canonicalRows actualModulus 5793 (.band 5786 5792) := by core033_kernel_decide
theorem stats5793 : actualRows5793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5793=5124 := by core033_kernel_decide
theorem rows5794 : actualRows5794=WordField.canonicalRows actualModulus 5794 (.bxor 5781 5793) := by core033_kernel_decide
theorem stats5794 : actualRows5794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5794=7428 := by core033_kernel_decide
theorem rows5795 : actualRows5795=WordField.canonicalRows actualModulus 5795 (.shr 5794 31) := by core033_kernel_decide
theorem stats5795 : actualRows5795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5795=2892 := by core033_kernel_decide
theorem rows5796 : actualRows5796=WordField.canonicalRows actualModulus 5796 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5796 : actualRows5796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5796=2892 := by core033_kernel_decide
theorem rows5797 : actualRows5797=WordField.canonicalRows actualModulus 5797 (.bxor 5795 5796) := by core033_kernel_decide
theorem stats5797 : actualRows5797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5797=7428 := by core033_kernel_decide
theorem rows5798 : actualRows5798=WordField.canonicalRows actualModulus 5798 (.bnot 5797) := by core033_kernel_decide
theorem stats5798 : actualRows5798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5798=6276 := by core033_kernel_decide
theorem rows5799 : actualRows5799=WordField.canonicalRows actualModulus 5799 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5799 : actualRows5799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5799=2892 := by core033_kernel_decide
theorem rows5800 : actualRows5800=WordField.canonicalRows actualModulus 5800 (.badd 5798 5799) := by core033_kernel_decide
theorem stats5800 : actualRows5800.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5800=5388 := by core033_kernel_decide
theorem rows5801 : actualRows5801=WordField.canonicalRows actualModulus 5801 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5801 : actualRows5801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5801=2820 := by core033_kernel_decide
theorem rows5802 : actualRows5802=WordField.canonicalRows actualModulus 5802 (.band 5800 5801) := by core033_kernel_decide
theorem stats5802 : actualRows5802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5802=5124 := by core033_kernel_decide
theorem rows5803 : actualRows5803=WordField.canonicalRows actualModulus 5803 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5803 : actualRows5803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5803=2892 := by core033_kernel_decide
theorem rows5804 : actualRows5804=WordField.canonicalRows actualModulus 5804 (.bxor 616 5803) := by core033_kernel_decide
theorem stats5804 : actualRows5804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5804=7428 := by core033_kernel_decide
theorem rows5805 : actualRows5805=WordField.canonicalRows actualModulus 5805 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5805 : actualRows5805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5805=2820 := by core033_kernel_decide
theorem rows5806 : actualRows5806=WordField.canonicalRows actualModulus 5806 (.bnot 5805) := by core033_kernel_decide
theorem stats5806 : actualRows5806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5806=6276 := by core033_kernel_decide
theorem rows5807 : actualRows5807=WordField.canonicalRows actualModulus 5807 (.band 5804 5806) := by core033_kernel_decide
theorem stats5807 : actualRows5807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5807=5124 := by core033_kernel_decide
theorem rows5808 : actualRows5808=WordField.canonicalRows actualModulus 5808 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5808 : actualRows5808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5808=2892 := by core033_kernel_decide
theorem rows5809 : actualRows5809=WordField.canonicalRows actualModulus 5809 (.bxor 616 5808) := by core033_kernel_decide
theorem stats5809 : actualRows5809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5809=7428 := by core033_kernel_decide
theorem rows5810 : actualRows5810=WordField.canonicalRows actualModulus 5810 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5810 : actualRows5810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5810=2820 := by core033_kernel_decide
theorem rows5811 : actualRows5811=WordField.canonicalRows actualModulus 5811 (.bnot 5810) := by core033_kernel_decide
theorem stats5811 : actualRows5811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5811=6276 := by core033_kernel_decide
theorem rows5812 : actualRows5812=WordField.canonicalRows actualModulus 5812 (.bxor 5809 5811) := by core033_kernel_decide
theorem stats5812 : actualRows5812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5812=7428 := by core033_kernel_decide
theorem rows5813 : actualRows5813=WordField.canonicalRows actualModulus 5813 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5813 : actualRows5813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5813=2892 := by core033_kernel_decide
theorem rows5814 : actualRows5814=WordField.canonicalRows actualModulus 5814 (.bxor 616 5813) := by core033_kernel_decide
theorem stats5814 : actualRows5814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5814=7428 := by core033_kernel_decide
theorem rows5815 : actualRows5815=WordField.canonicalRows actualModulus 5815 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5815 : actualRows5815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5815=2820 := by core033_kernel_decide
theorem rows5816 : actualRows5816=WordField.canonicalRows actualModulus 5816 (.bnot 5815) := by core033_kernel_decide
theorem stats5816 : actualRows5816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5816=6276 := by core033_kernel_decide
theorem rows5817 : actualRows5817=WordField.canonicalRows actualModulus 5817 (.badd 5814 5816) := by core033_kernel_decide
theorem stats5817 : actualRows5817.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5817=5388 := by core033_kernel_decide
theorem rows5818 : actualRows5818=WordField.canonicalRows actualModulus 5818 (.bnot 5817) := by core033_kernel_decide
theorem stats5818 : actualRows5818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5818=6276 := by core033_kernel_decide
theorem rows5819 : actualRows5819=WordField.canonicalRows actualModulus 5819 (.band 5812 5818) := by core033_kernel_decide
theorem stats5819 : actualRows5819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5819=5124 := by core033_kernel_decide
theorem rows5820 : actualRows5820=WordField.canonicalRows actualModulus 5820 (.bxor 5807 5819) := by core033_kernel_decide
theorem stats5820 : actualRows5820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5820=7428 := by core033_kernel_decide
theorem rows5821 : actualRows5821=WordField.canonicalRows actualModulus 5821 (.shr 5820 31) := by core033_kernel_decide
theorem stats5821 : actualRows5821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5821=2892 := by core033_kernel_decide
theorem rows5822 : actualRows5822=WordField.canonicalRows actualModulus 5822 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5822 : actualRows5822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5822=2892 := by core033_kernel_decide
theorem rows5823 : actualRows5823=WordField.canonicalRows actualModulus 5823 (.bxor 5821 5822) := by core033_kernel_decide
theorem stats5823 : actualRows5823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5823=7428 := by core033_kernel_decide
theorem rows5824 : actualRows5824=WordField.canonicalRows actualModulus 5824 (.bnot 5823) := by core033_kernel_decide
theorem stats5824 : actualRows5824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5824=6276 := by core033_kernel_decide
theorem rows5825 : actualRows5825=WordField.canonicalRows actualModulus 5825 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5825 : actualRows5825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5825=2892 := by core033_kernel_decide
theorem rows5826 : actualRows5826=WordField.canonicalRows actualModulus 5826 (.badd 5824 5825) := by core033_kernel_decide
theorem stats5826 : actualRows5826.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5826=5388 := by core033_kernel_decide
theorem rows5827 : actualRows5827=WordField.canonicalRows actualModulus 5827 (.bnot 5826) := by core033_kernel_decide
theorem stats5827 : actualRows5827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5827=6276 := by core033_kernel_decide
theorem rows5828 : actualRows5828=WordField.canonicalRows actualModulus 5828 (.band 5827 1989) := by core033_kernel_decide
theorem stats5828 : actualRows5828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5828=5124 := by core033_kernel_decide
theorem rows5829 : actualRows5829=WordField.canonicalRows actualModulus 5829 (.bxor 5802 5828) := by core033_kernel_decide
theorem stats5829 : actualRows5829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5829=7428 := by core033_kernel_decide
theorem rows5830 : actualRows5830=WordField.canonicalRows actualModulus 5830 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5830 : actualRows5830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5830=2892 := by core033_kernel_decide
theorem rows5831 : actualRows5831=WordField.canonicalRows actualModulus 5831 (.bxor 616 5830) := by core033_kernel_decide
theorem stats5831 : actualRows5831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5831=7428 := by core033_kernel_decide
theorem rows5832 : actualRows5832=WordField.canonicalRows actualModulus 5832 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5832 : actualRows5832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5832=2820 := by core033_kernel_decide
theorem rows5833 : actualRows5833=WordField.canonicalRows actualModulus 5833 (.bnot 5832) := by core033_kernel_decide
theorem stats5833 : actualRows5833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5833=6276 := by core033_kernel_decide
theorem rows5834 : actualRows5834=WordField.canonicalRows actualModulus 5834 (.band 5831 5833) := by core033_kernel_decide
theorem stats5834 : actualRows5834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5834=5124 := by core033_kernel_decide
theorem rows5835 : actualRows5835=WordField.canonicalRows actualModulus 5835 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5835 : actualRows5835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5835=2892 := by core033_kernel_decide
theorem rows5836 : actualRows5836=WordField.canonicalRows actualModulus 5836 (.bxor 616 5835) := by core033_kernel_decide
theorem stats5836 : actualRows5836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5836=7428 := by core033_kernel_decide
theorem rows5837 : actualRows5837=WordField.canonicalRows actualModulus 5837 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5837 : actualRows5837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5837=2820 := by core033_kernel_decide
theorem rows5838 : actualRows5838=WordField.canonicalRows actualModulus 5838 (.bnot 5837) := by core033_kernel_decide
theorem stats5838 : actualRows5838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5838=6276 := by core033_kernel_decide
theorem rows5839 : actualRows5839=WordField.canonicalRows actualModulus 5839 (.bxor 5836 5838) := by core033_kernel_decide
theorem stats5839 : actualRows5839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5839=7428 := by core033_kernel_decide
theorem rows5840 : actualRows5840=WordField.canonicalRows actualModulus 5840 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5840 : actualRows5840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5840=2892 := by core033_kernel_decide
theorem rows5841 : actualRows5841=WordField.canonicalRows actualModulus 5841 (.bxor 616 5840) := by core033_kernel_decide
theorem stats5841 : actualRows5841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5841=7428 := by core033_kernel_decide
theorem rows5842 : actualRows5842=WordField.canonicalRows actualModulus 5842 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5842 : actualRows5842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5842=2820 := by core033_kernel_decide
theorem rows5843 : actualRows5843=WordField.canonicalRows actualModulus 5843 (.bnot 5842) := by core033_kernel_decide
theorem stats5843 : actualRows5843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5843=6276 := by core033_kernel_decide
theorem rows5844 : actualRows5844=WordField.canonicalRows actualModulus 5844 (.badd 5841 5843) := by core033_kernel_decide
theorem stats5844 : actualRows5844.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5844=5388 := by core033_kernel_decide
theorem rows5845 : actualRows5845=WordField.canonicalRows actualModulus 5845 (.bnot 5844) := by core033_kernel_decide
theorem stats5845 : actualRows5845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5845=6276 := by core033_kernel_decide
theorem rows5846 : actualRows5846=WordField.canonicalRows actualModulus 5846 (.band 5839 5845) := by core033_kernel_decide
theorem stats5846 : actualRows5846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5846=5124 := by core033_kernel_decide
theorem rows5847 : actualRows5847=WordField.canonicalRows actualModulus 5847 (.bxor 5834 5846) := by core033_kernel_decide
theorem stats5847 : actualRows5847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5847=7428 := by core033_kernel_decide
theorem rows5848 : actualRows5848=WordField.canonicalRows actualModulus 5848 (.shr 5847 31) := by core033_kernel_decide
theorem stats5848 : actualRows5848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5848=2892 := by core033_kernel_decide
theorem rows5849 : actualRows5849=WordField.canonicalRows actualModulus 5849 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5849 : actualRows5849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5849=2892 := by core033_kernel_decide
theorem rows5850 : actualRows5850=WordField.canonicalRows actualModulus 5850 (.bxor 5848 5849) := by core033_kernel_decide
theorem stats5850 : actualRows5850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5850=7428 := by core033_kernel_decide
theorem rows5851 : actualRows5851=WordField.canonicalRows actualModulus 5851 (.bnot 5850) := by core033_kernel_decide
theorem stats5851 : actualRows5851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5851=6276 := by core033_kernel_decide
theorem rows5852 : actualRows5852=WordField.canonicalRows actualModulus 5852 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5852 : actualRows5852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5852=2892 := by core033_kernel_decide
theorem rows5853 : actualRows5853=WordField.canonicalRows actualModulus 5853 (.badd 5851 5852) := by core033_kernel_decide
theorem stats5853 : actualRows5853.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5853=5388 := by core033_kernel_decide
theorem rows5854 : actualRows5854=WordField.canonicalRows actualModulus 5854 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5854 : actualRows5854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5854=2820 := by core033_kernel_decide
theorem rows5855 : actualRows5855=WordField.canonicalRows actualModulus 5855 (.band 5853 5854) := by core033_kernel_decide
theorem stats5855 : actualRows5855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5855=5124 := by core033_kernel_decide
def partRows89 : List R1CS.Row := actualRows5792++actualRows5793++actualRows5794++actualRows5795++actualRows5796++actualRows5797++actualRows5798++actualRows5799++actualRows5800++actualRows5801++actualRows5802++actualRows5803++actualRows5804++actualRows5805++actualRows5806++actualRows5807++actualRows5808++actualRows5809++actualRows5810++actualRows5811++actualRows5812++actualRows5813++actualRows5814++actualRows5815++actualRows5816++actualRows5817++actualRows5818++actualRows5819++actualRows5820++actualRows5821++actualRows5822++actualRows5823++actualRows5824++actualRows5825++actualRows5826++actualRows5827++actualRows5828++actualRows5829++actualRows5830++actualRows5831++actualRows5832++actualRows5833++actualRows5834++actualRows5835++actualRows5836++actualRows5837++actualRows5838++actualRows5839++actualRows5840++actualRows5841++actualRows5842++actualRows5843++actualRows5844++actualRows5845++actualRows5846++actualRows5847++actualRows5848++actualRows5849++actualRows5850++actualRows5851++actualRows5852++actualRows5853++actualRows5854++actualRows5855
def partOps89 : List WordIR.Op := [.bnot 5791,.band 5786 5792,.bxor 5781 5793,.shr 5794 31,.literal (BitVec.ofNat 32 1),.bxor 5795 5796,.bnot 5797,.literal (BitVec.ofNat 32 1),.badd 5798 5799,.literal (BitVec.ofNat 32 0),.band 5800 5801,.literal (BitVec.ofNat 32 2),.bxor 616 5803,.literal (BitVec.ofNat 32 0),.bnot 5805,.band 5804 5806,.literal (BitVec.ofNat 32 2),.bxor 616 5808,.literal (BitVec.ofNat 32 0),.bnot 5810,.bxor 5809 5811,.literal (BitVec.ofNat 32 2),.bxor 616 5813,.literal (BitVec.ofNat 32 0),.bnot 5815,.badd 5814 5816,.bnot 5817,.band 5812 5818,.bxor 5807 5819,.shr 5820 31,.literal (BitVec.ofNat 32 1),.bxor 5821 5822,.bnot 5823,.literal (BitVec.ofNat 32 1),.badd 5824 5825,.bnot 5826,.band 5827 1989,.bxor 5802 5828,.literal (BitVec.ofNat 32 2),.bxor 616 5830,.literal (BitVec.ofNat 32 0),.bnot 5832,.band 5831 5833,.literal (BitVec.ofNat 32 2),.bxor 616 5835,.literal (BitVec.ofNat 32 0),.bnot 5837,.bxor 5836 5838,.literal (BitVec.ofNat 32 2),.bxor 616 5840,.literal (BitVec.ofNat 32 0),.bnot 5842,.badd 5841 5843,.bnot 5844,.band 5839 5845,.bxor 5834 5846,.shr 5847 31,.literal (BitVec.ofNat 32 1),.bxor 5848 5849,.bnot 5850,.literal (BitVec.ofNat 32 1),.badd 5851 5852,.literal (BitVec.ofNat 32 0),.band 5853 5854]
theorem partExact89 : partRows89=WordField.rows actualModulus 5792 partOps89 := by
  simp only [partRows89,partOps89,WordField.rows,rows5792,rows5793,rows5794,rows5795,rows5796,rows5797,rows5798,rows5799,rows5800,rows5801,rows5802,rows5803,rows5804,rows5805,rows5806,rows5807,rows5808,rows5809,rows5810,rows5811,rows5812,rows5813,rows5814,rows5815,rows5816,rows5817,rows5818,rows5819,rows5820,rows5821,rows5822,rows5823,rows5824,rows5825,rows5826,rows5827,rows5828,rows5829,rows5830,rows5831,rows5832,rows5833,rows5834,rows5835,rows5836,rows5837,rows5838,rows5839,rows5840,rows5841,rows5842,rows5843,rows5844,rows5845,rows5846,rows5847,rows5848,rows5849,rows5850,rows5851,rows5852,rows5853,rows5854,rows5855,List.append_assoc,List.append_nil]
theorem partLength89 : partOps89.length=64 := by decide
theorem partStats89 : partRows89.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows89=326880 := by
  simp only [partRows89,List.length_append,MatrixRowBlocks.rows_weight_append,stats5792.1,stats5792.2,stats5793.1,stats5793.2,stats5794.1,stats5794.2,stats5795.1,stats5795.2,stats5796.1,stats5796.2,stats5797.1,stats5797.2,stats5798.1,stats5798.2,stats5799.1,stats5799.2,stats5800.1,stats5800.2,stats5801.1,stats5801.2,stats5802.1,stats5802.2,stats5803.1,stats5803.2,stats5804.1,stats5804.2,stats5805.1,stats5805.2,stats5806.1,stats5806.2,stats5807.1,stats5807.2,stats5808.1,stats5808.2,stats5809.1,stats5809.2,stats5810.1,stats5810.2,stats5811.1,stats5811.2,stats5812.1,stats5812.2,stats5813.1,stats5813.2,stats5814.1,stats5814.2,stats5815.1,stats5815.2,stats5816.1,stats5816.2,stats5817.1,stats5817.2,stats5818.1,stats5818.2,stats5819.1,stats5819.2,stats5820.1,stats5820.2,stats5821.1,stats5821.2,stats5822.1,stats5822.2,stats5823.1,stats5823.2,stats5824.1,stats5824.2,stats5825.1,stats5825.2,stats5826.1,stats5826.2,stats5827.1,stats5827.2,stats5828.1,stats5828.2,stats5829.1,stats5829.2,stats5830.1,stats5830.2,stats5831.1,stats5831.2,stats5832.1,stats5832.2,stats5833.1,stats5833.2,stats5834.1,stats5834.2,stats5835.1,stats5835.2,stats5836.1,stats5836.2,stats5837.1,stats5837.2,stats5838.1,stats5838.2,stats5839.1,stats5839.2,stats5840.1,stats5840.2,stats5841.1,stats5841.2,stats5842.1,stats5842.2,stats5843.1,stats5843.2,stats5844.1,stats5844.2,stats5845.1,stats5845.2,stats5846.1,stats5846.2,stats5847.1,stats5847.2,stats5848.1,stats5848.2,stats5849.1,stats5849.2,stats5850.1,stats5850.2,stats5851.1,stats5851.2,stats5852.1,stats5852.2,stats5853.1,stats5853.2,stats5854.1,stats5854.2,stats5855.1,stats5855.2]
  decide
end QuotedPairedPathRoundCheckedRows
