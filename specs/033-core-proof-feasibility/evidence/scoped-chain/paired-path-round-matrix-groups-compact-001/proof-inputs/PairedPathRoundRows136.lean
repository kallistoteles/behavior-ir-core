import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData137
import PairedPathRoundInstructionMatrixData138
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8800 : actualRows8800=WordField.canonicalRows actualModulus 8800 (.badd 8788 8799) := by core033_kernel_decide
theorem stats8800 : actualRows8800.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8800=5388 := by core033_kernel_decide
theorem rows8801 : actualRows8801=WordField.canonicalRows actualModulus 8801 (.badd 8692 8788) := by core033_kernel_decide
theorem stats8801 : actualRows8801.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8801=5388 := by core033_kernel_decide
theorem rows8802 : actualRows8802=WordField.canonicalRows actualModulus 8802 (.rotr 8801 6) := by core033_kernel_decide
theorem stats8802 : actualRows8802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8802=5124 := by core033_kernel_decide
theorem rows8803 : actualRows8803=WordField.canonicalRows actualModulus 8803 (.rotr 8801 11) := by core033_kernel_decide
theorem stats8803 : actualRows8803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8803=5124 := by core033_kernel_decide
theorem rows8804 : actualRows8804=WordField.canonicalRows actualModulus 8804 (.bxor 8802 8803) := by core033_kernel_decide
theorem stats8804 : actualRows8804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8804=7428 := by core033_kernel_decide
theorem rows8805 : actualRows8805=WordField.canonicalRows actualModulus 8805 (.rotr 8801 25) := by core033_kernel_decide
theorem stats8805 : actualRows8805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8805=5124 := by core033_kernel_decide
theorem rows8806 : actualRows8806=WordField.canonicalRows actualModulus 8806 (.bxor 8804 8805) := by core033_kernel_decide
theorem stats8806 : actualRows8806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8806=7428 := by core033_kernel_decide
theorem rows8807 : actualRows8807=WordField.canonicalRows actualModulus 8807 (.badd 8720 8806) := by core033_kernel_decide
theorem stats8807 : actualRows8807.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8807=5388 := by core033_kernel_decide
theorem rows8808 : actualRows8808=WordField.canonicalRows actualModulus 8808 (.band 8801 8774) := by core033_kernel_decide
theorem stats8808 : actualRows8808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8808=5124 := by core033_kernel_decide
theorem rows8809 : actualRows8809=WordField.canonicalRows actualModulus 8809 (.bnot 8801) := by core033_kernel_decide
theorem stats8809 : actualRows8809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8809=6276 := by core033_kernel_decide
theorem rows8810 : actualRows8810=WordField.canonicalRows actualModulus 8810 (.band 8809 8747) := by core033_kernel_decide
theorem stats8810 : actualRows8810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8810=5124 := by core033_kernel_decide
theorem rows8811 : actualRows8811=WordField.canonicalRows actualModulus 8811 (.bxor 8808 8810) := by core033_kernel_decide
theorem stats8811 : actualRows8811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8811=7428 := by core033_kernel_decide
theorem rows8812 : actualRows8812=WordField.canonicalRows actualModulus 8812 (.badd 8807 8811) := by core033_kernel_decide
theorem stats8812 : actualRows8812.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8812=5388 := by core033_kernel_decide
theorem rows8813 : actualRows8813=WordField.canonicalRows actualModulus 8813 (.literal (BitVec.ofNat 32 3210313671)) := by core033_kernel_decide
theorem stats8813 : actualRows8813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8813=4476 := by core033_kernel_decide
theorem rows8814 : actualRows8814=WordField.canonicalRows actualModulus 8814 (.badd 8812 8813) := by core033_kernel_decide
theorem stats8814 : actualRows8814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8814=5388 := by core033_kernel_decide
theorem rows8815 : actualRows8815=WordField.canonicalRows actualModulus 8815 (.badd 8814 7604) := by core033_kernel_decide
theorem stats8815 : actualRows8815.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8815=5388 := by core033_kernel_decide
theorem rows8816 : actualRows8816=WordField.canonicalRows actualModulus 8816 (.rotr 8800 2) := by core033_kernel_decide
theorem stats8816 : actualRows8816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8816=5124 := by core033_kernel_decide
theorem rows8817 : actualRows8817=WordField.canonicalRows actualModulus 8817 (.rotr 8800 13) := by core033_kernel_decide
theorem stats8817 : actualRows8817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8817=5124 := by core033_kernel_decide
theorem rows8818 : actualRows8818=WordField.canonicalRows actualModulus 8818 (.bxor 8816 8817) := by core033_kernel_decide
theorem stats8818 : actualRows8818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8818=7428 := by core033_kernel_decide
theorem rows8819 : actualRows8819=WordField.canonicalRows actualModulus 8819 (.rotr 8800 22) := by core033_kernel_decide
theorem stats8819 : actualRows8819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8819=5124 := by core033_kernel_decide
theorem rows8820 : actualRows8820=WordField.canonicalRows actualModulus 8820 (.bxor 8818 8819) := by core033_kernel_decide
theorem stats8820 : actualRows8820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8820=7428 := by core033_kernel_decide
theorem rows8821 : actualRows8821=WordField.canonicalRows actualModulus 8821 (.band 8800 8773) := by core033_kernel_decide
theorem stats8821 : actualRows8821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8821=5124 := by core033_kernel_decide
theorem rows8822 : actualRows8822=WordField.canonicalRows actualModulus 8822 (.band 8800 8746) := by core033_kernel_decide
theorem stats8822 : actualRows8822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8822=5124 := by core033_kernel_decide
theorem rows8823 : actualRows8823=WordField.canonicalRows actualModulus 8823 (.bxor 8821 8822) := by core033_kernel_decide
theorem stats8823 : actualRows8823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8823=7428 := by core033_kernel_decide
theorem rows8824 : actualRows8824=WordField.canonicalRows actualModulus 8824 (.band 8773 8746) := by core033_kernel_decide
theorem stats8824 : actualRows8824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8824=5124 := by core033_kernel_decide
theorem rows8825 : actualRows8825=WordField.canonicalRows actualModulus 8825 (.bxor 8823 8824) := by core033_kernel_decide
theorem stats8825 : actualRows8825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8825=7428 := by core033_kernel_decide
theorem rows8826 : actualRows8826=WordField.canonicalRows actualModulus 8826 (.badd 8820 8825) := by core033_kernel_decide
theorem stats8826 : actualRows8826.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8826=5388 := by core033_kernel_decide
theorem rows8827 : actualRows8827=WordField.canonicalRows actualModulus 8827 (.badd 8815 8826) := by core033_kernel_decide
theorem stats8827 : actualRows8827.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8827=5388 := by core033_kernel_decide
theorem rows8828 : actualRows8828=WordField.canonicalRows actualModulus 8828 (.badd 8719 8815) := by core033_kernel_decide
theorem stats8828 : actualRows8828.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8828=5388 := by core033_kernel_decide
theorem rows8829 : actualRows8829=WordField.canonicalRows actualModulus 8829 (.rotr 8828 6) := by core033_kernel_decide
theorem stats8829 : actualRows8829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8829=5124 := by core033_kernel_decide
theorem rows8830 : actualRows8830=WordField.canonicalRows actualModulus 8830 (.rotr 8828 11) := by core033_kernel_decide
theorem stats8830 : actualRows8830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8830=5124 := by core033_kernel_decide
theorem rows8831 : actualRows8831=WordField.canonicalRows actualModulus 8831 (.bxor 8829 8830) := by core033_kernel_decide
theorem stats8831 : actualRows8831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8831=7428 := by core033_kernel_decide
theorem rows8832 : actualRows8832=WordField.canonicalRows actualModulus 8832 (.rotr 8828 25) := by core033_kernel_decide
theorem stats8832 : actualRows8832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8832=5124 := by core033_kernel_decide
theorem rows8833 : actualRows8833=WordField.canonicalRows actualModulus 8833 (.bxor 8831 8832) := by core033_kernel_decide
theorem stats8833 : actualRows8833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8833=7428 := by core033_kernel_decide
theorem rows8834 : actualRows8834=WordField.canonicalRows actualModulus 8834 (.badd 8747 8833) := by core033_kernel_decide
theorem stats8834 : actualRows8834.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8834=5388 := by core033_kernel_decide
theorem rows8835 : actualRows8835=WordField.canonicalRows actualModulus 8835 (.band 8828 8801) := by core033_kernel_decide
theorem stats8835 : actualRows8835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8835=5124 := by core033_kernel_decide
theorem rows8836 : actualRows8836=WordField.canonicalRows actualModulus 8836 (.bnot 8828) := by core033_kernel_decide
theorem stats8836 : actualRows8836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8836=6276 := by core033_kernel_decide
theorem rows8837 : actualRows8837=WordField.canonicalRows actualModulus 8837 (.band 8836 8774) := by core033_kernel_decide
theorem stats8837 : actualRows8837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8837=5124 := by core033_kernel_decide
theorem rows8838 : actualRows8838=WordField.canonicalRows actualModulus 8838 (.bxor 8835 8837) := by core033_kernel_decide
theorem stats8838 : actualRows8838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8838=7428 := by core033_kernel_decide
theorem rows8839 : actualRows8839=WordField.canonicalRows actualModulus 8839 (.badd 8834 8838) := by core033_kernel_decide
theorem stats8839 : actualRows8839.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8839=5388 := by core033_kernel_decide
theorem rows8840 : actualRows8840=WordField.canonicalRows actualModulus 8840 (.literal (BitVec.ofNat 32 3336571891)) := by core033_kernel_decide
theorem stats8840 : actualRows8840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8840=3972 := by core033_kernel_decide
theorem rows8841 : actualRows8841=WordField.canonicalRows actualModulus 8841 (.badd 8839 8840) := by core033_kernel_decide
theorem stats8841 : actualRows8841.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8841=5388 := by core033_kernel_decide
theorem rows8842 : actualRows8842=WordField.canonicalRows actualModulus 8842 (.badd 8841 7617) := by core033_kernel_decide
theorem stats8842 : actualRows8842.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8842=5388 := by core033_kernel_decide
theorem rows8843 : actualRows8843=WordField.canonicalRows actualModulus 8843 (.rotr 8827 2) := by core033_kernel_decide
theorem stats8843 : actualRows8843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8843=5124 := by core033_kernel_decide
theorem rows8844 : actualRows8844=WordField.canonicalRows actualModulus 8844 (.rotr 8827 13) := by core033_kernel_decide
theorem stats8844 : actualRows8844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8844=5124 := by core033_kernel_decide
theorem rows8845 : actualRows8845=WordField.canonicalRows actualModulus 8845 (.bxor 8843 8844) := by core033_kernel_decide
theorem stats8845 : actualRows8845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8845=7428 := by core033_kernel_decide
theorem rows8846 : actualRows8846=WordField.canonicalRows actualModulus 8846 (.rotr 8827 22) := by core033_kernel_decide
theorem stats8846 : actualRows8846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8846=5124 := by core033_kernel_decide
theorem rows8847 : actualRows8847=WordField.canonicalRows actualModulus 8847 (.bxor 8845 8846) := by core033_kernel_decide
theorem stats8847 : actualRows8847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8847=7428 := by core033_kernel_decide
theorem rows8848 : actualRows8848=WordField.canonicalRows actualModulus 8848 (.band 8827 8800) := by core033_kernel_decide
theorem stats8848 : actualRows8848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8848=5124 := by core033_kernel_decide
theorem rows8849 : actualRows8849=WordField.canonicalRows actualModulus 8849 (.band 8827 8773) := by core033_kernel_decide
theorem stats8849 : actualRows8849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8849=5124 := by core033_kernel_decide
theorem rows8850 : actualRows8850=WordField.canonicalRows actualModulus 8850 (.bxor 8848 8849) := by core033_kernel_decide
theorem stats8850 : actualRows8850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8850=7428 := by core033_kernel_decide
theorem rows8851 : actualRows8851=WordField.canonicalRows actualModulus 8851 (.band 8800 8773) := by core033_kernel_decide
theorem stats8851 : actualRows8851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8851=5124 := by core033_kernel_decide
theorem rows8852 : actualRows8852=WordField.canonicalRows actualModulus 8852 (.bxor 8850 8851) := by core033_kernel_decide
theorem stats8852 : actualRows8852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8852=7428 := by core033_kernel_decide
theorem rows8853 : actualRows8853=WordField.canonicalRows actualModulus 8853 (.badd 8847 8852) := by core033_kernel_decide
theorem stats8853 : actualRows8853.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8853=5388 := by core033_kernel_decide
theorem rows8854 : actualRows8854=WordField.canonicalRows actualModulus 8854 (.badd 8842 8853) := by core033_kernel_decide
theorem stats8854 : actualRows8854.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8854=5388 := by core033_kernel_decide
theorem rows8855 : actualRows8855=WordField.canonicalRows actualModulus 8855 (.badd 8746 8842) := by core033_kernel_decide
theorem stats8855 : actualRows8855.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8855=5388 := by core033_kernel_decide
theorem rows8856 : actualRows8856=WordField.canonicalRows actualModulus 8856 (.rotr 8855 6) := by core033_kernel_decide
theorem stats8856 : actualRows8856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8856=5124 := by core033_kernel_decide
theorem rows8857 : actualRows8857=WordField.canonicalRows actualModulus 8857 (.rotr 8855 11) := by core033_kernel_decide
theorem stats8857 : actualRows8857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8857=5124 := by core033_kernel_decide
theorem rows8858 : actualRows8858=WordField.canonicalRows actualModulus 8858 (.bxor 8856 8857) := by core033_kernel_decide
theorem stats8858 : actualRows8858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8858=7428 := by core033_kernel_decide
theorem rows8859 : actualRows8859=WordField.canonicalRows actualModulus 8859 (.rotr 8855 25) := by core033_kernel_decide
theorem stats8859 : actualRows8859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8859=5124 := by core033_kernel_decide
theorem rows8860 : actualRows8860=WordField.canonicalRows actualModulus 8860 (.bxor 8858 8859) := by core033_kernel_decide
theorem stats8860 : actualRows8860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8860=7428 := by core033_kernel_decide
theorem rows8861 : actualRows8861=WordField.canonicalRows actualModulus 8861 (.badd 8774 8860) := by core033_kernel_decide
theorem stats8861 : actualRows8861.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8861=5388 := by core033_kernel_decide
theorem rows8862 : actualRows8862=WordField.canonicalRows actualModulus 8862 (.band 8855 8828) := by core033_kernel_decide
theorem stats8862 : actualRows8862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8862=5124 := by core033_kernel_decide
theorem rows8863 : actualRows8863=WordField.canonicalRows actualModulus 8863 (.bnot 8855) := by core033_kernel_decide
theorem stats8863 : actualRows8863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8863=6276 := by core033_kernel_decide
def partRows136 : List R1CS.Row := actualRows8800++actualRows8801++actualRows8802++actualRows8803++actualRows8804++actualRows8805++actualRows8806++actualRows8807++actualRows8808++actualRows8809++actualRows8810++actualRows8811++actualRows8812++actualRows8813++actualRows8814++actualRows8815++actualRows8816++actualRows8817++actualRows8818++actualRows8819++actualRows8820++actualRows8821++actualRows8822++actualRows8823++actualRows8824++actualRows8825++actualRows8826++actualRows8827++actualRows8828++actualRows8829++actualRows8830++actualRows8831++actualRows8832++actualRows8833++actualRows8834++actualRows8835++actualRows8836++actualRows8837++actualRows8838++actualRows8839++actualRows8840++actualRows8841++actualRows8842++actualRows8843++actualRows8844++actualRows8845++actualRows8846++actualRows8847++actualRows8848++actualRows8849++actualRows8850++actualRows8851++actualRows8852++actualRows8853++actualRows8854++actualRows8855++actualRows8856++actualRows8857++actualRows8858++actualRows8859++actualRows8860++actualRows8861++actualRows8862++actualRows8863
def partOps136 : List WordIR.Op := [.badd 8788 8799,.badd 8692 8788,.rotr 8801 6,.rotr 8801 11,.bxor 8802 8803,.rotr 8801 25,.bxor 8804 8805,.badd 8720 8806,.band 8801 8774,.bnot 8801,.band 8809 8747,.bxor 8808 8810,.badd 8807 8811,.literal (BitVec.ofNat 32 3210313671),.badd 8812 8813,.badd 8814 7604,.rotr 8800 2,.rotr 8800 13,.bxor 8816 8817,.rotr 8800 22,.bxor 8818 8819,.band 8800 8773,.band 8800 8746,.bxor 8821 8822,.band 8773 8746,.bxor 8823 8824,.badd 8820 8825,.badd 8815 8826,.badd 8719 8815,.rotr 8828 6,.rotr 8828 11,.bxor 8829 8830,.rotr 8828 25,.bxor 8831 8832,.badd 8747 8833,.band 8828 8801,.bnot 8828,.band 8836 8774,.bxor 8835 8837,.badd 8834 8838,.literal (BitVec.ofNat 32 3336571891),.badd 8839 8840,.badd 8841 7617,.rotr 8827 2,.rotr 8827 13,.bxor 8843 8844,.rotr 8827 22,.bxor 8845 8846,.band 8827 8800,.band 8827 8773,.bxor 8848 8849,.band 8800 8773,.bxor 8850 8851,.badd 8847 8852,.badd 8842 8853,.badd 8746 8842,.rotr 8855 6,.rotr 8855 11,.bxor 8856 8857,.rotr 8855 25,.bxor 8858 8859,.badd 8774 8860,.band 8855 8828,.bnot 8855]
theorem partExact136 : partRows136=WordField.rows actualModulus 8800 partOps136 := by
  simp only [partRows136,partOps136,WordField.rows,rows8800,rows8801,rows8802,rows8803,rows8804,rows8805,rows8806,rows8807,rows8808,rows8809,rows8810,rows8811,rows8812,rows8813,rows8814,rows8815,rows8816,rows8817,rows8818,rows8819,rows8820,rows8821,rows8822,rows8823,rows8824,rows8825,rows8826,rows8827,rows8828,rows8829,rows8830,rows8831,rows8832,rows8833,rows8834,rows8835,rows8836,rows8837,rows8838,rows8839,rows8840,rows8841,rows8842,rows8843,rows8844,rows8845,rows8846,rows8847,rows8848,rows8849,rows8850,rows8851,rows8852,rows8853,rows8854,rows8855,rows8856,rows8857,rows8858,rows8859,rows8860,rows8861,rows8862,rows8863,List.append_assoc,List.append_nil]
theorem partLength136 : partOps136.length=64 := by decide
theorem partStats136 : partRows136.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows136=370944 := by
  simp only [partRows136,List.length_append,MatrixRowBlocks.rows_weight_append,stats8800.1,stats8800.2,stats8801.1,stats8801.2,stats8802.1,stats8802.2,stats8803.1,stats8803.2,stats8804.1,stats8804.2,stats8805.1,stats8805.2,stats8806.1,stats8806.2,stats8807.1,stats8807.2,stats8808.1,stats8808.2,stats8809.1,stats8809.2,stats8810.1,stats8810.2,stats8811.1,stats8811.2,stats8812.1,stats8812.2,stats8813.1,stats8813.2,stats8814.1,stats8814.2,stats8815.1,stats8815.2,stats8816.1,stats8816.2,stats8817.1,stats8817.2,stats8818.1,stats8818.2,stats8819.1,stats8819.2,stats8820.1,stats8820.2,stats8821.1,stats8821.2,stats8822.1,stats8822.2,stats8823.1,stats8823.2,stats8824.1,stats8824.2,stats8825.1,stats8825.2,stats8826.1,stats8826.2,stats8827.1,stats8827.2,stats8828.1,stats8828.2,stats8829.1,stats8829.2,stats8830.1,stats8830.2,stats8831.1,stats8831.2,stats8832.1,stats8832.2,stats8833.1,stats8833.2,stats8834.1,stats8834.2,stats8835.1,stats8835.2,stats8836.1,stats8836.2,stats8837.1,stats8837.2,stats8838.1,stats8838.2,stats8839.1,stats8839.2,stats8840.1,stats8840.2,stats8841.1,stats8841.2,stats8842.1,stats8842.2,stats8843.1,stats8843.2,stats8844.1,stats8844.2,stats8845.1,stats8845.2,stats8846.1,stats8846.2,stats8847.1,stats8847.2,stats8848.1,stats8848.2,stats8849.1,stats8849.2,stats8850.1,stats8850.2,stats8851.1,stats8851.2,stats8852.1,stats8852.2,stats8853.1,stats8853.2,stats8854.1,stats8854.2,stats8855.1,stats8855.2,stats8856.1,stats8856.2,stats8857.1,stats8857.2,stats8858.1,stats8858.2,stats8859.1,stats8859.2,stats8860.1,stats8860.2,stats8861.1,stats8861.2,stats8862.1,stats8862.2,stats8863.1,stats8863.2]
  decide
end PairedPathRoundCheckedRows
