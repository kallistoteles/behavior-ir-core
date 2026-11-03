import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData168
import AuthenticatedBranchRoundInstructionMatrixData169
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10806 : actualRows10806=WordField.canonicalRows actualModulus 10806 (.band 10804 10805) := by core033_kernel_decide
theorem stats10806 : actualRows10806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10806=5124 := by core033_kernel_decide
theorem rows10807 : actualRows10807=WordField.canonicalRows actualModulus 10807 (.bxor 10800 10806) := by core033_kernel_decide
theorem stats10807 : actualRows10807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10807=7428 := by core033_kernel_decide
theorem rows10808 : actualRows10808=WordField.canonicalRows actualModulus 10808 (.bnot 10609) := by core033_kernel_decide
theorem stats10808 : actualRows10808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10808=6276 := by core033_kernel_decide
theorem rows10809 : actualRows10809=WordField.canonicalRows actualModulus 10809 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10809 : actualRows10809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10809=2892 := by core033_kernel_decide
theorem rows10810 : actualRows10810=WordField.canonicalRows actualModulus 10810 (.badd 10808 10809) := by core033_kernel_decide
theorem stats10810 : actualRows10810.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10810=5388 := by core033_kernel_decide
theorem rows10811 : actualRows10811=WordField.canonicalRows actualModulus 10811 (.band 10810 963) := by core033_kernel_decide
theorem stats10811 : actualRows10811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10811=5124 := by core033_kernel_decide
theorem rows10812 : actualRows10812=WordField.canonicalRows actualModulus 10812 (.bnot 10609) := by core033_kernel_decide
theorem stats10812 : actualRows10812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10812=6276 := by core033_kernel_decide
theorem rows10813 : actualRows10813=WordField.canonicalRows actualModulus 10813 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10813 : actualRows10813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10813=2892 := by core033_kernel_decide
theorem rows10814 : actualRows10814=WordField.canonicalRows actualModulus 10814 (.badd 10812 10813) := by core033_kernel_decide
theorem stats10814 : actualRows10814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10814=5388 := by core033_kernel_decide
theorem rows10815 : actualRows10815=WordField.canonicalRows actualModulus 10815 (.bnot 10814) := by core033_kernel_decide
theorem stats10815 : actualRows10815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10815=6276 := by core033_kernel_decide
theorem rows10816 : actualRows10816=WordField.canonicalRows actualModulus 10816 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10816 : actualRows10816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10816=2820 := by core033_kernel_decide
theorem rows10817 : actualRows10817=WordField.canonicalRows actualModulus 10817 (.band 10815 10816) := by core033_kernel_decide
theorem stats10817 : actualRows10817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10817=5124 := by core033_kernel_decide
theorem rows10818 : actualRows10818=WordField.canonicalRows actualModulus 10818 (.bxor 10811 10817) := by core033_kernel_decide
theorem stats10818 : actualRows10818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10818=7428 := by core033_kernel_decide
theorem rows10819 : actualRows10819=WordField.canonicalRows actualModulus 10819 (.bnot 10609) := by core033_kernel_decide
theorem stats10819 : actualRows10819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10819=6276 := by core033_kernel_decide
theorem rows10820 : actualRows10820=WordField.canonicalRows actualModulus 10820 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10820 : actualRows10820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10820=2892 := by core033_kernel_decide
theorem rows10821 : actualRows10821=WordField.canonicalRows actualModulus 10821 (.badd 10819 10820) := by core033_kernel_decide
theorem stats10821 : actualRows10821.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10821=5388 := by core033_kernel_decide
theorem rows10822 : actualRows10822=WordField.canonicalRows actualModulus 10822 (.band 10821 973) := by core033_kernel_decide
theorem stats10822 : actualRows10822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10822=5124 := by core033_kernel_decide
theorem rows10823 : actualRows10823=WordField.canonicalRows actualModulus 10823 (.bnot 10609) := by core033_kernel_decide
theorem stats10823 : actualRows10823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10823=6276 := by core033_kernel_decide
theorem rows10824 : actualRows10824=WordField.canonicalRows actualModulus 10824 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10824 : actualRows10824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10824=2892 := by core033_kernel_decide
theorem rows10825 : actualRows10825=WordField.canonicalRows actualModulus 10825 (.badd 10823 10824) := by core033_kernel_decide
theorem stats10825 : actualRows10825.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10825=5388 := by core033_kernel_decide
theorem rows10826 : actualRows10826=WordField.canonicalRows actualModulus 10826 (.bnot 10825) := by core033_kernel_decide
theorem stats10826 : actualRows10826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10826=6276 := by core033_kernel_decide
theorem rows10827 : actualRows10827=WordField.canonicalRows actualModulus 10827 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10827 : actualRows10827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10827=2820 := by core033_kernel_decide
theorem rows10828 : actualRows10828=WordField.canonicalRows actualModulus 10828 (.band 10826 10827) := by core033_kernel_decide
theorem stats10828 : actualRows10828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10828=5124 := by core033_kernel_decide
theorem rows10829 : actualRows10829=WordField.canonicalRows actualModulus 10829 (.bxor 10822 10828) := by core033_kernel_decide
theorem stats10829 : actualRows10829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10829=7428 := by core033_kernel_decide
theorem rows10830 : actualRows10830=WordField.canonicalRows actualModulus 10830 (.bnot 10609) := by core033_kernel_decide
theorem stats10830 : actualRows10830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10830=6276 := by core033_kernel_decide
theorem rows10831 : actualRows10831=WordField.canonicalRows actualModulus 10831 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10831 : actualRows10831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10831=2892 := by core033_kernel_decide
theorem rows10832 : actualRows10832=WordField.canonicalRows actualModulus 10832 (.badd 10830 10831) := by core033_kernel_decide
theorem stats10832 : actualRows10832.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10832=5388 := by core033_kernel_decide
theorem rows10833 : actualRows10833=WordField.canonicalRows actualModulus 10833 (.band 10832 983) := by core033_kernel_decide
theorem stats10833 : actualRows10833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10833=5124 := by core033_kernel_decide
theorem rows10834 : actualRows10834=WordField.canonicalRows actualModulus 10834 (.bnot 10609) := by core033_kernel_decide
theorem stats10834 : actualRows10834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10834=6276 := by core033_kernel_decide
theorem rows10835 : actualRows10835=WordField.canonicalRows actualModulus 10835 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10835 : actualRows10835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10835=2892 := by core033_kernel_decide
theorem rows10836 : actualRows10836=WordField.canonicalRows actualModulus 10836 (.badd 10834 10835) := by core033_kernel_decide
theorem stats10836 : actualRows10836.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10836=5388 := by core033_kernel_decide
theorem rows10837 : actualRows10837=WordField.canonicalRows actualModulus 10837 (.bnot 10836) := by core033_kernel_decide
theorem stats10837 : actualRows10837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10837=6276 := by core033_kernel_decide
theorem rows10838 : actualRows10838=WordField.canonicalRows actualModulus 10838 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10838 : actualRows10838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10838=2820 := by core033_kernel_decide
theorem rows10839 : actualRows10839=WordField.canonicalRows actualModulus 10839 (.band 10837 10838) := by core033_kernel_decide
theorem stats10839 : actualRows10839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10839=5124 := by core033_kernel_decide
theorem rows10840 : actualRows10840=WordField.canonicalRows actualModulus 10840 (.bxor 10833 10839) := by core033_kernel_decide
theorem stats10840 : actualRows10840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10840=7428 := by core033_kernel_decide
theorem rows10841 : actualRows10841=WordField.canonicalRows actualModulus 10841 (.bnot 10609) := by core033_kernel_decide
theorem stats10841 : actualRows10841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10841=6276 := by core033_kernel_decide
theorem rows10842 : actualRows10842=WordField.canonicalRows actualModulus 10842 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10842 : actualRows10842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10842=2892 := by core033_kernel_decide
theorem rows10843 : actualRows10843=WordField.canonicalRows actualModulus 10843 (.badd 10841 10842) := by core033_kernel_decide
theorem stats10843 : actualRows10843.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10843=5388 := by core033_kernel_decide
theorem rows10844 : actualRows10844=WordField.canonicalRows actualModulus 10844 (.band 10843 993) := by core033_kernel_decide
theorem stats10844 : actualRows10844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10844=5124 := by core033_kernel_decide
theorem rows10845 : actualRows10845=WordField.canonicalRows actualModulus 10845 (.bnot 10609) := by core033_kernel_decide
theorem stats10845 : actualRows10845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10845=6276 := by core033_kernel_decide
theorem rows10846 : actualRows10846=WordField.canonicalRows actualModulus 10846 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10846 : actualRows10846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10846=2892 := by core033_kernel_decide
theorem rows10847 : actualRows10847=WordField.canonicalRows actualModulus 10847 (.badd 10845 10846) := by core033_kernel_decide
theorem stats10847 : actualRows10847.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10847=5388 := by core033_kernel_decide
theorem rows10848 : actualRows10848=WordField.canonicalRows actualModulus 10848 (.bnot 10847) := by core033_kernel_decide
theorem stats10848 : actualRows10848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10848=6276 := by core033_kernel_decide
theorem rows10849 : actualRows10849=WordField.canonicalRows actualModulus 10849 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10849 : actualRows10849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10849=2820 := by core033_kernel_decide
theorem rows10850 : actualRows10850=WordField.canonicalRows actualModulus 10850 (.band 10848 10849) := by core033_kernel_decide
theorem stats10850 : actualRows10850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10850=5124 := by core033_kernel_decide
theorem rows10851 : actualRows10851=WordField.canonicalRows actualModulus 10851 (.bxor 10844 10850) := by core033_kernel_decide
theorem stats10851 : actualRows10851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10851=7428 := by core033_kernel_decide
theorem rows10852 : actualRows10852=WordField.canonicalRows actualModulus 10852 (.bnot 10609) := by core033_kernel_decide
theorem stats10852 : actualRows10852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10852=6276 := by core033_kernel_decide
theorem rows10853 : actualRows10853=WordField.canonicalRows actualModulus 10853 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10853 : actualRows10853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10853=2892 := by core033_kernel_decide
theorem rows10854 : actualRows10854=WordField.canonicalRows actualModulus 10854 (.badd 10852 10853) := by core033_kernel_decide
theorem stats10854 : actualRows10854.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10854=5388 := by core033_kernel_decide
theorem rows10855 : actualRows10855=WordField.canonicalRows actualModulus 10855 (.band 10854 1003) := by core033_kernel_decide
theorem stats10855 : actualRows10855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10855=5124 := by core033_kernel_decide
theorem rows10856 : actualRows10856=WordField.canonicalRows actualModulus 10856 (.bnot 10609) := by core033_kernel_decide
theorem stats10856 : actualRows10856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10856=6276 := by core033_kernel_decide
theorem rows10857 : actualRows10857=WordField.canonicalRows actualModulus 10857 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10857 : actualRows10857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10857=2892 := by core033_kernel_decide
theorem rows10858 : actualRows10858=WordField.canonicalRows actualModulus 10858 (.badd 10856 10857) := by core033_kernel_decide
theorem stats10858 : actualRows10858.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10858=5388 := by core033_kernel_decide
theorem rows10859 : actualRows10859=WordField.canonicalRows actualModulus 10859 (.bnot 10858) := by core033_kernel_decide
theorem stats10859 : actualRows10859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10859=6276 := by core033_kernel_decide
theorem rows10860 : actualRows10860=WordField.canonicalRows actualModulus 10860 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10860 : actualRows10860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10860=2820 := by core033_kernel_decide
theorem rows10861 : actualRows10861=WordField.canonicalRows actualModulus 10861 (.band 10859 10860) := by core033_kernel_decide
theorem stats10861 : actualRows10861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10861=5124 := by core033_kernel_decide
theorem rows10862 : actualRows10862=WordField.canonicalRows actualModulus 10862 (.bxor 10855 10861) := by core033_kernel_decide
theorem stats10862 : actualRows10862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10862=7428 := by core033_kernel_decide
theorem rows10863 : actualRows10863=WordField.canonicalRows actualModulus 10863 (.bnot 10609) := by core033_kernel_decide
theorem stats10863 : actualRows10863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10863=6276 := by core033_kernel_decide
theorem rows10864 : actualRows10864=WordField.canonicalRows actualModulus 10864 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10864 : actualRows10864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10864=2892 := by core033_kernel_decide
theorem rows10865 : actualRows10865=WordField.canonicalRows actualModulus 10865 (.badd 10863 10864) := by core033_kernel_decide
theorem stats10865 : actualRows10865.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10865=5388 := by core033_kernel_decide
theorem rows10866 : actualRows10866=WordField.canonicalRows actualModulus 10866 (.band 10865 1013) := by core033_kernel_decide
theorem stats10866 : actualRows10866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10866=5124 := by core033_kernel_decide
theorem rows10867 : actualRows10867=WordField.canonicalRows actualModulus 10867 (.bnot 10609) := by core033_kernel_decide
theorem stats10867 : actualRows10867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10867=6276 := by core033_kernel_decide
theorem rows10868 : actualRows10868=WordField.canonicalRows actualModulus 10868 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10868 : actualRows10868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10868=2892 := by core033_kernel_decide
theorem rows10869 : actualRows10869=WordField.canonicalRows actualModulus 10869 (.badd 10867 10868) := by core033_kernel_decide
theorem stats10869 : actualRows10869.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10869=5388 := by core033_kernel_decide
def partRows167 : List R1CS.Row := actualRows10806++actualRows10807++actualRows10808++actualRows10809++actualRows10810++actualRows10811++actualRows10812++actualRows10813++actualRows10814++actualRows10815++actualRows10816++actualRows10817++actualRows10818++actualRows10819++actualRows10820++actualRows10821++actualRows10822++actualRows10823++actualRows10824++actualRows10825++actualRows10826++actualRows10827++actualRows10828++actualRows10829++actualRows10830++actualRows10831++actualRows10832++actualRows10833++actualRows10834++actualRows10835++actualRows10836++actualRows10837++actualRows10838++actualRows10839++actualRows10840++actualRows10841++actualRows10842++actualRows10843++actualRows10844++actualRows10845++actualRows10846++actualRows10847++actualRows10848++actualRows10849++actualRows10850++actualRows10851++actualRows10852++actualRows10853++actualRows10854++actualRows10855++actualRows10856++actualRows10857++actualRows10858++actualRows10859++actualRows10860++actualRows10861++actualRows10862++actualRows10863++actualRows10864++actualRows10865++actualRows10866++actualRows10867++actualRows10868++actualRows10869
def partOps167 : List WordIR.Op := [.band 10804 10805,.bxor 10800 10806,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10808 10809,.band 10810 963,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10812 10813,.bnot 10814,.literal (BitVec.ofNat 32 0),.band 10815 10816,.bxor 10811 10817,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10819 10820,.band 10821 973,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10823 10824,.bnot 10825,.literal (BitVec.ofNat 32 0),.band 10826 10827,.bxor 10822 10828,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10830 10831,.band 10832 983,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10834 10835,.bnot 10836,.literal (BitVec.ofNat 32 0),.band 10837 10838,.bxor 10833 10839,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10841 10842,.band 10843 993,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10845 10846,.bnot 10847,.literal (BitVec.ofNat 32 0),.band 10848 10849,.bxor 10844 10850,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10852 10853,.band 10854 1003,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10856 10857,.bnot 10858,.literal (BitVec.ofNat 32 0),.band 10859 10860,.bxor 10855 10861,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10863 10864,.band 10865 1013,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10867 10868]
theorem partExact167 : partRows167=WordField.rows actualModulus 10806 partOps167 := by
  simp only [partRows167,partOps167,WordField.rows,rows10806,rows10807,rows10808,rows10809,rows10810,rows10811,rows10812,rows10813,rows10814,rows10815,rows10816,rows10817,rows10818,rows10819,rows10820,rows10821,rows10822,rows10823,rows10824,rows10825,rows10826,rows10827,rows10828,rows10829,rows10830,rows10831,rows10832,rows10833,rows10834,rows10835,rows10836,rows10837,rows10838,rows10839,rows10840,rows10841,rows10842,rows10843,rows10844,rows10845,rows10846,rows10847,rows10848,rows10849,rows10850,rows10851,rows10852,rows10853,rows10854,rows10855,rows10856,rows10857,rows10858,rows10859,rows10860,rows10861,rows10862,rows10863,rows10864,rows10865,rows10866,rows10867,rows10868,rows10869,List.append_assoc,List.append_nil]
theorem partLength167 : partOps167.length=64 := by decide
theorem partStats167 : partRows167.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows167=326208 := by
  simp only [partRows167,List.length_append,MatrixRowBlocks.rows_weight_append,stats10806.1,stats10806.2,stats10807.1,stats10807.2,stats10808.1,stats10808.2,stats10809.1,stats10809.2,stats10810.1,stats10810.2,stats10811.1,stats10811.2,stats10812.1,stats10812.2,stats10813.1,stats10813.2,stats10814.1,stats10814.2,stats10815.1,stats10815.2,stats10816.1,stats10816.2,stats10817.1,stats10817.2,stats10818.1,stats10818.2,stats10819.1,stats10819.2,stats10820.1,stats10820.2,stats10821.1,stats10821.2,stats10822.1,stats10822.2,stats10823.1,stats10823.2,stats10824.1,stats10824.2,stats10825.1,stats10825.2,stats10826.1,stats10826.2,stats10827.1,stats10827.2,stats10828.1,stats10828.2,stats10829.1,stats10829.2,stats10830.1,stats10830.2,stats10831.1,stats10831.2,stats10832.1,stats10832.2,stats10833.1,stats10833.2,stats10834.1,stats10834.2,stats10835.1,stats10835.2,stats10836.1,stats10836.2,stats10837.1,stats10837.2,stats10838.1,stats10838.2,stats10839.1,stats10839.2,stats10840.1,stats10840.2,stats10841.1,stats10841.2,stats10842.1,stats10842.2,stats10843.1,stats10843.2,stats10844.1,stats10844.2,stats10845.1,stats10845.2,stats10846.1,stats10846.2,stats10847.1,stats10847.2,stats10848.1,stats10848.2,stats10849.1,stats10849.2,stats10850.1,stats10850.2,stats10851.1,stats10851.2,stats10852.1,stats10852.2,stats10853.1,stats10853.2,stats10854.1,stats10854.2,stats10855.1,stats10855.2,stats10856.1,stats10856.2,stats10857.1,stats10857.2,stats10858.1,stats10858.2,stats10859.1,stats10859.2,stats10860.1,stats10860.2,stats10861.1,stats10861.2,stats10862.1,stats10862.2,stats10863.1,stats10863.2,stats10864.1,stats10864.2,stats10865.1,stats10865.2,stats10866.1,stats10866.2,stats10867.1,stats10867.2,stats10868.1,stats10868.2,stats10869.1,stats10869.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
