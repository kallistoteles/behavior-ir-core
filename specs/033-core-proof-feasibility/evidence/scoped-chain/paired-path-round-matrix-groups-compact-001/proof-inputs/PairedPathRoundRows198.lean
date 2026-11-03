import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData199
import PairedPathRoundInstructionMatrixData200
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12768 : actualRows12768=WordField.canonicalRows actualModulus 12768 (.bnot 12767) := by core033_kernel_decide
theorem stats12768 : actualRows12768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12768=6276 := by core033_kernel_decide
theorem rows12769 : actualRows12769=WordField.canonicalRows actualModulus 12769 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12769 : actualRows12769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12769=2892 := by core033_kernel_decide
theorem rows12770 : actualRows12770=WordField.canonicalRows actualModulus 12770 (.badd 12768 12769) := by core033_kernel_decide
theorem stats12770 : actualRows12770.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12770=5388 := by core033_kernel_decide
theorem rows12771 : actualRows12771=WordField.canonicalRows actualModulus 12771 (.bnot 12770) := by core033_kernel_decide
theorem stats12771 : actualRows12771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12771=6276 := by core033_kernel_decide
theorem rows12772 : actualRows12772=WordField.canonicalRows actualModulus 12772 (.band 12771 9804) := by core033_kernel_decide
theorem stats12772 : actualRows12772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12772=5124 := by core033_kernel_decide
theorem rows12773 : actualRows12773=WordField.canonicalRows actualModulus 12773 (.bxor 12746 12772) := by core033_kernel_decide
theorem stats12773 : actualRows12773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12773=7428 := by core033_kernel_decide
theorem rows12774 : actualRows12774=WordField.canonicalRows actualModulus 12774 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12774 : actualRows12774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12774=2964 := by core033_kernel_decide
theorem rows12775 : actualRows12775=WordField.canonicalRows actualModulus 12775 (.bxor 442 12774) := by core033_kernel_decide
theorem stats12775 : actualRows12775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12775=7428 := by core033_kernel_decide
theorem rows12776 : actualRows12776=WordField.canonicalRows actualModulus 12776 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12776 : actualRows12776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12776=2820 := by core033_kernel_decide
theorem rows12777 : actualRows12777=WordField.canonicalRows actualModulus 12777 (.bnot 12776) := by core033_kernel_decide
theorem stats12777 : actualRows12777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12777=6276 := by core033_kernel_decide
theorem rows12778 : actualRows12778=WordField.canonicalRows actualModulus 12778 (.band 12775 12777) := by core033_kernel_decide
theorem stats12778 : actualRows12778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12778=5124 := by core033_kernel_decide
theorem rows12779 : actualRows12779=WordField.canonicalRows actualModulus 12779 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12779 : actualRows12779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12779=2964 := by core033_kernel_decide
theorem rows12780 : actualRows12780=WordField.canonicalRows actualModulus 12780 (.bxor 442 12779) := by core033_kernel_decide
theorem stats12780 : actualRows12780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12780=7428 := by core033_kernel_decide
theorem rows12781 : actualRows12781=WordField.canonicalRows actualModulus 12781 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12781 : actualRows12781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12781=2820 := by core033_kernel_decide
theorem rows12782 : actualRows12782=WordField.canonicalRows actualModulus 12782 (.bnot 12781) := by core033_kernel_decide
theorem stats12782 : actualRows12782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12782=6276 := by core033_kernel_decide
theorem rows12783 : actualRows12783=WordField.canonicalRows actualModulus 12783 (.bxor 12780 12782) := by core033_kernel_decide
theorem stats12783 : actualRows12783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12783=7428 := by core033_kernel_decide
theorem rows12784 : actualRows12784=WordField.canonicalRows actualModulus 12784 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12784 : actualRows12784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12784=2964 := by core033_kernel_decide
theorem rows12785 : actualRows12785=WordField.canonicalRows actualModulus 12785 (.bxor 442 12784) := by core033_kernel_decide
theorem stats12785 : actualRows12785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12785=7428 := by core033_kernel_decide
theorem rows12786 : actualRows12786=WordField.canonicalRows actualModulus 12786 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12786 : actualRows12786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12786=2820 := by core033_kernel_decide
theorem rows12787 : actualRows12787=WordField.canonicalRows actualModulus 12787 (.bnot 12786) := by core033_kernel_decide
theorem stats12787 : actualRows12787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12787=6276 := by core033_kernel_decide
theorem rows12788 : actualRows12788=WordField.canonicalRows actualModulus 12788 (.badd 12785 12787) := by core033_kernel_decide
theorem stats12788 : actualRows12788.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12788=5388 := by core033_kernel_decide
theorem rows12789 : actualRows12789=WordField.canonicalRows actualModulus 12789 (.bnot 12788) := by core033_kernel_decide
theorem stats12789 : actualRows12789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12789=6276 := by core033_kernel_decide
theorem rows12790 : actualRows12790=WordField.canonicalRows actualModulus 12790 (.band 12783 12789) := by core033_kernel_decide
theorem stats12790 : actualRows12790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12790=5124 := by core033_kernel_decide
theorem rows12791 : actualRows12791=WordField.canonicalRows actualModulus 12791 (.bxor 12778 12790) := by core033_kernel_decide
theorem stats12791 : actualRows12791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12791=7428 := by core033_kernel_decide
theorem rows12792 : actualRows12792=WordField.canonicalRows actualModulus 12792 (.shr 12791 31) := by core033_kernel_decide
theorem stats12792 : actualRows12792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12792=2892 := by core033_kernel_decide
theorem rows12793 : actualRows12793=WordField.canonicalRows actualModulus 12793 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12793 : actualRows12793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12793=2892 := by core033_kernel_decide
theorem rows12794 : actualRows12794=WordField.canonicalRows actualModulus 12794 (.bxor 12792 12793) := by core033_kernel_decide
theorem stats12794 : actualRows12794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12794=7428 := by core033_kernel_decide
theorem rows12795 : actualRows12795=WordField.canonicalRows actualModulus 12795 (.bnot 12794) := by core033_kernel_decide
theorem stats12795 : actualRows12795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12795=6276 := by core033_kernel_decide
theorem rows12796 : actualRows12796=WordField.canonicalRows actualModulus 12796 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12796 : actualRows12796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12796=2892 := by core033_kernel_decide
theorem rows12797 : actualRows12797=WordField.canonicalRows actualModulus 12797 (.badd 12795 12796) := by core033_kernel_decide
theorem stats12797 : actualRows12797.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12797=5388 := by core033_kernel_decide
theorem rows12798 : actualRows12798=WordField.canonicalRows actualModulus 12798 (.band 12797 10366) := by core033_kernel_decide
theorem stats12798 : actualRows12798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12798=5124 := by core033_kernel_decide
theorem rows12799 : actualRows12799=WordField.canonicalRows actualModulus 12799 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12799 : actualRows12799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12799=2964 := by core033_kernel_decide
theorem rows12800 : actualRows12800=WordField.canonicalRows actualModulus 12800 (.bxor 442 12799) := by core033_kernel_decide
theorem stats12800 : actualRows12800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12800=7428 := by core033_kernel_decide
theorem rows12801 : actualRows12801=WordField.canonicalRows actualModulus 12801 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12801 : actualRows12801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12801=2820 := by core033_kernel_decide
theorem rows12802 : actualRows12802=WordField.canonicalRows actualModulus 12802 (.bnot 12801) := by core033_kernel_decide
theorem stats12802 : actualRows12802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12802=6276 := by core033_kernel_decide
theorem rows12803 : actualRows12803=WordField.canonicalRows actualModulus 12803 (.band 12800 12802) := by core033_kernel_decide
theorem stats12803 : actualRows12803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12803=5124 := by core033_kernel_decide
theorem rows12804 : actualRows12804=WordField.canonicalRows actualModulus 12804 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12804 : actualRows12804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12804=2964 := by core033_kernel_decide
theorem rows12805 : actualRows12805=WordField.canonicalRows actualModulus 12805 (.bxor 442 12804) := by core033_kernel_decide
theorem stats12805 : actualRows12805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12805=7428 := by core033_kernel_decide
theorem rows12806 : actualRows12806=WordField.canonicalRows actualModulus 12806 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12806 : actualRows12806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12806=2820 := by core033_kernel_decide
theorem rows12807 : actualRows12807=WordField.canonicalRows actualModulus 12807 (.bnot 12806) := by core033_kernel_decide
theorem stats12807 : actualRows12807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12807=6276 := by core033_kernel_decide
theorem rows12808 : actualRows12808=WordField.canonicalRows actualModulus 12808 (.bxor 12805 12807) := by core033_kernel_decide
theorem stats12808 : actualRows12808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12808=7428 := by core033_kernel_decide
theorem rows12809 : actualRows12809=WordField.canonicalRows actualModulus 12809 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12809 : actualRows12809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12809=2964 := by core033_kernel_decide
theorem rows12810 : actualRows12810=WordField.canonicalRows actualModulus 12810 (.bxor 442 12809) := by core033_kernel_decide
theorem stats12810 : actualRows12810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12810=7428 := by core033_kernel_decide
theorem rows12811 : actualRows12811=WordField.canonicalRows actualModulus 12811 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12811 : actualRows12811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12811=2820 := by core033_kernel_decide
theorem rows12812 : actualRows12812=WordField.canonicalRows actualModulus 12812 (.bnot 12811) := by core033_kernel_decide
theorem stats12812 : actualRows12812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12812=6276 := by core033_kernel_decide
theorem rows12813 : actualRows12813=WordField.canonicalRows actualModulus 12813 (.badd 12810 12812) := by core033_kernel_decide
theorem stats12813 : actualRows12813.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12813=5388 := by core033_kernel_decide
theorem rows12814 : actualRows12814=WordField.canonicalRows actualModulus 12814 (.bnot 12813) := by core033_kernel_decide
theorem stats12814 : actualRows12814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12814=6276 := by core033_kernel_decide
theorem rows12815 : actualRows12815=WordField.canonicalRows actualModulus 12815 (.band 12808 12814) := by core033_kernel_decide
theorem stats12815 : actualRows12815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12815=5124 := by core033_kernel_decide
theorem rows12816 : actualRows12816=WordField.canonicalRows actualModulus 12816 (.bxor 12803 12815) := by core033_kernel_decide
theorem stats12816 : actualRows12816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12816=7428 := by core033_kernel_decide
theorem rows12817 : actualRows12817=WordField.canonicalRows actualModulus 12817 (.shr 12816 31) := by core033_kernel_decide
theorem stats12817 : actualRows12817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12817=2892 := by core033_kernel_decide
theorem rows12818 : actualRows12818=WordField.canonicalRows actualModulus 12818 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12818 : actualRows12818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12818=2892 := by core033_kernel_decide
theorem rows12819 : actualRows12819=WordField.canonicalRows actualModulus 12819 (.bxor 12817 12818) := by core033_kernel_decide
theorem stats12819 : actualRows12819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12819=7428 := by core033_kernel_decide
theorem rows12820 : actualRows12820=WordField.canonicalRows actualModulus 12820 (.bnot 12819) := by core033_kernel_decide
theorem stats12820 : actualRows12820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12820=6276 := by core033_kernel_decide
theorem rows12821 : actualRows12821=WordField.canonicalRows actualModulus 12821 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12821 : actualRows12821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12821=2892 := by core033_kernel_decide
theorem rows12822 : actualRows12822=WordField.canonicalRows actualModulus 12822 (.badd 12820 12821) := by core033_kernel_decide
theorem stats12822 : actualRows12822.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12822=5388 := by core033_kernel_decide
theorem rows12823 : actualRows12823=WordField.canonicalRows actualModulus 12823 (.bnot 12822) := by core033_kernel_decide
theorem stats12823 : actualRows12823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12823=6276 := by core033_kernel_decide
theorem rows12824 : actualRows12824=WordField.canonicalRows actualModulus 12824 (.band 12823 9805) := by core033_kernel_decide
theorem stats12824 : actualRows12824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12824=5124 := by core033_kernel_decide
theorem rows12825 : actualRows12825=WordField.canonicalRows actualModulus 12825 (.bxor 12798 12824) := by core033_kernel_decide
theorem stats12825 : actualRows12825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12825=7428 := by core033_kernel_decide
theorem rows12826 : actualRows12826=WordField.canonicalRows actualModulus 12826 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12826 : actualRows12826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12826=2964 := by core033_kernel_decide
theorem rows12827 : actualRows12827=WordField.canonicalRows actualModulus 12827 (.bxor 442 12826) := by core033_kernel_decide
theorem stats12827 : actualRows12827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12827=7428 := by core033_kernel_decide
theorem rows12828 : actualRows12828=WordField.canonicalRows actualModulus 12828 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12828 : actualRows12828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12828=2820 := by core033_kernel_decide
theorem rows12829 : actualRows12829=WordField.canonicalRows actualModulus 12829 (.bnot 12828) := by core033_kernel_decide
theorem stats12829 : actualRows12829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12829=6276 := by core033_kernel_decide
theorem rows12830 : actualRows12830=WordField.canonicalRows actualModulus 12830 (.band 12827 12829) := by core033_kernel_decide
theorem stats12830 : actualRows12830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12830=5124 := by core033_kernel_decide
theorem rows12831 : actualRows12831=WordField.canonicalRows actualModulus 12831 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12831 : actualRows12831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12831=2964 := by core033_kernel_decide
def partRows198 : List R1CS.Row := actualRows12768++actualRows12769++actualRows12770++actualRows12771++actualRows12772++actualRows12773++actualRows12774++actualRows12775++actualRows12776++actualRows12777++actualRows12778++actualRows12779++actualRows12780++actualRows12781++actualRows12782++actualRows12783++actualRows12784++actualRows12785++actualRows12786++actualRows12787++actualRows12788++actualRows12789++actualRows12790++actualRows12791++actualRows12792++actualRows12793++actualRows12794++actualRows12795++actualRows12796++actualRows12797++actualRows12798++actualRows12799++actualRows12800++actualRows12801++actualRows12802++actualRows12803++actualRows12804++actualRows12805++actualRows12806++actualRows12807++actualRows12808++actualRows12809++actualRows12810++actualRows12811++actualRows12812++actualRows12813++actualRows12814++actualRows12815++actualRows12816++actualRows12817++actualRows12818++actualRows12819++actualRows12820++actualRows12821++actualRows12822++actualRows12823++actualRows12824++actualRows12825++actualRows12826++actualRows12827++actualRows12828++actualRows12829++actualRows12830++actualRows12831
def partOps198 : List WordIR.Op := [.bnot 12767,.literal (BitVec.ofNat 32 1),.badd 12768 12769,.bnot 12770,.band 12771 9804,.bxor 12746 12772,.literal (BitVec.ofNat 32 3),.bxor 442 12774,.literal (BitVec.ofNat 32 0),.bnot 12776,.band 12775 12777,.literal (BitVec.ofNat 32 3),.bxor 442 12779,.literal (BitVec.ofNat 32 0),.bnot 12781,.bxor 12780 12782,.literal (BitVec.ofNat 32 3),.bxor 442 12784,.literal (BitVec.ofNat 32 0),.bnot 12786,.badd 12785 12787,.bnot 12788,.band 12783 12789,.bxor 12778 12790,.shr 12791 31,.literal (BitVec.ofNat 32 1),.bxor 12792 12793,.bnot 12794,.literal (BitVec.ofNat 32 1),.badd 12795 12796,.band 12797 10366,.literal (BitVec.ofNat 32 3),.bxor 442 12799,.literal (BitVec.ofNat 32 0),.bnot 12801,.band 12800 12802,.literal (BitVec.ofNat 32 3),.bxor 442 12804,.literal (BitVec.ofNat 32 0),.bnot 12806,.bxor 12805 12807,.literal (BitVec.ofNat 32 3),.bxor 442 12809,.literal (BitVec.ofNat 32 0),.bnot 12811,.badd 12810 12812,.bnot 12813,.band 12808 12814,.bxor 12803 12815,.shr 12816 31,.literal (BitVec.ofNat 32 1),.bxor 12817 12818,.bnot 12819,.literal (BitVec.ofNat 32 1),.badd 12820 12821,.bnot 12822,.band 12823 9805,.bxor 12798 12824,.literal (BitVec.ofNat 32 3),.bxor 442 12826,.literal (BitVec.ofNat 32 0),.bnot 12828,.band 12827 12829,.literal (BitVec.ofNat 32 3)]
theorem partExact198 : partRows198=WordField.rows actualModulus 12768 partOps198 := by
  simp only [partRows198,partOps198,WordField.rows,rows12768,rows12769,rows12770,rows12771,rows12772,rows12773,rows12774,rows12775,rows12776,rows12777,rows12778,rows12779,rows12780,rows12781,rows12782,rows12783,rows12784,rows12785,rows12786,rows12787,rows12788,rows12789,rows12790,rows12791,rows12792,rows12793,rows12794,rows12795,rows12796,rows12797,rows12798,rows12799,rows12800,rows12801,rows12802,rows12803,rows12804,rows12805,rows12806,rows12807,rows12808,rows12809,rows12810,rows12811,rows12812,rows12813,rows12814,rows12815,rows12816,rows12817,rows12818,rows12819,rows12820,rows12821,rows12822,rows12823,rows12824,rows12825,rows12826,rows12827,rows12828,rows12829,rows12830,rows12831,List.append_assoc,List.append_nil]
theorem partLength198 : partOps198.length=64 := by decide
theorem partStats198 : partRows198.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows198=330912 := by
  simp only [partRows198,List.length_append,MatrixRowBlocks.rows_weight_append,stats12768.1,stats12768.2,stats12769.1,stats12769.2,stats12770.1,stats12770.2,stats12771.1,stats12771.2,stats12772.1,stats12772.2,stats12773.1,stats12773.2,stats12774.1,stats12774.2,stats12775.1,stats12775.2,stats12776.1,stats12776.2,stats12777.1,stats12777.2,stats12778.1,stats12778.2,stats12779.1,stats12779.2,stats12780.1,stats12780.2,stats12781.1,stats12781.2,stats12782.1,stats12782.2,stats12783.1,stats12783.2,stats12784.1,stats12784.2,stats12785.1,stats12785.2,stats12786.1,stats12786.2,stats12787.1,stats12787.2,stats12788.1,stats12788.2,stats12789.1,stats12789.2,stats12790.1,stats12790.2,stats12791.1,stats12791.2,stats12792.1,stats12792.2,stats12793.1,stats12793.2,stats12794.1,stats12794.2,stats12795.1,stats12795.2,stats12796.1,stats12796.2,stats12797.1,stats12797.2,stats12798.1,stats12798.2,stats12799.1,stats12799.2,stats12800.1,stats12800.2,stats12801.1,stats12801.2,stats12802.1,stats12802.2,stats12803.1,stats12803.2,stats12804.1,stats12804.2,stats12805.1,stats12805.2,stats12806.1,stats12806.2,stats12807.1,stats12807.2,stats12808.1,stats12808.2,stats12809.1,stats12809.2,stats12810.1,stats12810.2,stats12811.1,stats12811.2,stats12812.1,stats12812.2,stats12813.1,stats12813.2,stats12814.1,stats12814.2,stats12815.1,stats12815.2,stats12816.1,stats12816.2,stats12817.1,stats12817.2,stats12818.1,stats12818.2,stats12819.1,stats12819.2,stats12820.1,stats12820.2,stats12821.1,stats12821.2,stats12822.1,stats12822.2,stats12823.1,stats12823.2,stats12824.1,stats12824.2,stats12825.1,stats12825.2,stats12826.1,stats12826.2,stats12827.1,stats12827.2,stats12828.1,stats12828.2,stats12829.1,stats12829.2,stats12830.1,stats12830.2,stats12831.1,stats12831.2]
  decide
end PairedPathRoundCheckedRows
