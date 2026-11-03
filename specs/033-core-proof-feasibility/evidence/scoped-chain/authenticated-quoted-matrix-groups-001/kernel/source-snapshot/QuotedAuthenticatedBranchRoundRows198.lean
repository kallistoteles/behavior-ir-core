import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData199
import AuthenticatedBranchRoundInstructionMatrixData200
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12790 : actualRows12790=WordField.canonicalRows actualModulus 12790 (.bxor 12787 12789) := by core033_kernel_decide
theorem stats12790 : actualRows12790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12790=7428 := by core033_kernel_decide
theorem rows12791 : actualRows12791=WordField.canonicalRows actualModulus 12791 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12791 : actualRows12791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12791=2964 := by core033_kernel_decide
theorem rows12792 : actualRows12792=WordField.canonicalRows actualModulus 12792 (.bxor 693 12791) := by core033_kernel_decide
theorem stats12792 : actualRows12792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12792=7428 := by core033_kernel_decide
theorem rows12793 : actualRows12793=WordField.canonicalRows actualModulus 12793 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12793 : actualRows12793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12793=2820 := by core033_kernel_decide
theorem rows12794 : actualRows12794=WordField.canonicalRows actualModulus 12794 (.bnot 12793) := by core033_kernel_decide
theorem stats12794 : actualRows12794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12794=6276 := by core033_kernel_decide
theorem rows12795 : actualRows12795=WordField.canonicalRows actualModulus 12795 (.badd 12792 12794) := by core033_kernel_decide
theorem stats12795 : actualRows12795.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12795=5388 := by core033_kernel_decide
theorem rows12796 : actualRows12796=WordField.canonicalRows actualModulus 12796 (.bnot 12795) := by core033_kernel_decide
theorem stats12796 : actualRows12796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12796=6276 := by core033_kernel_decide
theorem rows12797 : actualRows12797=WordField.canonicalRows actualModulus 12797 (.band 12790 12796) := by core033_kernel_decide
theorem stats12797 : actualRows12797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12797=5124 := by core033_kernel_decide
theorem rows12798 : actualRows12798=WordField.canonicalRows actualModulus 12798 (.bxor 12785 12797) := by core033_kernel_decide
theorem stats12798 : actualRows12798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12798=7428 := by core033_kernel_decide
theorem rows12799 : actualRows12799=WordField.canonicalRows actualModulus 12799 (.shr 12798 31) := by core033_kernel_decide
theorem stats12799 : actualRows12799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12799=2892 := by core033_kernel_decide
theorem rows12800 : actualRows12800=WordField.canonicalRows actualModulus 12800 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12800 : actualRows12800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12800=2892 := by core033_kernel_decide
theorem rows12801 : actualRows12801=WordField.canonicalRows actualModulus 12801 (.bxor 12799 12800) := by core033_kernel_decide
theorem stats12801 : actualRows12801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12801=7428 := by core033_kernel_decide
theorem rows12802 : actualRows12802=WordField.canonicalRows actualModulus 12802 (.bnot 12801) := by core033_kernel_decide
theorem stats12802 : actualRows12802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12802=6276 := by core033_kernel_decide
theorem rows12803 : actualRows12803=WordField.canonicalRows actualModulus 12803 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12803 : actualRows12803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12803=2892 := by core033_kernel_decide
theorem rows12804 : actualRows12804=WordField.canonicalRows actualModulus 12804 (.badd 12802 12803) := by core033_kernel_decide
theorem stats12804 : actualRows12804.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12804=5388 := by core033_kernel_decide
theorem rows12805 : actualRows12805=WordField.canonicalRows actualModulus 12805 (.band 12804 10906) := by core033_kernel_decide
theorem stats12805 : actualRows12805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12805=5124 := by core033_kernel_decide
theorem rows12806 : actualRows12806=WordField.canonicalRows actualModulus 12806 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12806 : actualRows12806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12806=2964 := by core033_kernel_decide
theorem rows12807 : actualRows12807=WordField.canonicalRows actualModulus 12807 (.bxor 693 12806) := by core033_kernel_decide
theorem stats12807 : actualRows12807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12807=7428 := by core033_kernel_decide
theorem rows12808 : actualRows12808=WordField.canonicalRows actualModulus 12808 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12808 : actualRows12808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12808=2820 := by core033_kernel_decide
theorem rows12809 : actualRows12809=WordField.canonicalRows actualModulus 12809 (.bnot 12808) := by core033_kernel_decide
theorem stats12809 : actualRows12809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12809=6276 := by core033_kernel_decide
theorem rows12810 : actualRows12810=WordField.canonicalRows actualModulus 12810 (.band 12807 12809) := by core033_kernel_decide
theorem stats12810 : actualRows12810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12810=5124 := by core033_kernel_decide
theorem rows12811 : actualRows12811=WordField.canonicalRows actualModulus 12811 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12811 : actualRows12811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12811=2964 := by core033_kernel_decide
theorem rows12812 : actualRows12812=WordField.canonicalRows actualModulus 12812 (.bxor 693 12811) := by core033_kernel_decide
theorem stats12812 : actualRows12812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12812=7428 := by core033_kernel_decide
theorem rows12813 : actualRows12813=WordField.canonicalRows actualModulus 12813 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12813 : actualRows12813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12813=2820 := by core033_kernel_decide
theorem rows12814 : actualRows12814=WordField.canonicalRows actualModulus 12814 (.bnot 12813) := by core033_kernel_decide
theorem stats12814 : actualRows12814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12814=6276 := by core033_kernel_decide
theorem rows12815 : actualRows12815=WordField.canonicalRows actualModulus 12815 (.bxor 12812 12814) := by core033_kernel_decide
theorem stats12815 : actualRows12815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12815=7428 := by core033_kernel_decide
theorem rows12816 : actualRows12816=WordField.canonicalRows actualModulus 12816 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12816 : actualRows12816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12816=2964 := by core033_kernel_decide
theorem rows12817 : actualRows12817=WordField.canonicalRows actualModulus 12817 (.bxor 693 12816) := by core033_kernel_decide
theorem stats12817 : actualRows12817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12817=7428 := by core033_kernel_decide
theorem rows12818 : actualRows12818=WordField.canonicalRows actualModulus 12818 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12818 : actualRows12818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12818=2820 := by core033_kernel_decide
theorem rows12819 : actualRows12819=WordField.canonicalRows actualModulus 12819 (.bnot 12818) := by core033_kernel_decide
theorem stats12819 : actualRows12819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12819=6276 := by core033_kernel_decide
theorem rows12820 : actualRows12820=WordField.canonicalRows actualModulus 12820 (.badd 12817 12819) := by core033_kernel_decide
theorem stats12820 : actualRows12820.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12820=5388 := by core033_kernel_decide
theorem rows12821 : actualRows12821=WordField.canonicalRows actualModulus 12821 (.bnot 12820) := by core033_kernel_decide
theorem stats12821 : actualRows12821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12821=6276 := by core033_kernel_decide
theorem rows12822 : actualRows12822=WordField.canonicalRows actualModulus 12822 (.band 12815 12821) := by core033_kernel_decide
theorem stats12822 : actualRows12822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12822=5124 := by core033_kernel_decide
theorem rows12823 : actualRows12823=WordField.canonicalRows actualModulus 12823 (.bxor 12810 12822) := by core033_kernel_decide
theorem stats12823 : actualRows12823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12823=7428 := by core033_kernel_decide
theorem rows12824 : actualRows12824=WordField.canonicalRows actualModulus 12824 (.shr 12823 31) := by core033_kernel_decide
theorem stats12824 : actualRows12824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12824=2892 := by core033_kernel_decide
theorem rows12825 : actualRows12825=WordField.canonicalRows actualModulus 12825 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12825 : actualRows12825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12825=2892 := by core033_kernel_decide
theorem rows12826 : actualRows12826=WordField.canonicalRows actualModulus 12826 (.bxor 12824 12825) := by core033_kernel_decide
theorem stats12826 : actualRows12826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12826=7428 := by core033_kernel_decide
theorem rows12827 : actualRows12827=WordField.canonicalRows actualModulus 12827 (.bnot 12826) := by core033_kernel_decide
theorem stats12827 : actualRows12827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12827=6276 := by core033_kernel_decide
theorem rows12828 : actualRows12828=WordField.canonicalRows actualModulus 12828 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12828 : actualRows12828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12828=2892 := by core033_kernel_decide
theorem rows12829 : actualRows12829=WordField.canonicalRows actualModulus 12829 (.badd 12827 12828) := by core033_kernel_decide
theorem stats12829 : actualRows12829.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12829=5388 := by core033_kernel_decide
theorem rows12830 : actualRows12830=WordField.canonicalRows actualModulus 12830 (.bnot 12829) := by core033_kernel_decide
theorem stats12830 : actualRows12830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12830=6276 := by core033_kernel_decide
theorem rows12831 : actualRows12831=WordField.canonicalRows actualModulus 12831 (.band 12830 1585) := by core033_kernel_decide
theorem stats12831 : actualRows12831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12831=5124 := by core033_kernel_decide
theorem rows12832 : actualRows12832=WordField.canonicalRows actualModulus 12832 (.bxor 12805 12831) := by core033_kernel_decide
theorem stats12832 : actualRows12832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12832=7428 := by core033_kernel_decide
theorem rows12833 : actualRows12833=WordField.canonicalRows actualModulus 12833 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12833 : actualRows12833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12833=2964 := by core033_kernel_decide
theorem rows12834 : actualRows12834=WordField.canonicalRows actualModulus 12834 (.bxor 693 12833) := by core033_kernel_decide
theorem stats12834 : actualRows12834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12834=7428 := by core033_kernel_decide
theorem rows12835 : actualRows12835=WordField.canonicalRows actualModulus 12835 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12835 : actualRows12835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12835=2820 := by core033_kernel_decide
theorem rows12836 : actualRows12836=WordField.canonicalRows actualModulus 12836 (.bnot 12835) := by core033_kernel_decide
theorem stats12836 : actualRows12836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12836=6276 := by core033_kernel_decide
theorem rows12837 : actualRows12837=WordField.canonicalRows actualModulus 12837 (.band 12834 12836) := by core033_kernel_decide
theorem stats12837 : actualRows12837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12837=5124 := by core033_kernel_decide
theorem rows12838 : actualRows12838=WordField.canonicalRows actualModulus 12838 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12838 : actualRows12838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12838=2964 := by core033_kernel_decide
theorem rows12839 : actualRows12839=WordField.canonicalRows actualModulus 12839 (.bxor 693 12838) := by core033_kernel_decide
theorem stats12839 : actualRows12839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12839=7428 := by core033_kernel_decide
theorem rows12840 : actualRows12840=WordField.canonicalRows actualModulus 12840 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12840 : actualRows12840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12840=2820 := by core033_kernel_decide
theorem rows12841 : actualRows12841=WordField.canonicalRows actualModulus 12841 (.bnot 12840) := by core033_kernel_decide
theorem stats12841 : actualRows12841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12841=6276 := by core033_kernel_decide
theorem rows12842 : actualRows12842=WordField.canonicalRows actualModulus 12842 (.bxor 12839 12841) := by core033_kernel_decide
theorem stats12842 : actualRows12842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12842=7428 := by core033_kernel_decide
theorem rows12843 : actualRows12843=WordField.canonicalRows actualModulus 12843 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12843 : actualRows12843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12843=2964 := by core033_kernel_decide
theorem rows12844 : actualRows12844=WordField.canonicalRows actualModulus 12844 (.bxor 693 12843) := by core033_kernel_decide
theorem stats12844 : actualRows12844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12844=7428 := by core033_kernel_decide
theorem rows12845 : actualRows12845=WordField.canonicalRows actualModulus 12845 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12845 : actualRows12845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12845=2820 := by core033_kernel_decide
theorem rows12846 : actualRows12846=WordField.canonicalRows actualModulus 12846 (.bnot 12845) := by core033_kernel_decide
theorem stats12846 : actualRows12846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12846=6276 := by core033_kernel_decide
theorem rows12847 : actualRows12847=WordField.canonicalRows actualModulus 12847 (.badd 12844 12846) := by core033_kernel_decide
theorem stats12847 : actualRows12847.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12847=5388 := by core033_kernel_decide
theorem rows12848 : actualRows12848=WordField.canonicalRows actualModulus 12848 (.bnot 12847) := by core033_kernel_decide
theorem stats12848 : actualRows12848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12848=6276 := by core033_kernel_decide
theorem rows12849 : actualRows12849=WordField.canonicalRows actualModulus 12849 (.band 12842 12848) := by core033_kernel_decide
theorem stats12849 : actualRows12849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12849=5124 := by core033_kernel_decide
theorem rows12850 : actualRows12850=WordField.canonicalRows actualModulus 12850 (.bxor 12837 12849) := by core033_kernel_decide
theorem stats12850 : actualRows12850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12850=7428 := by core033_kernel_decide
theorem rows12851 : actualRows12851=WordField.canonicalRows actualModulus 12851 (.shr 12850 31) := by core033_kernel_decide
theorem stats12851 : actualRows12851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12851=2892 := by core033_kernel_decide
theorem rows12852 : actualRows12852=WordField.canonicalRows actualModulus 12852 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12852 : actualRows12852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12852=2892 := by core033_kernel_decide
theorem rows12853 : actualRows12853=WordField.canonicalRows actualModulus 12853 (.bxor 12851 12852) := by core033_kernel_decide
theorem stats12853 : actualRows12853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12853=7428 := by core033_kernel_decide
def partRows198 : List R1CS.Row := actualRows12790++actualRows12791++actualRows12792++actualRows12793++actualRows12794++actualRows12795++actualRows12796++actualRows12797++actualRows12798++actualRows12799++actualRows12800++actualRows12801++actualRows12802++actualRows12803++actualRows12804++actualRows12805++actualRows12806++actualRows12807++actualRows12808++actualRows12809++actualRows12810++actualRows12811++actualRows12812++actualRows12813++actualRows12814++actualRows12815++actualRows12816++actualRows12817++actualRows12818++actualRows12819++actualRows12820++actualRows12821++actualRows12822++actualRows12823++actualRows12824++actualRows12825++actualRows12826++actualRows12827++actualRows12828++actualRows12829++actualRows12830++actualRows12831++actualRows12832++actualRows12833++actualRows12834++actualRows12835++actualRows12836++actualRows12837++actualRows12838++actualRows12839++actualRows12840++actualRows12841++actualRows12842++actualRows12843++actualRows12844++actualRows12845++actualRows12846++actualRows12847++actualRows12848++actualRows12849++actualRows12850++actualRows12851++actualRows12852++actualRows12853
def partOps198 : List WordIR.Op := [.bxor 12787 12789,.literal (BitVec.ofNat 32 3),.bxor 693 12791,.literal (BitVec.ofNat 32 0),.bnot 12793,.badd 12792 12794,.bnot 12795,.band 12790 12796,.bxor 12785 12797,.shr 12798 31,.literal (BitVec.ofNat 32 1),.bxor 12799 12800,.bnot 12801,.literal (BitVec.ofNat 32 1),.badd 12802 12803,.band 12804 10906,.literal (BitVec.ofNat 32 3),.bxor 693 12806,.literal (BitVec.ofNat 32 0),.bnot 12808,.band 12807 12809,.literal (BitVec.ofNat 32 3),.bxor 693 12811,.literal (BitVec.ofNat 32 0),.bnot 12813,.bxor 12812 12814,.literal (BitVec.ofNat 32 3),.bxor 693 12816,.literal (BitVec.ofNat 32 0),.bnot 12818,.badd 12817 12819,.bnot 12820,.band 12815 12821,.bxor 12810 12822,.shr 12823 31,.literal (BitVec.ofNat 32 1),.bxor 12824 12825,.bnot 12826,.literal (BitVec.ofNat 32 1),.badd 12827 12828,.bnot 12829,.band 12830 1585,.bxor 12805 12831,.literal (BitVec.ofNat 32 3),.bxor 693 12833,.literal (BitVec.ofNat 32 0),.bnot 12835,.band 12834 12836,.literal (BitVec.ofNat 32 3),.bxor 693 12838,.literal (BitVec.ofNat 32 0),.bnot 12840,.bxor 12839 12841,.literal (BitVec.ofNat 32 3),.bxor 693 12843,.literal (BitVec.ofNat 32 0),.bnot 12845,.badd 12844 12846,.bnot 12847,.band 12842 12848,.bxor 12837 12849,.shr 12850 31,.literal (BitVec.ofNat 32 1),.bxor 12851 12852]
theorem partExact198 : partRows198=WordField.rows actualModulus 12790 partOps198 := by
  simp only [partRows198,partOps198,WordField.rows,rows12790,rows12791,rows12792,rows12793,rows12794,rows12795,rows12796,rows12797,rows12798,rows12799,rows12800,rows12801,rows12802,rows12803,rows12804,rows12805,rows12806,rows12807,rows12808,rows12809,rows12810,rows12811,rows12812,rows12813,rows12814,rows12815,rows12816,rows12817,rows12818,rows12819,rows12820,rows12821,rows12822,rows12823,rows12824,rows12825,rows12826,rows12827,rows12828,rows12829,rows12830,rows12831,rows12832,rows12833,rows12834,rows12835,rows12836,rows12837,rows12838,rows12839,rows12840,rows12841,rows12842,rows12843,rows12844,rows12845,rows12846,rows12847,rows12848,rows12849,rows12850,rows12851,rows12852,rows12853,List.append_assoc,List.append_nil]
theorem partLength198 : partOps198.length=64 := by decide
theorem partStats198 : partRows198.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows198=334296 := by
  simp only [partRows198,List.length_append,MatrixRowBlocks.rows_weight_append,stats12790.1,stats12790.2,stats12791.1,stats12791.2,stats12792.1,stats12792.2,stats12793.1,stats12793.2,stats12794.1,stats12794.2,stats12795.1,stats12795.2,stats12796.1,stats12796.2,stats12797.1,stats12797.2,stats12798.1,stats12798.2,stats12799.1,stats12799.2,stats12800.1,stats12800.2,stats12801.1,stats12801.2,stats12802.1,stats12802.2,stats12803.1,stats12803.2,stats12804.1,stats12804.2,stats12805.1,stats12805.2,stats12806.1,stats12806.2,stats12807.1,stats12807.2,stats12808.1,stats12808.2,stats12809.1,stats12809.2,stats12810.1,stats12810.2,stats12811.1,stats12811.2,stats12812.1,stats12812.2,stats12813.1,stats12813.2,stats12814.1,stats12814.2,stats12815.1,stats12815.2,stats12816.1,stats12816.2,stats12817.1,stats12817.2,stats12818.1,stats12818.2,stats12819.1,stats12819.2,stats12820.1,stats12820.2,stats12821.1,stats12821.2,stats12822.1,stats12822.2,stats12823.1,stats12823.2,stats12824.1,stats12824.2,stats12825.1,stats12825.2,stats12826.1,stats12826.2,stats12827.1,stats12827.2,stats12828.1,stats12828.2,stats12829.1,stats12829.2,stats12830.1,stats12830.2,stats12831.1,stats12831.2,stats12832.1,stats12832.2,stats12833.1,stats12833.2,stats12834.1,stats12834.2,stats12835.1,stats12835.2,stats12836.1,stats12836.2,stats12837.1,stats12837.2,stats12838.1,stats12838.2,stats12839.1,stats12839.2,stats12840.1,stats12840.2,stats12841.1,stats12841.2,stats12842.1,stats12842.2,stats12843.1,stats12843.2,stats12844.1,stats12844.2,stats12845.1,stats12845.2,stats12846.1,stats12846.2,stats12847.1,stats12847.2,stats12848.1,stats12848.2,stats12849.1,stats12849.2,stats12850.1,stats12850.2,stats12851.1,stats12851.2,stats12852.1,stats12852.2,stats12853.1,stats12853.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
