import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData168
import PairedPathRoundInstructionMatrixData169
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10784 : actualRows10784=WordField.canonicalRows actualModulus 10784 (.bnot 10783) := by core033_kernel_decide
theorem stats10784 : actualRows10784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10784=6276 := by core033_kernel_decide
theorem rows10785 : actualRows10785=WordField.canonicalRows actualModulus 10785 (.badd 10782 10784) := by core033_kernel_decide
theorem stats10785 : actualRows10785.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10785=5388 := by core033_kernel_decide
theorem rows10786 : actualRows10786=WordField.canonicalRows actualModulus 10786 (.bnot 10785) := by core033_kernel_decide
theorem stats10786 : actualRows10786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10786=6276 := by core033_kernel_decide
theorem rows10787 : actualRows10787=WordField.canonicalRows actualModulus 10787 (.band 10780 10786) := by core033_kernel_decide
theorem stats10787 : actualRows10787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10787=5124 := by core033_kernel_decide
theorem rows10788 : actualRows10788=WordField.canonicalRows actualModulus 10788 (.bxor 10775 10787) := by core033_kernel_decide
theorem stats10788 : actualRows10788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10788=7428 := by core033_kernel_decide
theorem rows10789 : actualRows10789=WordField.canonicalRows actualModulus 10789 (.shr 10788 31) := by core033_kernel_decide
theorem stats10789 : actualRows10789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10789=2892 := by core033_kernel_decide
theorem rows10790 : actualRows10790=WordField.canonicalRows actualModulus 10790 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10790 : actualRows10790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10790=2892 := by core033_kernel_decide
theorem rows10791 : actualRows10791=WordField.canonicalRows actualModulus 10791 (.bxor 10789 10790) := by core033_kernel_decide
theorem stats10791 : actualRows10791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10791=7428 := by core033_kernel_decide
theorem rows10792 : actualRows10792=WordField.canonicalRows actualModulus 10792 (.bnot 10791) := by core033_kernel_decide
theorem stats10792 : actualRows10792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10792=6276 := by core033_kernel_decide
theorem rows10793 : actualRows10793=WordField.canonicalRows actualModulus 10793 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10793 : actualRows10793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10793=2892 := by core033_kernel_decide
theorem rows10794 : actualRows10794=WordField.canonicalRows actualModulus 10794 (.badd 10792 10793) := by core033_kernel_decide
theorem stats10794 : actualRows10794.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10794=5388 := by core033_kernel_decide
theorem rows10795 : actualRows10795=WordField.canonicalRows actualModulus 10795 (.bnot 10794) := by core033_kernel_decide
theorem stats10795 : actualRows10795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10795=6276 := by core033_kernel_decide
theorem rows10796 : actualRows10796=WordField.canonicalRows actualModulus 10796 (.band 10795 9862) := by core033_kernel_decide
theorem stats10796 : actualRows10796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10796=5124 := by core033_kernel_decide
theorem rows10797 : actualRows10797=WordField.canonicalRows actualModulus 10797 (.bxor 10770 10796) := by core033_kernel_decide
theorem stats10797 : actualRows10797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10797=7428 := by core033_kernel_decide
theorem rows10798 : actualRows10798=WordField.canonicalRows actualModulus 10798 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10798 : actualRows10798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10798=2964 := by core033_kernel_decide
theorem rows10799 : actualRows10799=WordField.canonicalRows actualModulus 10799 (.bxor 442 10798) := by core033_kernel_decide
theorem stats10799 : actualRows10799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10799=7428 := by core033_kernel_decide
theorem rows10800 : actualRows10800=WordField.canonicalRows actualModulus 10800 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10800 : actualRows10800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10800=2820 := by core033_kernel_decide
theorem rows10801 : actualRows10801=WordField.canonicalRows actualModulus 10801 (.bnot 10800) := by core033_kernel_decide
theorem stats10801 : actualRows10801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10801=6276 := by core033_kernel_decide
theorem rows10802 : actualRows10802=WordField.canonicalRows actualModulus 10802 (.band 10799 10801) := by core033_kernel_decide
theorem stats10802 : actualRows10802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10802=5124 := by core033_kernel_decide
theorem rows10803 : actualRows10803=WordField.canonicalRows actualModulus 10803 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10803 : actualRows10803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10803=2964 := by core033_kernel_decide
theorem rows10804 : actualRows10804=WordField.canonicalRows actualModulus 10804 (.bxor 442 10803) := by core033_kernel_decide
theorem stats10804 : actualRows10804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10804=7428 := by core033_kernel_decide
theorem rows10805 : actualRows10805=WordField.canonicalRows actualModulus 10805 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10805 : actualRows10805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10805=2820 := by core033_kernel_decide
theorem rows10806 : actualRows10806=WordField.canonicalRows actualModulus 10806 (.bnot 10805) := by core033_kernel_decide
theorem stats10806 : actualRows10806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10806=6276 := by core033_kernel_decide
theorem rows10807 : actualRows10807=WordField.canonicalRows actualModulus 10807 (.bxor 10804 10806) := by core033_kernel_decide
theorem stats10807 : actualRows10807.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10807=7428 := by core033_kernel_decide
theorem rows10808 : actualRows10808=WordField.canonicalRows actualModulus 10808 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10808 : actualRows10808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10808=2964 := by core033_kernel_decide
theorem rows10809 : actualRows10809=WordField.canonicalRows actualModulus 10809 (.bxor 442 10808) := by core033_kernel_decide
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
theorem rows10822 : actualRows10822=WordField.canonicalRows actualModulus 10822 (.band 10821 9948) := by core033_kernel_decide
theorem stats10822 : actualRows10822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10822=5124 := by core033_kernel_decide
theorem rows10823 : actualRows10823=WordField.canonicalRows actualModulus 10823 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10823 : actualRows10823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10823=2964 := by core033_kernel_decide
theorem rows10824 : actualRows10824=WordField.canonicalRows actualModulus 10824 (.bxor 442 10823) := by core033_kernel_decide
theorem stats10824 : actualRows10824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10824=7428 := by core033_kernel_decide
theorem rows10825 : actualRows10825=WordField.canonicalRows actualModulus 10825 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10825 : actualRows10825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10825=2820 := by core033_kernel_decide
theorem rows10826 : actualRows10826=WordField.canonicalRows actualModulus 10826 (.bnot 10825) := by core033_kernel_decide
theorem stats10826 : actualRows10826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10826=6276 := by core033_kernel_decide
theorem rows10827 : actualRows10827=WordField.canonicalRows actualModulus 10827 (.band 10824 10826) := by core033_kernel_decide
theorem stats10827 : actualRows10827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10827=5124 := by core033_kernel_decide
theorem rows10828 : actualRows10828=WordField.canonicalRows actualModulus 10828 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10828 : actualRows10828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10828=2964 := by core033_kernel_decide
theorem rows10829 : actualRows10829=WordField.canonicalRows actualModulus 10829 (.bxor 442 10828) := by core033_kernel_decide
theorem stats10829 : actualRows10829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10829=7428 := by core033_kernel_decide
theorem rows10830 : actualRows10830=WordField.canonicalRows actualModulus 10830 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10830 : actualRows10830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10830=2820 := by core033_kernel_decide
theorem rows10831 : actualRows10831=WordField.canonicalRows actualModulus 10831 (.bnot 10830) := by core033_kernel_decide
theorem stats10831 : actualRows10831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10831=6276 := by core033_kernel_decide
theorem rows10832 : actualRows10832=WordField.canonicalRows actualModulus 10832 (.bxor 10829 10831) := by core033_kernel_decide
theorem stats10832 : actualRows10832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10832=7428 := by core033_kernel_decide
theorem rows10833 : actualRows10833=WordField.canonicalRows actualModulus 10833 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10833 : actualRows10833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10833=2964 := by core033_kernel_decide
theorem rows10834 : actualRows10834=WordField.canonicalRows actualModulus 10834 (.bxor 442 10833) := by core033_kernel_decide
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
def partRows167 : List R1CS.Row := actualRows10784++actualRows10785++actualRows10786++actualRows10787++actualRows10788++actualRows10789++actualRows10790++actualRows10791++actualRows10792++actualRows10793++actualRows10794++actualRows10795++actualRows10796++actualRows10797++actualRows10798++actualRows10799++actualRows10800++actualRows10801++actualRows10802++actualRows10803++actualRows10804++actualRows10805++actualRows10806++actualRows10807++actualRows10808++actualRows10809++actualRows10810++actualRows10811++actualRows10812++actualRows10813++actualRows10814++actualRows10815++actualRows10816++actualRows10817++actualRows10818++actualRows10819++actualRows10820++actualRows10821++actualRows10822++actualRows10823++actualRows10824++actualRows10825++actualRows10826++actualRows10827++actualRows10828++actualRows10829++actualRows10830++actualRows10831++actualRows10832++actualRows10833++actualRows10834++actualRows10835++actualRows10836++actualRows10837++actualRows10838++actualRows10839++actualRows10840++actualRows10841++actualRows10842++actualRows10843++actualRows10844++actualRows10845++actualRows10846++actualRows10847
def partOps167 : List WordIR.Op := [.bnot 10783,.badd 10782 10784,.bnot 10785,.band 10780 10786,.bxor 10775 10787,.shr 10788 31,.literal (BitVec.ofNat 32 1),.bxor 10789 10790,.bnot 10791,.literal (BitVec.ofNat 32 1),.badd 10792 10793,.bnot 10794,.band 10795 9862,.bxor 10770 10796,.literal (BitVec.ofNat 32 3),.bxor 442 10798,.literal (BitVec.ofNat 32 0),.bnot 10800,.band 10799 10801,.literal (BitVec.ofNat 32 3),.bxor 442 10803,.literal (BitVec.ofNat 32 0),.bnot 10805,.bxor 10804 10806,.literal (BitVec.ofNat 32 3),.bxor 442 10808,.literal (BitVec.ofNat 32 0),.bnot 10810,.badd 10809 10811,.bnot 10812,.band 10807 10813,.bxor 10802 10814,.shr 10815 31,.literal (BitVec.ofNat 32 1),.bxor 10816 10817,.bnot 10818,.literal (BitVec.ofNat 32 1),.badd 10819 10820,.band 10821 9948,.literal (BitVec.ofNat 32 3),.bxor 442 10823,.literal (BitVec.ofNat 32 0),.bnot 10825,.band 10824 10826,.literal (BitVec.ofNat 32 3),.bxor 442 10828,.literal (BitVec.ofNat 32 0),.bnot 10830,.bxor 10829 10831,.literal (BitVec.ofNat 32 3),.bxor 442 10833,.literal (BitVec.ofNat 32 0),.bnot 10835,.badd 10834 10836,.bnot 10837,.band 10832 10838,.bxor 10827 10839,.shr 10840 31,.literal (BitVec.ofNat 32 1),.bxor 10841 10842,.bnot 10843,.literal (BitVec.ofNat 32 1),.badd 10844 10845,.bnot 10846]
theorem partExact167 : partRows167=WordField.rows actualModulus 10784 partOps167 := by
  simp only [partRows167,partOps167,WordField.rows,rows10784,rows10785,rows10786,rows10787,rows10788,rows10789,rows10790,rows10791,rows10792,rows10793,rows10794,rows10795,rows10796,rows10797,rows10798,rows10799,rows10800,rows10801,rows10802,rows10803,rows10804,rows10805,rows10806,rows10807,rows10808,rows10809,rows10810,rows10811,rows10812,rows10813,rows10814,rows10815,rows10816,rows10817,rows10818,rows10819,rows10820,rows10821,rows10822,rows10823,rows10824,rows10825,rows10826,rows10827,rows10828,rows10829,rows10830,rows10831,rows10832,rows10833,rows10834,rows10835,rows10836,rows10837,rows10838,rows10839,rows10840,rows10841,rows10842,rows10843,rows10844,rows10845,rows10846,rows10847,List.append_assoc,List.append_nil]
theorem partLength167 : partOps167.length=64 := by decide
theorem partStats167 : partRows167.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows167=334488 := by
  simp only [partRows167,List.length_append,MatrixRowBlocks.rows_weight_append,stats10784.1,stats10784.2,stats10785.1,stats10785.2,stats10786.1,stats10786.2,stats10787.1,stats10787.2,stats10788.1,stats10788.2,stats10789.1,stats10789.2,stats10790.1,stats10790.2,stats10791.1,stats10791.2,stats10792.1,stats10792.2,stats10793.1,stats10793.2,stats10794.1,stats10794.2,stats10795.1,stats10795.2,stats10796.1,stats10796.2,stats10797.1,stats10797.2,stats10798.1,stats10798.2,stats10799.1,stats10799.2,stats10800.1,stats10800.2,stats10801.1,stats10801.2,stats10802.1,stats10802.2,stats10803.1,stats10803.2,stats10804.1,stats10804.2,stats10805.1,stats10805.2,stats10806.1,stats10806.2,stats10807.1,stats10807.2,stats10808.1,stats10808.2,stats10809.1,stats10809.2,stats10810.1,stats10810.2,stats10811.1,stats10811.2,stats10812.1,stats10812.2,stats10813.1,stats10813.2,stats10814.1,stats10814.2,stats10815.1,stats10815.2,stats10816.1,stats10816.2,stats10817.1,stats10817.2,stats10818.1,stats10818.2,stats10819.1,stats10819.2,stats10820.1,stats10820.2,stats10821.1,stats10821.2,stats10822.1,stats10822.2,stats10823.1,stats10823.2,stats10824.1,stats10824.2,stats10825.1,stats10825.2,stats10826.1,stats10826.2,stats10827.1,stats10827.2,stats10828.1,stats10828.2,stats10829.1,stats10829.2,stats10830.1,stats10830.2,stats10831.1,stats10831.2,stats10832.1,stats10832.2,stats10833.1,stats10833.2,stats10834.1,stats10834.2,stats10835.1,stats10835.2,stats10836.1,stats10836.2,stats10837.1,stats10837.2,stats10838.1,stats10838.2,stats10839.1,stats10839.2,stats10840.1,stats10840.2,stats10841.1,stats10841.2,stats10842.1,stats10842.2,stats10843.1,stats10843.2,stats10844.1,stats10844.2,stats10845.1,stats10845.2,stats10846.1,stats10846.2,stats10847.1,stats10847.2]
  decide
end QuotedPairedPathRoundCheckedRows
