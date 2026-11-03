import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData152
import PathRoundDispatchInstructionMatrixData153
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows9771 : actualRows9771=WordField.canonicalRows actualModulus 9771 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9771 : actualRows9771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9771=2892 := by core033_kernel_decide
theorem rows9772 : actualRows9772=WordField.canonicalRows actualModulus 9772 (.badd 9770 9771) := by core033_kernel_decide
theorem stats9772 : actualRows9772.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9772=5388 := by core033_kernel_decide
theorem rows9773 : actualRows9773=WordField.canonicalRows actualModulus 9773 (.band 9772 33) := by core033_kernel_decide
theorem stats9773 : actualRows9773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9773=5124 := by core033_kernel_decide
theorem rows9774 : actualRows9774=WordField.canonicalRows actualModulus 9774 (.bnot 9406) := by core033_kernel_decide
theorem stats9774 : actualRows9774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9774=6276 := by core033_kernel_decide
theorem rows9775 : actualRows9775=WordField.canonicalRows actualModulus 9775 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9775 : actualRows9775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9775=2892 := by core033_kernel_decide
theorem rows9776 : actualRows9776=WordField.canonicalRows actualModulus 9776 (.badd 9774 9775) := by core033_kernel_decide
theorem stats9776 : actualRows9776.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9776=5388 := by core033_kernel_decide
theorem rows9777 : actualRows9777=WordField.canonicalRows actualModulus 9777 (.bnot 9776) := by core033_kernel_decide
theorem stats9777 : actualRows9777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9777=6276 := by core033_kernel_decide
theorem rows9778 : actualRows9778=WordField.canonicalRows actualModulus 9778 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9778 : actualRows9778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9778=2820 := by core033_kernel_decide
theorem rows9779 : actualRows9779=WordField.canonicalRows actualModulus 9779 (.band 9777 9778) := by core033_kernel_decide
theorem stats9779 : actualRows9779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9779=5124 := by core033_kernel_decide
theorem rows9780 : actualRows9780=WordField.canonicalRows actualModulus 9780 (.bxor 9773 9779) := by core033_kernel_decide
theorem stats9780 : actualRows9780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9780=7428 := by core033_kernel_decide
theorem rows9781 : actualRows9781=WordField.canonicalRows actualModulus 9781 (.bnot 9406) := by core033_kernel_decide
theorem stats9781 : actualRows9781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9781=6276 := by core033_kernel_decide
theorem rows9782 : actualRows9782=WordField.canonicalRows actualModulus 9782 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9782 : actualRows9782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9782=2892 := by core033_kernel_decide
theorem rows9783 : actualRows9783=WordField.canonicalRows actualModulus 9783 (.badd 9781 9782) := by core033_kernel_decide
theorem stats9783 : actualRows9783.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9783=5388 := by core033_kernel_decide
theorem rows9784 : actualRows9784=WordField.canonicalRows actualModulus 9784 (.band 9783 34) := by core033_kernel_decide
theorem stats9784 : actualRows9784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9784=5124 := by core033_kernel_decide
theorem rows9785 : actualRows9785=WordField.canonicalRows actualModulus 9785 (.bnot 9406) := by core033_kernel_decide
theorem stats9785 : actualRows9785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9785=6276 := by core033_kernel_decide
theorem rows9786 : actualRows9786=WordField.canonicalRows actualModulus 9786 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9786 : actualRows9786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9786=2892 := by core033_kernel_decide
theorem rows9787 : actualRows9787=WordField.canonicalRows actualModulus 9787 (.badd 9785 9786) := by core033_kernel_decide
theorem stats9787 : actualRows9787.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9787=5388 := by core033_kernel_decide
theorem rows9788 : actualRows9788=WordField.canonicalRows actualModulus 9788 (.bnot 9787) := by core033_kernel_decide
theorem stats9788 : actualRows9788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9788=6276 := by core033_kernel_decide
theorem rows9789 : actualRows9789=WordField.canonicalRows actualModulus 9789 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9789 : actualRows9789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9789=2820 := by core033_kernel_decide
theorem rows9790 : actualRows9790=WordField.canonicalRows actualModulus 9790 (.band 9788 9789) := by core033_kernel_decide
theorem stats9790 : actualRows9790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9790=5124 := by core033_kernel_decide
theorem rows9791 : actualRows9791=WordField.canonicalRows actualModulus 9791 (.bxor 9784 9790) := by core033_kernel_decide
theorem stats9791 : actualRows9791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9791=7428 := by core033_kernel_decide
theorem rows9792 : actualRows9792=WordField.canonicalRows actualModulus 9792 (.bnot 9406) := by core033_kernel_decide
theorem stats9792 : actualRows9792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9792=6276 := by core033_kernel_decide
theorem rows9793 : actualRows9793=WordField.canonicalRows actualModulus 9793 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9793 : actualRows9793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9793=2892 := by core033_kernel_decide
theorem rows9794 : actualRows9794=WordField.canonicalRows actualModulus 9794 (.badd 9792 9793) := by core033_kernel_decide
theorem stats9794 : actualRows9794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9794=5388 := by core033_kernel_decide
theorem rows9795 : actualRows9795=WordField.canonicalRows actualModulus 9795 (.band 9794 35) := by core033_kernel_decide
theorem stats9795 : actualRows9795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9795=5124 := by core033_kernel_decide
theorem rows9796 : actualRows9796=WordField.canonicalRows actualModulus 9796 (.bnot 9406) := by core033_kernel_decide
theorem stats9796 : actualRows9796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9796=6276 := by core033_kernel_decide
theorem rows9797 : actualRows9797=WordField.canonicalRows actualModulus 9797 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9797 : actualRows9797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9797=2892 := by core033_kernel_decide
theorem rows9798 : actualRows9798=WordField.canonicalRows actualModulus 9798 (.badd 9796 9797) := by core033_kernel_decide
theorem stats9798 : actualRows9798.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9798=5388 := by core033_kernel_decide
theorem rows9799 : actualRows9799=WordField.canonicalRows actualModulus 9799 (.bnot 9798) := by core033_kernel_decide
theorem stats9799 : actualRows9799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9799=6276 := by core033_kernel_decide
theorem rows9800 : actualRows9800=WordField.canonicalRows actualModulus 9800 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9800 : actualRows9800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9800=2820 := by core033_kernel_decide
theorem rows9801 : actualRows9801=WordField.canonicalRows actualModulus 9801 (.band 9799 9800) := by core033_kernel_decide
theorem stats9801 : actualRows9801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9801=5124 := by core033_kernel_decide
theorem rows9802 : actualRows9802=WordField.canonicalRows actualModulus 9802 (.bxor 9795 9801) := by core033_kernel_decide
theorem stats9802 : actualRows9802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9802=7428 := by core033_kernel_decide
theorem rows9803 : actualRows9803=WordField.canonicalRows actualModulus 9803 (.bnot 9406) := by core033_kernel_decide
theorem stats9803 : actualRows9803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9803=6276 := by core033_kernel_decide
theorem rows9804 : actualRows9804=WordField.canonicalRows actualModulus 9804 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9804 : actualRows9804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9804=2892 := by core033_kernel_decide
theorem rows9805 : actualRows9805=WordField.canonicalRows actualModulus 9805 (.badd 9803 9804) := by core033_kernel_decide
theorem stats9805 : actualRows9805.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9805=5388 := by core033_kernel_decide
theorem rows9806 : actualRows9806=WordField.canonicalRows actualModulus 9806 (.band 9805 36) := by core033_kernel_decide
theorem stats9806 : actualRows9806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9806=5124 := by core033_kernel_decide
theorem rows9807 : actualRows9807=WordField.canonicalRows actualModulus 9807 (.bnot 9406) := by core033_kernel_decide
theorem stats9807 : actualRows9807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9807=6276 := by core033_kernel_decide
theorem rows9808 : actualRows9808=WordField.canonicalRows actualModulus 9808 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9808 : actualRows9808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9808=2892 := by core033_kernel_decide
theorem rows9809 : actualRows9809=WordField.canonicalRows actualModulus 9809 (.badd 9807 9808) := by core033_kernel_decide
theorem stats9809 : actualRows9809.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9809=5388 := by core033_kernel_decide
theorem rows9810 : actualRows9810=WordField.canonicalRows actualModulus 9810 (.bnot 9809) := by core033_kernel_decide
theorem stats9810 : actualRows9810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9810=6276 := by core033_kernel_decide
theorem rows9811 : actualRows9811=WordField.canonicalRows actualModulus 9811 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9811 : actualRows9811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9811=2820 := by core033_kernel_decide
theorem rows9812 : actualRows9812=WordField.canonicalRows actualModulus 9812 (.band 9810 9811) := by core033_kernel_decide
theorem stats9812 : actualRows9812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9812=5124 := by core033_kernel_decide
theorem rows9813 : actualRows9813=WordField.canonicalRows actualModulus 9813 (.bxor 9806 9812) := by core033_kernel_decide
theorem stats9813 : actualRows9813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9813=7428 := by core033_kernel_decide
theorem rows9814 : actualRows9814=WordField.canonicalRows actualModulus 9814 (.bnot 9406) := by core033_kernel_decide
theorem stats9814 : actualRows9814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9814=6276 := by core033_kernel_decide
theorem rows9815 : actualRows9815=WordField.canonicalRows actualModulus 9815 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9815 : actualRows9815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9815=2892 := by core033_kernel_decide
theorem rows9816 : actualRows9816=WordField.canonicalRows actualModulus 9816 (.badd 9814 9815) := by core033_kernel_decide
theorem stats9816 : actualRows9816.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9816=5388 := by core033_kernel_decide
theorem rows9817 : actualRows9817=WordField.canonicalRows actualModulus 9817 (.band 9816 37) := by core033_kernel_decide
theorem stats9817 : actualRows9817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9817=5124 := by core033_kernel_decide
theorem rows9818 : actualRows9818=WordField.canonicalRows actualModulus 9818 (.bnot 9406) := by core033_kernel_decide
theorem stats9818 : actualRows9818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9818=6276 := by core033_kernel_decide
theorem rows9819 : actualRows9819=WordField.canonicalRows actualModulus 9819 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9819 : actualRows9819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9819=2892 := by core033_kernel_decide
theorem rows9820 : actualRows9820=WordField.canonicalRows actualModulus 9820 (.badd 9818 9819) := by core033_kernel_decide
theorem stats9820 : actualRows9820.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9820=5388 := by core033_kernel_decide
theorem rows9821 : actualRows9821=WordField.canonicalRows actualModulus 9821 (.bnot 9820) := by core033_kernel_decide
theorem stats9821 : actualRows9821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9821=6276 := by core033_kernel_decide
theorem rows9822 : actualRows9822=WordField.canonicalRows actualModulus 9822 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9822 : actualRows9822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9822=2820 := by core033_kernel_decide
theorem rows9823 : actualRows9823=WordField.canonicalRows actualModulus 9823 (.band 9821 9822) := by core033_kernel_decide
theorem stats9823 : actualRows9823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9823=5124 := by core033_kernel_decide
theorem rows9824 : actualRows9824=WordField.canonicalRows actualModulus 9824 (.bxor 9817 9823) := by core033_kernel_decide
theorem stats9824 : actualRows9824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9824=7428 := by core033_kernel_decide
theorem rows9825 : actualRows9825=WordField.canonicalRows actualModulus 9825 (.bnot 9406) := by core033_kernel_decide
theorem stats9825 : actualRows9825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9825=6276 := by core033_kernel_decide
theorem rows9826 : actualRows9826=WordField.canonicalRows actualModulus 9826 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9826 : actualRows9826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9826=2892 := by core033_kernel_decide
theorem rows9827 : actualRows9827=WordField.canonicalRows actualModulus 9827 (.badd 9825 9826) := by core033_kernel_decide
theorem stats9827 : actualRows9827.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9827=5388 := by core033_kernel_decide
theorem rows9828 : actualRows9828=WordField.canonicalRows actualModulus 9828 (.band 9827 38) := by core033_kernel_decide
theorem stats9828 : actualRows9828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9828=5124 := by core033_kernel_decide
theorem rows9829 : actualRows9829=WordField.canonicalRows actualModulus 9829 (.bnot 9406) := by core033_kernel_decide
theorem stats9829 : actualRows9829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9829=6276 := by core033_kernel_decide
theorem rows9830 : actualRows9830=WordField.canonicalRows actualModulus 9830 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats9830 : actualRows9830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9830=2892 := by core033_kernel_decide
theorem rows9831 : actualRows9831=WordField.canonicalRows actualModulus 9831 (.badd 9829 9830) := by core033_kernel_decide
theorem stats9831 : actualRows9831.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9831=5388 := by core033_kernel_decide
theorem rows9832 : actualRows9832=WordField.canonicalRows actualModulus 9832 (.bnot 9831) := by core033_kernel_decide
theorem stats9832 : actualRows9832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9832=6276 := by core033_kernel_decide
theorem rows9833 : actualRows9833=WordField.canonicalRows actualModulus 9833 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats9833 : actualRows9833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9833=2820 := by core033_kernel_decide
theorem rows9834 : actualRows9834=WordField.canonicalRows actualModulus 9834 (.band 9832 9833) := by core033_kernel_decide
theorem stats9834 : actualRows9834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9834=5124 := by core033_kernel_decide
def partRows152 : List R1CS.Row := actualRows9771++actualRows9772++actualRows9773++actualRows9774++actualRows9775++actualRows9776++actualRows9777++actualRows9778++actualRows9779++actualRows9780++actualRows9781++actualRows9782++actualRows9783++actualRows9784++actualRows9785++actualRows9786++actualRows9787++actualRows9788++actualRows9789++actualRows9790++actualRows9791++actualRows9792++actualRows9793++actualRows9794++actualRows9795++actualRows9796++actualRows9797++actualRows9798++actualRows9799++actualRows9800++actualRows9801++actualRows9802++actualRows9803++actualRows9804++actualRows9805++actualRows9806++actualRows9807++actualRows9808++actualRows9809++actualRows9810++actualRows9811++actualRows9812++actualRows9813++actualRows9814++actualRows9815++actualRows9816++actualRows9817++actualRows9818++actualRows9819++actualRows9820++actualRows9821++actualRows9822++actualRows9823++actualRows9824++actualRows9825++actualRows9826++actualRows9827++actualRows9828++actualRows9829++actualRows9830++actualRows9831++actualRows9832++actualRows9833++actualRows9834
def partOps152 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 9770 9771,.band 9772 33,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9774 9775,.bnot 9776,.literal (BitVec.ofNat 32 0),.band 9777 9778,.bxor 9773 9779,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9781 9782,.band 9783 34,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9785 9786,.bnot 9787,.literal (BitVec.ofNat 32 0),.band 9788 9789,.bxor 9784 9790,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9792 9793,.band 9794 35,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9796 9797,.bnot 9798,.literal (BitVec.ofNat 32 0),.band 9799 9800,.bxor 9795 9801,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9803 9804,.band 9805 36,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9807 9808,.bnot 9809,.literal (BitVec.ofNat 32 0),.band 9810 9811,.bxor 9806 9812,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9814 9815,.band 9816 37,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9818 9819,.bnot 9820,.literal (BitVec.ofNat 32 0),.band 9821 9822,.bxor 9817 9823,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9825 9826,.band 9827 38,.bnot 9406,.literal (BitVec.ofNat 32 1),.badd 9829 9830,.bnot 9831,.literal (BitVec.ofNat 32 0),.band 9832 9833]
theorem partExact152 : partRows152=WordField.rows actualModulus 9771 partOps152 := by
  simp only [partRows152,partOps152,WordField.rows,rows9771,rows9772,rows9773,rows9774,rows9775,rows9776,rows9777,rows9778,rows9779,rows9780,rows9781,rows9782,rows9783,rows9784,rows9785,rows9786,rows9787,rows9788,rows9789,rows9790,rows9791,rows9792,rows9793,rows9794,rows9795,rows9796,rows9797,rows9798,rows9799,rows9800,rows9801,rows9802,rows9803,rows9804,rows9805,rows9806,rows9807,rows9808,rows9809,rows9810,rows9811,rows9812,rows9813,rows9814,rows9815,rows9816,rows9817,rows9818,rows9819,rows9820,rows9821,rows9822,rows9823,rows9824,rows9825,rows9826,rows9827,rows9828,rows9829,rows9830,rows9831,rows9832,rows9833,rows9834,List.append_assoc,List.append_nil]
theorem partLength152 : partOps152.length=64 := by decide
theorem partStats152 : partRows152.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows152=321600 := by
  simp only [partRows152,List.length_append,MatrixRowBlocks.rows_weight_append,stats9771.1,stats9771.2,stats9772.1,stats9772.2,stats9773.1,stats9773.2,stats9774.1,stats9774.2,stats9775.1,stats9775.2,stats9776.1,stats9776.2,stats9777.1,stats9777.2,stats9778.1,stats9778.2,stats9779.1,stats9779.2,stats9780.1,stats9780.2,stats9781.1,stats9781.2,stats9782.1,stats9782.2,stats9783.1,stats9783.2,stats9784.1,stats9784.2,stats9785.1,stats9785.2,stats9786.1,stats9786.2,stats9787.1,stats9787.2,stats9788.1,stats9788.2,stats9789.1,stats9789.2,stats9790.1,stats9790.2,stats9791.1,stats9791.2,stats9792.1,stats9792.2,stats9793.1,stats9793.2,stats9794.1,stats9794.2,stats9795.1,stats9795.2,stats9796.1,stats9796.2,stats9797.1,stats9797.2,stats9798.1,stats9798.2,stats9799.1,stats9799.2,stats9800.1,stats9800.2,stats9801.1,stats9801.2,stats9802.1,stats9802.2,stats9803.1,stats9803.2,stats9804.1,stats9804.2,stats9805.1,stats9805.2,stats9806.1,stats9806.2,stats9807.1,stats9807.2,stats9808.1,stats9808.2,stats9809.1,stats9809.2,stats9810.1,stats9810.2,stats9811.1,stats9811.2,stats9812.1,stats9812.2,stats9813.1,stats9813.2,stats9814.1,stats9814.2,stats9815.1,stats9815.2,stats9816.1,stats9816.2,stats9817.1,stats9817.2,stats9818.1,stats9818.2,stats9819.1,stats9819.2,stats9820.1,stats9820.2,stats9821.1,stats9821.2,stats9822.1,stats9822.2,stats9823.1,stats9823.2,stats9824.1,stats9824.2,stats9825.1,stats9825.2,stats9826.1,stats9826.2,stats9827.1,stats9827.2,stats9828.1,stats9828.2,stats9829.1,stats9829.2,stats9830.1,stats9830.2,stats9831.1,stats9831.2,stats9832.1,stats9832.2,stats9833.1,stats9833.2,stats9834.1,stats9834.2]
  decide
end PathRoundDispatchCheckedRows
