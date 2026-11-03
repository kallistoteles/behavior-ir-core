import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData169
import PathRoundDispatchInstructionMatrixData170
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10859 : actualRows10859=WordField.canonicalRows actualModulus 10859 (.bxor 10856 10858) := by core033_kernel_decide
theorem stats10859 : actualRows10859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10859=7428 := by core033_kernel_decide
theorem rows10860 : actualRows10860=WordField.canonicalRows actualModulus 10860 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10860 : actualRows10860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10860=2964 := by core033_kernel_decide
theorem rows10861 : actualRows10861=WordField.canonicalRows actualModulus 10861 (.bxor 0 10860) := by core033_kernel_decide
theorem stats10861 : actualRows10861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10861=7428 := by core033_kernel_decide
theorem rows10862 : actualRows10862=WordField.canonicalRows actualModulus 10862 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10862 : actualRows10862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10862=2820 := by core033_kernel_decide
theorem rows10863 : actualRows10863=WordField.canonicalRows actualModulus 10863 (.bnot 10862) := by core033_kernel_decide
theorem stats10863 : actualRows10863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10863=6276 := by core033_kernel_decide
theorem rows10864 : actualRows10864=WordField.canonicalRows actualModulus 10864 (.badd 10861 10863) := by core033_kernel_decide
theorem stats10864 : actualRows10864.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10864=5388 := by core033_kernel_decide
theorem rows10865 : actualRows10865=WordField.canonicalRows actualModulus 10865 (.bnot 10864) := by core033_kernel_decide
theorem stats10865 : actualRows10865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10865=6276 := by core033_kernel_decide
theorem rows10866 : actualRows10866=WordField.canonicalRows actualModulus 10866 (.band 10859 10865) := by core033_kernel_decide
theorem stats10866 : actualRows10866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10866=5124 := by core033_kernel_decide
theorem rows10867 : actualRows10867=WordField.canonicalRows actualModulus 10867 (.bxor 10854 10866) := by core033_kernel_decide
theorem stats10867 : actualRows10867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10867=7428 := by core033_kernel_decide
theorem rows10868 : actualRows10868=WordField.canonicalRows actualModulus 10868 (.shr 10867 31) := by core033_kernel_decide
theorem stats10868 : actualRows10868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10868=2892 := by core033_kernel_decide
theorem rows10869 : actualRows10869=WordField.canonicalRows actualModulus 10869 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10869 : actualRows10869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10869=2892 := by core033_kernel_decide
theorem rows10870 : actualRows10870=WordField.canonicalRows actualModulus 10870 (.bxor 10868 10869) := by core033_kernel_decide
theorem stats10870 : actualRows10870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10870=7428 := by core033_kernel_decide
theorem rows10871 : actualRows10871=WordField.canonicalRows actualModulus 10871 (.bnot 10870) := by core033_kernel_decide
theorem stats10871 : actualRows10871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10871=6276 := by core033_kernel_decide
theorem rows10872 : actualRows10872=WordField.canonicalRows actualModulus 10872 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10872 : actualRows10872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10872=2892 := by core033_kernel_decide
theorem rows10873 : actualRows10873=WordField.canonicalRows actualModulus 10873 (.badd 10871 10872) := by core033_kernel_decide
theorem stats10873 : actualRows10873.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10873=5388 := by core033_kernel_decide
theorem rows10874 : actualRows10874=WordField.canonicalRows actualModulus 10874 (.band 10873 9893) := by core033_kernel_decide
theorem stats10874 : actualRows10874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10874=5124 := by core033_kernel_decide
theorem rows10875 : actualRows10875=WordField.canonicalRows actualModulus 10875 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10875 : actualRows10875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10875=2964 := by core033_kernel_decide
theorem rows10876 : actualRows10876=WordField.canonicalRows actualModulus 10876 (.bxor 0 10875) := by core033_kernel_decide
theorem stats10876 : actualRows10876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10876=7428 := by core033_kernel_decide
theorem rows10877 : actualRows10877=WordField.canonicalRows actualModulus 10877 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10877 : actualRows10877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10877=2820 := by core033_kernel_decide
theorem rows10878 : actualRows10878=WordField.canonicalRows actualModulus 10878 (.bnot 10877) := by core033_kernel_decide
theorem stats10878 : actualRows10878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10878=6276 := by core033_kernel_decide
theorem rows10879 : actualRows10879=WordField.canonicalRows actualModulus 10879 (.band 10876 10878) := by core033_kernel_decide
theorem stats10879 : actualRows10879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10879=5124 := by core033_kernel_decide
theorem rows10880 : actualRows10880=WordField.canonicalRows actualModulus 10880 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10880 : actualRows10880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10880=2964 := by core033_kernel_decide
theorem rows10881 : actualRows10881=WordField.canonicalRows actualModulus 10881 (.bxor 0 10880) := by core033_kernel_decide
theorem stats10881 : actualRows10881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10881=7428 := by core033_kernel_decide
theorem rows10882 : actualRows10882=WordField.canonicalRows actualModulus 10882 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10882 : actualRows10882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10882=2820 := by core033_kernel_decide
theorem rows10883 : actualRows10883=WordField.canonicalRows actualModulus 10883 (.bnot 10882) := by core033_kernel_decide
theorem stats10883 : actualRows10883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10883=6276 := by core033_kernel_decide
theorem rows10884 : actualRows10884=WordField.canonicalRows actualModulus 10884 (.bxor 10881 10883) := by core033_kernel_decide
theorem stats10884 : actualRows10884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10884=7428 := by core033_kernel_decide
theorem rows10885 : actualRows10885=WordField.canonicalRows actualModulus 10885 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10885 : actualRows10885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10885=2964 := by core033_kernel_decide
theorem rows10886 : actualRows10886=WordField.canonicalRows actualModulus 10886 (.bxor 0 10885) := by core033_kernel_decide
theorem stats10886 : actualRows10886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10886=7428 := by core033_kernel_decide
theorem rows10887 : actualRows10887=WordField.canonicalRows actualModulus 10887 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10887 : actualRows10887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10887=2820 := by core033_kernel_decide
theorem rows10888 : actualRows10888=WordField.canonicalRows actualModulus 10888 (.bnot 10887) := by core033_kernel_decide
theorem stats10888 : actualRows10888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10888=6276 := by core033_kernel_decide
theorem rows10889 : actualRows10889=WordField.canonicalRows actualModulus 10889 (.badd 10886 10888) := by core033_kernel_decide
theorem stats10889 : actualRows10889.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10889=5388 := by core033_kernel_decide
theorem rows10890 : actualRows10890=WordField.canonicalRows actualModulus 10890 (.bnot 10889) := by core033_kernel_decide
theorem stats10890 : actualRows10890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10890=6276 := by core033_kernel_decide
theorem rows10891 : actualRows10891=WordField.canonicalRows actualModulus 10891 (.band 10884 10890) := by core033_kernel_decide
theorem stats10891 : actualRows10891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10891=5124 := by core033_kernel_decide
theorem rows10892 : actualRows10892=WordField.canonicalRows actualModulus 10892 (.bxor 10879 10891) := by core033_kernel_decide
theorem stats10892 : actualRows10892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10892=7428 := by core033_kernel_decide
theorem rows10893 : actualRows10893=WordField.canonicalRows actualModulus 10893 (.shr 10892 31) := by core033_kernel_decide
theorem stats10893 : actualRows10893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10893=2892 := by core033_kernel_decide
theorem rows10894 : actualRows10894=WordField.canonicalRows actualModulus 10894 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10894 : actualRows10894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10894=2892 := by core033_kernel_decide
theorem rows10895 : actualRows10895=WordField.canonicalRows actualModulus 10895 (.bxor 10893 10894) := by core033_kernel_decide
theorem stats10895 : actualRows10895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10895=7428 := by core033_kernel_decide
theorem rows10896 : actualRows10896=WordField.canonicalRows actualModulus 10896 (.bnot 10895) := by core033_kernel_decide
theorem stats10896 : actualRows10896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10896=6276 := by core033_kernel_decide
theorem rows10897 : actualRows10897=WordField.canonicalRows actualModulus 10897 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10897 : actualRows10897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10897=2892 := by core033_kernel_decide
theorem rows10898 : actualRows10898=WordField.canonicalRows actualModulus 10898 (.badd 10896 10897) := by core033_kernel_decide
theorem stats10898 : actualRows10898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10898=5388 := by core033_kernel_decide
theorem rows10899 : actualRows10899=WordField.canonicalRows actualModulus 10899 (.bnot 10898) := by core033_kernel_decide
theorem stats10899 : actualRows10899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10899=6276 := by core033_kernel_decide
theorem rows10900 : actualRows10900=WordField.canonicalRows actualModulus 10900 (.band 10899 228) := by core033_kernel_decide
theorem stats10900 : actualRows10900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10900=5124 := by core033_kernel_decide
theorem rows10901 : actualRows10901=WordField.canonicalRows actualModulus 10901 (.bxor 10874 10900) := by core033_kernel_decide
theorem stats10901 : actualRows10901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10901=7428 := by core033_kernel_decide
theorem rows10902 : actualRows10902=WordField.canonicalRows actualModulus 10902 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10902 : actualRows10902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10902=2964 := by core033_kernel_decide
theorem rows10903 : actualRows10903=WordField.canonicalRows actualModulus 10903 (.bxor 0 10902) := by core033_kernel_decide
theorem stats10903 : actualRows10903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10903=7428 := by core033_kernel_decide
theorem rows10904 : actualRows10904=WordField.canonicalRows actualModulus 10904 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10904 : actualRows10904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10904=2820 := by core033_kernel_decide
theorem rows10905 : actualRows10905=WordField.canonicalRows actualModulus 10905 (.bnot 10904) := by core033_kernel_decide
theorem stats10905 : actualRows10905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10905=6276 := by core033_kernel_decide
theorem rows10906 : actualRows10906=WordField.canonicalRows actualModulus 10906 (.band 10903 10905) := by core033_kernel_decide
theorem stats10906 : actualRows10906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10906=5124 := by core033_kernel_decide
theorem rows10907 : actualRows10907=WordField.canonicalRows actualModulus 10907 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10907 : actualRows10907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10907=2964 := by core033_kernel_decide
theorem rows10908 : actualRows10908=WordField.canonicalRows actualModulus 10908 (.bxor 0 10907) := by core033_kernel_decide
theorem stats10908 : actualRows10908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10908=7428 := by core033_kernel_decide
theorem rows10909 : actualRows10909=WordField.canonicalRows actualModulus 10909 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10909 : actualRows10909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10909=2820 := by core033_kernel_decide
theorem rows10910 : actualRows10910=WordField.canonicalRows actualModulus 10910 (.bnot 10909) := by core033_kernel_decide
theorem stats10910 : actualRows10910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10910=6276 := by core033_kernel_decide
theorem rows10911 : actualRows10911=WordField.canonicalRows actualModulus 10911 (.bxor 10908 10910) := by core033_kernel_decide
theorem stats10911 : actualRows10911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10911=7428 := by core033_kernel_decide
theorem rows10912 : actualRows10912=WordField.canonicalRows actualModulus 10912 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10912 : actualRows10912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10912=2964 := by core033_kernel_decide
theorem rows10913 : actualRows10913=WordField.canonicalRows actualModulus 10913 (.bxor 0 10912) := by core033_kernel_decide
theorem stats10913 : actualRows10913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10913=7428 := by core033_kernel_decide
theorem rows10914 : actualRows10914=WordField.canonicalRows actualModulus 10914 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10914 : actualRows10914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10914=2820 := by core033_kernel_decide
theorem rows10915 : actualRows10915=WordField.canonicalRows actualModulus 10915 (.bnot 10914) := by core033_kernel_decide
theorem stats10915 : actualRows10915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10915=6276 := by core033_kernel_decide
theorem rows10916 : actualRows10916=WordField.canonicalRows actualModulus 10916 (.badd 10913 10915) := by core033_kernel_decide
theorem stats10916 : actualRows10916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10916=5388 := by core033_kernel_decide
theorem rows10917 : actualRows10917=WordField.canonicalRows actualModulus 10917 (.bnot 10916) := by core033_kernel_decide
theorem stats10917 : actualRows10917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10917=6276 := by core033_kernel_decide
theorem rows10918 : actualRows10918=WordField.canonicalRows actualModulus 10918 (.band 10911 10917) := by core033_kernel_decide
theorem stats10918 : actualRows10918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10918=5124 := by core033_kernel_decide
theorem rows10919 : actualRows10919=WordField.canonicalRows actualModulus 10919 (.bxor 10906 10918) := by core033_kernel_decide
theorem stats10919 : actualRows10919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10919=7428 := by core033_kernel_decide
theorem rows10920 : actualRows10920=WordField.canonicalRows actualModulus 10920 (.shr 10919 31) := by core033_kernel_decide
theorem stats10920 : actualRows10920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10920=2892 := by core033_kernel_decide
theorem rows10921 : actualRows10921=WordField.canonicalRows actualModulus 10921 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10921 : actualRows10921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10921=2892 := by core033_kernel_decide
theorem rows10922 : actualRows10922=WordField.canonicalRows actualModulus 10922 (.bxor 10920 10921) := by core033_kernel_decide
theorem stats10922 : actualRows10922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10922=7428 := by core033_kernel_decide
def partRows169 : List R1CS.Row := actualRows10859++actualRows10860++actualRows10861++actualRows10862++actualRows10863++actualRows10864++actualRows10865++actualRows10866++actualRows10867++actualRows10868++actualRows10869++actualRows10870++actualRows10871++actualRows10872++actualRows10873++actualRows10874++actualRows10875++actualRows10876++actualRows10877++actualRows10878++actualRows10879++actualRows10880++actualRows10881++actualRows10882++actualRows10883++actualRows10884++actualRows10885++actualRows10886++actualRows10887++actualRows10888++actualRows10889++actualRows10890++actualRows10891++actualRows10892++actualRows10893++actualRows10894++actualRows10895++actualRows10896++actualRows10897++actualRows10898++actualRows10899++actualRows10900++actualRows10901++actualRows10902++actualRows10903++actualRows10904++actualRows10905++actualRows10906++actualRows10907++actualRows10908++actualRows10909++actualRows10910++actualRows10911++actualRows10912++actualRows10913++actualRows10914++actualRows10915++actualRows10916++actualRows10917++actualRows10918++actualRows10919++actualRows10920++actualRows10921++actualRows10922
def partOps169 : List WordIR.Op := [.bxor 10856 10858,.literal (BitVec.ofNat 32 3),.bxor 0 10860,.literal (BitVec.ofNat 32 0),.bnot 10862,.badd 10861 10863,.bnot 10864,.band 10859 10865,.bxor 10854 10866,.shr 10867 31,.literal (BitVec.ofNat 32 1),.bxor 10868 10869,.bnot 10870,.literal (BitVec.ofNat 32 1),.badd 10871 10872,.band 10873 9893,.literal (BitVec.ofNat 32 3),.bxor 0 10875,.literal (BitVec.ofNat 32 0),.bnot 10877,.band 10876 10878,.literal (BitVec.ofNat 32 3),.bxor 0 10880,.literal (BitVec.ofNat 32 0),.bnot 10882,.bxor 10881 10883,.literal (BitVec.ofNat 32 3),.bxor 0 10885,.literal (BitVec.ofNat 32 0),.bnot 10887,.badd 10886 10888,.bnot 10889,.band 10884 10890,.bxor 10879 10891,.shr 10892 31,.literal (BitVec.ofNat 32 1),.bxor 10893 10894,.bnot 10895,.literal (BitVec.ofNat 32 1),.badd 10896 10897,.bnot 10898,.band 10899 228,.bxor 10874 10900,.literal (BitVec.ofNat 32 3),.bxor 0 10902,.literal (BitVec.ofNat 32 0),.bnot 10904,.band 10903 10905,.literal (BitVec.ofNat 32 3),.bxor 0 10907,.literal (BitVec.ofNat 32 0),.bnot 10909,.bxor 10908 10910,.literal (BitVec.ofNat 32 3),.bxor 0 10912,.literal (BitVec.ofNat 32 0),.bnot 10914,.badd 10913 10915,.bnot 10916,.band 10911 10917,.bxor 10906 10918,.shr 10919 31,.literal (BitVec.ofNat 32 1),.bxor 10920 10921]
theorem partExact169 : partRows169=WordField.rows actualModulus 10859 partOps169 := by
  simp only [partRows169,partOps169,WordField.rows,rows10859,rows10860,rows10861,rows10862,rows10863,rows10864,rows10865,rows10866,rows10867,rows10868,rows10869,rows10870,rows10871,rows10872,rows10873,rows10874,rows10875,rows10876,rows10877,rows10878,rows10879,rows10880,rows10881,rows10882,rows10883,rows10884,rows10885,rows10886,rows10887,rows10888,rows10889,rows10890,rows10891,rows10892,rows10893,rows10894,rows10895,rows10896,rows10897,rows10898,rows10899,rows10900,rows10901,rows10902,rows10903,rows10904,rows10905,rows10906,rows10907,rows10908,rows10909,rows10910,rows10911,rows10912,rows10913,rows10914,rows10915,rows10916,rows10917,rows10918,rows10919,rows10920,rows10921,rows10922,List.append_assoc,List.append_nil]
theorem partLength169 : partOps169.length=64 := by decide
theorem partStats169 : partRows169.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows169=334296 := by
  simp only [partRows169,List.length_append,MatrixRowBlocks.rows_weight_append,stats10859.1,stats10859.2,stats10860.1,stats10860.2,stats10861.1,stats10861.2,stats10862.1,stats10862.2,stats10863.1,stats10863.2,stats10864.1,stats10864.2,stats10865.1,stats10865.2,stats10866.1,stats10866.2,stats10867.1,stats10867.2,stats10868.1,stats10868.2,stats10869.1,stats10869.2,stats10870.1,stats10870.2,stats10871.1,stats10871.2,stats10872.1,stats10872.2,stats10873.1,stats10873.2,stats10874.1,stats10874.2,stats10875.1,stats10875.2,stats10876.1,stats10876.2,stats10877.1,stats10877.2,stats10878.1,stats10878.2,stats10879.1,stats10879.2,stats10880.1,stats10880.2,stats10881.1,stats10881.2,stats10882.1,stats10882.2,stats10883.1,stats10883.2,stats10884.1,stats10884.2,stats10885.1,stats10885.2,stats10886.1,stats10886.2,stats10887.1,stats10887.2,stats10888.1,stats10888.2,stats10889.1,stats10889.2,stats10890.1,stats10890.2,stats10891.1,stats10891.2,stats10892.1,stats10892.2,stats10893.1,stats10893.2,stats10894.1,stats10894.2,stats10895.1,stats10895.2,stats10896.1,stats10896.2,stats10897.1,stats10897.2,stats10898.1,stats10898.2,stats10899.1,stats10899.2,stats10900.1,stats10900.2,stats10901.1,stats10901.2,stats10902.1,stats10902.2,stats10903.1,stats10903.2,stats10904.1,stats10904.2,stats10905.1,stats10905.2,stats10906.1,stats10906.2,stats10907.1,stats10907.2,stats10908.1,stats10908.2,stats10909.1,stats10909.2,stats10910.1,stats10910.2,stats10911.1,stats10911.2,stats10912.1,stats10912.2,stats10913.1,stats10913.2,stats10914.1,stats10914.2,stats10915.1,stats10915.2,stats10916.1,stats10916.2,stats10917.1,stats10917.2,stats10918.1,stats10918.2,stats10919.1,stats10919.2,stats10920.1,stats10920.2,stats10921.1,stats10921.2,stats10922.1,stats10922.2]
  decide
end PathRoundDispatchCheckedRows
