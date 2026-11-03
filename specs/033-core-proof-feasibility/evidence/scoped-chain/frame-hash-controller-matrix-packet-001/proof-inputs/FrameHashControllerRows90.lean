import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData90
import FrameHashControllerInstructionMatrixData91
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5803 : actualRows5803=WordField.canonicalRows actualModulus 5803 (.bnot 5802) := by core033_kernel_decide
theorem stats5803 : actualRows5803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5803=6276 := by core033_kernel_decide
theorem rows5804 : actualRows5804=WordField.canonicalRows actualModulus 5804 (.band 5801 5803) := by core033_kernel_decide
theorem stats5804 : actualRows5804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5804=5124 := by core033_kernel_decide
theorem rows5805 : actualRows5805=WordField.canonicalRows actualModulus 5805 (.shr 3435 8) := by core033_kernel_decide
theorem stats5805 : actualRows5805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5805=4548 := by core033_kernel_decide
theorem rows5806 : actualRows5806=WordField.canonicalRows actualModulus 5806 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5806 : actualRows5806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5806=2820 := by core033_kernel_decide
theorem rows5807 : actualRows5807=WordField.canonicalRows actualModulus 5807 (.bnot 5806) := by core033_kernel_decide
theorem stats5807 : actualRows5807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5807=6276 := by core033_kernel_decide
theorem rows5808 : actualRows5808=WordField.canonicalRows actualModulus 5808 (.bxor 5805 5807) := by core033_kernel_decide
theorem stats5808 : actualRows5808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5808=7428 := by core033_kernel_decide
theorem rows5809 : actualRows5809=WordField.canonicalRows actualModulus 5809 (.shr 3435 8) := by core033_kernel_decide
theorem stats5809 : actualRows5809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5809=4548 := by core033_kernel_decide
theorem rows5810 : actualRows5810=WordField.canonicalRows actualModulus 5810 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5810 : actualRows5810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5810=2820 := by core033_kernel_decide
theorem rows5811 : actualRows5811=WordField.canonicalRows actualModulus 5811 (.bnot 5810) := by core033_kernel_decide
theorem stats5811 : actualRows5811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5811=6276 := by core033_kernel_decide
theorem rows5812 : actualRows5812=WordField.canonicalRows actualModulus 5812 (.badd 5809 5811) := by core033_kernel_decide
theorem stats5812 : actualRows5812.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5812=5388 := by core033_kernel_decide
theorem rows5813 : actualRows5813=WordField.canonicalRows actualModulus 5813 (.bnot 5812) := by core033_kernel_decide
theorem stats5813 : actualRows5813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5813=6276 := by core033_kernel_decide
theorem rows5814 : actualRows5814=WordField.canonicalRows actualModulus 5814 (.band 5808 5813) := by core033_kernel_decide
theorem stats5814 : actualRows5814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5814=5124 := by core033_kernel_decide
theorem rows5815 : actualRows5815=WordField.canonicalRows actualModulus 5815 (.bxor 5804 5814) := by core033_kernel_decide
theorem stats5815 : actualRows5815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5815=7428 := by core033_kernel_decide
theorem rows5816 : actualRows5816=WordField.canonicalRows actualModulus 5816 (.shr 5815 31) := by core033_kernel_decide
theorem stats5816 : actualRows5816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5816=2892 := by core033_kernel_decide
theorem rows5817 : actualRows5817=WordField.canonicalRows actualModulus 5817 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5817 : actualRows5817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5817=2892 := by core033_kernel_decide
theorem rows5818 : actualRows5818=WordField.canonicalRows actualModulus 5818 (.bxor 5816 5817) := by core033_kernel_decide
theorem stats5818 : actualRows5818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5818=7428 := by core033_kernel_decide
theorem rows5819 : actualRows5819=WordField.canonicalRows actualModulus 5819 (.shr 3487 8) := by core033_kernel_decide
theorem stats5819 : actualRows5819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5819=4548 := by core033_kernel_decide
theorem rows5820 : actualRows5820=WordField.canonicalRows actualModulus 5820 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5820 : actualRows5820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5820=2820 := by core033_kernel_decide
theorem rows5821 : actualRows5821=WordField.canonicalRows actualModulus 5821 (.bnot 5820) := by core033_kernel_decide
theorem stats5821 : actualRows5821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5821=6276 := by core033_kernel_decide
theorem rows5822 : actualRows5822=WordField.canonicalRows actualModulus 5822 (.band 5819 5821) := by core033_kernel_decide
theorem stats5822 : actualRows5822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5822=5124 := by core033_kernel_decide
theorem rows5823 : actualRows5823=WordField.canonicalRows actualModulus 5823 (.shr 3487 8) := by core033_kernel_decide
theorem stats5823 : actualRows5823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5823=4548 := by core033_kernel_decide
theorem rows5824 : actualRows5824=WordField.canonicalRows actualModulus 5824 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5824 : actualRows5824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5824=2820 := by core033_kernel_decide
theorem rows5825 : actualRows5825=WordField.canonicalRows actualModulus 5825 (.bnot 5824) := by core033_kernel_decide
theorem stats5825 : actualRows5825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5825=6276 := by core033_kernel_decide
theorem rows5826 : actualRows5826=WordField.canonicalRows actualModulus 5826 (.bxor 5823 5825) := by core033_kernel_decide
theorem stats5826 : actualRows5826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5826=7428 := by core033_kernel_decide
theorem rows5827 : actualRows5827=WordField.canonicalRows actualModulus 5827 (.shr 3487 8) := by core033_kernel_decide
theorem stats5827 : actualRows5827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5827=4548 := by core033_kernel_decide
theorem rows5828 : actualRows5828=WordField.canonicalRows actualModulus 5828 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5828 : actualRows5828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5828=2820 := by core033_kernel_decide
theorem rows5829 : actualRows5829=WordField.canonicalRows actualModulus 5829 (.bnot 5828) := by core033_kernel_decide
theorem stats5829 : actualRows5829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5829=6276 := by core033_kernel_decide
theorem rows5830 : actualRows5830=WordField.canonicalRows actualModulus 5830 (.badd 5827 5829) := by core033_kernel_decide
theorem stats5830 : actualRows5830.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5830=5388 := by core033_kernel_decide
theorem rows5831 : actualRows5831=WordField.canonicalRows actualModulus 5831 (.bnot 5830) := by core033_kernel_decide
theorem stats5831 : actualRows5831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5831=6276 := by core033_kernel_decide
theorem rows5832 : actualRows5832=WordField.canonicalRows actualModulus 5832 (.band 5826 5831) := by core033_kernel_decide
theorem stats5832 : actualRows5832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5832=5124 := by core033_kernel_decide
theorem rows5833 : actualRows5833=WordField.canonicalRows actualModulus 5833 (.bxor 5822 5832) := by core033_kernel_decide
theorem stats5833 : actualRows5833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5833=7428 := by core033_kernel_decide
theorem rows5834 : actualRows5834=WordField.canonicalRows actualModulus 5834 (.shr 5833 31) := by core033_kernel_decide
theorem stats5834 : actualRows5834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5834=2892 := by core033_kernel_decide
theorem rows5835 : actualRows5835=WordField.canonicalRows actualModulus 5835 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5835 : actualRows5835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5835=2892 := by core033_kernel_decide
theorem rows5836 : actualRows5836=WordField.canonicalRows actualModulus 5836 (.bxor 5834 5835) := by core033_kernel_decide
theorem stats5836 : actualRows5836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5836=7428 := by core033_kernel_decide
theorem rows5837 : actualRows5837=WordField.canonicalRows actualModulus 5837 (.shr 3539 8) := by core033_kernel_decide
theorem stats5837 : actualRows5837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5837=4548 := by core033_kernel_decide
theorem rows5838 : actualRows5838=WordField.canonicalRows actualModulus 5838 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5838 : actualRows5838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5838=2820 := by core033_kernel_decide
theorem rows5839 : actualRows5839=WordField.canonicalRows actualModulus 5839 (.bnot 5838) := by core033_kernel_decide
theorem stats5839 : actualRows5839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5839=6276 := by core033_kernel_decide
theorem rows5840 : actualRows5840=WordField.canonicalRows actualModulus 5840 (.band 5837 5839) := by core033_kernel_decide
theorem stats5840 : actualRows5840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5840=5124 := by core033_kernel_decide
theorem rows5841 : actualRows5841=WordField.canonicalRows actualModulus 5841 (.shr 3539 8) := by core033_kernel_decide
theorem stats5841 : actualRows5841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5841=4548 := by core033_kernel_decide
theorem rows5842 : actualRows5842=WordField.canonicalRows actualModulus 5842 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5842 : actualRows5842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5842=2820 := by core033_kernel_decide
theorem rows5843 : actualRows5843=WordField.canonicalRows actualModulus 5843 (.bnot 5842) := by core033_kernel_decide
theorem stats5843 : actualRows5843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5843=6276 := by core033_kernel_decide
theorem rows5844 : actualRows5844=WordField.canonicalRows actualModulus 5844 (.bxor 5841 5843) := by core033_kernel_decide
theorem stats5844 : actualRows5844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5844=7428 := by core033_kernel_decide
theorem rows5845 : actualRows5845=WordField.canonicalRows actualModulus 5845 (.shr 3539 8) := by core033_kernel_decide
theorem stats5845 : actualRows5845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5845=4548 := by core033_kernel_decide
theorem rows5846 : actualRows5846=WordField.canonicalRows actualModulus 5846 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5846 : actualRows5846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5846=2820 := by core033_kernel_decide
theorem rows5847 : actualRows5847=WordField.canonicalRows actualModulus 5847 (.bnot 5846) := by core033_kernel_decide
theorem stats5847 : actualRows5847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5847=6276 := by core033_kernel_decide
theorem rows5848 : actualRows5848=WordField.canonicalRows actualModulus 5848 (.badd 5845 5847) := by core033_kernel_decide
theorem stats5848 : actualRows5848.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5848=5388 := by core033_kernel_decide
theorem rows5849 : actualRows5849=WordField.canonicalRows actualModulus 5849 (.bnot 5848) := by core033_kernel_decide
theorem stats5849 : actualRows5849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5849=6276 := by core033_kernel_decide
theorem rows5850 : actualRows5850=WordField.canonicalRows actualModulus 5850 (.band 5844 5849) := by core033_kernel_decide
theorem stats5850 : actualRows5850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5850=5124 := by core033_kernel_decide
theorem rows5851 : actualRows5851=WordField.canonicalRows actualModulus 5851 (.bxor 5840 5850) := by core033_kernel_decide
theorem stats5851 : actualRows5851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5851=7428 := by core033_kernel_decide
theorem rows5852 : actualRows5852=WordField.canonicalRows actualModulus 5852 (.shr 5851 31) := by core033_kernel_decide
theorem stats5852 : actualRows5852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5852=2892 := by core033_kernel_decide
theorem rows5853 : actualRows5853=WordField.canonicalRows actualModulus 5853 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5853 : actualRows5853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5853=2892 := by core033_kernel_decide
theorem rows5854 : actualRows5854=WordField.canonicalRows actualModulus 5854 (.bxor 5852 5853) := by core033_kernel_decide
theorem stats5854 : actualRows5854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5854=7428 := by core033_kernel_decide
theorem rows5855 : actualRows5855=WordField.canonicalRows actualModulus 5855 (.shr 3591 8) := by core033_kernel_decide
theorem stats5855 : actualRows5855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5855=4548 := by core033_kernel_decide
theorem rows5856 : actualRows5856=WordField.canonicalRows actualModulus 5856 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5856 : actualRows5856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5856=2820 := by core033_kernel_decide
theorem rows5857 : actualRows5857=WordField.canonicalRows actualModulus 5857 (.bnot 5856) := by core033_kernel_decide
theorem stats5857 : actualRows5857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5857=6276 := by core033_kernel_decide
theorem rows5858 : actualRows5858=WordField.canonicalRows actualModulus 5858 (.band 5855 5857) := by core033_kernel_decide
theorem stats5858 : actualRows5858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5858=5124 := by core033_kernel_decide
theorem rows5859 : actualRows5859=WordField.canonicalRows actualModulus 5859 (.shr 3591 8) := by core033_kernel_decide
theorem stats5859 : actualRows5859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5859=4548 := by core033_kernel_decide
theorem rows5860 : actualRows5860=WordField.canonicalRows actualModulus 5860 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5860 : actualRows5860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5860=2820 := by core033_kernel_decide
theorem rows5861 : actualRows5861=WordField.canonicalRows actualModulus 5861 (.bnot 5860) := by core033_kernel_decide
theorem stats5861 : actualRows5861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5861=6276 := by core033_kernel_decide
theorem rows5862 : actualRows5862=WordField.canonicalRows actualModulus 5862 (.bxor 5859 5861) := by core033_kernel_decide
theorem stats5862 : actualRows5862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5862=7428 := by core033_kernel_decide
theorem rows5863 : actualRows5863=WordField.canonicalRows actualModulus 5863 (.shr 3591 8) := by core033_kernel_decide
theorem stats5863 : actualRows5863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5863=4548 := by core033_kernel_decide
theorem rows5864 : actualRows5864=WordField.canonicalRows actualModulus 5864 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5864 : actualRows5864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5864=2820 := by core033_kernel_decide
theorem rows5865 : actualRows5865=WordField.canonicalRows actualModulus 5865 (.bnot 5864) := by core033_kernel_decide
theorem stats5865 : actualRows5865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5865=6276 := by core033_kernel_decide
theorem rows5866 : actualRows5866=WordField.canonicalRows actualModulus 5866 (.badd 5863 5865) := by core033_kernel_decide
theorem stats5866 : actualRows5866.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5866=5388 := by core033_kernel_decide
def partRows90 : List R1CS.Row := actualRows5803++actualRows5804++actualRows5805++actualRows5806++actualRows5807++actualRows5808++actualRows5809++actualRows5810++actualRows5811++actualRows5812++actualRows5813++actualRows5814++actualRows5815++actualRows5816++actualRows5817++actualRows5818++actualRows5819++actualRows5820++actualRows5821++actualRows5822++actualRows5823++actualRows5824++actualRows5825++actualRows5826++actualRows5827++actualRows5828++actualRows5829++actualRows5830++actualRows5831++actualRows5832++actualRows5833++actualRows5834++actualRows5835++actualRows5836++actualRows5837++actualRows5838++actualRows5839++actualRows5840++actualRows5841++actualRows5842++actualRows5843++actualRows5844++actualRows5845++actualRows5846++actualRows5847++actualRows5848++actualRows5849++actualRows5850++actualRows5851++actualRows5852++actualRows5853++actualRows5854++actualRows5855++actualRows5856++actualRows5857++actualRows5858++actualRows5859++actualRows5860++actualRows5861++actualRows5862++actualRows5863++actualRows5864++actualRows5865++actualRows5866
def partOps90 : List WordIR.Op := [.bnot 5802,.band 5801 5803,.shr 3435 8,.literal (BitVec.ofNat 32 0),.bnot 5806,.bxor 5805 5807,.shr 3435 8,.literal (BitVec.ofNat 32 0),.bnot 5810,.badd 5809 5811,.bnot 5812,.band 5808 5813,.bxor 5804 5814,.shr 5815 31,.literal (BitVec.ofNat 32 1),.bxor 5816 5817,.shr 3487 8,.literal (BitVec.ofNat 32 0),.bnot 5820,.band 5819 5821,.shr 3487 8,.literal (BitVec.ofNat 32 0),.bnot 5824,.bxor 5823 5825,.shr 3487 8,.literal (BitVec.ofNat 32 0),.bnot 5828,.badd 5827 5829,.bnot 5830,.band 5826 5831,.bxor 5822 5832,.shr 5833 31,.literal (BitVec.ofNat 32 1),.bxor 5834 5835,.shr 3539 8,.literal (BitVec.ofNat 32 0),.bnot 5838,.band 5837 5839,.shr 3539 8,.literal (BitVec.ofNat 32 0),.bnot 5842,.bxor 5841 5843,.shr 3539 8,.literal (BitVec.ofNat 32 0),.bnot 5846,.badd 5845 5847,.bnot 5848,.band 5844 5849,.bxor 5840 5850,.shr 5851 31,.literal (BitVec.ofNat 32 1),.bxor 5852 5853,.shr 3591 8,.literal (BitVec.ofNat 32 0),.bnot 5856,.band 5855 5857,.shr 3591 8,.literal (BitVec.ofNat 32 0),.bnot 5860,.bxor 5859 5861,.shr 3591 8,.literal (BitVec.ofNat 32 0),.bnot 5864,.badd 5863 5865]
theorem partExact90 : partRows90=WordField.rows actualModulus 5803 partOps90 := by
  simp only [partRows90,partOps90,WordField.rows,rows5803,rows5804,rows5805,rows5806,rows5807,rows5808,rows5809,rows5810,rows5811,rows5812,rows5813,rows5814,rows5815,rows5816,rows5817,rows5818,rows5819,rows5820,rows5821,rows5822,rows5823,rows5824,rows5825,rows5826,rows5827,rows5828,rows5829,rows5830,rows5831,rows5832,rows5833,rows5834,rows5835,rows5836,rows5837,rows5838,rows5839,rows5840,rows5841,rows5842,rows5843,rows5844,rows5845,rows5846,rows5847,rows5848,rows5849,rows5850,rows5851,rows5852,rows5853,rows5854,rows5855,rows5856,rows5857,rows5858,rows5859,rows5860,rows5861,rows5862,rows5863,rows5864,rows5865,rows5866,List.append_assoc,List.append_nil]
theorem partLength90 : partOps90.length=64 := by decide
theorem partStats90 : partRows90.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows90=324240 := by
  simp only [partRows90,List.length_append,MatrixRowBlocks.rows_weight_append,stats5803.1,stats5803.2,stats5804.1,stats5804.2,stats5805.1,stats5805.2,stats5806.1,stats5806.2,stats5807.1,stats5807.2,stats5808.1,stats5808.2,stats5809.1,stats5809.2,stats5810.1,stats5810.2,stats5811.1,stats5811.2,stats5812.1,stats5812.2,stats5813.1,stats5813.2,stats5814.1,stats5814.2,stats5815.1,stats5815.2,stats5816.1,stats5816.2,stats5817.1,stats5817.2,stats5818.1,stats5818.2,stats5819.1,stats5819.2,stats5820.1,stats5820.2,stats5821.1,stats5821.2,stats5822.1,stats5822.2,stats5823.1,stats5823.2,stats5824.1,stats5824.2,stats5825.1,stats5825.2,stats5826.1,stats5826.2,stats5827.1,stats5827.2,stats5828.1,stats5828.2,stats5829.1,stats5829.2,stats5830.1,stats5830.2,stats5831.1,stats5831.2,stats5832.1,stats5832.2,stats5833.1,stats5833.2,stats5834.1,stats5834.2,stats5835.1,stats5835.2,stats5836.1,stats5836.2,stats5837.1,stats5837.2,stats5838.1,stats5838.2,stats5839.1,stats5839.2,stats5840.1,stats5840.2,stats5841.1,stats5841.2,stats5842.1,stats5842.2,stats5843.1,stats5843.2,stats5844.1,stats5844.2,stats5845.1,stats5845.2,stats5846.1,stats5846.2,stats5847.1,stats5847.2,stats5848.1,stats5848.2,stats5849.1,stats5849.2,stats5850.1,stats5850.2,stats5851.1,stats5851.2,stats5852.1,stats5852.2,stats5853.1,stats5853.2,stats5854.1,stats5854.2,stats5855.1,stats5855.2,stats5856.1,stats5856.2,stats5857.1,stats5857.2,stats5858.1,stats5858.2,stats5859.1,stats5859.2,stats5860.1,stats5860.2,stats5861.1,stats5861.2,stats5862.1,stats5862.2,stats5863.1,stats5863.2,stats5864.1,stats5864.2,stats5865.1,stats5865.2,stats5866.1,stats5866.2]
  decide
end FrameHashControllerCheckedRows
