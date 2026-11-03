import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData137
import AuthenticatedBranchRoundInstructionMatrixData138
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8822 : actualRows8822=WordField.canonicalRows actualModulus 8822 (.badd 8820 8821) := by core033_kernel_decide
theorem stats8822 : actualRows8822.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8822=5388 := by core033_kernel_decide
theorem rows8823 : actualRows8823=WordField.canonicalRows actualModulus 8823 (.badd 8822 6901) := by core033_kernel_decide
theorem stats8823 : actualRows8823.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8823=5388 := by core033_kernel_decide
theorem rows8824 : actualRows8824=WordField.canonicalRows actualModulus 8824 (.rotr 8808 2) := by core033_kernel_decide
theorem stats8824 : actualRows8824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8824=5124 := by core033_kernel_decide
theorem rows8825 : actualRows8825=WordField.canonicalRows actualModulus 8825 (.rotr 8808 13) := by core033_kernel_decide
theorem stats8825 : actualRows8825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8825=5124 := by core033_kernel_decide
theorem rows8826 : actualRows8826=WordField.canonicalRows actualModulus 8826 (.bxor 8824 8825) := by core033_kernel_decide
theorem stats8826 : actualRows8826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8826=7428 := by core033_kernel_decide
theorem rows8827 : actualRows8827=WordField.canonicalRows actualModulus 8827 (.rotr 8808 22) := by core033_kernel_decide
theorem stats8827 : actualRows8827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8827=5124 := by core033_kernel_decide
theorem rows8828 : actualRows8828=WordField.canonicalRows actualModulus 8828 (.bxor 8826 8827) := by core033_kernel_decide
theorem stats8828 : actualRows8828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8828=7428 := by core033_kernel_decide
theorem rows8829 : actualRows8829=WordField.canonicalRows actualModulus 8829 (.band 8808 8781) := by core033_kernel_decide
theorem stats8829 : actualRows8829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8829=5124 := by core033_kernel_decide
theorem rows8830 : actualRows8830=WordField.canonicalRows actualModulus 8830 (.band 8808 3171) := by core033_kernel_decide
theorem stats8830 : actualRows8830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8830=5124 := by core033_kernel_decide
theorem rows8831 : actualRows8831=WordField.canonicalRows actualModulus 8831 (.bxor 8829 8830) := by core033_kernel_decide
theorem stats8831 : actualRows8831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8831=7428 := by core033_kernel_decide
theorem rows8832 : actualRows8832=WordField.canonicalRows actualModulus 8832 (.band 8781 3171) := by core033_kernel_decide
theorem stats8832 : actualRows8832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8832=5124 := by core033_kernel_decide
theorem rows8833 : actualRows8833=WordField.canonicalRows actualModulus 8833 (.bxor 8831 8832) := by core033_kernel_decide
theorem stats8833 : actualRows8833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8833=7428 := by core033_kernel_decide
theorem rows8834 : actualRows8834=WordField.canonicalRows actualModulus 8834 (.badd 8828 8833) := by core033_kernel_decide
theorem stats8834 : actualRows8834.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8834=5388 := by core033_kernel_decide
theorem rows8835 : actualRows8835=WordField.canonicalRows actualModulus 8835 (.badd 8823 8834) := by core033_kernel_decide
theorem stats8835 : actualRows8835.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8835=5388 := by core033_kernel_decide
theorem rows8836 : actualRows8836=WordField.canonicalRows actualModulus 8836 (.badd 3224 8823) := by core033_kernel_decide
theorem stats8836 : actualRows8836.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8836=5388 := by core033_kernel_decide
theorem rows8837 : actualRows8837=WordField.canonicalRows actualModulus 8837 (.rotr 8836 6) := by core033_kernel_decide
theorem stats8837 : actualRows8837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8837=5124 := by core033_kernel_decide
theorem rows8838 : actualRows8838=WordField.canonicalRows actualModulus 8838 (.rotr 8836 11) := by core033_kernel_decide
theorem stats8838 : actualRows8838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8838=5124 := by core033_kernel_decide
theorem rows8839 : actualRows8839=WordField.canonicalRows actualModulus 8839 (.bxor 8837 8838) := by core033_kernel_decide
theorem stats8839 : actualRows8839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8839=7428 := by core033_kernel_decide
theorem rows8840 : actualRows8840=WordField.canonicalRows actualModulus 8840 (.rotr 8836 25) := by core033_kernel_decide
theorem stats8840 : actualRows8840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8840=5124 := by core033_kernel_decide
theorem rows8841 : actualRows8841=WordField.canonicalRows actualModulus 8841 (.bxor 8839 8840) := by core033_kernel_decide
theorem stats8841 : actualRows8841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8841=7428 := by core033_kernel_decide
theorem rows8842 : actualRows8842=WordField.canonicalRows actualModulus 8842 (.badd 3383 8841) := by core033_kernel_decide
theorem stats8842 : actualRows8842.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8842=5388 := by core033_kernel_decide
theorem rows8843 : actualRows8843=WordField.canonicalRows actualModulus 8843 (.band 8836 8809) := by core033_kernel_decide
theorem stats8843 : actualRows8843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8843=5124 := by core033_kernel_decide
theorem rows8844 : actualRows8844=WordField.canonicalRows actualModulus 8844 (.bnot 8836) := by core033_kernel_decide
theorem stats8844 : actualRows8844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8844=6276 := by core033_kernel_decide
theorem rows8845 : actualRows8845=WordField.canonicalRows actualModulus 8845 (.band 8844 8782) := by core033_kernel_decide
theorem stats8845 : actualRows8845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8845=5124 := by core033_kernel_decide
theorem rows8846 : actualRows8846=WordField.canonicalRows actualModulus 8846 (.bxor 8843 8845) := by core033_kernel_decide
theorem stats8846 : actualRows8846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8846=7428 := by core033_kernel_decide
theorem rows8847 : actualRows8847=WordField.canonicalRows actualModulus 8847 (.badd 8842 8846) := by core033_kernel_decide
theorem stats8847 : actualRows8847.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8847=5388 := by core033_kernel_decide
theorem rows8848 : actualRows8848=WordField.canonicalRows actualModulus 8848 (.literal (BitVec.ofNat 32 3921009573)) := by core033_kernel_decide
theorem stats8848 : actualRows8848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8848=4260 := by core033_kernel_decide
theorem rows8849 : actualRows8849=WordField.canonicalRows actualModulus 8849 (.badd 8847 8848) := by core033_kernel_decide
theorem stats8849 : actualRows8849.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8849=5388 := by core033_kernel_decide
theorem rows8850 : actualRows8850=WordField.canonicalRows actualModulus 8850 (.badd 8849 6907) := by core033_kernel_decide
theorem stats8850 : actualRows8850.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8850=5388 := by core033_kernel_decide
theorem rows8851 : actualRows8851=WordField.canonicalRows actualModulus 8851 (.rotr 8835 2) := by core033_kernel_decide
theorem stats8851 : actualRows8851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8851=5124 := by core033_kernel_decide
theorem rows8852 : actualRows8852=WordField.canonicalRows actualModulus 8852 (.rotr 8835 13) := by core033_kernel_decide
theorem stats8852 : actualRows8852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8852=5124 := by core033_kernel_decide
theorem rows8853 : actualRows8853=WordField.canonicalRows actualModulus 8853 (.bxor 8851 8852) := by core033_kernel_decide
theorem stats8853 : actualRows8853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8853=7428 := by core033_kernel_decide
theorem rows8854 : actualRows8854=WordField.canonicalRows actualModulus 8854 (.rotr 8835 22) := by core033_kernel_decide
theorem stats8854 : actualRows8854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8854=5124 := by core033_kernel_decide
theorem rows8855 : actualRows8855=WordField.canonicalRows actualModulus 8855 (.bxor 8853 8854) := by core033_kernel_decide
theorem stats8855 : actualRows8855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8855=7428 := by core033_kernel_decide
theorem rows8856 : actualRows8856=WordField.canonicalRows actualModulus 8856 (.band 8835 8808) := by core033_kernel_decide
theorem stats8856 : actualRows8856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8856=5124 := by core033_kernel_decide
theorem rows8857 : actualRows8857=WordField.canonicalRows actualModulus 8857 (.band 8835 8781) := by core033_kernel_decide
theorem stats8857 : actualRows8857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8857=5124 := by core033_kernel_decide
theorem rows8858 : actualRows8858=WordField.canonicalRows actualModulus 8858 (.bxor 8856 8857) := by core033_kernel_decide
theorem stats8858 : actualRows8858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8858=7428 := by core033_kernel_decide
theorem rows8859 : actualRows8859=WordField.canonicalRows actualModulus 8859 (.band 8808 8781) := by core033_kernel_decide
theorem stats8859 : actualRows8859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8859=5124 := by core033_kernel_decide
theorem rows8860 : actualRows8860=WordField.canonicalRows actualModulus 8860 (.bxor 8858 8859) := by core033_kernel_decide
theorem stats8860 : actualRows8860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8860=7428 := by core033_kernel_decide
theorem rows8861 : actualRows8861=WordField.canonicalRows actualModulus 8861 (.badd 8855 8860) := by core033_kernel_decide
theorem stats8861 : actualRows8861.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8861=5388 := by core033_kernel_decide
theorem rows8862 : actualRows8862=WordField.canonicalRows actualModulus 8862 (.badd 8850 8861) := by core033_kernel_decide
theorem stats8862 : actualRows8862.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8862=5388 := by core033_kernel_decide
theorem rows8863 : actualRows8863=WordField.canonicalRows actualModulus 8863 (.badd 3171 8850) := by core033_kernel_decide
theorem stats8863 : actualRows8863.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8863=5388 := by core033_kernel_decide
theorem rows8864 : actualRows8864=WordField.canonicalRows actualModulus 8864 (.rotr 8863 6) := by core033_kernel_decide
theorem stats8864 : actualRows8864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8864=5124 := by core033_kernel_decide
theorem rows8865 : actualRows8865=WordField.canonicalRows actualModulus 8865 (.rotr 8863 11) := by core033_kernel_decide
theorem stats8865 : actualRows8865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8865=5124 := by core033_kernel_decide
theorem rows8866 : actualRows8866=WordField.canonicalRows actualModulus 8866 (.bxor 8864 8865) := by core033_kernel_decide
theorem stats8866 : actualRows8866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8866=7428 := by core033_kernel_decide
theorem rows8867 : actualRows8867=WordField.canonicalRows actualModulus 8867 (.rotr 8863 25) := by core033_kernel_decide
theorem stats8867 : actualRows8867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8867=5124 := by core033_kernel_decide
theorem rows8868 : actualRows8868=WordField.canonicalRows actualModulus 8868 (.bxor 8866 8867) := by core033_kernel_decide
theorem stats8868 : actualRows8868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8868=7428 := by core033_kernel_decide
theorem rows8869 : actualRows8869=WordField.canonicalRows actualModulus 8869 (.badd 8782 8868) := by core033_kernel_decide
theorem stats8869 : actualRows8869.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8869=5388 := by core033_kernel_decide
theorem rows8870 : actualRows8870=WordField.canonicalRows actualModulus 8870 (.band 8863 8836) := by core033_kernel_decide
theorem stats8870 : actualRows8870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8870=5124 := by core033_kernel_decide
theorem rows8871 : actualRows8871=WordField.canonicalRows actualModulus 8871 (.bnot 8863) := by core033_kernel_decide
theorem stats8871 : actualRows8871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8871=6276 := by core033_kernel_decide
theorem rows8872 : actualRows8872=WordField.canonicalRows actualModulus 8872 (.band 8871 8809) := by core033_kernel_decide
theorem stats8872 : actualRows8872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8872=5124 := by core033_kernel_decide
theorem rows8873 : actualRows8873=WordField.canonicalRows actualModulus 8873 (.bxor 8870 8872) := by core033_kernel_decide
theorem stats8873 : actualRows8873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8873=7428 := by core033_kernel_decide
theorem rows8874 : actualRows8874=WordField.canonicalRows actualModulus 8874 (.badd 8869 8873) := by core033_kernel_decide
theorem stats8874 : actualRows8874.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8874=5388 := by core033_kernel_decide
theorem rows8875 : actualRows8875=WordField.canonicalRows actualModulus 8875 (.literal (BitVec.ofNat 32 961987163)) := by core033_kernel_decide
theorem stats8875 : actualRows8875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8875=3972 := by core033_kernel_decide
theorem rows8876 : actualRows8876=WordField.canonicalRows actualModulus 8876 (.badd 8874 8875) := by core033_kernel_decide
theorem stats8876 : actualRows8876.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8876=5388 := by core033_kernel_decide
theorem rows8877 : actualRows8877=WordField.canonicalRows actualModulus 8877 (.badd 8876 6913) := by core033_kernel_decide
theorem stats8877 : actualRows8877.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8877=5388 := by core033_kernel_decide
theorem rows8878 : actualRows8878=WordField.canonicalRows actualModulus 8878 (.rotr 8862 2) := by core033_kernel_decide
theorem stats8878 : actualRows8878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8878=5124 := by core033_kernel_decide
theorem rows8879 : actualRows8879=WordField.canonicalRows actualModulus 8879 (.rotr 8862 13) := by core033_kernel_decide
theorem stats8879 : actualRows8879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8879=5124 := by core033_kernel_decide
theorem rows8880 : actualRows8880=WordField.canonicalRows actualModulus 8880 (.bxor 8878 8879) := by core033_kernel_decide
theorem stats8880 : actualRows8880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8880=7428 := by core033_kernel_decide
theorem rows8881 : actualRows8881=WordField.canonicalRows actualModulus 8881 (.rotr 8862 22) := by core033_kernel_decide
theorem stats8881 : actualRows8881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8881=5124 := by core033_kernel_decide
theorem rows8882 : actualRows8882=WordField.canonicalRows actualModulus 8882 (.bxor 8880 8881) := by core033_kernel_decide
theorem stats8882 : actualRows8882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8882=7428 := by core033_kernel_decide
theorem rows8883 : actualRows8883=WordField.canonicalRows actualModulus 8883 (.band 8862 8835) := by core033_kernel_decide
theorem stats8883 : actualRows8883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8883=5124 := by core033_kernel_decide
theorem rows8884 : actualRows8884=WordField.canonicalRows actualModulus 8884 (.band 8862 8808) := by core033_kernel_decide
theorem stats8884 : actualRows8884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8884=5124 := by core033_kernel_decide
theorem rows8885 : actualRows8885=WordField.canonicalRows actualModulus 8885 (.bxor 8883 8884) := by core033_kernel_decide
theorem stats8885 : actualRows8885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8885=7428 := by core033_kernel_decide
def partRows136 : List R1CS.Row := actualRows8822++actualRows8823++actualRows8824++actualRows8825++actualRows8826++actualRows8827++actualRows8828++actualRows8829++actualRows8830++actualRows8831++actualRows8832++actualRows8833++actualRows8834++actualRows8835++actualRows8836++actualRows8837++actualRows8838++actualRows8839++actualRows8840++actualRows8841++actualRows8842++actualRows8843++actualRows8844++actualRows8845++actualRows8846++actualRows8847++actualRows8848++actualRows8849++actualRows8850++actualRows8851++actualRows8852++actualRows8853++actualRows8854++actualRows8855++actualRows8856++actualRows8857++actualRows8858++actualRows8859++actualRows8860++actualRows8861++actualRows8862++actualRows8863++actualRows8864++actualRows8865++actualRows8866++actualRows8867++actualRows8868++actualRows8869++actualRows8870++actualRows8871++actualRows8872++actualRows8873++actualRows8874++actualRows8875++actualRows8876++actualRows8877++actualRows8878++actualRows8879++actualRows8880++actualRows8881++actualRows8882++actualRows8883++actualRows8884++actualRows8885
def partOps136 : List WordIR.Op := [.badd 8820 8821,.badd 8822 6901,.rotr 8808 2,.rotr 8808 13,.bxor 8824 8825,.rotr 8808 22,.bxor 8826 8827,.band 8808 8781,.band 8808 3171,.bxor 8829 8830,.band 8781 3171,.bxor 8831 8832,.badd 8828 8833,.badd 8823 8834,.badd 3224 8823,.rotr 8836 6,.rotr 8836 11,.bxor 8837 8838,.rotr 8836 25,.bxor 8839 8840,.badd 3383 8841,.band 8836 8809,.bnot 8836,.band 8844 8782,.bxor 8843 8845,.badd 8842 8846,.literal (BitVec.ofNat 32 3921009573),.badd 8847 8848,.badd 8849 6907,.rotr 8835 2,.rotr 8835 13,.bxor 8851 8852,.rotr 8835 22,.bxor 8853 8854,.band 8835 8808,.band 8835 8781,.bxor 8856 8857,.band 8808 8781,.bxor 8858 8859,.badd 8855 8860,.badd 8850 8861,.badd 3171 8850,.rotr 8863 6,.rotr 8863 11,.bxor 8864 8865,.rotr 8863 25,.bxor 8866 8867,.badd 8782 8868,.band 8863 8836,.bnot 8863,.band 8871 8809,.bxor 8870 8872,.badd 8869 8873,.literal (BitVec.ofNat 32 961987163),.badd 8874 8875,.badd 8876 6913,.rotr 8862 2,.rotr 8862 13,.bxor 8878 8879,.rotr 8862 22,.bxor 8880 8881,.band 8862 8835,.band 8862 8808,.bxor 8883 8884]
theorem partExact136 : partRows136=WordField.rows actualModulus 8822 partOps136 := by
  simp only [partRows136,partOps136,WordField.rows,rows8822,rows8823,rows8824,rows8825,rows8826,rows8827,rows8828,rows8829,rows8830,rows8831,rows8832,rows8833,rows8834,rows8835,rows8836,rows8837,rows8838,rows8839,rows8840,rows8841,rows8842,rows8843,rows8844,rows8845,rows8846,rows8847,rows8848,rows8849,rows8850,rows8851,rows8852,rows8853,rows8854,rows8855,rows8856,rows8857,rows8858,rows8859,rows8860,rows8861,rows8862,rows8863,rows8864,rows8865,rows8866,rows8867,rows8868,rows8869,rows8870,rows8871,rows8872,rows8873,rows8874,rows8875,rows8876,rows8877,rows8878,rows8879,rows8880,rows8881,rows8882,rows8883,rows8884,rows8885,List.append_assoc,List.append_nil]
theorem partLength136 : partOps136.length=64 := by decide
theorem partStats136 : partRows136.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows136=371616 := by
  simp only [partRows136,List.length_append,MatrixRowBlocks.rows_weight_append,stats8822.1,stats8822.2,stats8823.1,stats8823.2,stats8824.1,stats8824.2,stats8825.1,stats8825.2,stats8826.1,stats8826.2,stats8827.1,stats8827.2,stats8828.1,stats8828.2,stats8829.1,stats8829.2,stats8830.1,stats8830.2,stats8831.1,stats8831.2,stats8832.1,stats8832.2,stats8833.1,stats8833.2,stats8834.1,stats8834.2,stats8835.1,stats8835.2,stats8836.1,stats8836.2,stats8837.1,stats8837.2,stats8838.1,stats8838.2,stats8839.1,stats8839.2,stats8840.1,stats8840.2,stats8841.1,stats8841.2,stats8842.1,stats8842.2,stats8843.1,stats8843.2,stats8844.1,stats8844.2,stats8845.1,stats8845.2,stats8846.1,stats8846.2,stats8847.1,stats8847.2,stats8848.1,stats8848.2,stats8849.1,stats8849.2,stats8850.1,stats8850.2,stats8851.1,stats8851.2,stats8852.1,stats8852.2,stats8853.1,stats8853.2,stats8854.1,stats8854.2,stats8855.1,stats8855.2,stats8856.1,stats8856.2,stats8857.1,stats8857.2,stats8858.1,stats8858.2,stats8859.1,stats8859.2,stats8860.1,stats8860.2,stats8861.1,stats8861.2,stats8862.1,stats8862.2,stats8863.1,stats8863.2,stats8864.1,stats8864.2,stats8865.1,stats8865.2,stats8866.1,stats8866.2,stats8867.1,stats8867.2,stats8868.1,stats8868.2,stats8869.1,stats8869.2,stats8870.1,stats8870.2,stats8871.1,stats8871.2,stats8872.1,stats8872.2,stats8873.1,stats8873.2,stats8874.1,stats8874.2,stats8875.1,stats8875.2,stats8876.1,stats8876.2,stats8877.1,stats8877.2,stats8878.1,stats8878.2,stats8879.1,stats8879.2,stats8880.1,stats8880.2,stats8881.1,stats8881.2,stats8882.1,stats8882.2,stats8883.1,stats8883.2,stats8884.1,stats8884.2,stats8885.1,stats8885.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
