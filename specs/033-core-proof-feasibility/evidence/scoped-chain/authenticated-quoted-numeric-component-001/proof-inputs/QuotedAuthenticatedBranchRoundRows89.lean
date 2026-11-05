import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData90
import AuthenticatedBranchRoundInstructionMatrixData91
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5814 : actualRows5814=WordField.canonicalRows actualModulus 5814 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5814 : actualRows5814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5814=2892 := by core033_kernel_decide
theorem rows5815 : actualRows5815=WordField.canonicalRows actualModulus 5815 (.bxor 1299 5814) := by core033_kernel_decide
theorem stats5815 : actualRows5815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5815=7428 := by core033_kernel_decide
theorem rows5816 : actualRows5816=WordField.canonicalRows actualModulus 5816 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5816 : actualRows5816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5816=2820 := by core033_kernel_decide
theorem rows5817 : actualRows5817=WordField.canonicalRows actualModulus 5817 (.bnot 5816) := by core033_kernel_decide
theorem stats5817 : actualRows5817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5817=6276 := by core033_kernel_decide
theorem rows5818 : actualRows5818=WordField.canonicalRows actualModulus 5818 (.badd 5815 5817) := by core033_kernel_decide
theorem stats5818 : actualRows5818.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5818=5388 := by core033_kernel_decide
theorem rows5819 : actualRows5819=WordField.canonicalRows actualModulus 5819 (.bnot 5818) := by core033_kernel_decide
theorem stats5819 : actualRows5819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5819=6276 := by core033_kernel_decide
theorem rows5820 : actualRows5820=WordField.canonicalRows actualModulus 5820 (.band 5813 5819) := by core033_kernel_decide
theorem stats5820 : actualRows5820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5820=5124 := by core033_kernel_decide
theorem rows5821 : actualRows5821=WordField.canonicalRows actualModulus 5821 (.bxor 5808 5820) := by core033_kernel_decide
theorem stats5821 : actualRows5821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5821=7428 := by core033_kernel_decide
theorem rows5822 : actualRows5822=WordField.canonicalRows actualModulus 5822 (.shr 5821 31) := by core033_kernel_decide
theorem stats5822 : actualRows5822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5822=2892 := by core033_kernel_decide
theorem rows5823 : actualRows5823=WordField.canonicalRows actualModulus 5823 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5823 : actualRows5823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5823=2892 := by core033_kernel_decide
theorem rows5824 : actualRows5824=WordField.canonicalRows actualModulus 5824 (.bxor 5822 5823) := by core033_kernel_decide
theorem stats5824 : actualRows5824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5824=7428 := by core033_kernel_decide
theorem rows5825 : actualRows5825=WordField.canonicalRows actualModulus 5825 (.bnot 5824) := by core033_kernel_decide
theorem stats5825 : actualRows5825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5825=6276 := by core033_kernel_decide
theorem rows5826 : actualRows5826=WordField.canonicalRows actualModulus 5826 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5826 : actualRows5826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5826=2892 := by core033_kernel_decide
theorem rows5827 : actualRows5827=WordField.canonicalRows actualModulus 5827 (.badd 5825 5826) := by core033_kernel_decide
theorem stats5827 : actualRows5827.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5827=5388 := by core033_kernel_decide
theorem rows5828 : actualRows5828=WordField.canonicalRows actualModulus 5828 (.bnot 5827) := by core033_kernel_decide
theorem stats5828 : actualRows5828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5828=6276 := by core033_kernel_decide
theorem rows5829 : actualRows5829=WordField.canonicalRows actualModulus 5829 (.band 5828 2633) := by core033_kernel_decide
theorem stats5829 : actualRows5829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5829=5124 := by core033_kernel_decide
theorem rows5830 : actualRows5830=WordField.canonicalRows actualModulus 5830 (.bxor 5803 5829) := by core033_kernel_decide
theorem stats5830 : actualRows5830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5830=7428 := by core033_kernel_decide
theorem rows5831 : actualRows5831=WordField.canonicalRows actualModulus 5831 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5831 : actualRows5831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5831=2892 := by core033_kernel_decide
theorem rows5832 : actualRows5832=WordField.canonicalRows actualModulus 5832 (.bxor 1299 5831) := by core033_kernel_decide
theorem stats5832 : actualRows5832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5832=7428 := by core033_kernel_decide
theorem rows5833 : actualRows5833=WordField.canonicalRows actualModulus 5833 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5833 : actualRows5833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5833=2820 := by core033_kernel_decide
theorem rows5834 : actualRows5834=WordField.canonicalRows actualModulus 5834 (.bnot 5833) := by core033_kernel_decide
theorem stats5834 : actualRows5834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5834=6276 := by core033_kernel_decide
theorem rows5835 : actualRows5835=WordField.canonicalRows actualModulus 5835 (.band 5832 5834) := by core033_kernel_decide
theorem stats5835 : actualRows5835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5835=5124 := by core033_kernel_decide
theorem rows5836 : actualRows5836=WordField.canonicalRows actualModulus 5836 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5836 : actualRows5836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5836=2892 := by core033_kernel_decide
theorem rows5837 : actualRows5837=WordField.canonicalRows actualModulus 5837 (.bxor 1299 5836) := by core033_kernel_decide
theorem stats5837 : actualRows5837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5837=7428 := by core033_kernel_decide
theorem rows5838 : actualRows5838=WordField.canonicalRows actualModulus 5838 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5838 : actualRows5838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5838=2820 := by core033_kernel_decide
theorem rows5839 : actualRows5839=WordField.canonicalRows actualModulus 5839 (.bnot 5838) := by core033_kernel_decide
theorem stats5839 : actualRows5839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5839=6276 := by core033_kernel_decide
theorem rows5840 : actualRows5840=WordField.canonicalRows actualModulus 5840 (.bxor 5837 5839) := by core033_kernel_decide
theorem stats5840 : actualRows5840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5840=7428 := by core033_kernel_decide
theorem rows5841 : actualRows5841=WordField.canonicalRows actualModulus 5841 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5841 : actualRows5841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5841=2892 := by core033_kernel_decide
theorem rows5842 : actualRows5842=WordField.canonicalRows actualModulus 5842 (.bxor 1299 5841) := by core033_kernel_decide
theorem stats5842 : actualRows5842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5842=7428 := by core033_kernel_decide
theorem rows5843 : actualRows5843=WordField.canonicalRows actualModulus 5843 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5843 : actualRows5843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5843=2820 := by core033_kernel_decide
theorem rows5844 : actualRows5844=WordField.canonicalRows actualModulus 5844 (.bnot 5843) := by core033_kernel_decide
theorem stats5844 : actualRows5844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5844=6276 := by core033_kernel_decide
theorem rows5845 : actualRows5845=WordField.canonicalRows actualModulus 5845 (.badd 5842 5844) := by core033_kernel_decide
theorem stats5845 : actualRows5845.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5845=5388 := by core033_kernel_decide
theorem rows5846 : actualRows5846=WordField.canonicalRows actualModulus 5846 (.bnot 5845) := by core033_kernel_decide
theorem stats5846 : actualRows5846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5846=6276 := by core033_kernel_decide
theorem rows5847 : actualRows5847=WordField.canonicalRows actualModulus 5847 (.band 5840 5846) := by core033_kernel_decide
theorem stats5847 : actualRows5847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5847=5124 := by core033_kernel_decide
theorem rows5848 : actualRows5848=WordField.canonicalRows actualModulus 5848 (.bxor 5835 5847) := by core033_kernel_decide
theorem stats5848 : actualRows5848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5848=7428 := by core033_kernel_decide
theorem rows5849 : actualRows5849=WordField.canonicalRows actualModulus 5849 (.shr 5848 31) := by core033_kernel_decide
theorem stats5849 : actualRows5849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5849=2892 := by core033_kernel_decide
theorem rows5850 : actualRows5850=WordField.canonicalRows actualModulus 5850 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5850 : actualRows5850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5850=2892 := by core033_kernel_decide
theorem rows5851 : actualRows5851=WordField.canonicalRows actualModulus 5851 (.bxor 5849 5850) := by core033_kernel_decide
theorem stats5851 : actualRows5851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5851=7428 := by core033_kernel_decide
theorem rows5852 : actualRows5852=WordField.canonicalRows actualModulus 5852 (.bnot 5851) := by core033_kernel_decide
theorem stats5852 : actualRows5852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5852=6276 := by core033_kernel_decide
theorem rows5853 : actualRows5853=WordField.canonicalRows actualModulus 5853 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5853 : actualRows5853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5853=2892 := by core033_kernel_decide
theorem rows5854 : actualRows5854=WordField.canonicalRows actualModulus 5854 (.badd 5852 5853) := by core033_kernel_decide
theorem stats5854 : actualRows5854.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5854=5388 := by core033_kernel_decide
theorem rows5855 : actualRows5855=WordField.canonicalRows actualModulus 5855 (.band 5854 2828) := by core033_kernel_decide
theorem stats5855 : actualRows5855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5855=5124 := by core033_kernel_decide
theorem rows5856 : actualRows5856=WordField.canonicalRows actualModulus 5856 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5856 : actualRows5856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5856=2892 := by core033_kernel_decide
theorem rows5857 : actualRows5857=WordField.canonicalRows actualModulus 5857 (.bxor 1299 5856) := by core033_kernel_decide
theorem stats5857 : actualRows5857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5857=7428 := by core033_kernel_decide
theorem rows5858 : actualRows5858=WordField.canonicalRows actualModulus 5858 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5858 : actualRows5858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5858=2820 := by core033_kernel_decide
theorem rows5859 : actualRows5859=WordField.canonicalRows actualModulus 5859 (.bnot 5858) := by core033_kernel_decide
theorem stats5859 : actualRows5859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5859=6276 := by core033_kernel_decide
theorem rows5860 : actualRows5860=WordField.canonicalRows actualModulus 5860 (.band 5857 5859) := by core033_kernel_decide
theorem stats5860 : actualRows5860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5860=5124 := by core033_kernel_decide
theorem rows5861 : actualRows5861=WordField.canonicalRows actualModulus 5861 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5861 : actualRows5861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5861=2892 := by core033_kernel_decide
theorem rows5862 : actualRows5862=WordField.canonicalRows actualModulus 5862 (.bxor 1299 5861) := by core033_kernel_decide
theorem stats5862 : actualRows5862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5862=7428 := by core033_kernel_decide
theorem rows5863 : actualRows5863=WordField.canonicalRows actualModulus 5863 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5863 : actualRows5863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5863=2820 := by core033_kernel_decide
theorem rows5864 : actualRows5864=WordField.canonicalRows actualModulus 5864 (.bnot 5863) := by core033_kernel_decide
theorem stats5864 : actualRows5864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5864=6276 := by core033_kernel_decide
theorem rows5865 : actualRows5865=WordField.canonicalRows actualModulus 5865 (.bxor 5862 5864) := by core033_kernel_decide
theorem stats5865 : actualRows5865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5865=7428 := by core033_kernel_decide
theorem rows5866 : actualRows5866=WordField.canonicalRows actualModulus 5866 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5866 : actualRows5866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5866=2892 := by core033_kernel_decide
theorem rows5867 : actualRows5867=WordField.canonicalRows actualModulus 5867 (.bxor 1299 5866) := by core033_kernel_decide
theorem stats5867 : actualRows5867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5867=7428 := by core033_kernel_decide
theorem rows5868 : actualRows5868=WordField.canonicalRows actualModulus 5868 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5868 : actualRows5868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5868=2820 := by core033_kernel_decide
theorem rows5869 : actualRows5869=WordField.canonicalRows actualModulus 5869 (.bnot 5868) := by core033_kernel_decide
theorem stats5869 : actualRows5869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5869=6276 := by core033_kernel_decide
theorem rows5870 : actualRows5870=WordField.canonicalRows actualModulus 5870 (.badd 5867 5869) := by core033_kernel_decide
theorem stats5870 : actualRows5870.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5870=5388 := by core033_kernel_decide
theorem rows5871 : actualRows5871=WordField.canonicalRows actualModulus 5871 (.bnot 5870) := by core033_kernel_decide
theorem stats5871 : actualRows5871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5871=6276 := by core033_kernel_decide
theorem rows5872 : actualRows5872=WordField.canonicalRows actualModulus 5872 (.band 5865 5871) := by core033_kernel_decide
theorem stats5872 : actualRows5872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5872=5124 := by core033_kernel_decide
theorem rows5873 : actualRows5873=WordField.canonicalRows actualModulus 5873 (.bxor 5860 5872) := by core033_kernel_decide
theorem stats5873 : actualRows5873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5873=7428 := by core033_kernel_decide
theorem rows5874 : actualRows5874=WordField.canonicalRows actualModulus 5874 (.shr 5873 31) := by core033_kernel_decide
theorem stats5874 : actualRows5874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5874=2892 := by core033_kernel_decide
theorem rows5875 : actualRows5875=WordField.canonicalRows actualModulus 5875 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5875 : actualRows5875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5875=2892 := by core033_kernel_decide
theorem rows5876 : actualRows5876=WordField.canonicalRows actualModulus 5876 (.bxor 5874 5875) := by core033_kernel_decide
theorem stats5876 : actualRows5876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5876=7428 := by core033_kernel_decide
theorem rows5877 : actualRows5877=WordField.canonicalRows actualModulus 5877 (.bnot 5876) := by core033_kernel_decide
theorem stats5877 : actualRows5877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5877=6276 := by core033_kernel_decide
def partRows89 : List R1CS.Row := actualRows5814++actualRows5815++actualRows5816++actualRows5817++actualRows5818++actualRows5819++actualRows5820++actualRows5821++actualRows5822++actualRows5823++actualRows5824++actualRows5825++actualRows5826++actualRows5827++actualRows5828++actualRows5829++actualRows5830++actualRows5831++actualRows5832++actualRows5833++actualRows5834++actualRows5835++actualRows5836++actualRows5837++actualRows5838++actualRows5839++actualRows5840++actualRows5841++actualRows5842++actualRows5843++actualRows5844++actualRows5845++actualRows5846++actualRows5847++actualRows5848++actualRows5849++actualRows5850++actualRows5851++actualRows5852++actualRows5853++actualRows5854++actualRows5855++actualRows5856++actualRows5857++actualRows5858++actualRows5859++actualRows5860++actualRows5861++actualRows5862++actualRows5863++actualRows5864++actualRows5865++actualRows5866++actualRows5867++actualRows5868++actualRows5869++actualRows5870++actualRows5871++actualRows5872++actualRows5873++actualRows5874++actualRows5875++actualRows5876++actualRows5877
def partOps89 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 1299 5814,.literal (BitVec.ofNat 32 0),.bnot 5816,.badd 5815 5817,.bnot 5818,.band 5813 5819,.bxor 5808 5820,.shr 5821 31,.literal (BitVec.ofNat 32 1),.bxor 5822 5823,.bnot 5824,.literal (BitVec.ofNat 32 1),.badd 5825 5826,.bnot 5827,.band 5828 2633,.bxor 5803 5829,.literal (BitVec.ofNat 32 2),.bxor 1299 5831,.literal (BitVec.ofNat 32 0),.bnot 5833,.band 5832 5834,.literal (BitVec.ofNat 32 2),.bxor 1299 5836,.literal (BitVec.ofNat 32 0),.bnot 5838,.bxor 5837 5839,.literal (BitVec.ofNat 32 2),.bxor 1299 5841,.literal (BitVec.ofNat 32 0),.bnot 5843,.badd 5842 5844,.bnot 5845,.band 5840 5846,.bxor 5835 5847,.shr 5848 31,.literal (BitVec.ofNat 32 1),.bxor 5849 5850,.bnot 5851,.literal (BitVec.ofNat 32 1),.badd 5852 5853,.band 5854 2828,.literal (BitVec.ofNat 32 2),.bxor 1299 5856,.literal (BitVec.ofNat 32 0),.bnot 5858,.band 5857 5859,.literal (BitVec.ofNat 32 2),.bxor 1299 5861,.literal (BitVec.ofNat 32 0),.bnot 5863,.bxor 5862 5864,.literal (BitVec.ofNat 32 2),.bxor 1299 5866,.literal (BitVec.ofNat 32 0),.bnot 5868,.badd 5867 5869,.bnot 5870,.band 5865 5871,.bxor 5860 5872,.shr 5873 31,.literal (BitVec.ofNat 32 1),.bxor 5874 5875,.bnot 5876]
theorem partExact89 : partRows89=WordField.rows actualModulus 5814 partOps89 := by
  simp only [partRows89,partOps89,WordField.rows,rows5814,rows5815,rows5816,rows5817,rows5818,rows5819,rows5820,rows5821,rows5822,rows5823,rows5824,rows5825,rows5826,rows5827,rows5828,rows5829,rows5830,rows5831,rows5832,rows5833,rows5834,rows5835,rows5836,rows5837,rows5838,rows5839,rows5840,rows5841,rows5842,rows5843,rows5844,rows5845,rows5846,rows5847,rows5848,rows5849,rows5850,rows5851,rows5852,rows5853,rows5854,rows5855,rows5856,rows5857,rows5858,rows5859,rows5860,rows5861,rows5862,rows5863,rows5864,rows5865,rows5866,rows5867,rows5868,rows5869,rows5870,rows5871,rows5872,rows5873,rows5874,rows5875,rows5876,rows5877,List.append_assoc,List.append_nil]
theorem partLength89 : partOps89.length=64 := by decide
theorem partStats89 : partRows89.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows89=332640 := by
  simp only [partRows89,List.length_append,MatrixRowBlocks.rows_weight_append,stats5814.1,stats5814.2,stats5815.1,stats5815.2,stats5816.1,stats5816.2,stats5817.1,stats5817.2,stats5818.1,stats5818.2,stats5819.1,stats5819.2,stats5820.1,stats5820.2,stats5821.1,stats5821.2,stats5822.1,stats5822.2,stats5823.1,stats5823.2,stats5824.1,stats5824.2,stats5825.1,stats5825.2,stats5826.1,stats5826.2,stats5827.1,stats5827.2,stats5828.1,stats5828.2,stats5829.1,stats5829.2,stats5830.1,stats5830.2,stats5831.1,stats5831.2,stats5832.1,stats5832.2,stats5833.1,stats5833.2,stats5834.1,stats5834.2,stats5835.1,stats5835.2,stats5836.1,stats5836.2,stats5837.1,stats5837.2,stats5838.1,stats5838.2,stats5839.1,stats5839.2,stats5840.1,stats5840.2,stats5841.1,stats5841.2,stats5842.1,stats5842.2,stats5843.1,stats5843.2,stats5844.1,stats5844.2,stats5845.1,stats5845.2,stats5846.1,stats5846.2,stats5847.1,stats5847.2,stats5848.1,stats5848.2,stats5849.1,stats5849.2,stats5850.1,stats5850.2,stats5851.1,stats5851.2,stats5852.1,stats5852.2,stats5853.1,stats5853.2,stats5854.1,stats5854.2,stats5855.1,stats5855.2,stats5856.1,stats5856.2,stats5857.1,stats5857.2,stats5858.1,stats5858.2,stats5859.1,stats5859.2,stats5860.1,stats5860.2,stats5861.1,stats5861.2,stats5862.1,stats5862.2,stats5863.1,stats5863.2,stats5864.1,stats5864.2,stats5865.1,stats5865.2,stats5866.1,stats5866.2,stats5867.1,stats5867.2,stats5868.1,stats5868.2,stats5869.1,stats5869.2,stats5870.1,stats5870.2,stats5871.1,stats5871.2,stats5872.1,stats5872.2,stats5873.1,stats5873.2,stats5874.1,stats5874.2,stats5875.1,stats5875.2,stats5876.1,stats5876.2,stats5877.1,stats5877.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
