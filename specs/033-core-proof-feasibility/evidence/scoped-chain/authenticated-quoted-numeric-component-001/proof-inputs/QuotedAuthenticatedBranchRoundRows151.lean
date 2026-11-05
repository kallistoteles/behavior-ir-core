import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData152
import AuthenticatedBranchRoundInstructionMatrixData153
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9782 : actualRows9782=WordField.canonicalRows actualModulus 9782 (.rotr 9781 6) := by core033_kernel_decide
theorem stats9782 : actualRows9782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9782=5124 := by core033_kernel_decide
theorem rows9783 : actualRows9783=WordField.canonicalRows actualModulus 9783 (.rotr 9781 11) := by core033_kernel_decide
theorem stats9783 : actualRows9783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9783=5124 := by core033_kernel_decide
theorem rows9784 : actualRows9784=WordField.canonicalRows actualModulus 9784 (.bxor 9782 9783) := by core033_kernel_decide
theorem stats9784 : actualRows9784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9784=7428 := by core033_kernel_decide
theorem rows9785 : actualRows9785=WordField.canonicalRows actualModulus 9785 (.rotr 9781 25) := by core033_kernel_decide
theorem stats9785 : actualRows9785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9785=5124 := by core033_kernel_decide
theorem rows9786 : actualRows9786=WordField.canonicalRows actualModulus 9786 (.bxor 9784 9785) := by core033_kernel_decide
theorem stats9786 : actualRows9786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9786=7428 := by core033_kernel_decide
theorem rows9787 : actualRows9787=WordField.canonicalRows actualModulus 9787 (.badd 9700 9786) := by core033_kernel_decide
theorem stats9787 : actualRows9787.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9787=5388 := by core033_kernel_decide
theorem rows9788 : actualRows9788=WordField.canonicalRows actualModulus 9788 (.band 9781 9754) := by core033_kernel_decide
theorem stats9788 : actualRows9788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9788=5124 := by core033_kernel_decide
theorem rows9789 : actualRows9789=WordField.canonicalRows actualModulus 9789 (.bnot 9781) := by core033_kernel_decide
theorem stats9789 : actualRows9789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9789=6276 := by core033_kernel_decide
theorem rows9790 : actualRows9790=WordField.canonicalRows actualModulus 9790 (.band 9789 9727) := by core033_kernel_decide
theorem stats9790 : actualRows9790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9790=5124 := by core033_kernel_decide
theorem rows9791 : actualRows9791=WordField.canonicalRows actualModulus 9791 (.bxor 9788 9790) := by core033_kernel_decide
theorem stats9791 : actualRows9791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9791=7428 := by core033_kernel_decide
theorem rows9792 : actualRows9792=WordField.canonicalRows actualModulus 9792 (.badd 9787 9791) := by core033_kernel_decide
theorem stats9792 : actualRows9792.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9792=5388 := by core033_kernel_decide
theorem rows9793 : actualRows9793=WordField.canonicalRows actualModulus 9793 (.literal (BitVec.ofNat 32 2177026350)) := by core033_kernel_decide
theorem stats9793 : actualRows9793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9793=3756 := by core033_kernel_decide
theorem rows9794 : actualRows9794=WordField.canonicalRows actualModulus 9794 (.badd 9792 9793) := by core033_kernel_decide
theorem stats9794 : actualRows9794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9794=5388 := by core033_kernel_decide
theorem rows9795 : actualRows9795=WordField.canonicalRows actualModulus 9795 (.badd 9794 8430) := by core033_kernel_decide
theorem stats9795 : actualRows9795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9795=5388 := by core033_kernel_decide
theorem rows9796 : actualRows9796=WordField.canonicalRows actualModulus 9796 (.rotr 9780 2) := by core033_kernel_decide
theorem stats9796 : actualRows9796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9796=5124 := by core033_kernel_decide
theorem rows9797 : actualRows9797=WordField.canonicalRows actualModulus 9797 (.rotr 9780 13) := by core033_kernel_decide
theorem stats9797 : actualRows9797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9797=5124 := by core033_kernel_decide
theorem rows9798 : actualRows9798=WordField.canonicalRows actualModulus 9798 (.bxor 9796 9797) := by core033_kernel_decide
theorem stats9798 : actualRows9798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9798=7428 := by core033_kernel_decide
theorem rows9799 : actualRows9799=WordField.canonicalRows actualModulus 9799 (.rotr 9780 22) := by core033_kernel_decide
theorem stats9799 : actualRows9799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9799=5124 := by core033_kernel_decide
theorem rows9800 : actualRows9800=WordField.canonicalRows actualModulus 9800 (.bxor 9798 9799) := by core033_kernel_decide
theorem stats9800 : actualRows9800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9800=7428 := by core033_kernel_decide
theorem rows9801 : actualRows9801=WordField.canonicalRows actualModulus 9801 (.band 9780 9753) := by core033_kernel_decide
theorem stats9801 : actualRows9801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9801=5124 := by core033_kernel_decide
theorem rows9802 : actualRows9802=WordField.canonicalRows actualModulus 9802 (.band 9780 9726) := by core033_kernel_decide
theorem stats9802 : actualRows9802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9802=5124 := by core033_kernel_decide
theorem rows9803 : actualRows9803=WordField.canonicalRows actualModulus 9803 (.bxor 9801 9802) := by core033_kernel_decide
theorem stats9803 : actualRows9803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9803=7428 := by core033_kernel_decide
theorem rows9804 : actualRows9804=WordField.canonicalRows actualModulus 9804 (.band 9753 9726) := by core033_kernel_decide
theorem stats9804 : actualRows9804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9804=5124 := by core033_kernel_decide
theorem rows9805 : actualRows9805=WordField.canonicalRows actualModulus 9805 (.bxor 9803 9804) := by core033_kernel_decide
theorem stats9805 : actualRows9805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9805=7428 := by core033_kernel_decide
theorem rows9806 : actualRows9806=WordField.canonicalRows actualModulus 9806 (.badd 9800 9805) := by core033_kernel_decide
theorem stats9806 : actualRows9806.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9806=5388 := by core033_kernel_decide
theorem rows9807 : actualRows9807=WordField.canonicalRows actualModulus 9807 (.badd 9795 9806) := by core033_kernel_decide
theorem stats9807 : actualRows9807.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9807=5388 := by core033_kernel_decide
theorem rows9808 : actualRows9808=WordField.canonicalRows actualModulus 9808 (.badd 9699 9795) := by core033_kernel_decide
theorem stats9808 : actualRows9808.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9808=5388 := by core033_kernel_decide
theorem rows9809 : actualRows9809=WordField.canonicalRows actualModulus 9809 (.rotr 9808 6) := by core033_kernel_decide
theorem stats9809 : actualRows9809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9809=5124 := by core033_kernel_decide
theorem rows9810 : actualRows9810=WordField.canonicalRows actualModulus 9810 (.rotr 9808 11) := by core033_kernel_decide
theorem stats9810 : actualRows9810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9810=5124 := by core033_kernel_decide
theorem rows9811 : actualRows9811=WordField.canonicalRows actualModulus 9811 (.bxor 9809 9810) := by core033_kernel_decide
theorem stats9811 : actualRows9811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9811=7428 := by core033_kernel_decide
theorem rows9812 : actualRows9812=WordField.canonicalRows actualModulus 9812 (.rotr 9808 25) := by core033_kernel_decide
theorem stats9812 : actualRows9812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9812=5124 := by core033_kernel_decide
theorem rows9813 : actualRows9813=WordField.canonicalRows actualModulus 9813 (.bxor 9811 9812) := by core033_kernel_decide
theorem stats9813 : actualRows9813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9813=7428 := by core033_kernel_decide
theorem rows9814 : actualRows9814=WordField.canonicalRows actualModulus 9814 (.badd 9727 9813) := by core033_kernel_decide
theorem stats9814 : actualRows9814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9814=5388 := by core033_kernel_decide
theorem rows9815 : actualRows9815=WordField.canonicalRows actualModulus 9815 (.band 9808 9781) := by core033_kernel_decide
theorem stats9815 : actualRows9815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9815=5124 := by core033_kernel_decide
theorem rows9816 : actualRows9816=WordField.canonicalRows actualModulus 9816 (.bnot 9808) := by core033_kernel_decide
theorem stats9816 : actualRows9816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9816=6276 := by core033_kernel_decide
theorem rows9817 : actualRows9817=WordField.canonicalRows actualModulus 9817 (.band 9816 9754) := by core033_kernel_decide
theorem stats9817 : actualRows9817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9817=5124 := by core033_kernel_decide
theorem rows9818 : actualRows9818=WordField.canonicalRows actualModulus 9818 (.bxor 9815 9817) := by core033_kernel_decide
theorem stats9818 : actualRows9818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9818=7428 := by core033_kernel_decide
theorem rows9819 : actualRows9819=WordField.canonicalRows actualModulus 9819 (.badd 9814 9818) := by core033_kernel_decide
theorem stats9819 : actualRows9819.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9819=5388 := by core033_kernel_decide
theorem rows9820 : actualRows9820=WordField.canonicalRows actualModulus 9820 (.literal (BitVec.ofNat 32 2456956037)) := by core033_kernel_decide
theorem stats9820 : actualRows9820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9820=3756 := by core033_kernel_decide
theorem rows9821 : actualRows9821=WordField.canonicalRows actualModulus 9821 (.badd 9819 9820) := by core033_kernel_decide
theorem stats9821 : actualRows9821.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9821=5388 := by core033_kernel_decide
theorem rows9822 : actualRows9822=WordField.canonicalRows actualModulus 9822 (.badd 9821 8443) := by core033_kernel_decide
theorem stats9822 : actualRows9822.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9822=5388 := by core033_kernel_decide
theorem rows9823 : actualRows9823=WordField.canonicalRows actualModulus 9823 (.rotr 9807 2) := by core033_kernel_decide
theorem stats9823 : actualRows9823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9823=5124 := by core033_kernel_decide
theorem rows9824 : actualRows9824=WordField.canonicalRows actualModulus 9824 (.rotr 9807 13) := by core033_kernel_decide
theorem stats9824 : actualRows9824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9824=5124 := by core033_kernel_decide
theorem rows9825 : actualRows9825=WordField.canonicalRows actualModulus 9825 (.bxor 9823 9824) := by core033_kernel_decide
theorem stats9825 : actualRows9825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9825=7428 := by core033_kernel_decide
theorem rows9826 : actualRows9826=WordField.canonicalRows actualModulus 9826 (.rotr 9807 22) := by core033_kernel_decide
theorem stats9826 : actualRows9826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9826=5124 := by core033_kernel_decide
theorem rows9827 : actualRows9827=WordField.canonicalRows actualModulus 9827 (.bxor 9825 9826) := by core033_kernel_decide
theorem stats9827 : actualRows9827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9827=7428 := by core033_kernel_decide
theorem rows9828 : actualRows9828=WordField.canonicalRows actualModulus 9828 (.band 9807 9780) := by core033_kernel_decide
theorem stats9828 : actualRows9828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9828=5124 := by core033_kernel_decide
theorem rows9829 : actualRows9829=WordField.canonicalRows actualModulus 9829 (.band 9807 9753) := by core033_kernel_decide
theorem stats9829 : actualRows9829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9829=5124 := by core033_kernel_decide
theorem rows9830 : actualRows9830=WordField.canonicalRows actualModulus 9830 (.bxor 9828 9829) := by core033_kernel_decide
theorem stats9830 : actualRows9830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9830=7428 := by core033_kernel_decide
theorem rows9831 : actualRows9831=WordField.canonicalRows actualModulus 9831 (.band 9780 9753) := by core033_kernel_decide
theorem stats9831 : actualRows9831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9831=5124 := by core033_kernel_decide
theorem rows9832 : actualRows9832=WordField.canonicalRows actualModulus 9832 (.bxor 9830 9831) := by core033_kernel_decide
theorem stats9832 : actualRows9832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9832=7428 := by core033_kernel_decide
theorem rows9833 : actualRows9833=WordField.canonicalRows actualModulus 9833 (.badd 9827 9832) := by core033_kernel_decide
theorem stats9833 : actualRows9833.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9833=5388 := by core033_kernel_decide
theorem rows9834 : actualRows9834=WordField.canonicalRows actualModulus 9834 (.badd 9822 9833) := by core033_kernel_decide
theorem stats9834 : actualRows9834.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9834=5388 := by core033_kernel_decide
theorem rows9835 : actualRows9835=WordField.canonicalRows actualModulus 9835 (.badd 9726 9822) := by core033_kernel_decide
theorem stats9835 : actualRows9835.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9835=5388 := by core033_kernel_decide
theorem rows9836 : actualRows9836=WordField.canonicalRows actualModulus 9836 (.rotr 9835 6) := by core033_kernel_decide
theorem stats9836 : actualRows9836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9836=5124 := by core033_kernel_decide
theorem rows9837 : actualRows9837=WordField.canonicalRows actualModulus 9837 (.rotr 9835 11) := by core033_kernel_decide
theorem stats9837 : actualRows9837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9837=5124 := by core033_kernel_decide
theorem rows9838 : actualRows9838=WordField.canonicalRows actualModulus 9838 (.bxor 9836 9837) := by core033_kernel_decide
theorem stats9838 : actualRows9838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9838=7428 := by core033_kernel_decide
theorem rows9839 : actualRows9839=WordField.canonicalRows actualModulus 9839 (.rotr 9835 25) := by core033_kernel_decide
theorem stats9839 : actualRows9839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9839=5124 := by core033_kernel_decide
theorem rows9840 : actualRows9840=WordField.canonicalRows actualModulus 9840 (.bxor 9838 9839) := by core033_kernel_decide
theorem stats9840 : actualRows9840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9840=7428 := by core033_kernel_decide
theorem rows9841 : actualRows9841=WordField.canonicalRows actualModulus 9841 (.badd 9754 9840) := by core033_kernel_decide
theorem stats9841 : actualRows9841.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9841=5388 := by core033_kernel_decide
theorem rows9842 : actualRows9842=WordField.canonicalRows actualModulus 9842 (.band 9835 9808) := by core033_kernel_decide
theorem stats9842 : actualRows9842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9842=5124 := by core033_kernel_decide
theorem rows9843 : actualRows9843=WordField.canonicalRows actualModulus 9843 (.bnot 9835) := by core033_kernel_decide
theorem stats9843 : actualRows9843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9843=6276 := by core033_kernel_decide
theorem rows9844 : actualRows9844=WordField.canonicalRows actualModulus 9844 (.band 9843 9781) := by core033_kernel_decide
theorem stats9844 : actualRows9844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9844=5124 := by core033_kernel_decide
theorem rows9845 : actualRows9845=WordField.canonicalRows actualModulus 9845 (.bxor 9842 9844) := by core033_kernel_decide
theorem stats9845 : actualRows9845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9845=7428 := by core033_kernel_decide
def partRows151 : List R1CS.Row := actualRows9782++actualRows9783++actualRows9784++actualRows9785++actualRows9786++actualRows9787++actualRows9788++actualRows9789++actualRows9790++actualRows9791++actualRows9792++actualRows9793++actualRows9794++actualRows9795++actualRows9796++actualRows9797++actualRows9798++actualRows9799++actualRows9800++actualRows9801++actualRows9802++actualRows9803++actualRows9804++actualRows9805++actualRows9806++actualRows9807++actualRows9808++actualRows9809++actualRows9810++actualRows9811++actualRows9812++actualRows9813++actualRows9814++actualRows9815++actualRows9816++actualRows9817++actualRows9818++actualRows9819++actualRows9820++actualRows9821++actualRows9822++actualRows9823++actualRows9824++actualRows9825++actualRows9826++actualRows9827++actualRows9828++actualRows9829++actualRows9830++actualRows9831++actualRows9832++actualRows9833++actualRows9834++actualRows9835++actualRows9836++actualRows9837++actualRows9838++actualRows9839++actualRows9840++actualRows9841++actualRows9842++actualRows9843++actualRows9844++actualRows9845
def partOps151 : List WordIR.Op := [.rotr 9781 6,.rotr 9781 11,.bxor 9782 9783,.rotr 9781 25,.bxor 9784 9785,.badd 9700 9786,.band 9781 9754,.bnot 9781,.band 9789 9727,.bxor 9788 9790,.badd 9787 9791,.literal (BitVec.ofNat 32 2177026350),.badd 9792 9793,.badd 9794 8430,.rotr 9780 2,.rotr 9780 13,.bxor 9796 9797,.rotr 9780 22,.bxor 9798 9799,.band 9780 9753,.band 9780 9726,.bxor 9801 9802,.band 9753 9726,.bxor 9803 9804,.badd 9800 9805,.badd 9795 9806,.badd 9699 9795,.rotr 9808 6,.rotr 9808 11,.bxor 9809 9810,.rotr 9808 25,.bxor 9811 9812,.badd 9727 9813,.band 9808 9781,.bnot 9808,.band 9816 9754,.bxor 9815 9817,.badd 9814 9818,.literal (BitVec.ofNat 32 2456956037),.badd 9819 9820,.badd 9821 8443,.rotr 9807 2,.rotr 9807 13,.bxor 9823 9824,.rotr 9807 22,.bxor 9825 9826,.band 9807 9780,.band 9807 9753,.bxor 9828 9829,.band 9780 9753,.bxor 9830 9831,.badd 9827 9832,.badd 9822 9833,.badd 9726 9822,.rotr 9835 6,.rotr 9835 11,.bxor 9836 9837,.rotr 9835 25,.bxor 9838 9839,.badd 9754 9840,.band 9835 9808,.bnot 9835,.band 9843 9781,.bxor 9842 9844]
theorem partExact151 : partRows151=WordField.rows actualModulus 9782 partOps151 := by
  simp only [partRows151,partOps151,WordField.rows,rows9782,rows9783,rows9784,rows9785,rows9786,rows9787,rows9788,rows9789,rows9790,rows9791,rows9792,rows9793,rows9794,rows9795,rows9796,rows9797,rows9798,rows9799,rows9800,rows9801,rows9802,rows9803,rows9804,rows9805,rows9806,rows9807,rows9808,rows9809,rows9810,rows9811,rows9812,rows9813,rows9814,rows9815,rows9816,rows9817,rows9818,rows9819,rows9820,rows9821,rows9822,rows9823,rows9824,rows9825,rows9826,rows9827,rows9828,rows9829,rows9830,rows9831,rows9832,rows9833,rows9834,rows9835,rows9836,rows9837,rows9838,rows9839,rows9840,rows9841,rows9842,rows9843,rows9844,rows9845,List.append_assoc,List.append_nil]
theorem partLength151 : partOps151.length=64 := by decide
theorem partStats151 : partRows151.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows151=371784 := by
  simp only [partRows151,List.length_append,MatrixRowBlocks.rows_weight_append,stats9782.1,stats9782.2,stats9783.1,stats9783.2,stats9784.1,stats9784.2,stats9785.1,stats9785.2,stats9786.1,stats9786.2,stats9787.1,stats9787.2,stats9788.1,stats9788.2,stats9789.1,stats9789.2,stats9790.1,stats9790.2,stats9791.1,stats9791.2,stats9792.1,stats9792.2,stats9793.1,stats9793.2,stats9794.1,stats9794.2,stats9795.1,stats9795.2,stats9796.1,stats9796.2,stats9797.1,stats9797.2,stats9798.1,stats9798.2,stats9799.1,stats9799.2,stats9800.1,stats9800.2,stats9801.1,stats9801.2,stats9802.1,stats9802.2,stats9803.1,stats9803.2,stats9804.1,stats9804.2,stats9805.1,stats9805.2,stats9806.1,stats9806.2,stats9807.1,stats9807.2,stats9808.1,stats9808.2,stats9809.1,stats9809.2,stats9810.1,stats9810.2,stats9811.1,stats9811.2,stats9812.1,stats9812.2,stats9813.1,stats9813.2,stats9814.1,stats9814.2,stats9815.1,stats9815.2,stats9816.1,stats9816.2,stats9817.1,stats9817.2,stats9818.1,stats9818.2,stats9819.1,stats9819.2,stats9820.1,stats9820.2,stats9821.1,stats9821.2,stats9822.1,stats9822.2,stats9823.1,stats9823.2,stats9824.1,stats9824.2,stats9825.1,stats9825.2,stats9826.1,stats9826.2,stats9827.1,stats9827.2,stats9828.1,stats9828.2,stats9829.1,stats9829.2,stats9830.1,stats9830.2,stats9831.1,stats9831.2,stats9832.1,stats9832.2,stats9833.1,stats9833.2,stats9834.1,stats9834.2,stats9835.1,stats9835.2,stats9836.1,stats9836.2,stats9837.1,stats9837.2,stats9838.1,stats9838.2,stats9839.1,stats9839.2,stats9840.1,stats9840.2,stats9841.1,stats9841.2,stats9842.1,stats9842.2,stats9843.1,stats9843.2,stats9844.1,stats9844.2,stats9845.1,stats9845.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
