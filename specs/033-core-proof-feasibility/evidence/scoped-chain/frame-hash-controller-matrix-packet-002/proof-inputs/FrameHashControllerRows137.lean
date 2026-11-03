import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData137
import FrameHashControllerInstructionMatrixData138
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8811 : actualRows8811=WordField.canonicalRows actualModulus 8811 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8811 : actualRows8811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8811=2820 := by core033_kernel_decide
theorem rows8812 : actualRows8812=WordField.canonicalRows actualModulus 8812 (.bnot 8811) := by core033_kernel_decide
theorem stats8812 : actualRows8812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8812=6276 := by core033_kernel_decide
theorem rows8813 : actualRows8813=WordField.canonicalRows actualModulus 8813 (.badd 8810 8812) := by core033_kernel_decide
theorem stats8813 : actualRows8813.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8813=5388 := by core033_kernel_decide
theorem rows8814 : actualRows8814=WordField.canonicalRows actualModulus 8814 (.bnot 8813) := by core033_kernel_decide
theorem stats8814 : actualRows8814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8814=6276 := by core033_kernel_decide
theorem rows8815 : actualRows8815=WordField.canonicalRows actualModulus 8815 (.band 8808 8814) := by core033_kernel_decide
theorem stats8815 : actualRows8815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8815=5124 := by core033_kernel_decide
theorem rows8816 : actualRows8816=WordField.canonicalRows actualModulus 8816 (.bxor 8803 8815) := by core033_kernel_decide
theorem stats8816 : actualRows8816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8816=7428 := by core033_kernel_decide
theorem rows8817 : actualRows8817=WordField.canonicalRows actualModulus 8817 (.shr 8816 31) := by core033_kernel_decide
theorem stats8817 : actualRows8817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8817=2892 := by core033_kernel_decide
theorem rows8818 : actualRows8818=WordField.canonicalRows actualModulus 8818 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8818 : actualRows8818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8818=2892 := by core033_kernel_decide
theorem rows8819 : actualRows8819=WordField.canonicalRows actualModulus 8819 (.bxor 8817 8818) := by core033_kernel_decide
theorem stats8819 : actualRows8819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8819=7428 := by core033_kernel_decide
theorem rows8820 : actualRows8820=WordField.canonicalRows actualModulus 8820 (.bnot 8819) := by core033_kernel_decide
theorem stats8820 : actualRows8820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8820=6276 := by core033_kernel_decide
theorem rows8821 : actualRows8821=WordField.canonicalRows actualModulus 8821 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8821 : actualRows8821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8821=2892 := by core033_kernel_decide
theorem rows8822 : actualRows8822=WordField.canonicalRows actualModulus 8822 (.badd 8820 8821) := by core033_kernel_decide
theorem stats8822 : actualRows8822.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8822=5388 := by core033_kernel_decide
theorem rows8823 : actualRows8823=WordField.canonicalRows actualModulus 8823 (.bnot 8822) := by core033_kernel_decide
theorem stats8823 : actualRows8823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8823=6276 := by core033_kernel_decide
theorem rows8824 : actualRows8824=WordField.canonicalRows actualModulus 8824 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8824 : actualRows8824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8824=2892 := by core033_kernel_decide
theorem rows8825 : actualRows8825=WordField.canonicalRows actualModulus 8825 (.band 8823 8824) := by core033_kernel_decide
theorem stats8825 : actualRows8825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8825=5124 := by core033_kernel_decide
theorem rows8826 : actualRows8826=WordField.canonicalRows actualModulus 8826 (.bxor 8798 8825) := by core033_kernel_decide
theorem stats8826 : actualRows8826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8826=7428 := by core033_kernel_decide
theorem rows8827 : actualRows8827=WordField.canonicalRows actualModulus 8827 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8827 : actualRows8827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8827=2892 := by core033_kernel_decide
theorem rows8828 : actualRows8828=WordField.canonicalRows actualModulus 8828 (.bxor 0 8827) := by core033_kernel_decide
theorem stats8828 : actualRows8828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8828=7428 := by core033_kernel_decide
theorem rows8829 : actualRows8829=WordField.canonicalRows actualModulus 8829 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8829 : actualRows8829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8829=2820 := by core033_kernel_decide
theorem rows8830 : actualRows8830=WordField.canonicalRows actualModulus 8830 (.bnot 8829) := by core033_kernel_decide
theorem stats8830 : actualRows8830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8830=6276 := by core033_kernel_decide
theorem rows8831 : actualRows8831=WordField.canonicalRows actualModulus 8831 (.band 8828 8830) := by core033_kernel_decide
theorem stats8831 : actualRows8831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8831=5124 := by core033_kernel_decide
theorem rows8832 : actualRows8832=WordField.canonicalRows actualModulus 8832 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8832 : actualRows8832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8832=2892 := by core033_kernel_decide
theorem rows8833 : actualRows8833=WordField.canonicalRows actualModulus 8833 (.bxor 0 8832) := by core033_kernel_decide
theorem stats8833 : actualRows8833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8833=7428 := by core033_kernel_decide
theorem rows8834 : actualRows8834=WordField.canonicalRows actualModulus 8834 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8834 : actualRows8834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8834=2820 := by core033_kernel_decide
theorem rows8835 : actualRows8835=WordField.canonicalRows actualModulus 8835 (.bnot 8834) := by core033_kernel_decide
theorem stats8835 : actualRows8835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8835=6276 := by core033_kernel_decide
theorem rows8836 : actualRows8836=WordField.canonicalRows actualModulus 8836 (.bxor 8833 8835) := by core033_kernel_decide
theorem stats8836 : actualRows8836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8836=7428 := by core033_kernel_decide
theorem rows8837 : actualRows8837=WordField.canonicalRows actualModulus 8837 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8837 : actualRows8837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8837=2892 := by core033_kernel_decide
theorem rows8838 : actualRows8838=WordField.canonicalRows actualModulus 8838 (.bxor 0 8837) := by core033_kernel_decide
theorem stats8838 : actualRows8838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8838=7428 := by core033_kernel_decide
theorem rows8839 : actualRows8839=WordField.canonicalRows actualModulus 8839 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8839 : actualRows8839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8839=2820 := by core033_kernel_decide
theorem rows8840 : actualRows8840=WordField.canonicalRows actualModulus 8840 (.bnot 8839) := by core033_kernel_decide
theorem stats8840 : actualRows8840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8840=6276 := by core033_kernel_decide
theorem rows8841 : actualRows8841=WordField.canonicalRows actualModulus 8841 (.badd 8838 8840) := by core033_kernel_decide
theorem stats8841 : actualRows8841.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8841=5388 := by core033_kernel_decide
theorem rows8842 : actualRows8842=WordField.canonicalRows actualModulus 8842 (.bnot 8841) := by core033_kernel_decide
theorem stats8842 : actualRows8842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8842=6276 := by core033_kernel_decide
theorem rows8843 : actualRows8843=WordField.canonicalRows actualModulus 8843 (.band 8836 8842) := by core033_kernel_decide
theorem stats8843 : actualRows8843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8843=5124 := by core033_kernel_decide
theorem rows8844 : actualRows8844=WordField.canonicalRows actualModulus 8844 (.bxor 8831 8843) := by core033_kernel_decide
theorem stats8844 : actualRows8844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8844=7428 := by core033_kernel_decide
theorem rows8845 : actualRows8845=WordField.canonicalRows actualModulus 8845 (.shr 8844 31) := by core033_kernel_decide
theorem stats8845 : actualRows8845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8845=2892 := by core033_kernel_decide
theorem rows8846 : actualRows8846=WordField.canonicalRows actualModulus 8846 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8846 : actualRows8846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8846=2892 := by core033_kernel_decide
theorem rows8847 : actualRows8847=WordField.canonicalRows actualModulus 8847 (.bxor 8845 8846) := by core033_kernel_decide
theorem stats8847 : actualRows8847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8847=7428 := by core033_kernel_decide
theorem rows8848 : actualRows8848=WordField.canonicalRows actualModulus 8848 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8848 : actualRows8848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8848=2892 := by core033_kernel_decide
theorem rows8849 : actualRows8849=WordField.canonicalRows actualModulus 8849 (.bxor 0 8848) := by core033_kernel_decide
theorem stats8849 : actualRows8849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8849=7428 := by core033_kernel_decide
theorem rows8850 : actualRows8850=WordField.canonicalRows actualModulus 8850 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8850 : actualRows8850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8850=2820 := by core033_kernel_decide
theorem rows8851 : actualRows8851=WordField.canonicalRows actualModulus 8851 (.bnot 8850) := by core033_kernel_decide
theorem stats8851 : actualRows8851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8851=6276 := by core033_kernel_decide
theorem rows8852 : actualRows8852=WordField.canonicalRows actualModulus 8852 (.band 8849 8851) := by core033_kernel_decide
theorem stats8852 : actualRows8852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8852=5124 := by core033_kernel_decide
theorem rows8853 : actualRows8853=WordField.canonicalRows actualModulus 8853 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8853 : actualRows8853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8853=2892 := by core033_kernel_decide
theorem rows8854 : actualRows8854=WordField.canonicalRows actualModulus 8854 (.bxor 0 8853) := by core033_kernel_decide
theorem stats8854 : actualRows8854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8854=7428 := by core033_kernel_decide
theorem rows8855 : actualRows8855=WordField.canonicalRows actualModulus 8855 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8855 : actualRows8855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8855=2820 := by core033_kernel_decide
theorem rows8856 : actualRows8856=WordField.canonicalRows actualModulus 8856 (.bnot 8855) := by core033_kernel_decide
theorem stats8856 : actualRows8856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8856=6276 := by core033_kernel_decide
theorem rows8857 : actualRows8857=WordField.canonicalRows actualModulus 8857 (.bxor 8854 8856) := by core033_kernel_decide
theorem stats8857 : actualRows8857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8857=7428 := by core033_kernel_decide
theorem rows8858 : actualRows8858=WordField.canonicalRows actualModulus 8858 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats8858 : actualRows8858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8858=2892 := by core033_kernel_decide
theorem rows8859 : actualRows8859=WordField.canonicalRows actualModulus 8859 (.bxor 0 8858) := by core033_kernel_decide
theorem stats8859 : actualRows8859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8859=7428 := by core033_kernel_decide
theorem rows8860 : actualRows8860=WordField.canonicalRows actualModulus 8860 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8860 : actualRows8860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8860=2820 := by core033_kernel_decide
theorem rows8861 : actualRows8861=WordField.canonicalRows actualModulus 8861 (.bnot 8860) := by core033_kernel_decide
theorem stats8861 : actualRows8861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8861=6276 := by core033_kernel_decide
theorem rows8862 : actualRows8862=WordField.canonicalRows actualModulus 8862 (.badd 8859 8861) := by core033_kernel_decide
theorem stats8862 : actualRows8862.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8862=5388 := by core033_kernel_decide
theorem rows8863 : actualRows8863=WordField.canonicalRows actualModulus 8863 (.bnot 8862) := by core033_kernel_decide
theorem stats8863 : actualRows8863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8863=6276 := by core033_kernel_decide
theorem rows8864 : actualRows8864=WordField.canonicalRows actualModulus 8864 (.band 8857 8863) := by core033_kernel_decide
theorem stats8864 : actualRows8864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8864=5124 := by core033_kernel_decide
theorem rows8865 : actualRows8865=WordField.canonicalRows actualModulus 8865 (.bxor 8852 8864) := by core033_kernel_decide
theorem stats8865 : actualRows8865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8865=7428 := by core033_kernel_decide
theorem rows8866 : actualRows8866=WordField.canonicalRows actualModulus 8866 (.shr 8865 31) := by core033_kernel_decide
theorem stats8866 : actualRows8866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8866=2892 := by core033_kernel_decide
theorem rows8867 : actualRows8867=WordField.canonicalRows actualModulus 8867 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8867 : actualRows8867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8867=2892 := by core033_kernel_decide
theorem rows8868 : actualRows8868=WordField.canonicalRows actualModulus 8868 (.bxor 8866 8867) := by core033_kernel_decide
theorem stats8868 : actualRows8868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8868=7428 := by core033_kernel_decide
theorem rows8869 : actualRows8869=WordField.canonicalRows actualModulus 8869 (.bxor 8847 8868) := by core033_kernel_decide
theorem stats8869 : actualRows8869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8869=7428 := by core033_kernel_decide
def partRows137 : List R1CS.Row := actualRows8811++actualRows8812++actualRows8813++actualRows8814++actualRows8815++actualRows8816++actualRows8817++actualRows8818++actualRows8819++actualRows8820++actualRows8821++actualRows8822++actualRows8823++actualRows8824++actualRows8825++actualRows8826++actualRows8827++actualRows8828++actualRows8829++actualRows8830++actualRows8831++actualRows8832++actualRows8833++actualRows8834++actualRows8835++actualRows8836++actualRows8837++actualRows8838++actualRows8839++actualRows8840++actualRows8841++actualRows8842++actualRows8843++actualRows8844++actualRows8845++actualRows8846++actualRows8847++actualRows8848++actualRows8849++actualRows8850++actualRows8851++actualRows8852++actualRows8853++actualRows8854++actualRows8855++actualRows8856++actualRows8857++actualRows8858++actualRows8859++actualRows8860++actualRows8861++actualRows8862++actualRows8863++actualRows8864++actualRows8865++actualRows8866++actualRows8867++actualRows8868++actualRows8869
def partOps137 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 8811,.badd 8810 8812,.bnot 8813,.band 8808 8814,.bxor 8803 8815,.shr 8816 31,.literal (BitVec.ofNat 32 1),.bxor 8817 8818,.bnot 8819,.literal (BitVec.ofNat 32 1),.badd 8820 8821,.bnot 8822,.literal (BitVec.ofNat 32 2),.band 8823 8824,.bxor 8798 8825,.literal (BitVec.ofNat 32 1),.bxor 0 8827,.literal (BitVec.ofNat 32 0),.bnot 8829,.band 8828 8830,.literal (BitVec.ofNat 32 1),.bxor 0 8832,.literal (BitVec.ofNat 32 0),.bnot 8834,.bxor 8833 8835,.literal (BitVec.ofNat 32 1),.bxor 0 8837,.literal (BitVec.ofNat 32 0),.bnot 8839,.badd 8838 8840,.bnot 8841,.band 8836 8842,.bxor 8831 8843,.shr 8844 31,.literal (BitVec.ofNat 32 1),.bxor 8845 8846,.literal (BitVec.ofNat 32 2),.bxor 0 8848,.literal (BitVec.ofNat 32 0),.bnot 8850,.band 8849 8851,.literal (BitVec.ofNat 32 2),.bxor 0 8853,.literal (BitVec.ofNat 32 0),.bnot 8855,.bxor 8854 8856,.literal (BitVec.ofNat 32 2),.bxor 0 8858,.literal (BitVec.ofNat 32 0),.bnot 8860,.badd 8859 8861,.bnot 8862,.band 8857 8863,.bxor 8852 8864,.shr 8865 31,.literal (BitVec.ofNat 32 1),.bxor 8866 8867,.bxor 8847 8868]
theorem partExact137 : partRows137=WordField.rows actualModulus 8811 partOps137 := by
  simp only [partRows137,partOps137,WordField.rows,rows8811,rows8812,rows8813,rows8814,rows8815,rows8816,rows8817,rows8818,rows8819,rows8820,rows8821,rows8822,rows8823,rows8824,rows8825,rows8826,rows8827,rows8828,rows8829,rows8830,rows8831,rows8832,rows8833,rows8834,rows8835,rows8836,rows8837,rows8838,rows8839,rows8840,rows8841,rows8842,rows8843,rows8844,rows8845,rows8846,rows8847,rows8848,rows8849,rows8850,rows8851,rows8852,rows8853,rows8854,rows8855,rows8856,rows8857,rows8858,rows8859,rows8860,rows8861,rows8862,rows8863,rows8864,rows8865,rows8866,rows8867,rows8868,rows8869,List.append_assoc,List.append_nil]
theorem partLength137 : partOps137.length=59 := by decide
theorem partStats137 : partRows137.length=2010 ∧ MatrixRowBlocks.rowsWeight partRows137=306684 := by
  simp only [partRows137,List.length_append,MatrixRowBlocks.rows_weight_append,stats8811.1,stats8811.2,stats8812.1,stats8812.2,stats8813.1,stats8813.2,stats8814.1,stats8814.2,stats8815.1,stats8815.2,stats8816.1,stats8816.2,stats8817.1,stats8817.2,stats8818.1,stats8818.2,stats8819.1,stats8819.2,stats8820.1,stats8820.2,stats8821.1,stats8821.2,stats8822.1,stats8822.2,stats8823.1,stats8823.2,stats8824.1,stats8824.2,stats8825.1,stats8825.2,stats8826.1,stats8826.2,stats8827.1,stats8827.2,stats8828.1,stats8828.2,stats8829.1,stats8829.2,stats8830.1,stats8830.2,stats8831.1,stats8831.2,stats8832.1,stats8832.2,stats8833.1,stats8833.2,stats8834.1,stats8834.2,stats8835.1,stats8835.2,stats8836.1,stats8836.2,stats8837.1,stats8837.2,stats8838.1,stats8838.2,stats8839.1,stats8839.2,stats8840.1,stats8840.2,stats8841.1,stats8841.2,stats8842.1,stats8842.2,stats8843.1,stats8843.2,stats8844.1,stats8844.2,stats8845.1,stats8845.2,stats8846.1,stats8846.2,stats8847.1,stats8847.2,stats8848.1,stats8848.2,stats8849.1,stats8849.2,stats8850.1,stats8850.2,stats8851.1,stats8851.2,stats8852.1,stats8852.2,stats8853.1,stats8853.2,stats8854.1,stats8854.2,stats8855.1,stats8855.2,stats8856.1,stats8856.2,stats8857.1,stats8857.2,stats8858.1,stats8858.2,stats8859.1,stats8859.2,stats8860.1,stats8860.2,stats8861.1,stats8861.2,stats8862.1,stats8862.2,stats8863.1,stats8863.2,stats8864.1,stats8864.2,stats8865.1,stats8865.2,stats8866.1,stats8866.2,stats8867.1,stats8867.2,stats8868.1,stats8868.2,stats8869.1,stats8869.2]
  decide
end FrameHashControllerCheckedRows
