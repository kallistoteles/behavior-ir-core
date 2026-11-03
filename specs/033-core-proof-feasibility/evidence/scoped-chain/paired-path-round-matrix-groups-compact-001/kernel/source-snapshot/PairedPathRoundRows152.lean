import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData153
import PairedPathRoundInstructionMatrixData154
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9824 : actualRows9824=WordField.canonicalRows actualModulus 9824 (.bnot 9823) := by core033_kernel_decide
theorem stats9824 : actualRows9824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9824=6276 := by core033_kernel_decide
theorem rows9825 : actualRows9825=WordField.canonicalRows actualModulus 9825 (.band 9818 9824) := by core033_kernel_decide
theorem stats9825 : actualRows9825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9825=5124 := by core033_kernel_decide
theorem rows9826 : actualRows9826=WordField.canonicalRows actualModulus 9826 (.bxor 9813 9825) := by core033_kernel_decide
theorem stats9826 : actualRows9826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9826=7428 := by core033_kernel_decide
theorem rows9827 : actualRows9827=WordField.canonicalRows actualModulus 9827 (.shr 9826 31) := by core033_kernel_decide
theorem stats9827 : actualRows9827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9827=2892 := by core033_kernel_decide
theorem rows9828 : actualRows9828=WordField.canonicalRows actualModulus 9828 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9828 : actualRows9828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9828=2892 := by core033_kernel_decide
theorem rows9829 : actualRows9829=WordField.canonicalRows actualModulus 9829 (.bxor 9827 9828) := by core033_kernel_decide
theorem stats9829 : actualRows9829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9829=7428 := by core033_kernel_decide
theorem rows9830 : actualRows9830=WordField.canonicalRows actualModulus 9830 (.bnot 9829) := by core033_kernel_decide
theorem stats9830 : actualRows9830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9830=6276 := by core033_kernel_decide
theorem rows9831 : actualRows9831=WordField.canonicalRows actualModulus 9831 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9831 : actualRows9831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9831=2892 := by core033_kernel_decide
theorem rows9832 : actualRows9832=WordField.canonicalRows actualModulus 9832 (.badd 9830 9831) := by core033_kernel_decide
theorem stats9832 : actualRows9832.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9832=5388 := by core033_kernel_decide
theorem rows9833 : actualRows9833=WordField.canonicalRows actualModulus 9833 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats9833 : actualRows9833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9833=2964 := by core033_kernel_decide
theorem rows9834 : actualRows9834=WordField.canonicalRows actualModulus 9834 (.band 9832 9833) := by core033_kernel_decide
theorem stats9834 : actualRows9834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9834=5124 := by core033_kernel_decide
theorem rows9835 : actualRows9835=WordField.canonicalRows actualModulus 9835 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9835 : actualRows9835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9835=2892 := by core033_kernel_decide
theorem rows9836 : actualRows9836=WordField.canonicalRows actualModulus 9836 (.bxor 616 9835) := by core033_kernel_decide
theorem stats9836 : actualRows9836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9836=7428 := by core033_kernel_decide
theorem rows9837 : actualRows9837=WordField.canonicalRows actualModulus 9837 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9837 : actualRows9837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9837=2820 := by core033_kernel_decide
theorem rows9838 : actualRows9838=WordField.canonicalRows actualModulus 9838 (.bnot 9837) := by core033_kernel_decide
theorem stats9838 : actualRows9838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9838=6276 := by core033_kernel_decide
theorem rows9839 : actualRows9839=WordField.canonicalRows actualModulus 9839 (.band 9836 9838) := by core033_kernel_decide
theorem stats9839 : actualRows9839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9839=5124 := by core033_kernel_decide
theorem rows9840 : actualRows9840=WordField.canonicalRows actualModulus 9840 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9840 : actualRows9840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9840=2892 := by core033_kernel_decide
theorem rows9841 : actualRows9841=WordField.canonicalRows actualModulus 9841 (.bxor 616 9840) := by core033_kernel_decide
theorem stats9841 : actualRows9841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9841=7428 := by core033_kernel_decide
theorem rows9842 : actualRows9842=WordField.canonicalRows actualModulus 9842 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9842 : actualRows9842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9842=2820 := by core033_kernel_decide
theorem rows9843 : actualRows9843=WordField.canonicalRows actualModulus 9843 (.bnot 9842) := by core033_kernel_decide
theorem stats9843 : actualRows9843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9843=6276 := by core033_kernel_decide
theorem rows9844 : actualRows9844=WordField.canonicalRows actualModulus 9844 (.bxor 9841 9843) := by core033_kernel_decide
theorem stats9844 : actualRows9844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9844=7428 := by core033_kernel_decide
theorem rows9845 : actualRows9845=WordField.canonicalRows actualModulus 9845 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9845 : actualRows9845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9845=2892 := by core033_kernel_decide
theorem rows9846 : actualRows9846=WordField.canonicalRows actualModulus 9846 (.bxor 616 9845) := by core033_kernel_decide
theorem stats9846 : actualRows9846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9846=7428 := by core033_kernel_decide
theorem rows9847 : actualRows9847=WordField.canonicalRows actualModulus 9847 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9847 : actualRows9847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9847=2820 := by core033_kernel_decide
theorem rows9848 : actualRows9848=WordField.canonicalRows actualModulus 9848 (.bnot 9847) := by core033_kernel_decide
theorem stats9848 : actualRows9848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9848=6276 := by core033_kernel_decide
theorem rows9849 : actualRows9849=WordField.canonicalRows actualModulus 9849 (.badd 9846 9848) := by core033_kernel_decide
theorem stats9849 : actualRows9849.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9849=5388 := by core033_kernel_decide
theorem rows9850 : actualRows9850=WordField.canonicalRows actualModulus 9850 (.bnot 9849) := by core033_kernel_decide
theorem stats9850 : actualRows9850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9850=6276 := by core033_kernel_decide
theorem rows9851 : actualRows9851=WordField.canonicalRows actualModulus 9851 (.band 9844 9850) := by core033_kernel_decide
theorem stats9851 : actualRows9851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9851=5124 := by core033_kernel_decide
theorem rows9852 : actualRows9852=WordField.canonicalRows actualModulus 9852 (.bxor 9839 9851) := by core033_kernel_decide
theorem stats9852 : actualRows9852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9852=7428 := by core033_kernel_decide
theorem rows9853 : actualRows9853=WordField.canonicalRows actualModulus 9853 (.shr 9852 31) := by core033_kernel_decide
theorem stats9853 : actualRows9853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9853=2892 := by core033_kernel_decide
theorem rows9854 : actualRows9854=WordField.canonicalRows actualModulus 9854 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9854 : actualRows9854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9854=2892 := by core033_kernel_decide
theorem rows9855 : actualRows9855=WordField.canonicalRows actualModulus 9855 (.bxor 9853 9854) := by core033_kernel_decide
theorem stats9855 : actualRows9855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9855=7428 := by core033_kernel_decide
theorem rows9856 : actualRows9856=WordField.canonicalRows actualModulus 9856 (.bnot 9855) := by core033_kernel_decide
theorem stats9856 : actualRows9856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9856=6276 := by core033_kernel_decide
theorem rows9857 : actualRows9857=WordField.canonicalRows actualModulus 9857 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9857 : actualRows9857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9857=2892 := by core033_kernel_decide
theorem rows9858 : actualRows9858=WordField.canonicalRows actualModulus 9858 (.badd 9856 9857) := by core033_kernel_decide
theorem stats9858 : actualRows9858.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9858=5388 := by core033_kernel_decide
theorem rows9859 : actualRows9859=WordField.canonicalRows actualModulus 9859 (.bnot 9858) := by core033_kernel_decide
theorem stats9859 : actualRows9859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9859=6276 := by core033_kernel_decide
theorem rows9860 : actualRows9860=WordField.canonicalRows actualModulus 9860 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9860 : actualRows9860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9860=2892 := by core033_kernel_decide
theorem rows9861 : actualRows9861=WordField.canonicalRows actualModulus 9861 (.band 9859 9860) := by core033_kernel_decide
theorem stats9861 : actualRows9861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9861=5124 := by core033_kernel_decide
theorem rows9862 : actualRows9862=WordField.canonicalRows actualModulus 9862 (.bxor 9834 9861) := by core033_kernel_decide
theorem stats9862 : actualRows9862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9862=7428 := by core033_kernel_decide
theorem rows9863 : actualRows9863=WordField.canonicalRows actualModulus 9863 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9863 : actualRows9863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9863=2892 := by core033_kernel_decide
theorem rows9864 : actualRows9864=WordField.canonicalRows actualModulus 9864 (.bxor 616 9863) := by core033_kernel_decide
theorem stats9864 : actualRows9864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9864=7428 := by core033_kernel_decide
theorem rows9865 : actualRows9865=WordField.canonicalRows actualModulus 9865 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9865 : actualRows9865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9865=2820 := by core033_kernel_decide
theorem rows9866 : actualRows9866=WordField.canonicalRows actualModulus 9866 (.bnot 9865) := by core033_kernel_decide
theorem stats9866 : actualRows9866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9866=6276 := by core033_kernel_decide
theorem rows9867 : actualRows9867=WordField.canonicalRows actualModulus 9867 (.band 9864 9866) := by core033_kernel_decide
theorem stats9867 : actualRows9867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9867=5124 := by core033_kernel_decide
theorem rows9868 : actualRows9868=WordField.canonicalRows actualModulus 9868 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9868 : actualRows9868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9868=2892 := by core033_kernel_decide
theorem rows9869 : actualRows9869=WordField.canonicalRows actualModulus 9869 (.bxor 616 9868) := by core033_kernel_decide
theorem stats9869 : actualRows9869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9869=7428 := by core033_kernel_decide
theorem rows9870 : actualRows9870=WordField.canonicalRows actualModulus 9870 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9870 : actualRows9870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9870=2820 := by core033_kernel_decide
theorem rows9871 : actualRows9871=WordField.canonicalRows actualModulus 9871 (.bnot 9870) := by core033_kernel_decide
theorem stats9871 : actualRows9871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9871=6276 := by core033_kernel_decide
theorem rows9872 : actualRows9872=WordField.canonicalRows actualModulus 9872 (.bxor 9869 9871) := by core033_kernel_decide
theorem stats9872 : actualRows9872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9872=7428 := by core033_kernel_decide
theorem rows9873 : actualRows9873=WordField.canonicalRows actualModulus 9873 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9873 : actualRows9873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9873=2892 := by core033_kernel_decide
theorem rows9874 : actualRows9874=WordField.canonicalRows actualModulus 9874 (.bxor 616 9873) := by core033_kernel_decide
theorem stats9874 : actualRows9874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9874=7428 := by core033_kernel_decide
theorem rows9875 : actualRows9875=WordField.canonicalRows actualModulus 9875 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9875 : actualRows9875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9875=2820 := by core033_kernel_decide
theorem rows9876 : actualRows9876=WordField.canonicalRows actualModulus 9876 (.bnot 9875) := by core033_kernel_decide
theorem stats9876 : actualRows9876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9876=6276 := by core033_kernel_decide
theorem rows9877 : actualRows9877=WordField.canonicalRows actualModulus 9877 (.badd 9874 9876) := by core033_kernel_decide
theorem stats9877 : actualRows9877.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9877=5388 := by core033_kernel_decide
theorem rows9878 : actualRows9878=WordField.canonicalRows actualModulus 9878 (.bnot 9877) := by core033_kernel_decide
theorem stats9878 : actualRows9878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9878=6276 := by core033_kernel_decide
theorem rows9879 : actualRows9879=WordField.canonicalRows actualModulus 9879 (.band 9872 9878) := by core033_kernel_decide
theorem stats9879 : actualRows9879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9879=5124 := by core033_kernel_decide
theorem rows9880 : actualRows9880=WordField.canonicalRows actualModulus 9880 (.bxor 9867 9879) := by core033_kernel_decide
theorem stats9880 : actualRows9880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9880=7428 := by core033_kernel_decide
theorem rows9881 : actualRows9881=WordField.canonicalRows actualModulus 9881 (.shr 9880 31) := by core033_kernel_decide
theorem stats9881 : actualRows9881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9881=2892 := by core033_kernel_decide
theorem rows9882 : actualRows9882=WordField.canonicalRows actualModulus 9882 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9882 : actualRows9882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9882=2892 := by core033_kernel_decide
theorem rows9883 : actualRows9883=WordField.canonicalRows actualModulus 9883 (.bxor 9881 9882) := by core033_kernel_decide
theorem stats9883 : actualRows9883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9883=7428 := by core033_kernel_decide
theorem rows9884 : actualRows9884=WordField.canonicalRows actualModulus 9884 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9884 : actualRows9884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9884=2892 := by core033_kernel_decide
theorem rows9885 : actualRows9885=WordField.canonicalRows actualModulus 9885 (.bxor 616 9884) := by core033_kernel_decide
theorem stats9885 : actualRows9885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9885=7428 := by core033_kernel_decide
theorem rows9886 : actualRows9886=WordField.canonicalRows actualModulus 9886 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9886 : actualRows9886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9886=2820 := by core033_kernel_decide
theorem rows9887 : actualRows9887=WordField.canonicalRows actualModulus 9887 (.bnot 9886) := by core033_kernel_decide
theorem stats9887 : actualRows9887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9887=6276 := by core033_kernel_decide
def partRows152 : List R1CS.Row := actualRows9824++actualRows9825++actualRows9826++actualRows9827++actualRows9828++actualRows9829++actualRows9830++actualRows9831++actualRows9832++actualRows9833++actualRows9834++actualRows9835++actualRows9836++actualRows9837++actualRows9838++actualRows9839++actualRows9840++actualRows9841++actualRows9842++actualRows9843++actualRows9844++actualRows9845++actualRows9846++actualRows9847++actualRows9848++actualRows9849++actualRows9850++actualRows9851++actualRows9852++actualRows9853++actualRows9854++actualRows9855++actualRows9856++actualRows9857++actualRows9858++actualRows9859++actualRows9860++actualRows9861++actualRows9862++actualRows9863++actualRows9864++actualRows9865++actualRows9866++actualRows9867++actualRows9868++actualRows9869++actualRows9870++actualRows9871++actualRows9872++actualRows9873++actualRows9874++actualRows9875++actualRows9876++actualRows9877++actualRows9878++actualRows9879++actualRows9880++actualRows9881++actualRows9882++actualRows9883++actualRows9884++actualRows9885++actualRows9886++actualRows9887
def partOps152 : List WordIR.Op := [.bnot 9823,.band 9818 9824,.bxor 9813 9825,.shr 9826 31,.literal (BitVec.ofNat 32 1),.bxor 9827 9828,.bnot 9829,.literal (BitVec.ofNat 32 1),.badd 9830 9831,.literal (BitVec.ofNat 32 3),.band 9832 9833,.literal (BitVec.ofNat 32 2),.bxor 616 9835,.literal (BitVec.ofNat 32 0),.bnot 9837,.band 9836 9838,.literal (BitVec.ofNat 32 2),.bxor 616 9840,.literal (BitVec.ofNat 32 0),.bnot 9842,.bxor 9841 9843,.literal (BitVec.ofNat 32 2),.bxor 616 9845,.literal (BitVec.ofNat 32 0),.bnot 9847,.badd 9846 9848,.bnot 9849,.band 9844 9850,.bxor 9839 9851,.shr 9852 31,.literal (BitVec.ofNat 32 1),.bxor 9853 9854,.bnot 9855,.literal (BitVec.ofNat 32 1),.badd 9856 9857,.bnot 9858,.literal (BitVec.ofNat 32 2),.band 9859 9860,.bxor 9834 9861,.literal (BitVec.ofNat 32 1),.bxor 616 9863,.literal (BitVec.ofNat 32 0),.bnot 9865,.band 9864 9866,.literal (BitVec.ofNat 32 1),.bxor 616 9868,.literal (BitVec.ofNat 32 0),.bnot 9870,.bxor 9869 9871,.literal (BitVec.ofNat 32 1),.bxor 616 9873,.literal (BitVec.ofNat 32 0),.bnot 9875,.badd 9874 9876,.bnot 9877,.band 9872 9878,.bxor 9867 9879,.shr 9880 31,.literal (BitVec.ofNat 32 1),.bxor 9881 9882,.literal (BitVec.ofNat 32 2),.bxor 616 9884,.literal (BitVec.ofNat 32 0),.bnot 9886]
theorem partExact152 : partRows152=WordField.rows actualModulus 9824 partOps152 := by
  simp only [partRows152,partOps152,WordField.rows,rows9824,rows9825,rows9826,rows9827,rows9828,rows9829,rows9830,rows9831,rows9832,rows9833,rows9834,rows9835,rows9836,rows9837,rows9838,rows9839,rows9840,rows9841,rows9842,rows9843,rows9844,rows9845,rows9846,rows9847,rows9848,rows9849,rows9850,rows9851,rows9852,rows9853,rows9854,rows9855,rows9856,rows9857,rows9858,rows9859,rows9860,rows9861,rows9862,rows9863,rows9864,rows9865,rows9866,rows9867,rows9868,rows9869,rows9870,rows9871,rows9872,rows9873,rows9874,rows9875,rows9876,rows9877,rows9878,rows9879,rows9880,rows9881,rows9882,rows9883,rows9884,rows9885,rows9886,rows9887,List.append_assoc,List.append_nil]
theorem partLength152 : partOps152.length=64 := by decide
theorem partStats152 : partRows152.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows152=326832 := by
  simp only [partRows152,List.length_append,MatrixRowBlocks.rows_weight_append,stats9824.1,stats9824.2,stats9825.1,stats9825.2,stats9826.1,stats9826.2,stats9827.1,stats9827.2,stats9828.1,stats9828.2,stats9829.1,stats9829.2,stats9830.1,stats9830.2,stats9831.1,stats9831.2,stats9832.1,stats9832.2,stats9833.1,stats9833.2,stats9834.1,stats9834.2,stats9835.1,stats9835.2,stats9836.1,stats9836.2,stats9837.1,stats9837.2,stats9838.1,stats9838.2,stats9839.1,stats9839.2,stats9840.1,stats9840.2,stats9841.1,stats9841.2,stats9842.1,stats9842.2,stats9843.1,stats9843.2,stats9844.1,stats9844.2,stats9845.1,stats9845.2,stats9846.1,stats9846.2,stats9847.1,stats9847.2,stats9848.1,stats9848.2,stats9849.1,stats9849.2,stats9850.1,stats9850.2,stats9851.1,stats9851.2,stats9852.1,stats9852.2,stats9853.1,stats9853.2,stats9854.1,stats9854.2,stats9855.1,stats9855.2,stats9856.1,stats9856.2,stats9857.1,stats9857.2,stats9858.1,stats9858.2,stats9859.1,stats9859.2,stats9860.1,stats9860.2,stats9861.1,stats9861.2,stats9862.1,stats9862.2,stats9863.1,stats9863.2,stats9864.1,stats9864.2,stats9865.1,stats9865.2,stats9866.1,stats9866.2,stats9867.1,stats9867.2,stats9868.1,stats9868.2,stats9869.1,stats9869.2,stats9870.1,stats9870.2,stats9871.1,stats9871.2,stats9872.1,stats9872.2,stats9873.1,stats9873.2,stats9874.1,stats9874.2,stats9875.1,stats9875.2,stats9876.1,stats9876.2,stats9877.1,stats9877.2,stats9878.1,stats9878.2,stats9879.1,stats9879.2,stats9880.1,stats9880.2,stats9881.1,stats9881.2,stats9882.1,stats9882.2,stats9883.1,stats9883.2,stats9884.1,stats9884.2,stats9885.1,stats9885.2,stats9886.1,stats9886.2,stats9887.1,stats9887.2]
  decide
end PairedPathRoundCheckedRows
