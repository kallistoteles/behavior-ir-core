import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData153
import PathRoundDispatchInstructionMatrixData154
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9835 : actualRows9835=WordField.canonicalRows actualModulus 9835 (.bxor 9828 9834) := by core033_kernel_decide
theorem stats9835 : actualRows9835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9835=7428 := by core033_kernel_decide
theorem rows9836 : actualRows9836=WordField.canonicalRows actualModulus 9836 (.bnot 9406) := by core033_kernel_decide
theorem stats9836 : actualRows9836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9836=6276 := by core033_kernel_decide
theorem rows9837 : actualRows9837=WordField.canonicalRows actualModulus 9837 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9837 : actualRows9837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9837=2892 := by core033_kernel_decide
theorem rows9838 : actualRows9838=WordField.canonicalRows actualModulus 9838 (.badd 9836 9837) := by core033_kernel_decide
theorem stats9838 : actualRows9838.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9838=5388 := by core033_kernel_decide
theorem rows9839 : actualRows9839=WordField.canonicalRows actualModulus 9839 (.band 9838 39) := by core033_kernel_decide
theorem stats9839 : actualRows9839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9839=5124 := by core033_kernel_decide
theorem rows9840 : actualRows9840=WordField.canonicalRows actualModulus 9840 (.bnot 9406) := by core033_kernel_decide
theorem stats9840 : actualRows9840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9840=6276 := by core033_kernel_decide
theorem rows9841 : actualRows9841=WordField.canonicalRows actualModulus 9841 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9841 : actualRows9841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9841=2892 := by core033_kernel_decide
theorem rows9842 : actualRows9842=WordField.canonicalRows actualModulus 9842 (.badd 9840 9841) := by core033_kernel_decide
theorem stats9842 : actualRows9842.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9842=5388 := by core033_kernel_decide
theorem rows9843 : actualRows9843=WordField.canonicalRows actualModulus 9843 (.bnot 9842) := by core033_kernel_decide
theorem stats9843 : actualRows9843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9843=6276 := by core033_kernel_decide
theorem rows9844 : actualRows9844=WordField.canonicalRows actualModulus 9844 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9844 : actualRows9844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9844=2820 := by core033_kernel_decide
theorem rows9845 : actualRows9845=WordField.canonicalRows actualModulus 9845 (.band 9843 9844) := by core033_kernel_decide
theorem stats9845 : actualRows9845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9845=5124 := by core033_kernel_decide
theorem rows9846 : actualRows9846=WordField.canonicalRows actualModulus 9846 (.bxor 9839 9845) := by core033_kernel_decide
theorem stats9846 : actualRows9846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9846=7428 := by core033_kernel_decide
theorem rows9847 : actualRows9847=WordField.canonicalRows actualModulus 9847 (.bnot 9406) := by core033_kernel_decide
theorem stats9847 : actualRows9847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9847=6276 := by core033_kernel_decide
theorem rows9848 : actualRows9848=WordField.canonicalRows actualModulus 9848 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9848 : actualRows9848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9848=2892 := by core033_kernel_decide
theorem rows9849 : actualRows9849=WordField.canonicalRows actualModulus 9849 (.badd 9847 9848) := by core033_kernel_decide
theorem stats9849 : actualRows9849.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9849=5388 := by core033_kernel_decide
theorem rows9850 : actualRows9850=WordField.canonicalRows actualModulus 9850 (.band 9849 40) := by core033_kernel_decide
theorem stats9850 : actualRows9850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9850=5124 := by core033_kernel_decide
theorem rows9851 : actualRows9851=WordField.canonicalRows actualModulus 9851 (.bnot 9406) := by core033_kernel_decide
theorem stats9851 : actualRows9851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9851=6276 := by core033_kernel_decide
theorem rows9852 : actualRows9852=WordField.canonicalRows actualModulus 9852 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9852 : actualRows9852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9852=2892 := by core033_kernel_decide
theorem rows9853 : actualRows9853=WordField.canonicalRows actualModulus 9853 (.badd 9851 9852) := by core033_kernel_decide
theorem stats9853 : actualRows9853.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9853=5388 := by core033_kernel_decide
theorem rows9854 : actualRows9854=WordField.canonicalRows actualModulus 9854 (.bnot 9853) := by core033_kernel_decide
theorem stats9854 : actualRows9854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9854=6276 := by core033_kernel_decide
theorem rows9855 : actualRows9855=WordField.canonicalRows actualModulus 9855 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9855 : actualRows9855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9855=2820 := by core033_kernel_decide
theorem rows9856 : actualRows9856=WordField.canonicalRows actualModulus 9856 (.band 9854 9855) := by core033_kernel_decide
theorem stats9856 : actualRows9856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9856=5124 := by core033_kernel_decide
theorem rows9857 : actualRows9857=WordField.canonicalRows actualModulus 9857 (.bxor 9850 9856) := by core033_kernel_decide
theorem stats9857 : actualRows9857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9857=7428 := by core033_kernel_decide
theorem rows9858 : actualRows9858=WordField.canonicalRows actualModulus 9858 (.bnot 9406) := by core033_kernel_decide
theorem stats9858 : actualRows9858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9858=6276 := by core033_kernel_decide
theorem rows9859 : actualRows9859=WordField.canonicalRows actualModulus 9859 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9859 : actualRows9859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9859=2892 := by core033_kernel_decide
theorem rows9860 : actualRows9860=WordField.canonicalRows actualModulus 9860 (.badd 9858 9859) := by core033_kernel_decide
theorem stats9860 : actualRows9860.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9860=5388 := by core033_kernel_decide
theorem rows9861 : actualRows9861=WordField.canonicalRows actualModulus 9861 (.band 9860 41) := by core033_kernel_decide
theorem stats9861 : actualRows9861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9861=5124 := by core033_kernel_decide
theorem rows9862 : actualRows9862=WordField.canonicalRows actualModulus 9862 (.bnot 9406) := by core033_kernel_decide
theorem stats9862 : actualRows9862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9862=6276 := by core033_kernel_decide
theorem rows9863 : actualRows9863=WordField.canonicalRows actualModulus 9863 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9863 : actualRows9863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9863=2892 := by core033_kernel_decide
theorem rows9864 : actualRows9864=WordField.canonicalRows actualModulus 9864 (.badd 9862 9863) := by core033_kernel_decide
theorem stats9864 : actualRows9864.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9864=5388 := by core033_kernel_decide
theorem rows9865 : actualRows9865=WordField.canonicalRows actualModulus 9865 (.bnot 9864) := by core033_kernel_decide
theorem stats9865 : actualRows9865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9865=6276 := by core033_kernel_decide
theorem rows9866 : actualRows9866=WordField.canonicalRows actualModulus 9866 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9866 : actualRows9866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9866=2820 := by core033_kernel_decide
theorem rows9867 : actualRows9867=WordField.canonicalRows actualModulus 9867 (.band 9865 9866) := by core033_kernel_decide
theorem stats9867 : actualRows9867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9867=5124 := by core033_kernel_decide
theorem rows9868 : actualRows9868=WordField.canonicalRows actualModulus 9868 (.bxor 9861 9867) := by core033_kernel_decide
theorem stats9868 : actualRows9868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9868=7428 := by core033_kernel_decide
theorem rows9869 : actualRows9869=WordField.canonicalRows actualModulus 9869 (.bnot 9406) := by core033_kernel_decide
theorem stats9869 : actualRows9869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9869=6276 := by core033_kernel_decide
theorem rows9870 : actualRows9870=WordField.canonicalRows actualModulus 9870 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9870 : actualRows9870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9870=2892 := by core033_kernel_decide
theorem rows9871 : actualRows9871=WordField.canonicalRows actualModulus 9871 (.badd 9869 9870) := by core033_kernel_decide
theorem stats9871 : actualRows9871.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9871=5388 := by core033_kernel_decide
theorem rows9872 : actualRows9872=WordField.canonicalRows actualModulus 9872 (.band 9871 42) := by core033_kernel_decide
theorem stats9872 : actualRows9872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9872=5124 := by core033_kernel_decide
theorem rows9873 : actualRows9873=WordField.canonicalRows actualModulus 9873 (.bnot 9406) := by core033_kernel_decide
theorem stats9873 : actualRows9873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9873=6276 := by core033_kernel_decide
theorem rows9874 : actualRows9874=WordField.canonicalRows actualModulus 9874 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9874 : actualRows9874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9874=2892 := by core033_kernel_decide
theorem rows9875 : actualRows9875=WordField.canonicalRows actualModulus 9875 (.badd 9873 9874) := by core033_kernel_decide
theorem stats9875 : actualRows9875.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9875=5388 := by core033_kernel_decide
theorem rows9876 : actualRows9876=WordField.canonicalRows actualModulus 9876 (.bnot 9875) := by core033_kernel_decide
theorem stats9876 : actualRows9876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9876=6276 := by core033_kernel_decide
theorem rows9877 : actualRows9877=WordField.canonicalRows actualModulus 9877 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9877 : actualRows9877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9877=2820 := by core033_kernel_decide
theorem rows9878 : actualRows9878=WordField.canonicalRows actualModulus 9878 (.band 9876 9877) := by core033_kernel_decide
theorem stats9878 : actualRows9878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9878=5124 := by core033_kernel_decide
theorem rows9879 : actualRows9879=WordField.canonicalRows actualModulus 9879 (.bxor 9872 9878) := by core033_kernel_decide
theorem stats9879 : actualRows9879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9879=7428 := by core033_kernel_decide
theorem rows9880 : actualRows9880=WordField.canonicalRows actualModulus 9880 (.rotr 9802 24) := by core033_kernel_decide
theorem stats9880 : actualRows9880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9880=5124 := by core033_kernel_decide
theorem rows9881 : actualRows9881=WordField.canonicalRows actualModulus 9881 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats9881 : actualRows9881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9881=3972 := by core033_kernel_decide
theorem rows9882 : actualRows9882=WordField.canonicalRows actualModulus 9882 (.band 9880 9881) := by core033_kernel_decide
theorem stats9882 : actualRows9882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9882=5124 := by core033_kernel_decide
theorem rows9883 : actualRows9883=WordField.canonicalRows actualModulus 9883 (.rotr 9802 8) := by core033_kernel_decide
theorem stats9883 : actualRows9883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9883=5124 := by core033_kernel_decide
theorem rows9884 : actualRows9884=WordField.canonicalRows actualModulus 9884 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats9884 : actualRows9884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9884=3972 := by core033_kernel_decide
theorem rows9885 : actualRows9885=WordField.canonicalRows actualModulus 9885 (.band 9883 9884) := by core033_kernel_decide
theorem stats9885 : actualRows9885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9885=5124 := by core033_kernel_decide
theorem rows9886 : actualRows9886=WordField.canonicalRows actualModulus 9886 (.bxor 9882 9885) := by core033_kernel_decide
theorem stats9886 : actualRows9886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9886=7428 := by core033_kernel_decide
theorem rows9887 : actualRows9887=WordField.canonicalRows actualModulus 9887 (.rotr 9813 24) := by core033_kernel_decide
theorem stats9887 : actualRows9887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9887=5124 := by core033_kernel_decide
theorem rows9888 : actualRows9888=WordField.canonicalRows actualModulus 9888 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats9888 : actualRows9888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9888=3972 := by core033_kernel_decide
theorem rows9889 : actualRows9889=WordField.canonicalRows actualModulus 9889 (.band 9887 9888) := by core033_kernel_decide
theorem stats9889 : actualRows9889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9889=5124 := by core033_kernel_decide
theorem rows9890 : actualRows9890=WordField.canonicalRows actualModulus 9890 (.rotr 9813 8) := by core033_kernel_decide
theorem stats9890 : actualRows9890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9890=5124 := by core033_kernel_decide
theorem rows9891 : actualRows9891=WordField.canonicalRows actualModulus 9891 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats9891 : actualRows9891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9891=3972 := by core033_kernel_decide
theorem rows9892 : actualRows9892=WordField.canonicalRows actualModulus 9892 (.band 9890 9891) := by core033_kernel_decide
theorem stats9892 : actualRows9892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9892=5124 := by core033_kernel_decide
theorem rows9893 : actualRows9893=WordField.canonicalRows actualModulus 9893 (.bxor 9889 9892) := by core033_kernel_decide
theorem stats9893 : actualRows9893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9893=7428 := by core033_kernel_decide
theorem rows9894 : actualRows9894=WordField.canonicalRows actualModulus 9894 (.rotr 9824 24) := by core033_kernel_decide
theorem stats9894 : actualRows9894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9894=5124 := by core033_kernel_decide
theorem rows9895 : actualRows9895=WordField.canonicalRows actualModulus 9895 (.literal (BitVec.ofNat 32 16711935)) := by core033_kernel_decide
theorem stats9895 : actualRows9895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9895=3972 := by core033_kernel_decide
theorem rows9896 : actualRows9896=WordField.canonicalRows actualModulus 9896 (.band 9894 9895) := by core033_kernel_decide
theorem stats9896 : actualRows9896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9896=5124 := by core033_kernel_decide
theorem rows9897 : actualRows9897=WordField.canonicalRows actualModulus 9897 (.rotr 9824 8) := by core033_kernel_decide
theorem stats9897 : actualRows9897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9897=5124 := by core033_kernel_decide
theorem rows9898 : actualRows9898=WordField.canonicalRows actualModulus 9898 (.literal (BitVec.ofNat 32 4278255360)) := by core033_kernel_decide
theorem stats9898 : actualRows9898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9898=3972 := by core033_kernel_decide
def partRows153 : List R1CS.Row := actualRows9835++actualRows9836++actualRows9837++actualRows9838++actualRows9839++actualRows9840++actualRows9841++actualRows9842++actualRows9843++actualRows9844++actualRows9845++actualRows9846++actualRows9847++actualRows9848++actualRows9849++actualRows9850++actualRows9851++actualRows9852++actualRows9853++actualRows9854++actualRows9855++actualRows9856++actualRows9857++actualRows9858++actualRows9859++actualRows9860++actualRows9861++actualRows9862++actualRows9863++actualRows9864++actualRows9865++actualRows9866++actualRows9867++actualRows9868++actualRows9869++actualRows9870++actualRows9871++actualRows9872++actualRows9873++actualRows9874++actualRows9875++actualRows9876++actualRows9877++actualRows9878++actualRows9879++actualRows9880++actualRows9881++actualRows9882++actualRows9883++actualRows9884++actualRows9885++actualRows9886++actualRows9887++actualRows9888++actualRows9889++actualRows9890++actualRows9891++actualRows9892++actualRows9893++actualRows9894++actualRows9895++actualRows9896++actualRows9897++actualRows9898
def partOps153 : List WordIR.Op := [.bxor 9828 9834,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9836 9837,.band 9838 39,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9840 9841,.bnot 9842,.literal (BitVec.ofNat 32 0),.band 9843 9844,.bxor 9839 9845,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9847 9848,.band 9849 40,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9851 9852,.bnot 9853,.literal (BitVec.ofNat 32 0),.band 9854 9855,.bxor 9850 9856,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9858 9859,.band 9860 41,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9862 9863,.bnot 9864,.literal (BitVec.ofNat 32 0),.band 9865 9866,.bxor 9861 9867,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9869 9870,.band 9871 42,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9873 9874,.bnot 9875,.literal (BitVec.ofNat 32 0),.band 9876 9877,.bxor 9872 9878,.rotr 9802 24,.literal (BitVec.ofNat 32 16711935),.band 9880 9881,.rotr 9802 8,.literal (BitVec.ofNat 32 4278255360),.band 9883 9884,.bxor 9882 9885,.rotr 9813 24,.literal (BitVec.ofNat 32 16711935),.band 9887 9888,.rotr 9813 8,.literal (BitVec.ofNat 32 4278255360),.band 9890 9891,.bxor 9889 9892,.rotr 9824 24,.literal (BitVec.ofNat 32 16711935),.band 9894 9895,.rotr 9824 8,.literal (BitVec.ofNat 32 4278255360)]
theorem partExact153 : partRows153=WordField.rows actualModulus 9835 partOps153 := by
  simp only [partRows153,partOps153,WordField.rows,rows9835,rows9836,rows9837,rows9838,rows9839,rows9840,rows9841,rows9842,rows9843,rows9844,rows9845,rows9846,rows9847,rows9848,rows9849,rows9850,rows9851,rows9852,rows9853,rows9854,rows9855,rows9856,rows9857,rows9858,rows9859,rows9860,rows9861,rows9862,rows9863,rows9864,rows9865,rows9866,rows9867,rows9868,rows9869,rows9870,rows9871,rows9872,rows9873,rows9874,rows9875,rows9876,rows9877,rows9878,rows9879,rows9880,rows9881,rows9882,rows9883,rows9884,rows9885,rows9886,rows9887,rows9888,rows9889,rows9890,rows9891,rows9892,rows9893,rows9894,rows9895,rows9896,rows9897,rows9898,List.append_assoc,List.append_nil]
theorem partLength153 : partOps153.length=64 := by decide
theorem partStats153 : partRows153.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows153=326016 := by
  simp only [partRows153,List.length_append,MatrixRowBlocks.rows_weight_append,stats9835.1,stats9835.2,stats9836.1,stats9836.2,stats9837.1,stats9837.2,stats9838.1,stats9838.2,stats9839.1,stats9839.2,stats9840.1,stats9840.2,stats9841.1,stats9841.2,stats9842.1,stats9842.2,stats9843.1,stats9843.2,stats9844.1,stats9844.2,stats9845.1,stats9845.2,stats9846.1,stats9846.2,stats9847.1,stats9847.2,stats9848.1,stats9848.2,stats9849.1,stats9849.2,stats9850.1,stats9850.2,stats9851.1,stats9851.2,stats9852.1,stats9852.2,stats9853.1,stats9853.2,stats9854.1,stats9854.2,stats9855.1,stats9855.2,stats9856.1,stats9856.2,stats9857.1,stats9857.2,stats9858.1,stats9858.2,stats9859.1,stats9859.2,stats9860.1,stats9860.2,stats9861.1,stats9861.2,stats9862.1,stats9862.2,stats9863.1,stats9863.2,stats9864.1,stats9864.2,stats9865.1,stats9865.2,stats9866.1,stats9866.2,stats9867.1,stats9867.2,stats9868.1,stats9868.2,stats9869.1,stats9869.2,stats9870.1,stats9870.2,stats9871.1,stats9871.2,stats9872.1,stats9872.2,stats9873.1,stats9873.2,stats9874.1,stats9874.2,stats9875.1,stats9875.2,stats9876.1,stats9876.2,stats9877.1,stats9877.2,stats9878.1,stats9878.2,stats9879.1,stats9879.2,stats9880.1,stats9880.2,stats9881.1,stats9881.2,stats9882.1,stats9882.2,stats9883.1,stats9883.2,stats9884.1,stats9884.2,stats9885.1,stats9885.2,stats9886.1,stats9886.2,stats9887.1,stats9887.2,stats9888.1,stats9888.2,stats9889.1,stats9889.2,stats9890.1,stats9890.2,stats9891.1,stats9891.2,stats9892.1,stats9892.2,stats9893.1,stats9893.2,stats9894.1,stats9894.2,stats9895.1,stats9895.2,stats9896.1,stats9896.2,stats9897.1,stats9897.2,stats9898.1,stats9898.2]
  decide
end PathRoundDispatchCheckedRows
