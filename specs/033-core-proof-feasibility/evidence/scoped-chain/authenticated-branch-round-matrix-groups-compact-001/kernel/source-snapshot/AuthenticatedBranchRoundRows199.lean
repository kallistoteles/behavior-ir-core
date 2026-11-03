import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData200
import AuthenticatedBranchRoundInstructionMatrixData201
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12854 : actualRows12854=WordField.canonicalRows actualModulus 12854 (.bnot 12853) := by core033_kernel_decide
theorem stats12854 : actualRows12854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12854=6276 := by core033_kernel_decide
theorem rows12855 : actualRows12855=WordField.canonicalRows actualModulus 12855 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12855 : actualRows12855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12855=2892 := by core033_kernel_decide
theorem rows12856 : actualRows12856=WordField.canonicalRows actualModulus 12856 (.badd 12854 12855) := by core033_kernel_decide
theorem stats12856 : actualRows12856.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12856=5388 := by core033_kernel_decide
theorem rows12857 : actualRows12857=WordField.canonicalRows actualModulus 12857 (.band 12856 11139) := by core033_kernel_decide
theorem stats12857 : actualRows12857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12857=5124 := by core033_kernel_decide
theorem rows12858 : actualRows12858=WordField.canonicalRows actualModulus 12858 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12858 : actualRows12858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12858=2964 := by core033_kernel_decide
theorem rows12859 : actualRows12859=WordField.canonicalRows actualModulus 12859 (.bxor 693 12858) := by core033_kernel_decide
theorem stats12859 : actualRows12859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12859=7428 := by core033_kernel_decide
theorem rows12860 : actualRows12860=WordField.canonicalRows actualModulus 12860 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12860 : actualRows12860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12860=2820 := by core033_kernel_decide
theorem rows12861 : actualRows12861=WordField.canonicalRows actualModulus 12861 (.bnot 12860) := by core033_kernel_decide
theorem stats12861 : actualRows12861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12861=6276 := by core033_kernel_decide
theorem rows12862 : actualRows12862=WordField.canonicalRows actualModulus 12862 (.band 12859 12861) := by core033_kernel_decide
theorem stats12862 : actualRows12862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12862=5124 := by core033_kernel_decide
theorem rows12863 : actualRows12863=WordField.canonicalRows actualModulus 12863 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12863 : actualRows12863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12863=2964 := by core033_kernel_decide
theorem rows12864 : actualRows12864=WordField.canonicalRows actualModulus 12864 (.bxor 693 12863) := by core033_kernel_decide
theorem stats12864 : actualRows12864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12864=7428 := by core033_kernel_decide
theorem rows12865 : actualRows12865=WordField.canonicalRows actualModulus 12865 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12865 : actualRows12865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12865=2820 := by core033_kernel_decide
theorem rows12866 : actualRows12866=WordField.canonicalRows actualModulus 12866 (.bnot 12865) := by core033_kernel_decide
theorem stats12866 : actualRows12866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12866=6276 := by core033_kernel_decide
theorem rows12867 : actualRows12867=WordField.canonicalRows actualModulus 12867 (.bxor 12864 12866) := by core033_kernel_decide
theorem stats12867 : actualRows12867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12867=7428 := by core033_kernel_decide
theorem rows12868 : actualRows12868=WordField.canonicalRows actualModulus 12868 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12868 : actualRows12868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12868=2964 := by core033_kernel_decide
theorem rows12869 : actualRows12869=WordField.canonicalRows actualModulus 12869 (.bxor 693 12868) := by core033_kernel_decide
theorem stats12869 : actualRows12869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12869=7428 := by core033_kernel_decide
theorem rows12870 : actualRows12870=WordField.canonicalRows actualModulus 12870 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12870 : actualRows12870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12870=2820 := by core033_kernel_decide
theorem rows12871 : actualRows12871=WordField.canonicalRows actualModulus 12871 (.bnot 12870) := by core033_kernel_decide
theorem stats12871 : actualRows12871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12871=6276 := by core033_kernel_decide
theorem rows12872 : actualRows12872=WordField.canonicalRows actualModulus 12872 (.badd 12869 12871) := by core033_kernel_decide
theorem stats12872 : actualRows12872.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12872=5388 := by core033_kernel_decide
theorem rows12873 : actualRows12873=WordField.canonicalRows actualModulus 12873 (.bnot 12872) := by core033_kernel_decide
theorem stats12873 : actualRows12873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12873=6276 := by core033_kernel_decide
theorem rows12874 : actualRows12874=WordField.canonicalRows actualModulus 12874 (.band 12867 12873) := by core033_kernel_decide
theorem stats12874 : actualRows12874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12874=5124 := by core033_kernel_decide
theorem rows12875 : actualRows12875=WordField.canonicalRows actualModulus 12875 (.bxor 12862 12874) := by core033_kernel_decide
theorem stats12875 : actualRows12875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12875=7428 := by core033_kernel_decide
theorem rows12876 : actualRows12876=WordField.canonicalRows actualModulus 12876 (.shr 12875 31) := by core033_kernel_decide
theorem stats12876 : actualRows12876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12876=2892 := by core033_kernel_decide
theorem rows12877 : actualRows12877=WordField.canonicalRows actualModulus 12877 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12877 : actualRows12877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12877=2892 := by core033_kernel_decide
theorem rows12878 : actualRows12878=WordField.canonicalRows actualModulus 12878 (.bxor 12876 12877) := by core033_kernel_decide
theorem stats12878 : actualRows12878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12878=7428 := by core033_kernel_decide
theorem rows12879 : actualRows12879=WordField.canonicalRows actualModulus 12879 (.bnot 12878) := by core033_kernel_decide
theorem stats12879 : actualRows12879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12879=6276 := by core033_kernel_decide
theorem rows12880 : actualRows12880=WordField.canonicalRows actualModulus 12880 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12880 : actualRows12880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12880=2892 := by core033_kernel_decide
theorem rows12881 : actualRows12881=WordField.canonicalRows actualModulus 12881 (.badd 12879 12880) := by core033_kernel_decide
theorem stats12881 : actualRows12881.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12881=5388 := by core033_kernel_decide
theorem rows12882 : actualRows12882=WordField.canonicalRows actualModulus 12882 (.bnot 12881) := by core033_kernel_decide
theorem stats12882 : actualRows12882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12882=6276 := by core033_kernel_decide
theorem rows12883 : actualRows12883=WordField.canonicalRows actualModulus 12883 (.band 12882 1596) := by core033_kernel_decide
theorem stats12883 : actualRows12883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12883=5124 := by core033_kernel_decide
theorem rows12884 : actualRows12884=WordField.canonicalRows actualModulus 12884 (.bxor 12857 12883) := by core033_kernel_decide
theorem stats12884 : actualRows12884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12884=7428 := by core033_kernel_decide
theorem rows12885 : actualRows12885=WordField.canonicalRows actualModulus 12885 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12885 : actualRows12885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12885=2964 := by core033_kernel_decide
theorem rows12886 : actualRows12886=WordField.canonicalRows actualModulus 12886 (.bxor 693 12885) := by core033_kernel_decide
theorem stats12886 : actualRows12886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12886=7428 := by core033_kernel_decide
theorem rows12887 : actualRows12887=WordField.canonicalRows actualModulus 12887 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12887 : actualRows12887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12887=2820 := by core033_kernel_decide
theorem rows12888 : actualRows12888=WordField.canonicalRows actualModulus 12888 (.bnot 12887) := by core033_kernel_decide
theorem stats12888 : actualRows12888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12888=6276 := by core033_kernel_decide
theorem rows12889 : actualRows12889=WordField.canonicalRows actualModulus 12889 (.band 12886 12888) := by core033_kernel_decide
theorem stats12889 : actualRows12889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12889=5124 := by core033_kernel_decide
theorem rows12890 : actualRows12890=WordField.canonicalRows actualModulus 12890 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12890 : actualRows12890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12890=2964 := by core033_kernel_decide
theorem rows12891 : actualRows12891=WordField.canonicalRows actualModulus 12891 (.bxor 693 12890) := by core033_kernel_decide
theorem stats12891 : actualRows12891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12891=7428 := by core033_kernel_decide
theorem rows12892 : actualRows12892=WordField.canonicalRows actualModulus 12892 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12892 : actualRows12892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12892=2820 := by core033_kernel_decide
theorem rows12893 : actualRows12893=WordField.canonicalRows actualModulus 12893 (.bnot 12892) := by core033_kernel_decide
theorem stats12893 : actualRows12893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12893=6276 := by core033_kernel_decide
theorem rows12894 : actualRows12894=WordField.canonicalRows actualModulus 12894 (.bxor 12891 12893) := by core033_kernel_decide
theorem stats12894 : actualRows12894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12894=7428 := by core033_kernel_decide
theorem rows12895 : actualRows12895=WordField.canonicalRows actualModulus 12895 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12895 : actualRows12895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12895=2964 := by core033_kernel_decide
theorem rows12896 : actualRows12896=WordField.canonicalRows actualModulus 12896 (.bxor 693 12895) := by core033_kernel_decide
theorem stats12896 : actualRows12896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12896=7428 := by core033_kernel_decide
theorem rows12897 : actualRows12897=WordField.canonicalRows actualModulus 12897 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12897 : actualRows12897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12897=2820 := by core033_kernel_decide
theorem rows12898 : actualRows12898=WordField.canonicalRows actualModulus 12898 (.bnot 12897) := by core033_kernel_decide
theorem stats12898 : actualRows12898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12898=6276 := by core033_kernel_decide
theorem rows12899 : actualRows12899=WordField.canonicalRows actualModulus 12899 (.badd 12896 12898) := by core033_kernel_decide
theorem stats12899 : actualRows12899.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12899=5388 := by core033_kernel_decide
theorem rows12900 : actualRows12900=WordField.canonicalRows actualModulus 12900 (.bnot 12899) := by core033_kernel_decide
theorem stats12900 : actualRows12900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12900=6276 := by core033_kernel_decide
theorem rows12901 : actualRows12901=WordField.canonicalRows actualModulus 12901 (.band 12894 12900) := by core033_kernel_decide
theorem stats12901 : actualRows12901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12901=5124 := by core033_kernel_decide
theorem rows12902 : actualRows12902=WordField.canonicalRows actualModulus 12902 (.bxor 12889 12901) := by core033_kernel_decide
theorem stats12902 : actualRows12902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12902=7428 := by core033_kernel_decide
theorem rows12903 : actualRows12903=WordField.canonicalRows actualModulus 12903 (.shr 12902 31) := by core033_kernel_decide
theorem stats12903 : actualRows12903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12903=2892 := by core033_kernel_decide
theorem rows12904 : actualRows12904=WordField.canonicalRows actualModulus 12904 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12904 : actualRows12904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12904=2892 := by core033_kernel_decide
theorem rows12905 : actualRows12905=WordField.canonicalRows actualModulus 12905 (.bxor 12903 12904) := by core033_kernel_decide
theorem stats12905 : actualRows12905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12905=7428 := by core033_kernel_decide
theorem rows12906 : actualRows12906=WordField.canonicalRows actualModulus 12906 (.bnot 12905) := by core033_kernel_decide
theorem stats12906 : actualRows12906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12906=6276 := by core033_kernel_decide
theorem rows12907 : actualRows12907=WordField.canonicalRows actualModulus 12907 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12907 : actualRows12907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12907=2892 := by core033_kernel_decide
theorem rows12908 : actualRows12908=WordField.canonicalRows actualModulus 12908 (.badd 12906 12907) := by core033_kernel_decide
theorem stats12908 : actualRows12908.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12908=5388 := by core033_kernel_decide
theorem rows12909 : actualRows12909=WordField.canonicalRows actualModulus 12909 (.band 12908 11148) := by core033_kernel_decide
theorem stats12909 : actualRows12909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12909=5124 := by core033_kernel_decide
theorem rows12910 : actualRows12910=WordField.canonicalRows actualModulus 12910 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12910 : actualRows12910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12910=2964 := by core033_kernel_decide
theorem rows12911 : actualRows12911=WordField.canonicalRows actualModulus 12911 (.bxor 693 12910) := by core033_kernel_decide
theorem stats12911 : actualRows12911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12911=7428 := by core033_kernel_decide
theorem rows12912 : actualRows12912=WordField.canonicalRows actualModulus 12912 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12912 : actualRows12912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12912=2820 := by core033_kernel_decide
theorem rows12913 : actualRows12913=WordField.canonicalRows actualModulus 12913 (.bnot 12912) := by core033_kernel_decide
theorem stats12913 : actualRows12913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12913=6276 := by core033_kernel_decide
theorem rows12914 : actualRows12914=WordField.canonicalRows actualModulus 12914 (.band 12911 12913) := by core033_kernel_decide
theorem stats12914 : actualRows12914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12914=5124 := by core033_kernel_decide
theorem rows12915 : actualRows12915=WordField.canonicalRows actualModulus 12915 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12915 : actualRows12915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12915=2964 := by core033_kernel_decide
theorem rows12916 : actualRows12916=WordField.canonicalRows actualModulus 12916 (.bxor 693 12915) := by core033_kernel_decide
theorem stats12916 : actualRows12916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12916=7428 := by core033_kernel_decide
theorem rows12917 : actualRows12917=WordField.canonicalRows actualModulus 12917 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12917 : actualRows12917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12917=2820 := by core033_kernel_decide
def partRows199 : List R1CS.Row := actualRows12854++actualRows12855++actualRows12856++actualRows12857++actualRows12858++actualRows12859++actualRows12860++actualRows12861++actualRows12862++actualRows12863++actualRows12864++actualRows12865++actualRows12866++actualRows12867++actualRows12868++actualRows12869++actualRows12870++actualRows12871++actualRows12872++actualRows12873++actualRows12874++actualRows12875++actualRows12876++actualRows12877++actualRows12878++actualRows12879++actualRows12880++actualRows12881++actualRows12882++actualRows12883++actualRows12884++actualRows12885++actualRows12886++actualRows12887++actualRows12888++actualRows12889++actualRows12890++actualRows12891++actualRows12892++actualRows12893++actualRows12894++actualRows12895++actualRows12896++actualRows12897++actualRows12898++actualRows12899++actualRows12900++actualRows12901++actualRows12902++actualRows12903++actualRows12904++actualRows12905++actualRows12906++actualRows12907++actualRows12908++actualRows12909++actualRows12910++actualRows12911++actualRows12912++actualRows12913++actualRows12914++actualRows12915++actualRows12916++actualRows12917
def partOps199 : List WordIR.Op := [.bnot 12853,.literal (BitVec.ofNat 32 1),.badd 12854 12855,.band 12856 11139,.literal (BitVec.ofNat 32 3),.bxor 693 12858,.literal (BitVec.ofNat 32 0),.bnot 12860,.band 12859 12861,.literal (BitVec.ofNat 32 3),.bxor 693 12863,.literal (BitVec.ofNat 32 0),.bnot 12865,.bxor 12864 12866,.literal (BitVec.ofNat 32 3),.bxor 693 12868,.literal (BitVec.ofNat 32 0),.bnot 12870,.badd 12869 12871,.bnot 12872,.band 12867 12873,.bxor 12862 12874,.shr 12875 31,.literal (BitVec.ofNat 32 1),.bxor 12876 12877,.bnot 12878,.literal (BitVec.ofNat 32 1),.badd 12879 12880,.bnot 12881,.band 12882 1596,.bxor 12857 12883,.literal (BitVec.ofNat 32 3),.bxor 693 12885,.literal (BitVec.ofNat 32 0),.bnot 12887,.band 12886 12888,.literal (BitVec.ofNat 32 3),.bxor 693 12890,.literal (BitVec.ofNat 32 0),.bnot 12892,.bxor 12891 12893,.literal (BitVec.ofNat 32 3),.bxor 693 12895,.literal (BitVec.ofNat 32 0),.bnot 12897,.badd 12896 12898,.bnot 12899,.band 12894 12900,.bxor 12889 12901,.shr 12902 31,.literal (BitVec.ofNat 32 1),.bxor 12903 12904,.bnot 12905,.literal (BitVec.ofNat 32 1),.badd 12906 12907,.band 12908 11148,.literal (BitVec.ofNat 32 3),.bxor 693 12910,.literal (BitVec.ofNat 32 0),.bnot 12912,.band 12911 12913,.literal (BitVec.ofNat 32 3),.bxor 693 12915,.literal (BitVec.ofNat 32 0)]
theorem partExact199 : partRows199=WordField.rows actualModulus 12854 partOps199 := by
  simp only [partRows199,partOps199,WordField.rows,rows12854,rows12855,rows12856,rows12857,rows12858,rows12859,rows12860,rows12861,rows12862,rows12863,rows12864,rows12865,rows12866,rows12867,rows12868,rows12869,rows12870,rows12871,rows12872,rows12873,rows12874,rows12875,rows12876,rows12877,rows12878,rows12879,rows12880,rows12881,rows12882,rows12883,rows12884,rows12885,rows12886,rows12887,rows12888,rows12889,rows12890,rows12891,rows12892,rows12893,rows12894,rows12895,rows12896,rows12897,rows12898,rows12899,rows12900,rows12901,rows12902,rows12903,rows12904,rows12905,rows12906,rows12907,rows12908,rows12909,rows12910,rows12911,rows12912,rows12913,rows12914,rows12915,rows12916,rows12917,List.append_assoc,List.append_nil]
theorem partLength199 : partOps199.length=64 := by decide
theorem partStats199 : partRows199.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows199=327456 := by
  simp only [partRows199,List.length_append,MatrixRowBlocks.rows_weight_append,stats12854.1,stats12854.2,stats12855.1,stats12855.2,stats12856.1,stats12856.2,stats12857.1,stats12857.2,stats12858.1,stats12858.2,stats12859.1,stats12859.2,stats12860.1,stats12860.2,stats12861.1,stats12861.2,stats12862.1,stats12862.2,stats12863.1,stats12863.2,stats12864.1,stats12864.2,stats12865.1,stats12865.2,stats12866.1,stats12866.2,stats12867.1,stats12867.2,stats12868.1,stats12868.2,stats12869.1,stats12869.2,stats12870.1,stats12870.2,stats12871.1,stats12871.2,stats12872.1,stats12872.2,stats12873.1,stats12873.2,stats12874.1,stats12874.2,stats12875.1,stats12875.2,stats12876.1,stats12876.2,stats12877.1,stats12877.2,stats12878.1,stats12878.2,stats12879.1,stats12879.2,stats12880.1,stats12880.2,stats12881.1,stats12881.2,stats12882.1,stats12882.2,stats12883.1,stats12883.2,stats12884.1,stats12884.2,stats12885.1,stats12885.2,stats12886.1,stats12886.2,stats12887.1,stats12887.2,stats12888.1,stats12888.2,stats12889.1,stats12889.2,stats12890.1,stats12890.2,stats12891.1,stats12891.2,stats12892.1,stats12892.2,stats12893.1,stats12893.2,stats12894.1,stats12894.2,stats12895.1,stats12895.2,stats12896.1,stats12896.2,stats12897.1,stats12897.2,stats12898.1,stats12898.2,stats12899.1,stats12899.2,stats12900.1,stats12900.2,stats12901.1,stats12901.2,stats12902.1,stats12902.2,stats12903.1,stats12903.2,stats12904.1,stats12904.2,stats12905.1,stats12905.2,stats12906.1,stats12906.2,stats12907.1,stats12907.2,stats12908.1,stats12908.2,stats12909.1,stats12909.2,stats12910.1,stats12910.2,stats12911.1,stats12911.2,stats12912.1,stats12912.2,stats12913.1,stats12913.2,stats12914.1,stats12914.2,stats12915.1,stats12915.2,stats12916.1,stats12916.2,stats12917.1,stats12917.2]
  decide
end AuthenticatedBranchRoundCheckedRows
