import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData168
import PathRoundDispatchInstructionMatrixData169
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10795 : actualRows10795=WordField.canonicalRows actualModulus 10795 (.bnot 10794) := by core033_kernel_decide
theorem stats10795 : actualRows10795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10795=6276 := by core033_kernel_decide
theorem rows10796 : actualRows10796=WordField.canonicalRows actualModulus 10796 (.band 10795 206) := by core033_kernel_decide
theorem stats10796 : actualRows10796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10796=5124 := by core033_kernel_decide
theorem rows10797 : actualRows10797=WordField.canonicalRows actualModulus 10797 (.bxor 10770 10796) := by core033_kernel_decide
theorem stats10797 : actualRows10797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10797=7428 := by core033_kernel_decide
theorem rows10798 : actualRows10798=WordField.canonicalRows actualModulus 10798 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10798 : actualRows10798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10798=2964 := by core033_kernel_decide
theorem rows10799 : actualRows10799=WordField.canonicalRows actualModulus 10799 (.bxor 0 10798) := by core033_kernel_decide
theorem stats10799 : actualRows10799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10799=7428 := by core033_kernel_decide
theorem rows10800 : actualRows10800=WordField.canonicalRows actualModulus 10800 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10800 : actualRows10800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10800=2820 := by core033_kernel_decide
theorem rows10801 : actualRows10801=WordField.canonicalRows actualModulus 10801 (.bnot 10800) := by core033_kernel_decide
theorem stats10801 : actualRows10801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10801=6276 := by core033_kernel_decide
theorem rows10802 : actualRows10802=WordField.canonicalRows actualModulus 10802 (.band 10799 10801) := by core033_kernel_decide
theorem stats10802 : actualRows10802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10802=5124 := by core033_kernel_decide
theorem rows10803 : actualRows10803=WordField.canonicalRows actualModulus 10803 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10803 : actualRows10803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10803=2964 := by core033_kernel_decide
theorem rows10804 : actualRows10804=WordField.canonicalRows actualModulus 10804 (.bxor 0 10803) := by core033_kernel_decide
theorem stats10804 : actualRows10804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10804=7428 := by core033_kernel_decide
theorem rows10805 : actualRows10805=WordField.canonicalRows actualModulus 10805 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10805 : actualRows10805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10805=2820 := by core033_kernel_decide
theorem rows10806 : actualRows10806=WordField.canonicalRows actualModulus 10806 (.bnot 10805) := by core033_kernel_decide
theorem stats10806 : actualRows10806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10806=6276 := by core033_kernel_decide
theorem rows10807 : actualRows10807=WordField.canonicalRows actualModulus 10807 (.bxor 10804 10806) := by core033_kernel_decide
theorem stats10807 : actualRows10807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10807=7428 := by core033_kernel_decide
theorem rows10808 : actualRows10808=WordField.canonicalRows actualModulus 10808 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10808 : actualRows10808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10808=2964 := by core033_kernel_decide
theorem rows10809 : actualRows10809=WordField.canonicalRows actualModulus 10809 (.bxor 0 10808) := by core033_kernel_decide
theorem stats10809 : actualRows10809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10809=7428 := by core033_kernel_decide
theorem rows10810 : actualRows10810=WordField.canonicalRows actualModulus 10810 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10810 : actualRows10810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10810=2820 := by core033_kernel_decide
theorem rows10811 : actualRows10811=WordField.canonicalRows actualModulus 10811 (.bnot 10810) := by core033_kernel_decide
theorem stats10811 : actualRows10811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10811=6276 := by core033_kernel_decide
theorem rows10812 : actualRows10812=WordField.canonicalRows actualModulus 10812 (.badd 10809 10811) := by core033_kernel_decide
theorem stats10812 : actualRows10812.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10812=5388 := by core033_kernel_decide
theorem rows10813 : actualRows10813=WordField.canonicalRows actualModulus 10813 (.bnot 10812) := by core033_kernel_decide
theorem stats10813 : actualRows10813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10813=6276 := by core033_kernel_decide
theorem rows10814 : actualRows10814=WordField.canonicalRows actualModulus 10814 (.band 10807 10813) := by core033_kernel_decide
theorem stats10814 : actualRows10814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10814=5124 := by core033_kernel_decide
theorem rows10815 : actualRows10815=WordField.canonicalRows actualModulus 10815 (.bxor 10802 10814) := by core033_kernel_decide
theorem stats10815 : actualRows10815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10815=7428 := by core033_kernel_decide
theorem rows10816 : actualRows10816=WordField.canonicalRows actualModulus 10816 (.shr 10815 31) := by core033_kernel_decide
theorem stats10816 : actualRows10816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10816=2892 := by core033_kernel_decide
theorem rows10817 : actualRows10817=WordField.canonicalRows actualModulus 10817 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10817 : actualRows10817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10817=2892 := by core033_kernel_decide
theorem rows10818 : actualRows10818=WordField.canonicalRows actualModulus 10818 (.bxor 10816 10817) := by core033_kernel_decide
theorem stats10818 : actualRows10818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10818=7428 := by core033_kernel_decide
theorem rows10819 : actualRows10819=WordField.canonicalRows actualModulus 10819 (.bnot 10818) := by core033_kernel_decide
theorem stats10819 : actualRows10819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10819=6276 := by core033_kernel_decide
theorem rows10820 : actualRows10820=WordField.canonicalRows actualModulus 10820 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10820 : actualRows10820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10820=2892 := by core033_kernel_decide
theorem rows10821 : actualRows10821=WordField.canonicalRows actualModulus 10821 (.badd 10819 10820) := by core033_kernel_decide
theorem stats10821 : actualRows10821.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10821=5388 := by core033_kernel_decide
theorem rows10822 : actualRows10822=WordField.canonicalRows actualModulus 10822 (.band 10821 9886) := by core033_kernel_decide
theorem stats10822 : actualRows10822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10822=5124 := by core033_kernel_decide
theorem rows10823 : actualRows10823=WordField.canonicalRows actualModulus 10823 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10823 : actualRows10823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10823=2964 := by core033_kernel_decide
theorem rows10824 : actualRows10824=WordField.canonicalRows actualModulus 10824 (.bxor 0 10823) := by core033_kernel_decide
theorem stats10824 : actualRows10824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10824=7428 := by core033_kernel_decide
theorem rows10825 : actualRows10825=WordField.canonicalRows actualModulus 10825 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10825 : actualRows10825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10825=2820 := by core033_kernel_decide
theorem rows10826 : actualRows10826=WordField.canonicalRows actualModulus 10826 (.bnot 10825) := by core033_kernel_decide
theorem stats10826 : actualRows10826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10826=6276 := by core033_kernel_decide
theorem rows10827 : actualRows10827=WordField.canonicalRows actualModulus 10827 (.band 10824 10826) := by core033_kernel_decide
theorem stats10827 : actualRows10827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10827=5124 := by core033_kernel_decide
theorem rows10828 : actualRows10828=WordField.canonicalRows actualModulus 10828 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10828 : actualRows10828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10828=2964 := by core033_kernel_decide
theorem rows10829 : actualRows10829=WordField.canonicalRows actualModulus 10829 (.bxor 0 10828) := by core033_kernel_decide
theorem stats10829 : actualRows10829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10829=7428 := by core033_kernel_decide
theorem rows10830 : actualRows10830=WordField.canonicalRows actualModulus 10830 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10830 : actualRows10830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10830=2820 := by core033_kernel_decide
theorem rows10831 : actualRows10831=WordField.canonicalRows actualModulus 10831 (.bnot 10830) := by core033_kernel_decide
theorem stats10831 : actualRows10831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10831=6276 := by core033_kernel_decide
theorem rows10832 : actualRows10832=WordField.canonicalRows actualModulus 10832 (.bxor 10829 10831) := by core033_kernel_decide
theorem stats10832 : actualRows10832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10832=7428 := by core033_kernel_decide
theorem rows10833 : actualRows10833=WordField.canonicalRows actualModulus 10833 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10833 : actualRows10833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10833=2964 := by core033_kernel_decide
theorem rows10834 : actualRows10834=WordField.canonicalRows actualModulus 10834 (.bxor 0 10833) := by core033_kernel_decide
theorem stats10834 : actualRows10834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10834=7428 := by core033_kernel_decide
theorem rows10835 : actualRows10835=WordField.canonicalRows actualModulus 10835 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10835 : actualRows10835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10835=2820 := by core033_kernel_decide
theorem rows10836 : actualRows10836=WordField.canonicalRows actualModulus 10836 (.bnot 10835) := by core033_kernel_decide
theorem stats10836 : actualRows10836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10836=6276 := by core033_kernel_decide
theorem rows10837 : actualRows10837=WordField.canonicalRows actualModulus 10837 (.badd 10834 10836) := by core033_kernel_decide
theorem stats10837 : actualRows10837.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10837=5388 := by core033_kernel_decide
theorem rows10838 : actualRows10838=WordField.canonicalRows actualModulus 10838 (.bnot 10837) := by core033_kernel_decide
theorem stats10838 : actualRows10838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10838=6276 := by core033_kernel_decide
theorem rows10839 : actualRows10839=WordField.canonicalRows actualModulus 10839 (.band 10832 10838) := by core033_kernel_decide
theorem stats10839 : actualRows10839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10839=5124 := by core033_kernel_decide
theorem rows10840 : actualRows10840=WordField.canonicalRows actualModulus 10840 (.bxor 10827 10839) := by core033_kernel_decide
theorem stats10840 : actualRows10840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10840=7428 := by core033_kernel_decide
theorem rows10841 : actualRows10841=WordField.canonicalRows actualModulus 10841 (.shr 10840 31) := by core033_kernel_decide
theorem stats10841 : actualRows10841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10841=2892 := by core033_kernel_decide
theorem rows10842 : actualRows10842=WordField.canonicalRows actualModulus 10842 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10842 : actualRows10842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10842=2892 := by core033_kernel_decide
theorem rows10843 : actualRows10843=WordField.canonicalRows actualModulus 10843 (.bxor 10841 10842) := by core033_kernel_decide
theorem stats10843 : actualRows10843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10843=7428 := by core033_kernel_decide
theorem rows10844 : actualRows10844=WordField.canonicalRows actualModulus 10844 (.bnot 10843) := by core033_kernel_decide
theorem stats10844 : actualRows10844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10844=6276 := by core033_kernel_decide
theorem rows10845 : actualRows10845=WordField.canonicalRows actualModulus 10845 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10845 : actualRows10845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10845=2892 := by core033_kernel_decide
theorem rows10846 : actualRows10846=WordField.canonicalRows actualModulus 10846 (.badd 10844 10845) := by core033_kernel_decide
theorem stats10846 : actualRows10846.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10846=5388 := by core033_kernel_decide
theorem rows10847 : actualRows10847=WordField.canonicalRows actualModulus 10847 (.bnot 10846) := by core033_kernel_decide
theorem stats10847 : actualRows10847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10847=6276 := by core033_kernel_decide
theorem rows10848 : actualRows10848=WordField.canonicalRows actualModulus 10848 (.band 10847 217) := by core033_kernel_decide
theorem stats10848 : actualRows10848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10848=5124 := by core033_kernel_decide
theorem rows10849 : actualRows10849=WordField.canonicalRows actualModulus 10849 (.bxor 10822 10848) := by core033_kernel_decide
theorem stats10849 : actualRows10849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10849=7428 := by core033_kernel_decide
theorem rows10850 : actualRows10850=WordField.canonicalRows actualModulus 10850 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10850 : actualRows10850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10850=2964 := by core033_kernel_decide
theorem rows10851 : actualRows10851=WordField.canonicalRows actualModulus 10851 (.bxor 0 10850) := by core033_kernel_decide
theorem stats10851 : actualRows10851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10851=7428 := by core033_kernel_decide
theorem rows10852 : actualRows10852=WordField.canonicalRows actualModulus 10852 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10852 : actualRows10852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10852=2820 := by core033_kernel_decide
theorem rows10853 : actualRows10853=WordField.canonicalRows actualModulus 10853 (.bnot 10852) := by core033_kernel_decide
theorem stats10853 : actualRows10853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10853=6276 := by core033_kernel_decide
theorem rows10854 : actualRows10854=WordField.canonicalRows actualModulus 10854 (.band 10851 10853) := by core033_kernel_decide
theorem stats10854 : actualRows10854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10854=5124 := by core033_kernel_decide
theorem rows10855 : actualRows10855=WordField.canonicalRows actualModulus 10855 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10855 : actualRows10855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10855=2964 := by core033_kernel_decide
theorem rows10856 : actualRows10856=WordField.canonicalRows actualModulus 10856 (.bxor 0 10855) := by core033_kernel_decide
theorem stats10856 : actualRows10856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10856=7428 := by core033_kernel_decide
theorem rows10857 : actualRows10857=WordField.canonicalRows actualModulus 10857 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10857 : actualRows10857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10857=2820 := by core033_kernel_decide
theorem rows10858 : actualRows10858=WordField.canonicalRows actualModulus 10858 (.bnot 10857) := by core033_kernel_decide
theorem stats10858 : actualRows10858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10858=6276 := by core033_kernel_decide
def partRows168 : List R1CS.Row := actualRows10795++actualRows10796++actualRows10797++actualRows10798++actualRows10799++actualRows10800++actualRows10801++actualRows10802++actualRows10803++actualRows10804++actualRows10805++actualRows10806++actualRows10807++actualRows10808++actualRows10809++actualRows10810++actualRows10811++actualRows10812++actualRows10813++actualRows10814++actualRows10815++actualRows10816++actualRows10817++actualRows10818++actualRows10819++actualRows10820++actualRows10821++actualRows10822++actualRows10823++actualRows10824++actualRows10825++actualRows10826++actualRows10827++actualRows10828++actualRows10829++actualRows10830++actualRows10831++actualRows10832++actualRows10833++actualRows10834++actualRows10835++actualRows10836++actualRows10837++actualRows10838++actualRows10839++actualRows10840++actualRows10841++actualRows10842++actualRows10843++actualRows10844++actualRows10845++actualRows10846++actualRows10847++actualRows10848++actualRows10849++actualRows10850++actualRows10851++actualRows10852++actualRows10853++actualRows10854++actualRows10855++actualRows10856++actualRows10857++actualRows10858
def partOps168 : List WordIR.Op := [.bnot 10794,.band 10795 206,.bxor 10770 10796,.literal (BitVec.ofNat 32 3),.bxor 0 10798,.literal (BitVec.ofNat 32 0),.bnot 10800,.band 10799 10801,.literal (BitVec.ofNat 32 3),.bxor 0 10803,.literal (BitVec.ofNat 32 0),.bnot 10805,.bxor 10804 10806,.literal (BitVec.ofNat 32 3),.bxor 0 10808,.literal (BitVec.ofNat 32 0),.bnot 10810,.badd 10809 10811,.bnot 10812,.band 10807 10813,.bxor 10802 10814,.shr 10815 31,.literal (BitVec.ofNat 32 1),.bxor 10816 10817,.bnot 10818,.literal (BitVec.ofNat 32 1),.badd 10819 10820,.band 10821 9886,.literal (BitVec.ofNat 32 3),.bxor 0 10823,.literal (BitVec.ofNat 32 0),.bnot 10825,.band 10824 10826,.literal (BitVec.ofNat 32 3),.bxor 0 10828,.literal (BitVec.ofNat 32 0),.bnot 10830,.bxor 10829 10831,.literal (BitVec.ofNat 32 3),.bxor 0 10833,.literal (BitVec.ofNat 32 0),.bnot 10835,.badd 10834 10836,.bnot 10837,.band 10832 10838,.bxor 10827 10839,.shr 10840 31,.literal (BitVec.ofNat 32 1),.bxor 10841 10842,.bnot 10843,.literal (BitVec.ofNat 32 1),.badd 10844 10845,.bnot 10846,.band 10847 217,.bxor 10822 10848,.literal (BitVec.ofNat 32 3),.bxor 0 10850,.literal (BitVec.ofNat 32 0),.bnot 10852,.band 10851 10853,.literal (BitVec.ofNat 32 3),.bxor 0 10855,.literal (BitVec.ofNat 32 0),.bnot 10857]
theorem partExact168 : partRows168=WordField.rows actualModulus 10795 partOps168 := by
  simp only [partRows168,partOps168,WordField.rows,rows10795,rows10796,rows10797,rows10798,rows10799,rows10800,rows10801,rows10802,rows10803,rows10804,rows10805,rows10806,rows10807,rows10808,rows10809,rows10810,rows10811,rows10812,rows10813,rows10814,rows10815,rows10816,rows10817,rows10818,rows10819,rows10820,rows10821,rows10822,rows10823,rows10824,rows10825,rows10826,rows10827,rows10828,rows10829,rows10830,rows10831,rows10832,rows10833,rows10834,rows10835,rows10836,rows10837,rows10838,rows10839,rows10840,rows10841,rows10842,rows10843,rows10844,rows10845,rows10846,rows10847,rows10848,rows10849,rows10850,rows10851,rows10852,rows10853,rows10854,rows10855,rows10856,rows10857,rows10858,List.append_assoc,List.append_nil]
theorem partLength168 : partOps168.length=64 := by decide
theorem partStats168 : partRows168.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows168=332880 := by
  simp only [partRows168,List.length_append,MatrixRowBlocks.rows_weight_append,stats10795.1,stats10795.2,stats10796.1,stats10796.2,stats10797.1,stats10797.2,stats10798.1,stats10798.2,stats10799.1,stats10799.2,stats10800.1,stats10800.2,stats10801.1,stats10801.2,stats10802.1,stats10802.2,stats10803.1,stats10803.2,stats10804.1,stats10804.2,stats10805.1,stats10805.2,stats10806.1,stats10806.2,stats10807.1,stats10807.2,stats10808.1,stats10808.2,stats10809.1,stats10809.2,stats10810.1,stats10810.2,stats10811.1,stats10811.2,stats10812.1,stats10812.2,stats10813.1,stats10813.2,stats10814.1,stats10814.2,stats10815.1,stats10815.2,stats10816.1,stats10816.2,stats10817.1,stats10817.2,stats10818.1,stats10818.2,stats10819.1,stats10819.2,stats10820.1,stats10820.2,stats10821.1,stats10821.2,stats10822.1,stats10822.2,stats10823.1,stats10823.2,stats10824.1,stats10824.2,stats10825.1,stats10825.2,stats10826.1,stats10826.2,stats10827.1,stats10827.2,stats10828.1,stats10828.2,stats10829.1,stats10829.2,stats10830.1,stats10830.2,stats10831.1,stats10831.2,stats10832.1,stats10832.2,stats10833.1,stats10833.2,stats10834.1,stats10834.2,stats10835.1,stats10835.2,stats10836.1,stats10836.2,stats10837.1,stats10837.2,stats10838.1,stats10838.2,stats10839.1,stats10839.2,stats10840.1,stats10840.2,stats10841.1,stats10841.2,stats10842.1,stats10842.2,stats10843.1,stats10843.2,stats10844.1,stats10844.2,stats10845.1,stats10845.2,stats10846.1,stats10846.2,stats10847.1,stats10847.2,stats10848.1,stats10848.2,stats10849.1,stats10849.2,stats10850.1,stats10850.2,stats10851.1,stats10851.2,stats10852.1,stats10852.2,stats10853.1,stats10853.2,stats10854.1,stats10854.2,stats10855.1,stats10855.2,stats10856.1,stats10856.2,stats10857.1,stats10857.2,stats10858.1,stats10858.2]
  decide
end PathRoundDispatchCheckedRows
