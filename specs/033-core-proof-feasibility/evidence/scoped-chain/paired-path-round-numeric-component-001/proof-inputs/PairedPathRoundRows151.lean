import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData152
import PairedPathRoundInstructionMatrixData153
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9760 : actualRows9760=WordField.canonicalRows actualModulus 9760 (.badd 9759 8059) := by core033_kernel_decide
theorem stats9760 : actualRows9760.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9760=5388 := by core033_kernel_decide
theorem rows9761 : actualRows9761=WordField.canonicalRows actualModulus 9761 (.rotr 9745 2) := by core033_kernel_decide
theorem stats9761 : actualRows9761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9761=5124 := by core033_kernel_decide
theorem rows9762 : actualRows9762=WordField.canonicalRows actualModulus 9762 (.rotr 9745 13) := by core033_kernel_decide
theorem stats9762 : actualRows9762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9762=5124 := by core033_kernel_decide
theorem rows9763 : actualRows9763=WordField.canonicalRows actualModulus 9763 (.bxor 9761 9762) := by core033_kernel_decide
theorem stats9763 : actualRows9763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9763=7428 := by core033_kernel_decide
theorem rows9764 : actualRows9764=WordField.canonicalRows actualModulus 9764 (.rotr 9745 22) := by core033_kernel_decide
theorem stats9764 : actualRows9764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9764=5124 := by core033_kernel_decide
theorem rows9765 : actualRows9765=WordField.canonicalRows actualModulus 9765 (.bxor 9763 9764) := by core033_kernel_decide
theorem stats9765 : actualRows9765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9765=7428 := by core033_kernel_decide
theorem rows9766 : actualRows9766=WordField.canonicalRows actualModulus 9766 (.band 9745 9718) := by core033_kernel_decide
theorem stats9766 : actualRows9766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9766=5124 := by core033_kernel_decide
theorem rows9767 : actualRows9767=WordField.canonicalRows actualModulus 9767 (.band 9745 9691) := by core033_kernel_decide
theorem stats9767 : actualRows9767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9767=5124 := by core033_kernel_decide
theorem rows9768 : actualRows9768=WordField.canonicalRows actualModulus 9768 (.bxor 9766 9767) := by core033_kernel_decide
theorem stats9768 : actualRows9768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9768=7428 := by core033_kernel_decide
theorem rows9769 : actualRows9769=WordField.canonicalRows actualModulus 9769 (.band 9718 9691) := by core033_kernel_decide
theorem stats9769 : actualRows9769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9769=5124 := by core033_kernel_decide
theorem rows9770 : actualRows9770=WordField.canonicalRows actualModulus 9770 (.bxor 9768 9769) := by core033_kernel_decide
theorem stats9770 : actualRows9770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9770=7428 := by core033_kernel_decide
theorem rows9771 : actualRows9771=WordField.canonicalRows actualModulus 9771 (.badd 9765 9770) := by core033_kernel_decide
theorem stats9771 : actualRows9771.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9771=5388 := by core033_kernel_decide
theorem rows9772 : actualRows9772=WordField.canonicalRows actualModulus 9772 (.badd 9760 9771) := by core033_kernel_decide
theorem stats9772 : actualRows9772.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9772=5388 := by core033_kernel_decide
theorem rows9773 : actualRows9773=WordField.canonicalRows actualModulus 9773 (.badd 9664 9760) := by core033_kernel_decide
theorem stats9773 : actualRows9773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9773=5388 := by core033_kernel_decide
theorem rows9774 : actualRows9774=WordField.canonicalRows actualModulus 9774 (.rotr 9773 6) := by core033_kernel_decide
theorem stats9774 : actualRows9774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9774=5124 := by core033_kernel_decide
theorem rows9775 : actualRows9775=WordField.canonicalRows actualModulus 9775 (.rotr 9773 11) := by core033_kernel_decide
theorem stats9775 : actualRows9775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9775=5124 := by core033_kernel_decide
theorem rows9776 : actualRows9776=WordField.canonicalRows actualModulus 9776 (.bxor 9774 9775) := by core033_kernel_decide
theorem stats9776 : actualRows9776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9776=7428 := by core033_kernel_decide
theorem rows9777 : actualRows9777=WordField.canonicalRows actualModulus 9777 (.rotr 9773 25) := by core033_kernel_decide
theorem stats9777 : actualRows9777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9777=5124 := by core033_kernel_decide
theorem rows9778 : actualRows9778=WordField.canonicalRows actualModulus 9778 (.bxor 9776 9777) := by core033_kernel_decide
theorem stats9778 : actualRows9778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9778=7428 := by core033_kernel_decide
theorem rows9779 : actualRows9779=WordField.canonicalRows actualModulus 9779 (.badd 9692 9778) := by core033_kernel_decide
theorem stats9779 : actualRows9779.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9779=5388 := by core033_kernel_decide
theorem rows9780 : actualRows9780=WordField.canonicalRows actualModulus 9780 (.band 9773 9746) := by core033_kernel_decide
theorem stats9780 : actualRows9780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9780=5124 := by core033_kernel_decide
theorem rows9781 : actualRows9781=WordField.canonicalRows actualModulus 9781 (.bnot 9773) := by core033_kernel_decide
theorem stats9781 : actualRows9781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9781=6276 := by core033_kernel_decide
theorem rows9782 : actualRows9782=WordField.canonicalRows actualModulus 9782 (.band 9781 9719) := by core033_kernel_decide
theorem stats9782 : actualRows9782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9782=5124 := by core033_kernel_decide
theorem rows9783 : actualRows9783=WordField.canonicalRows actualModulus 9783 (.bxor 9780 9782) := by core033_kernel_decide
theorem stats9783 : actualRows9783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9783=7428 := by core033_kernel_decide
theorem rows9784 : actualRows9784=WordField.canonicalRows actualModulus 9784 (.badd 9779 9783) := by core033_kernel_decide
theorem stats9784 : actualRows9784.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9784=5388 := by core033_kernel_decide
theorem rows9785 : actualRows9785=WordField.canonicalRows actualModulus 9785 (.literal (BitVec.ofNat 32 3329325298)) := by core033_kernel_decide
theorem stats9785 : actualRows9785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9785=4044 := by core033_kernel_decide
theorem rows9786 : actualRows9786=WordField.canonicalRows actualModulus 9786 (.badd 9784 9785) := by core033_kernel_decide
theorem stats9786 : actualRows9786.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9786=5388 := by core033_kernel_decide
theorem rows9787 : actualRows9787=WordField.canonicalRows actualModulus 9787 (.badd 9786 8072) := by core033_kernel_decide
theorem stats9787 : actualRows9787.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9787=5388 := by core033_kernel_decide
theorem rows9788 : actualRows9788=WordField.canonicalRows actualModulus 9788 (.rotr 9772 2) := by core033_kernel_decide
theorem stats9788 : actualRows9788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9788=5124 := by core033_kernel_decide
theorem rows9789 : actualRows9789=WordField.canonicalRows actualModulus 9789 (.rotr 9772 13) := by core033_kernel_decide
theorem stats9789 : actualRows9789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9789=5124 := by core033_kernel_decide
theorem rows9790 : actualRows9790=WordField.canonicalRows actualModulus 9790 (.bxor 9788 9789) := by core033_kernel_decide
theorem stats9790 : actualRows9790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9790=7428 := by core033_kernel_decide
theorem rows9791 : actualRows9791=WordField.canonicalRows actualModulus 9791 (.rotr 9772 22) := by core033_kernel_decide
theorem stats9791 : actualRows9791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9791=5124 := by core033_kernel_decide
theorem rows9792 : actualRows9792=WordField.canonicalRows actualModulus 9792 (.bxor 9790 9791) := by core033_kernel_decide
theorem stats9792 : actualRows9792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9792=7428 := by core033_kernel_decide
theorem rows9793 : actualRows9793=WordField.canonicalRows actualModulus 9793 (.band 9772 9745) := by core033_kernel_decide
theorem stats9793 : actualRows9793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9793=5124 := by core033_kernel_decide
theorem rows9794 : actualRows9794=WordField.canonicalRows actualModulus 9794 (.band 9772 9718) := by core033_kernel_decide
theorem stats9794 : actualRows9794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9794=5124 := by core033_kernel_decide
theorem rows9795 : actualRows9795=WordField.canonicalRows actualModulus 9795 (.bxor 9793 9794) := by core033_kernel_decide
theorem stats9795 : actualRows9795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9795=7428 := by core033_kernel_decide
theorem rows9796 : actualRows9796=WordField.canonicalRows actualModulus 9796 (.band 9745 9718) := by core033_kernel_decide
theorem stats9796 : actualRows9796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9796=5124 := by core033_kernel_decide
theorem rows9797 : actualRows9797=WordField.canonicalRows actualModulus 9797 (.bxor 9795 9796) := by core033_kernel_decide
theorem stats9797 : actualRows9797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9797=7428 := by core033_kernel_decide
theorem rows9798 : actualRows9798=WordField.canonicalRows actualModulus 9798 (.badd 9792 9797) := by core033_kernel_decide
theorem stats9798 : actualRows9798.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9798=5388 := by core033_kernel_decide
theorem rows9799 : actualRows9799=WordField.canonicalRows actualModulus 9799 (.badd 9787 9798) := by core033_kernel_decide
theorem stats9799 : actualRows9799.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9799=5388 := by core033_kernel_decide
theorem rows9800 : actualRows9800=WordField.canonicalRows actualModulus 9800 (.badd 9691 9787) := by core033_kernel_decide
theorem stats9800 : actualRows9800.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9800=5388 := by core033_kernel_decide
theorem rows9801 : actualRows9801=WordField.canonicalRows actualModulus 9801 (.badd 2488 9799) := by core033_kernel_decide
theorem stats9801 : actualRows9801.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9801=5388 := by core033_kernel_decide
theorem rows9802 : actualRows9802=WordField.canonicalRows actualModulus 9802 (.badd 2541 9772) := by core033_kernel_decide
theorem stats9802 : actualRows9802.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9802=5388 := by core033_kernel_decide
theorem rows9803 : actualRows9803=WordField.canonicalRows actualModulus 9803 (.badd 2594 9745) := by core033_kernel_decide
theorem stats9803 : actualRows9803.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9803=5388 := by core033_kernel_decide
theorem rows9804 : actualRows9804=WordField.canonicalRows actualModulus 9804 (.badd 2647 9718) := by core033_kernel_decide
theorem stats9804 : actualRows9804.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9804=5388 := by core033_kernel_decide
theorem rows9805 : actualRows9805=WordField.canonicalRows actualModulus 9805 (.badd 2700 9800) := by core033_kernel_decide
theorem stats9805 : actualRows9805.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9805=5388 := by core033_kernel_decide
theorem rows9806 : actualRows9806=WordField.canonicalRows actualModulus 9806 (.badd 2753 9773) := by core033_kernel_decide
theorem stats9806 : actualRows9806.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9806=5388 := by core033_kernel_decide
theorem rows9807 : actualRows9807=WordField.canonicalRows actualModulus 9807 (.badd 2806 9746) := by core033_kernel_decide
theorem stats9807 : actualRows9807.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9807=5388 := by core033_kernel_decide
theorem rows9808 : actualRows9808=WordField.canonicalRows actualModulus 9808 (.badd 2859 9719) := by core033_kernel_decide
theorem stats9808 : actualRows9808.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9808=5388 := by core033_kernel_decide
theorem rows9809 : actualRows9809=WordField.canonicalRows actualModulus 9809 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9809 : actualRows9809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9809=2892 := by core033_kernel_decide
theorem rows9810 : actualRows9810=WordField.canonicalRows actualModulus 9810 (.bxor 616 9809) := by core033_kernel_decide
theorem stats9810 : actualRows9810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9810=7428 := by core033_kernel_decide
theorem rows9811 : actualRows9811=WordField.canonicalRows actualModulus 9811 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9811 : actualRows9811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9811=2820 := by core033_kernel_decide
theorem rows9812 : actualRows9812=WordField.canonicalRows actualModulus 9812 (.bnot 9811) := by core033_kernel_decide
theorem stats9812 : actualRows9812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9812=6276 := by core033_kernel_decide
theorem rows9813 : actualRows9813=WordField.canonicalRows actualModulus 9813 (.band 9810 9812) := by core033_kernel_decide
theorem stats9813 : actualRows9813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9813=5124 := by core033_kernel_decide
theorem rows9814 : actualRows9814=WordField.canonicalRows actualModulus 9814 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9814 : actualRows9814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9814=2892 := by core033_kernel_decide
theorem rows9815 : actualRows9815=WordField.canonicalRows actualModulus 9815 (.bxor 616 9814) := by core033_kernel_decide
theorem stats9815 : actualRows9815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9815=7428 := by core033_kernel_decide
theorem rows9816 : actualRows9816=WordField.canonicalRows actualModulus 9816 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9816 : actualRows9816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9816=2820 := by core033_kernel_decide
theorem rows9817 : actualRows9817=WordField.canonicalRows actualModulus 9817 (.bnot 9816) := by core033_kernel_decide
theorem stats9817 : actualRows9817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9817=6276 := by core033_kernel_decide
theorem rows9818 : actualRows9818=WordField.canonicalRows actualModulus 9818 (.bxor 9815 9817) := by core033_kernel_decide
theorem stats9818 : actualRows9818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9818=7428 := by core033_kernel_decide
theorem rows9819 : actualRows9819=WordField.canonicalRows actualModulus 9819 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats9819 : actualRows9819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9819=2892 := by core033_kernel_decide
theorem rows9820 : actualRows9820=WordField.canonicalRows actualModulus 9820 (.bxor 616 9819) := by core033_kernel_decide
theorem stats9820 : actualRows9820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9820=7428 := by core033_kernel_decide
theorem rows9821 : actualRows9821=WordField.canonicalRows actualModulus 9821 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9821 : actualRows9821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9821=2820 := by core033_kernel_decide
theorem rows9822 : actualRows9822=WordField.canonicalRows actualModulus 9822 (.bnot 9821) := by core033_kernel_decide
theorem stats9822 : actualRows9822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9822=6276 := by core033_kernel_decide
theorem rows9823 : actualRows9823=WordField.canonicalRows actualModulus 9823 (.badd 9820 9822) := by core033_kernel_decide
theorem stats9823 : actualRows9823.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9823=5388 := by core033_kernel_decide
def partRows151 : List R1CS.Row := actualRows9760++actualRows9761++actualRows9762++actualRows9763++actualRows9764++actualRows9765++actualRows9766++actualRows9767++actualRows9768++actualRows9769++actualRows9770++actualRows9771++actualRows9772++actualRows9773++actualRows9774++actualRows9775++actualRows9776++actualRows9777++actualRows9778++actualRows9779++actualRows9780++actualRows9781++actualRows9782++actualRows9783++actualRows9784++actualRows9785++actualRows9786++actualRows9787++actualRows9788++actualRows9789++actualRows9790++actualRows9791++actualRows9792++actualRows9793++actualRows9794++actualRows9795++actualRows9796++actualRows9797++actualRows9798++actualRows9799++actualRows9800++actualRows9801++actualRows9802++actualRows9803++actualRows9804++actualRows9805++actualRows9806++actualRows9807++actualRows9808++actualRows9809++actualRows9810++actualRows9811++actualRows9812++actualRows9813++actualRows9814++actualRows9815++actualRows9816++actualRows9817++actualRows9818++actualRows9819++actualRows9820++actualRows9821++actualRows9822++actualRows9823
def partOps151 : List WordIR.Op := [.badd 9759 8059,.rotr 9745 2,.rotr 9745 13,.bxor 9761 9762,.rotr 9745 22,.bxor 9763 9764,.band 9745 9718,.band 9745 9691,.bxor 9766 9767,.band 9718 9691,.bxor 9768 9769,.badd 9765 9770,.badd 9760 9771,.badd 9664 9760,.rotr 9773 6,.rotr 9773 11,.bxor 9774 9775,.rotr 9773 25,.bxor 9776 9777,.badd 9692 9778,.band 9773 9746,.bnot 9773,.band 9781 9719,.bxor 9780 9782,.badd 9779 9783,.literal (BitVec.ofNat 32 3329325298),.badd 9784 9785,.badd 9786 8072,.rotr 9772 2,.rotr 9772 13,.bxor 9788 9789,.rotr 9772 22,.bxor 9790 9791,.band 9772 9745,.band 9772 9718,.bxor 9793 9794,.band 9745 9718,.bxor 9795 9796,.badd 9792 9797,.badd 9787 9798,.badd 9691 9787,.badd 2488 9799,.badd 2541 9772,.badd 2594 9745,.badd 2647 9718,.badd 2700 9800,.badd 2753 9773,.badd 2806 9746,.badd 2859 9719,.literal (BitVec.ofNat 32 2),.bxor 616 9809,.literal (BitVec.ofNat 32 0),.bnot 9811,.band 9810 9812,.literal (BitVec.ofNat 32 2),.bxor 616 9814,.literal (BitVec.ofNat 32 0),.bnot 9816,.bxor 9815 9817,.literal (BitVec.ofNat 32 2),.bxor 616 9819,.literal (BitVec.ofNat 32 0),.bnot 9821,.badd 9820 9822]
theorem partExact151 : partRows151=WordField.rows actualModulus 9760 partOps151 := by
  simp only [partRows151,partOps151,WordField.rows,rows9760,rows9761,rows9762,rows9763,rows9764,rows9765,rows9766,rows9767,rows9768,rows9769,rows9770,rows9771,rows9772,rows9773,rows9774,rows9775,rows9776,rows9777,rows9778,rows9779,rows9780,rows9781,rows9782,rows9783,rows9784,rows9785,rows9786,rows9787,rows9788,rows9789,rows9790,rows9791,rows9792,rows9793,rows9794,rows9795,rows9796,rows9797,rows9798,rows9799,rows9800,rows9801,rows9802,rows9803,rows9804,rows9805,rows9806,rows9807,rows9808,rows9809,rows9810,rows9811,rows9812,rows9813,rows9814,rows9815,rows9816,rows9817,rows9818,rows9819,rows9820,rows9821,rows9822,rows9823,List.append_assoc,List.append_nil]
theorem partLength151 : partOps151.length=64 := by decide
theorem partStats151 : partRows151.length=2196 ∧ MatrixRowBlocks.rowsWeight partRows151=357696 := by
  simp only [partRows151,List.length_append,MatrixRowBlocks.rows_weight_append,stats9760.1,stats9760.2,stats9761.1,stats9761.2,stats9762.1,stats9762.2,stats9763.1,stats9763.2,stats9764.1,stats9764.2,stats9765.1,stats9765.2,stats9766.1,stats9766.2,stats9767.1,stats9767.2,stats9768.1,stats9768.2,stats9769.1,stats9769.2,stats9770.1,stats9770.2,stats9771.1,stats9771.2,stats9772.1,stats9772.2,stats9773.1,stats9773.2,stats9774.1,stats9774.2,stats9775.1,stats9775.2,stats9776.1,stats9776.2,stats9777.1,stats9777.2,stats9778.1,stats9778.2,stats9779.1,stats9779.2,stats9780.1,stats9780.2,stats9781.1,stats9781.2,stats9782.1,stats9782.2,stats9783.1,stats9783.2,stats9784.1,stats9784.2,stats9785.1,stats9785.2,stats9786.1,stats9786.2,stats9787.1,stats9787.2,stats9788.1,stats9788.2,stats9789.1,stats9789.2,stats9790.1,stats9790.2,stats9791.1,stats9791.2,stats9792.1,stats9792.2,stats9793.1,stats9793.2,stats9794.1,stats9794.2,stats9795.1,stats9795.2,stats9796.1,stats9796.2,stats9797.1,stats9797.2,stats9798.1,stats9798.2,stats9799.1,stats9799.2,stats9800.1,stats9800.2,stats9801.1,stats9801.2,stats9802.1,stats9802.2,stats9803.1,stats9803.2,stats9804.1,stats9804.2,stats9805.1,stats9805.2,stats9806.1,stats9806.2,stats9807.1,stats9807.2,stats9808.1,stats9808.2,stats9809.1,stats9809.2,stats9810.1,stats9810.2,stats9811.1,stats9811.2,stats9812.1,stats9812.2,stats9813.1,stats9813.2,stats9814.1,stats9814.2,stats9815.1,stats9815.2,stats9816.1,stats9816.2,stats9817.1,stats9817.2,stats9818.1,stats9818.2,stats9819.1,stats9819.2,stats9820.1,stats9820.2,stats9821.1,stats9821.2,stats9822.1,stats9822.2,stats9823.1,stats9823.2]
  decide
end PairedPathRoundCheckedRows
