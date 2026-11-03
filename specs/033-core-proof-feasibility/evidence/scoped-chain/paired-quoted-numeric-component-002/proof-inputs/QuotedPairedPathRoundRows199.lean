import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData200
import PairedPathRoundInstructionMatrixData201
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12832 : actualRows12832=WordField.canonicalRows actualModulus 12832 (.bxor 442 12831) := by core033_kernel_decide
theorem stats12832 : actualRows12832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12832=7428 := by core033_kernel_decide
theorem rows12833 : actualRows12833=WordField.canonicalRows actualModulus 12833 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12833 : actualRows12833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12833=2820 := by core033_kernel_decide
theorem rows12834 : actualRows12834=WordField.canonicalRows actualModulus 12834 (.bnot 12833) := by core033_kernel_decide
theorem stats12834 : actualRows12834.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12834=6276 := by core033_kernel_decide
theorem rows12835 : actualRows12835=WordField.canonicalRows actualModulus 12835 (.bxor 12832 12834) := by core033_kernel_decide
theorem stats12835 : actualRows12835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12835=7428 := by core033_kernel_decide
theorem rows12836 : actualRows12836=WordField.canonicalRows actualModulus 12836 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12836 : actualRows12836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12836=2964 := by core033_kernel_decide
theorem rows12837 : actualRows12837=WordField.canonicalRows actualModulus 12837 (.bxor 442 12836) := by core033_kernel_decide
theorem stats12837 : actualRows12837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12837=7428 := by core033_kernel_decide
theorem rows12838 : actualRows12838=WordField.canonicalRows actualModulus 12838 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12838 : actualRows12838.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12838=2820 := by core033_kernel_decide
theorem rows12839 : actualRows12839=WordField.canonicalRows actualModulus 12839 (.bnot 12838) := by core033_kernel_decide
theorem stats12839 : actualRows12839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12839=6276 := by core033_kernel_decide
theorem rows12840 : actualRows12840=WordField.canonicalRows actualModulus 12840 (.badd 12837 12839) := by core033_kernel_decide
theorem stats12840 : actualRows12840.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12840=5388 := by core033_kernel_decide
theorem rows12841 : actualRows12841=WordField.canonicalRows actualModulus 12841 (.bnot 12840) := by core033_kernel_decide
theorem stats12841 : actualRows12841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12841=6276 := by core033_kernel_decide
theorem rows12842 : actualRows12842=WordField.canonicalRows actualModulus 12842 (.band 12835 12841) := by core033_kernel_decide
theorem stats12842 : actualRows12842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12842=5124 := by core033_kernel_decide
theorem rows12843 : actualRows12843=WordField.canonicalRows actualModulus 12843 (.bxor 12830 12842) := by core033_kernel_decide
theorem stats12843 : actualRows12843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12843=7428 := by core033_kernel_decide
theorem rows12844 : actualRows12844=WordField.canonicalRows actualModulus 12844 (.shr 12843 31) := by core033_kernel_decide
theorem stats12844 : actualRows12844.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12844=2892 := by core033_kernel_decide
theorem rows12845 : actualRows12845=WordField.canonicalRows actualModulus 12845 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12845 : actualRows12845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12845=2892 := by core033_kernel_decide
theorem rows12846 : actualRows12846=WordField.canonicalRows actualModulus 12846 (.bxor 12844 12845) := by core033_kernel_decide
theorem stats12846 : actualRows12846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12846=7428 := by core033_kernel_decide
theorem rows12847 : actualRows12847=WordField.canonicalRows actualModulus 12847 (.bnot 12846) := by core033_kernel_decide
theorem stats12847 : actualRows12847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12847=6276 := by core033_kernel_decide
theorem rows12848 : actualRows12848=WordField.canonicalRows actualModulus 12848 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12848 : actualRows12848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12848=2892 := by core033_kernel_decide
theorem rows12849 : actualRows12849=WordField.canonicalRows actualModulus 12849 (.badd 12847 12848) := by core033_kernel_decide
theorem stats12849 : actualRows12849.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12849=5388 := by core033_kernel_decide
theorem rows12850 : actualRows12850=WordField.canonicalRows actualModulus 12850 (.band 12849 10377) := by core033_kernel_decide
theorem stats12850 : actualRows12850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12850=5124 := by core033_kernel_decide
theorem rows12851 : actualRows12851=WordField.canonicalRows actualModulus 12851 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12851 : actualRows12851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12851=2964 := by core033_kernel_decide
theorem rows12852 : actualRows12852=WordField.canonicalRows actualModulus 12852 (.bxor 442 12851) := by core033_kernel_decide
theorem stats12852 : actualRows12852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12852=7428 := by core033_kernel_decide
theorem rows12853 : actualRows12853=WordField.canonicalRows actualModulus 12853 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12853 : actualRows12853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12853=2820 := by core033_kernel_decide
theorem rows12854 : actualRows12854=WordField.canonicalRows actualModulus 12854 (.bnot 12853) := by core033_kernel_decide
theorem stats12854 : actualRows12854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12854=6276 := by core033_kernel_decide
theorem rows12855 : actualRows12855=WordField.canonicalRows actualModulus 12855 (.band 12852 12854) := by core033_kernel_decide
theorem stats12855 : actualRows12855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12855=5124 := by core033_kernel_decide
theorem rows12856 : actualRows12856=WordField.canonicalRows actualModulus 12856 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12856 : actualRows12856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12856=2964 := by core033_kernel_decide
theorem rows12857 : actualRows12857=WordField.canonicalRows actualModulus 12857 (.bxor 442 12856) := by core033_kernel_decide
theorem stats12857 : actualRows12857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12857=7428 := by core033_kernel_decide
theorem rows12858 : actualRows12858=WordField.canonicalRows actualModulus 12858 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12858 : actualRows12858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12858=2820 := by core033_kernel_decide
theorem rows12859 : actualRows12859=WordField.canonicalRows actualModulus 12859 (.bnot 12858) := by core033_kernel_decide
theorem stats12859 : actualRows12859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12859=6276 := by core033_kernel_decide
theorem rows12860 : actualRows12860=WordField.canonicalRows actualModulus 12860 (.bxor 12857 12859) := by core033_kernel_decide
theorem stats12860 : actualRows12860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12860=7428 := by core033_kernel_decide
theorem rows12861 : actualRows12861=WordField.canonicalRows actualModulus 12861 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12861 : actualRows12861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12861=2964 := by core033_kernel_decide
theorem rows12862 : actualRows12862=WordField.canonicalRows actualModulus 12862 (.bxor 442 12861) := by core033_kernel_decide
theorem stats12862 : actualRows12862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12862=7428 := by core033_kernel_decide
theorem rows12863 : actualRows12863=WordField.canonicalRows actualModulus 12863 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12863 : actualRows12863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12863=2820 := by core033_kernel_decide
theorem rows12864 : actualRows12864=WordField.canonicalRows actualModulus 12864 (.bnot 12863) := by core033_kernel_decide
theorem stats12864 : actualRows12864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12864=6276 := by core033_kernel_decide
theorem rows12865 : actualRows12865=WordField.canonicalRows actualModulus 12865 (.badd 12862 12864) := by core033_kernel_decide
theorem stats12865 : actualRows12865.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12865=5388 := by core033_kernel_decide
theorem rows12866 : actualRows12866=WordField.canonicalRows actualModulus 12866 (.bnot 12865) := by core033_kernel_decide
theorem stats12866 : actualRows12866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12866=6276 := by core033_kernel_decide
theorem rows12867 : actualRows12867=WordField.canonicalRows actualModulus 12867 (.band 12860 12866) := by core033_kernel_decide
theorem stats12867 : actualRows12867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12867=5124 := by core033_kernel_decide
theorem rows12868 : actualRows12868=WordField.canonicalRows actualModulus 12868 (.bxor 12855 12867) := by core033_kernel_decide
theorem stats12868 : actualRows12868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12868=7428 := by core033_kernel_decide
theorem rows12869 : actualRows12869=WordField.canonicalRows actualModulus 12869 (.shr 12868 31) := by core033_kernel_decide
theorem stats12869 : actualRows12869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12869=2892 := by core033_kernel_decide
theorem rows12870 : actualRows12870=WordField.canonicalRows actualModulus 12870 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12870 : actualRows12870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12870=2892 := by core033_kernel_decide
theorem rows12871 : actualRows12871=WordField.canonicalRows actualModulus 12871 (.bxor 12869 12870) := by core033_kernel_decide
theorem stats12871 : actualRows12871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12871=7428 := by core033_kernel_decide
theorem rows12872 : actualRows12872=WordField.canonicalRows actualModulus 12872 (.bnot 12871) := by core033_kernel_decide
theorem stats12872 : actualRows12872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12872=6276 := by core033_kernel_decide
theorem rows12873 : actualRows12873=WordField.canonicalRows actualModulus 12873 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12873 : actualRows12873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12873=2892 := by core033_kernel_decide
theorem rows12874 : actualRows12874=WordField.canonicalRows actualModulus 12874 (.badd 12872 12873) := by core033_kernel_decide
theorem stats12874 : actualRows12874.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12874=5388 := by core033_kernel_decide
theorem rows12875 : actualRows12875=WordField.canonicalRows actualModulus 12875 (.bnot 12874) := by core033_kernel_decide
theorem stats12875 : actualRows12875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12875=6276 := by core033_kernel_decide
theorem rows12876 : actualRows12876=WordField.canonicalRows actualModulus 12876 (.band 12875 9806) := by core033_kernel_decide
theorem stats12876 : actualRows12876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12876=5124 := by core033_kernel_decide
theorem rows12877 : actualRows12877=WordField.canonicalRows actualModulus 12877 (.bxor 12850 12876) := by core033_kernel_decide
theorem stats12877 : actualRows12877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12877=7428 := by core033_kernel_decide
theorem rows12878 : actualRows12878=WordField.canonicalRows actualModulus 12878 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12878 : actualRows12878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12878=2964 := by core033_kernel_decide
theorem rows12879 : actualRows12879=WordField.canonicalRows actualModulus 12879 (.bxor 442 12878) := by core033_kernel_decide
theorem stats12879 : actualRows12879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12879=7428 := by core033_kernel_decide
theorem rows12880 : actualRows12880=WordField.canonicalRows actualModulus 12880 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12880 : actualRows12880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12880=2820 := by core033_kernel_decide
theorem rows12881 : actualRows12881=WordField.canonicalRows actualModulus 12881 (.bnot 12880) := by core033_kernel_decide
theorem stats12881 : actualRows12881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12881=6276 := by core033_kernel_decide
theorem rows12882 : actualRows12882=WordField.canonicalRows actualModulus 12882 (.band 12879 12881) := by core033_kernel_decide
theorem stats12882 : actualRows12882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12882=5124 := by core033_kernel_decide
theorem rows12883 : actualRows12883=WordField.canonicalRows actualModulus 12883 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12883 : actualRows12883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12883=2964 := by core033_kernel_decide
theorem rows12884 : actualRows12884=WordField.canonicalRows actualModulus 12884 (.bxor 442 12883) := by core033_kernel_decide
theorem stats12884 : actualRows12884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12884=7428 := by core033_kernel_decide
theorem rows12885 : actualRows12885=WordField.canonicalRows actualModulus 12885 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12885 : actualRows12885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12885=2820 := by core033_kernel_decide
theorem rows12886 : actualRows12886=WordField.canonicalRows actualModulus 12886 (.bnot 12885) := by core033_kernel_decide
theorem stats12886 : actualRows12886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12886=6276 := by core033_kernel_decide
theorem rows12887 : actualRows12887=WordField.canonicalRows actualModulus 12887 (.bxor 12884 12886) := by core033_kernel_decide
theorem stats12887 : actualRows12887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12887=7428 := by core033_kernel_decide
theorem rows12888 : actualRows12888=WordField.canonicalRows actualModulus 12888 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12888 : actualRows12888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12888=2964 := by core033_kernel_decide
theorem rows12889 : actualRows12889=WordField.canonicalRows actualModulus 12889 (.bxor 442 12888) := by core033_kernel_decide
theorem stats12889 : actualRows12889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12889=7428 := by core033_kernel_decide
theorem rows12890 : actualRows12890=WordField.canonicalRows actualModulus 12890 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12890 : actualRows12890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12890=2820 := by core033_kernel_decide
theorem rows12891 : actualRows12891=WordField.canonicalRows actualModulus 12891 (.bnot 12890) := by core033_kernel_decide
theorem stats12891 : actualRows12891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12891=6276 := by core033_kernel_decide
theorem rows12892 : actualRows12892=WordField.canonicalRows actualModulus 12892 (.badd 12889 12891) := by core033_kernel_decide
theorem stats12892 : actualRows12892.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12892=5388 := by core033_kernel_decide
theorem rows12893 : actualRows12893=WordField.canonicalRows actualModulus 12893 (.bnot 12892) := by core033_kernel_decide
theorem stats12893 : actualRows12893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12893=6276 := by core033_kernel_decide
theorem rows12894 : actualRows12894=WordField.canonicalRows actualModulus 12894 (.band 12887 12893) := by core033_kernel_decide
theorem stats12894 : actualRows12894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12894=5124 := by core033_kernel_decide
theorem rows12895 : actualRows12895=WordField.canonicalRows actualModulus 12895 (.bxor 12882 12894) := by core033_kernel_decide
theorem stats12895 : actualRows12895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12895=7428 := by core033_kernel_decide
def partRows199 : List R1CS.Row := actualRows12832++actualRows12833++actualRows12834++actualRows12835++actualRows12836++actualRows12837++actualRows12838++actualRows12839++actualRows12840++actualRows12841++actualRows12842++actualRows12843++actualRows12844++actualRows12845++actualRows12846++actualRows12847++actualRows12848++actualRows12849++actualRows12850++actualRows12851++actualRows12852++actualRows12853++actualRows12854++actualRows12855++actualRows12856++actualRows12857++actualRows12858++actualRows12859++actualRows12860++actualRows12861++actualRows12862++actualRows12863++actualRows12864++actualRows12865++actualRows12866++actualRows12867++actualRows12868++actualRows12869++actualRows12870++actualRows12871++actualRows12872++actualRows12873++actualRows12874++actualRows12875++actualRows12876++actualRows12877++actualRows12878++actualRows12879++actualRows12880++actualRows12881++actualRows12882++actualRows12883++actualRows12884++actualRows12885++actualRows12886++actualRows12887++actualRows12888++actualRows12889++actualRows12890++actualRows12891++actualRows12892++actualRows12893++actualRows12894++actualRows12895
def partOps199 : List WordIR.Op := [.bxor 442 12831,.literal (BitVec.ofNat 32 0),.bnot 12833,.bxor 12832 12834,.literal (BitVec.ofNat 32 3),.bxor 442 12836,.literal (BitVec.ofNat 32 0),.bnot 12838,.badd 12837 12839,.bnot 12840,.band 12835 12841,.bxor 12830 12842,.shr 12843 31,.literal (BitVec.ofNat 32 1),.bxor 12844 12845,.bnot 12846,.literal (BitVec.ofNat 32 1),.badd 12847 12848,.band 12849 10377,.literal (BitVec.ofNat 32 3),.bxor 442 12851,.literal (BitVec.ofNat 32 0),.bnot 12853,.band 12852 12854,.literal (BitVec.ofNat 32 3),.bxor 442 12856,.literal (BitVec.ofNat 32 0),.bnot 12858,.bxor 12857 12859,.literal (BitVec.ofNat 32 3),.bxor 442 12861,.literal (BitVec.ofNat 32 0),.bnot 12863,.badd 12862 12864,.bnot 12865,.band 12860 12866,.bxor 12855 12867,.shr 12868 31,.literal (BitVec.ofNat 32 1),.bxor 12869 12870,.bnot 12871,.literal (BitVec.ofNat 32 1),.badd 12872 12873,.bnot 12874,.band 12875 9806,.bxor 12850 12876,.literal (BitVec.ofNat 32 3),.bxor 442 12878,.literal (BitVec.ofNat 32 0),.bnot 12880,.band 12879 12881,.literal (BitVec.ofNat 32 3),.bxor 442 12883,.literal (BitVec.ofNat 32 0),.bnot 12885,.bxor 12884 12886,.literal (BitVec.ofNat 32 3),.bxor 442 12888,.literal (BitVec.ofNat 32 0),.bnot 12890,.badd 12889 12891,.bnot 12892,.band 12887 12893,.bxor 12882 12894]
theorem partExact199 : partRows199=WordField.rows actualModulus 12832 partOps199 := by
  simp only [partRows199,partOps199,WordField.rows,rows12832,rows12833,rows12834,rows12835,rows12836,rows12837,rows12838,rows12839,rows12840,rows12841,rows12842,rows12843,rows12844,rows12845,rows12846,rows12847,rows12848,rows12849,rows12850,rows12851,rows12852,rows12853,rows12854,rows12855,rows12856,rows12857,rows12858,rows12859,rows12860,rows12861,rows12862,rows12863,rows12864,rows12865,rows12866,rows12867,rows12868,rows12869,rows12870,rows12871,rows12872,rows12873,rows12874,rows12875,rows12876,rows12877,rows12878,rows12879,rows12880,rows12881,rows12882,rows12883,rows12884,rows12885,rows12886,rows12887,rows12888,rows12889,rows12890,rows12891,rows12892,rows12893,rows12894,rows12895,List.append_assoc,List.append_nil]
theorem partLength199 : partOps199.length=64 := by decide
theorem partStats199 : partRows199.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows199=337608 := by
  simp only [partRows199,List.length_append,MatrixRowBlocks.rows_weight_append,stats12832.1,stats12832.2,stats12833.1,stats12833.2,stats12834.1,stats12834.2,stats12835.1,stats12835.2,stats12836.1,stats12836.2,stats12837.1,stats12837.2,stats12838.1,stats12838.2,stats12839.1,stats12839.2,stats12840.1,stats12840.2,stats12841.1,stats12841.2,stats12842.1,stats12842.2,stats12843.1,stats12843.2,stats12844.1,stats12844.2,stats12845.1,stats12845.2,stats12846.1,stats12846.2,stats12847.1,stats12847.2,stats12848.1,stats12848.2,stats12849.1,stats12849.2,stats12850.1,stats12850.2,stats12851.1,stats12851.2,stats12852.1,stats12852.2,stats12853.1,stats12853.2,stats12854.1,stats12854.2,stats12855.1,stats12855.2,stats12856.1,stats12856.2,stats12857.1,stats12857.2,stats12858.1,stats12858.2,stats12859.1,stats12859.2,stats12860.1,stats12860.2,stats12861.1,stats12861.2,stats12862.1,stats12862.2,stats12863.1,stats12863.2,stats12864.1,stats12864.2,stats12865.1,stats12865.2,stats12866.1,stats12866.2,stats12867.1,stats12867.2,stats12868.1,stats12868.2,stats12869.1,stats12869.2,stats12870.1,stats12870.2,stats12871.1,stats12871.2,stats12872.1,stats12872.2,stats12873.1,stats12873.2,stats12874.1,stats12874.2,stats12875.1,stats12875.2,stats12876.1,stats12876.2,stats12877.1,stats12877.2,stats12878.1,stats12878.2,stats12879.1,stats12879.2,stats12880.1,stats12880.2,stats12881.1,stats12881.2,stats12882.1,stats12882.2,stats12883.1,stats12883.2,stats12884.1,stats12884.2,stats12885.1,stats12885.2,stats12886.1,stats12886.2,stats12887.1,stats12887.2,stats12888.1,stats12888.2,stats12889.1,stats12889.2,stats12890.1,stats12890.2,stats12891.1,stats12891.2,stats12892.1,stats12892.2,stats12893.1,stats12893.2,stats12894.1,stats12894.2,stats12895.1,stats12895.2]
  decide
end QuotedPairedPathRoundCheckedRows
