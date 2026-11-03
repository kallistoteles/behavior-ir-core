import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData153
import AuthenticatedBranchRoundInstructionMatrixData154
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9846 : actualRows9846=WordField.canonicalRows actualModulus 9846 (.badd 9841 9845) := by core033_kernel_decide
theorem stats9846 : actualRows9846.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9846=5388 := by core033_kernel_decide
theorem rows9847 : actualRows9847=WordField.canonicalRows actualModulus 9847 (.literal (BitVec.ofNat 32 2730485921)) := by core033_kernel_decide
theorem stats9847 : actualRows9847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9847=4044 := by core033_kernel_decide
theorem rows9848 : actualRows9848=WordField.canonicalRows actualModulus 9848 (.badd 9846 9847) := by core033_kernel_decide
theorem stats9848 : actualRows9848.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9848=5388 := by core033_kernel_decide
theorem rows9849 : actualRows9849=WordField.canonicalRows actualModulus 9849 (.badd 9848 8456) := by core033_kernel_decide
theorem stats9849 : actualRows9849.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9849=5388 := by core033_kernel_decide
theorem rows9850 : actualRows9850=WordField.canonicalRows actualModulus 9850 (.rotr 9834 2) := by core033_kernel_decide
theorem stats9850 : actualRows9850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9850=5124 := by core033_kernel_decide
theorem rows9851 : actualRows9851=WordField.canonicalRows actualModulus 9851 (.rotr 9834 13) := by core033_kernel_decide
theorem stats9851 : actualRows9851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9851=5124 := by core033_kernel_decide
theorem rows9852 : actualRows9852=WordField.canonicalRows actualModulus 9852 (.bxor 9850 9851) := by core033_kernel_decide
theorem stats9852 : actualRows9852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9852=7428 := by core033_kernel_decide
theorem rows9853 : actualRows9853=WordField.canonicalRows actualModulus 9853 (.rotr 9834 22) := by core033_kernel_decide
theorem stats9853 : actualRows9853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9853=5124 := by core033_kernel_decide
theorem rows9854 : actualRows9854=WordField.canonicalRows actualModulus 9854 (.bxor 9852 9853) := by core033_kernel_decide
theorem stats9854 : actualRows9854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9854=7428 := by core033_kernel_decide
theorem rows9855 : actualRows9855=WordField.canonicalRows actualModulus 9855 (.band 9834 9807) := by core033_kernel_decide
theorem stats9855 : actualRows9855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9855=5124 := by core033_kernel_decide
theorem rows9856 : actualRows9856=WordField.canonicalRows actualModulus 9856 (.band 9834 9780) := by core033_kernel_decide
theorem stats9856 : actualRows9856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9856=5124 := by core033_kernel_decide
theorem rows9857 : actualRows9857=WordField.canonicalRows actualModulus 9857 (.bxor 9855 9856) := by core033_kernel_decide
theorem stats9857 : actualRows9857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9857=7428 := by core033_kernel_decide
theorem rows9858 : actualRows9858=WordField.canonicalRows actualModulus 9858 (.band 9807 9780) := by core033_kernel_decide
theorem stats9858 : actualRows9858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9858=5124 := by core033_kernel_decide
theorem rows9859 : actualRows9859=WordField.canonicalRows actualModulus 9859 (.bxor 9857 9858) := by core033_kernel_decide
theorem stats9859 : actualRows9859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9859=7428 := by core033_kernel_decide
theorem rows9860 : actualRows9860=WordField.canonicalRows actualModulus 9860 (.badd 9854 9859) := by core033_kernel_decide
theorem stats9860 : actualRows9860.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9860=5388 := by core033_kernel_decide
theorem rows9861 : actualRows9861=WordField.canonicalRows actualModulus 9861 (.badd 9849 9860) := by core033_kernel_decide
theorem stats9861 : actualRows9861.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9861=5388 := by core033_kernel_decide
theorem rows9862 : actualRows9862=WordField.canonicalRows actualModulus 9862 (.badd 9753 9849) := by core033_kernel_decide
theorem stats9862 : actualRows9862.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9862=5388 := by core033_kernel_decide
theorem rows9863 : actualRows9863=WordField.canonicalRows actualModulus 9863 (.rotr 9862 6) := by core033_kernel_decide
theorem stats9863 : actualRows9863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9863=5124 := by core033_kernel_decide
theorem rows9864 : actualRows9864=WordField.canonicalRows actualModulus 9864 (.rotr 9862 11) := by core033_kernel_decide
theorem stats9864 : actualRows9864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9864=5124 := by core033_kernel_decide
theorem rows9865 : actualRows9865=WordField.canonicalRows actualModulus 9865 (.bxor 9863 9864) := by core033_kernel_decide
theorem stats9865 : actualRows9865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9865=7428 := by core033_kernel_decide
theorem rows9866 : actualRows9866=WordField.canonicalRows actualModulus 9866 (.rotr 9862 25) := by core033_kernel_decide
theorem stats9866 : actualRows9866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9866=5124 := by core033_kernel_decide
theorem rows9867 : actualRows9867=WordField.canonicalRows actualModulus 9867 (.bxor 9865 9866) := by core033_kernel_decide
theorem stats9867 : actualRows9867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9867=7428 := by core033_kernel_decide
theorem rows9868 : actualRows9868=WordField.canonicalRows actualModulus 9868 (.badd 9781 9867) := by core033_kernel_decide
theorem stats9868 : actualRows9868.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9868=5388 := by core033_kernel_decide
theorem rows9869 : actualRows9869=WordField.canonicalRows actualModulus 9869 (.band 9862 9835) := by core033_kernel_decide
theorem stats9869 : actualRows9869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9869=5124 := by core033_kernel_decide
theorem rows9870 : actualRows9870=WordField.canonicalRows actualModulus 9870 (.bnot 9862) := by core033_kernel_decide
theorem stats9870 : actualRows9870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9870=6276 := by core033_kernel_decide
theorem rows9871 : actualRows9871=WordField.canonicalRows actualModulus 9871 (.band 9870 9808) := by core033_kernel_decide
theorem stats9871 : actualRows9871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9871=5124 := by core033_kernel_decide
theorem rows9872 : actualRows9872=WordField.canonicalRows actualModulus 9872 (.bxor 9869 9871) := by core033_kernel_decide
theorem stats9872 : actualRows9872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9872=7428 := by core033_kernel_decide
theorem rows9873 : actualRows9873=WordField.canonicalRows actualModulus 9873 (.badd 9868 9872) := by core033_kernel_decide
theorem stats9873 : actualRows9873.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9873=5388 := by core033_kernel_decide
theorem rows9874 : actualRows9874=WordField.canonicalRows actualModulus 9874 (.literal (BitVec.ofNat 32 2820302411)) := by core033_kernel_decide
theorem stats9874 : actualRows9874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9874=3828 := by core033_kernel_decide
theorem rows9875 : actualRows9875=WordField.canonicalRows actualModulus 9875 (.badd 9873 9874) := by core033_kernel_decide
theorem stats9875 : actualRows9875.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9875=5388 := by core033_kernel_decide
theorem rows9876 : actualRows9876=WordField.canonicalRows actualModulus 9876 (.badd 9875 8469) := by core033_kernel_decide
theorem stats9876 : actualRows9876.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9876=5388 := by core033_kernel_decide
theorem rows9877 : actualRows9877=WordField.canonicalRows actualModulus 9877 (.rotr 9861 2) := by core033_kernel_decide
theorem stats9877 : actualRows9877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9877=5124 := by core033_kernel_decide
theorem rows9878 : actualRows9878=WordField.canonicalRows actualModulus 9878 (.rotr 9861 13) := by core033_kernel_decide
theorem stats9878 : actualRows9878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9878=5124 := by core033_kernel_decide
theorem rows9879 : actualRows9879=WordField.canonicalRows actualModulus 9879 (.bxor 9877 9878) := by core033_kernel_decide
theorem stats9879 : actualRows9879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9879=7428 := by core033_kernel_decide
theorem rows9880 : actualRows9880=WordField.canonicalRows actualModulus 9880 (.rotr 9861 22) := by core033_kernel_decide
theorem stats9880 : actualRows9880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9880=5124 := by core033_kernel_decide
theorem rows9881 : actualRows9881=WordField.canonicalRows actualModulus 9881 (.bxor 9879 9880) := by core033_kernel_decide
theorem stats9881 : actualRows9881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9881=7428 := by core033_kernel_decide
theorem rows9882 : actualRows9882=WordField.canonicalRows actualModulus 9882 (.band 9861 9834) := by core033_kernel_decide
theorem stats9882 : actualRows9882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9882=5124 := by core033_kernel_decide
theorem rows9883 : actualRows9883=WordField.canonicalRows actualModulus 9883 (.band 9861 9807) := by core033_kernel_decide
theorem stats9883 : actualRows9883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9883=5124 := by core033_kernel_decide
theorem rows9884 : actualRows9884=WordField.canonicalRows actualModulus 9884 (.bxor 9882 9883) := by core033_kernel_decide
theorem stats9884 : actualRows9884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9884=7428 := by core033_kernel_decide
theorem rows9885 : actualRows9885=WordField.canonicalRows actualModulus 9885 (.band 9834 9807) := by core033_kernel_decide
theorem stats9885 : actualRows9885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9885=5124 := by core033_kernel_decide
theorem rows9886 : actualRows9886=WordField.canonicalRows actualModulus 9886 (.bxor 9884 9885) := by core033_kernel_decide
theorem stats9886 : actualRows9886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9886=7428 := by core033_kernel_decide
theorem rows9887 : actualRows9887=WordField.canonicalRows actualModulus 9887 (.badd 9881 9886) := by core033_kernel_decide
theorem stats9887 : actualRows9887.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9887=5388 := by core033_kernel_decide
theorem rows9888 : actualRows9888=WordField.canonicalRows actualModulus 9888 (.badd 9876 9887) := by core033_kernel_decide
theorem stats9888 : actualRows9888.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9888=5388 := by core033_kernel_decide
theorem rows9889 : actualRows9889=WordField.canonicalRows actualModulus 9889 (.badd 9780 9876) := by core033_kernel_decide
theorem stats9889 : actualRows9889.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9889=5388 := by core033_kernel_decide
theorem rows9890 : actualRows9890=WordField.canonicalRows actualModulus 9890 (.rotr 9889 6) := by core033_kernel_decide
theorem stats9890 : actualRows9890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9890=5124 := by core033_kernel_decide
theorem rows9891 : actualRows9891=WordField.canonicalRows actualModulus 9891 (.rotr 9889 11) := by core033_kernel_decide
theorem stats9891 : actualRows9891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9891=5124 := by core033_kernel_decide
theorem rows9892 : actualRows9892=WordField.canonicalRows actualModulus 9892 (.bxor 9890 9891) := by core033_kernel_decide
theorem stats9892 : actualRows9892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9892=7428 := by core033_kernel_decide
theorem rows9893 : actualRows9893=WordField.canonicalRows actualModulus 9893 (.rotr 9889 25) := by core033_kernel_decide
theorem stats9893 : actualRows9893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9893=5124 := by core033_kernel_decide
theorem rows9894 : actualRows9894=WordField.canonicalRows actualModulus 9894 (.bxor 9892 9893) := by core033_kernel_decide
theorem stats9894 : actualRows9894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9894=7428 := by core033_kernel_decide
theorem rows9895 : actualRows9895=WordField.canonicalRows actualModulus 9895 (.badd 9808 9894) := by core033_kernel_decide
theorem stats9895 : actualRows9895.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9895=5388 := by core033_kernel_decide
theorem rows9896 : actualRows9896=WordField.canonicalRows actualModulus 9896 (.band 9889 9862) := by core033_kernel_decide
theorem stats9896 : actualRows9896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9896=5124 := by core033_kernel_decide
theorem rows9897 : actualRows9897=WordField.canonicalRows actualModulus 9897 (.bnot 9889) := by core033_kernel_decide
theorem stats9897 : actualRows9897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9897=6276 := by core033_kernel_decide
theorem rows9898 : actualRows9898=WordField.canonicalRows actualModulus 9898 (.band 9897 9835) := by core033_kernel_decide
theorem stats9898 : actualRows9898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9898=5124 := by core033_kernel_decide
theorem rows9899 : actualRows9899=WordField.canonicalRows actualModulus 9899 (.bxor 9896 9898) := by core033_kernel_decide
theorem stats9899 : actualRows9899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9899=7428 := by core033_kernel_decide
theorem rows9900 : actualRows9900=WordField.canonicalRows actualModulus 9900 (.badd 9895 9899) := by core033_kernel_decide
theorem stats9900 : actualRows9900.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9900=5388 := by core033_kernel_decide
theorem rows9901 : actualRows9901=WordField.canonicalRows actualModulus 9901 (.literal (BitVec.ofNat 32 3259730800)) := by core033_kernel_decide
theorem stats9901 : actualRows9901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9901=3828 := by core033_kernel_decide
theorem rows9902 : actualRows9902=WordField.canonicalRows actualModulus 9902 (.badd 9900 9901) := by core033_kernel_decide
theorem stats9902 : actualRows9902.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9902=5388 := by core033_kernel_decide
theorem rows9903 : actualRows9903=WordField.canonicalRows actualModulus 9903 (.badd 9902 8482) := by core033_kernel_decide
theorem stats9903 : actualRows9903.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9903=5388 := by core033_kernel_decide
theorem rows9904 : actualRows9904=WordField.canonicalRows actualModulus 9904 (.rotr 9888 2) := by core033_kernel_decide
theorem stats9904 : actualRows9904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9904=5124 := by core033_kernel_decide
theorem rows9905 : actualRows9905=WordField.canonicalRows actualModulus 9905 (.rotr 9888 13) := by core033_kernel_decide
theorem stats9905 : actualRows9905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9905=5124 := by core033_kernel_decide
theorem rows9906 : actualRows9906=WordField.canonicalRows actualModulus 9906 (.bxor 9904 9905) := by core033_kernel_decide
theorem stats9906 : actualRows9906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9906=7428 := by core033_kernel_decide
theorem rows9907 : actualRows9907=WordField.canonicalRows actualModulus 9907 (.rotr 9888 22) := by core033_kernel_decide
theorem stats9907 : actualRows9907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9907=5124 := by core033_kernel_decide
theorem rows9908 : actualRows9908=WordField.canonicalRows actualModulus 9908 (.bxor 9906 9907) := by core033_kernel_decide
theorem stats9908 : actualRows9908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9908=7428 := by core033_kernel_decide
theorem rows9909 : actualRows9909=WordField.canonicalRows actualModulus 9909 (.band 9888 9861) := by core033_kernel_decide
theorem stats9909 : actualRows9909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9909=5124 := by core033_kernel_decide
def partRows152 : List R1CS.Row := actualRows9846++actualRows9847++actualRows9848++actualRows9849++actualRows9850++actualRows9851++actualRows9852++actualRows9853++actualRows9854++actualRows9855++actualRows9856++actualRows9857++actualRows9858++actualRows9859++actualRows9860++actualRows9861++actualRows9862++actualRows9863++actualRows9864++actualRows9865++actualRows9866++actualRows9867++actualRows9868++actualRows9869++actualRows9870++actualRows9871++actualRows9872++actualRows9873++actualRows9874++actualRows9875++actualRows9876++actualRows9877++actualRows9878++actualRows9879++actualRows9880++actualRows9881++actualRows9882++actualRows9883++actualRows9884++actualRows9885++actualRows9886++actualRows9887++actualRows9888++actualRows9889++actualRows9890++actualRows9891++actualRows9892++actualRows9893++actualRows9894++actualRows9895++actualRows9896++actualRows9897++actualRows9898++actualRows9899++actualRows9900++actualRows9901++actualRows9902++actualRows9903++actualRows9904++actualRows9905++actualRows9906++actualRows9907++actualRows9908++actualRows9909
def partOps152 : List WordIR.Op := [.badd 9841 9845,.literal (BitVec.ofNat 32 2730485921),.badd 9846 9847,.badd 9848 8456,.rotr 9834 2,.rotr 9834 13,.bxor 9850 9851,.rotr 9834 22,.bxor 9852 9853,.band 9834 9807,.band 9834 9780,.bxor 9855 9856,.band 9807 9780,.bxor 9857 9858,.badd 9854 9859,.badd 9849 9860,.badd 9753 9849,.rotr 9862 6,.rotr 9862 11,.bxor 9863 9864,.rotr 9862 25,.bxor 9865 9866,.badd 9781 9867,.band 9862 9835,.bnot 9862,.band 9870 9808,.bxor 9869 9871,.badd 9868 9872,.literal (BitVec.ofNat 32 2820302411),.badd 9873 9874,.badd 9875 8469,.rotr 9861 2,.rotr 9861 13,.bxor 9877 9878,.rotr 9861 22,.bxor 9879 9880,.band 9861 9834,.band 9861 9807,.bxor 9882 9883,.band 9834 9807,.bxor 9884 9885,.badd 9881 9886,.badd 9876 9887,.badd 9780 9876,.rotr 9889 6,.rotr 9889 11,.bxor 9890 9891,.rotr 9889 25,.bxor 9892 9893,.badd 9808 9894,.band 9889 9862,.bnot 9889,.band 9897 9835,.bxor 9896 9898,.badd 9895 9899,.literal (BitVec.ofNat 32 3259730800),.badd 9900 9901,.badd 9902 8482,.rotr 9888 2,.rotr 9888 13,.bxor 9904 9905,.rotr 9888 22,.bxor 9906 9907,.band 9888 9861]
theorem partExact152 : partRows152=WordField.rows actualModulus 9846 partOps152 := by
  simp only [partRows152,partOps152,WordField.rows,rows9846,rows9847,rows9848,rows9849,rows9850,rows9851,rows9852,rows9853,rows9854,rows9855,rows9856,rows9857,rows9858,rows9859,rows9860,rows9861,rows9862,rows9863,rows9864,rows9865,rows9866,rows9867,rows9868,rows9869,rows9870,rows9871,rows9872,rows9873,rows9874,rows9875,rows9876,rows9877,rows9878,rows9879,rows9880,rows9881,rows9882,rows9883,rows9884,rows9885,rows9886,rows9887,rows9888,rows9889,rows9890,rows9891,rows9892,rows9893,rows9894,rows9895,rows9896,rows9897,rows9898,rows9899,rows9900,rows9901,rows9902,rows9903,rows9904,rows9905,rows9906,rows9907,rows9908,rows9909,List.append_assoc,List.append_nil]
theorem partLength152 : partOps152.length=64 := by decide
theorem partStats152 : partRows152.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows152=367920 := by
  simp only [partRows152,List.length_append,MatrixRowBlocks.rows_weight_append,stats9846.1,stats9846.2,stats9847.1,stats9847.2,stats9848.1,stats9848.2,stats9849.1,stats9849.2,stats9850.1,stats9850.2,stats9851.1,stats9851.2,stats9852.1,stats9852.2,stats9853.1,stats9853.2,stats9854.1,stats9854.2,stats9855.1,stats9855.2,stats9856.1,stats9856.2,stats9857.1,stats9857.2,stats9858.1,stats9858.2,stats9859.1,stats9859.2,stats9860.1,stats9860.2,stats9861.1,stats9861.2,stats9862.1,stats9862.2,stats9863.1,stats9863.2,stats9864.1,stats9864.2,stats9865.1,stats9865.2,stats9866.1,stats9866.2,stats9867.1,stats9867.2,stats9868.1,stats9868.2,stats9869.1,stats9869.2,stats9870.1,stats9870.2,stats9871.1,stats9871.2,stats9872.1,stats9872.2,stats9873.1,stats9873.2,stats9874.1,stats9874.2,stats9875.1,stats9875.2,stats9876.1,stats9876.2,stats9877.1,stats9877.2,stats9878.1,stats9878.2,stats9879.1,stats9879.2,stats9880.1,stats9880.2,stats9881.1,stats9881.2,stats9882.1,stats9882.2,stats9883.1,stats9883.2,stats9884.1,stats9884.2,stats9885.1,stats9885.2,stats9886.1,stats9886.2,stats9887.1,stats9887.2,stats9888.1,stats9888.2,stats9889.1,stats9889.2,stats9890.1,stats9890.2,stats9891.1,stats9891.2,stats9892.1,stats9892.2,stats9893.1,stats9893.2,stats9894.1,stats9894.2,stats9895.1,stats9895.2,stats9896.1,stats9896.2,stats9897.1,stats9897.2,stats9898.1,stats9898.2,stats9899.1,stats9899.2,stats9900.1,stats9900.2,stats9901.1,stats9901.2,stats9902.1,stats9902.2,stats9903.1,stats9903.2,stats9904.1,stats9904.2,stats9905.1,stats9905.2,stats9906.1,stats9906.2,stats9907.1,stats9907.2,stats9908.1,stats9908.2,stats9909.1,stats9909.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
