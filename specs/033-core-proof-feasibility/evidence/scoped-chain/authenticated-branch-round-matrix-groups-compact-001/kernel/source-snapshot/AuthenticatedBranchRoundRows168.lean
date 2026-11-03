import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData169
import AuthenticatedBranchRoundInstructionMatrixData170
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10870 : actualRows10870=WordField.canonicalRows actualModulus 10870 (.bnot 10869) := by core033_kernel_decide
theorem stats10870 : actualRows10870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10870=6276 := by core033_kernel_decide
theorem rows10871 : actualRows10871=WordField.canonicalRows actualModulus 10871 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10871 : actualRows10871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10871=2820 := by core033_kernel_decide
theorem rows10872 : actualRows10872=WordField.canonicalRows actualModulus 10872 (.band 10870 10871) := by core033_kernel_decide
theorem stats10872 : actualRows10872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10872=5124 := by core033_kernel_decide
theorem rows10873 : actualRows10873=WordField.canonicalRows actualModulus 10873 (.bxor 10866 10872) := by core033_kernel_decide
theorem stats10873 : actualRows10873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10873=7428 := by core033_kernel_decide
theorem rows10874 : actualRows10874=WordField.canonicalRows actualModulus 10874 (.bnot 10609) := by core033_kernel_decide
theorem stats10874 : actualRows10874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10874=6276 := by core033_kernel_decide
theorem rows10875 : actualRows10875=WordField.canonicalRows actualModulus 10875 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10875 : actualRows10875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10875=2892 := by core033_kernel_decide
theorem rows10876 : actualRows10876=WordField.canonicalRows actualModulus 10876 (.badd 10874 10875) := by core033_kernel_decide
theorem stats10876 : actualRows10876.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10876=5388 := by core033_kernel_decide
theorem rows10877 : actualRows10877=WordField.canonicalRows actualModulus 10877 (.band 10876 1023) := by core033_kernel_decide
theorem stats10877 : actualRows10877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10877=5124 := by core033_kernel_decide
theorem rows10878 : actualRows10878=WordField.canonicalRows actualModulus 10878 (.bnot 10609) := by core033_kernel_decide
theorem stats10878 : actualRows10878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10878=6276 := by core033_kernel_decide
theorem rows10879 : actualRows10879=WordField.canonicalRows actualModulus 10879 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10879 : actualRows10879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10879=2892 := by core033_kernel_decide
theorem rows10880 : actualRows10880=WordField.canonicalRows actualModulus 10880 (.badd 10878 10879) := by core033_kernel_decide
theorem stats10880 : actualRows10880.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10880=5388 := by core033_kernel_decide
theorem rows10881 : actualRows10881=WordField.canonicalRows actualModulus 10881 (.bnot 10880) := by core033_kernel_decide
theorem stats10881 : actualRows10881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10881=6276 := by core033_kernel_decide
theorem rows10882 : actualRows10882=WordField.canonicalRows actualModulus 10882 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10882 : actualRows10882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10882=2820 := by core033_kernel_decide
theorem rows10883 : actualRows10883=WordField.canonicalRows actualModulus 10883 (.band 10881 10882) := by core033_kernel_decide
theorem stats10883 : actualRows10883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10883=5124 := by core033_kernel_decide
theorem rows10884 : actualRows10884=WordField.canonicalRows actualModulus 10884 (.bxor 10877 10883) := by core033_kernel_decide
theorem stats10884 : actualRows10884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10884=7428 := by core033_kernel_decide
theorem rows10885 : actualRows10885=WordField.canonicalRows actualModulus 10885 (.bnot 10609) := by core033_kernel_decide
theorem stats10885 : actualRows10885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10885=6276 := by core033_kernel_decide
theorem rows10886 : actualRows10886=WordField.canonicalRows actualModulus 10886 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10886 : actualRows10886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10886=2892 := by core033_kernel_decide
theorem rows10887 : actualRows10887=WordField.canonicalRows actualModulus 10887 (.badd 10885 10886) := by core033_kernel_decide
theorem stats10887 : actualRows10887.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10887=5388 := by core033_kernel_decide
theorem rows10888 : actualRows10888=WordField.canonicalRows actualModulus 10888 (.band 10887 1033) := by core033_kernel_decide
theorem stats10888 : actualRows10888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10888=5124 := by core033_kernel_decide
theorem rows10889 : actualRows10889=WordField.canonicalRows actualModulus 10889 (.bnot 10609) := by core033_kernel_decide
theorem stats10889 : actualRows10889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10889=6276 := by core033_kernel_decide
theorem rows10890 : actualRows10890=WordField.canonicalRows actualModulus 10890 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10890 : actualRows10890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10890=2892 := by core033_kernel_decide
theorem rows10891 : actualRows10891=WordField.canonicalRows actualModulus 10891 (.badd 10889 10890) := by core033_kernel_decide
theorem stats10891 : actualRows10891.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10891=5388 := by core033_kernel_decide
theorem rows10892 : actualRows10892=WordField.canonicalRows actualModulus 10892 (.bnot 10891) := by core033_kernel_decide
theorem stats10892 : actualRows10892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10892=6276 := by core033_kernel_decide
theorem rows10893 : actualRows10893=WordField.canonicalRows actualModulus 10893 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10893 : actualRows10893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10893=2820 := by core033_kernel_decide
theorem rows10894 : actualRows10894=WordField.canonicalRows actualModulus 10894 (.band 10892 10893) := by core033_kernel_decide
theorem stats10894 : actualRows10894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10894=5124 := by core033_kernel_decide
theorem rows10895 : actualRows10895=WordField.canonicalRows actualModulus 10895 (.bxor 10888 10894) := by core033_kernel_decide
theorem stats10895 : actualRows10895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10895=7428 := by core033_kernel_decide
theorem rows10896 : actualRows10896=WordField.canonicalRows actualModulus 10896 (.bnot 10609) := by core033_kernel_decide
theorem stats10896 : actualRows10896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10896=6276 := by core033_kernel_decide
theorem rows10897 : actualRows10897=WordField.canonicalRows actualModulus 10897 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10897 : actualRows10897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10897=2892 := by core033_kernel_decide
theorem rows10898 : actualRows10898=WordField.canonicalRows actualModulus 10898 (.badd 10896 10897) := by core033_kernel_decide
theorem stats10898 : actualRows10898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10898=5388 := by core033_kernel_decide
theorem rows10899 : actualRows10899=WordField.canonicalRows actualModulus 10899 (.band 10898 1043) := by core033_kernel_decide
theorem stats10899 : actualRows10899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10899=5124 := by core033_kernel_decide
theorem rows10900 : actualRows10900=WordField.canonicalRows actualModulus 10900 (.bnot 10609) := by core033_kernel_decide
theorem stats10900 : actualRows10900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10900=6276 := by core033_kernel_decide
theorem rows10901 : actualRows10901=WordField.canonicalRows actualModulus 10901 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10901 : actualRows10901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10901=2892 := by core033_kernel_decide
theorem rows10902 : actualRows10902=WordField.canonicalRows actualModulus 10902 (.badd 10900 10901) := by core033_kernel_decide
theorem stats10902 : actualRows10902.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10902=5388 := by core033_kernel_decide
theorem rows10903 : actualRows10903=WordField.canonicalRows actualModulus 10903 (.bnot 10902) := by core033_kernel_decide
theorem stats10903 : actualRows10903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10903=6276 := by core033_kernel_decide
theorem rows10904 : actualRows10904=WordField.canonicalRows actualModulus 10904 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10904 : actualRows10904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10904=2820 := by core033_kernel_decide
theorem rows10905 : actualRows10905=WordField.canonicalRows actualModulus 10905 (.band 10903 10904) := by core033_kernel_decide
theorem stats10905 : actualRows10905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10905=5124 := by core033_kernel_decide
theorem rows10906 : actualRows10906=WordField.canonicalRows actualModulus 10906 (.bxor 10899 10905) := by core033_kernel_decide
theorem stats10906 : actualRows10906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10906=7428 := by core033_kernel_decide
theorem rows10907 : actualRows10907=WordField.canonicalRows actualModulus 10907 (.bnot 10609) := by core033_kernel_decide
theorem stats10907 : actualRows10907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10907=6276 := by core033_kernel_decide
theorem rows10908 : actualRows10908=WordField.canonicalRows actualModulus 10908 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10908 : actualRows10908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10908=2892 := by core033_kernel_decide
theorem rows10909 : actualRows10909=WordField.canonicalRows actualModulus 10909 (.badd 10907 10908) := by core033_kernel_decide
theorem stats10909 : actualRows10909.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10909=5388 := by core033_kernel_decide
theorem rows10910 : actualRows10910=WordField.canonicalRows actualModulus 10910 (.band 10909 1063) := by core033_kernel_decide
theorem stats10910 : actualRows10910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10910=5124 := by core033_kernel_decide
theorem rows10911 : actualRows10911=WordField.canonicalRows actualModulus 10911 (.bnot 10609) := by core033_kernel_decide
theorem stats10911 : actualRows10911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10911=6276 := by core033_kernel_decide
theorem rows10912 : actualRows10912=WordField.canonicalRows actualModulus 10912 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10912 : actualRows10912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10912=2892 := by core033_kernel_decide
theorem rows10913 : actualRows10913=WordField.canonicalRows actualModulus 10913 (.badd 10911 10912) := by core033_kernel_decide
theorem stats10913 : actualRows10913.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10913=5388 := by core033_kernel_decide
theorem rows10914 : actualRows10914=WordField.canonicalRows actualModulus 10914 (.bnot 10913) := by core033_kernel_decide
theorem stats10914 : actualRows10914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10914=6276 := by core033_kernel_decide
theorem rows10915 : actualRows10915=WordField.canonicalRows actualModulus 10915 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10915 : actualRows10915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10915=2820 := by core033_kernel_decide
theorem rows10916 : actualRows10916=WordField.canonicalRows actualModulus 10916 (.band 10914 10915) := by core033_kernel_decide
theorem stats10916 : actualRows10916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10916=5124 := by core033_kernel_decide
theorem rows10917 : actualRows10917=WordField.canonicalRows actualModulus 10917 (.bxor 10910 10916) := by core033_kernel_decide
theorem stats10917 : actualRows10917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10917=7428 := by core033_kernel_decide
theorem rows10918 : actualRows10918=WordField.canonicalRows actualModulus 10918 (.bnot 10609) := by core033_kernel_decide
theorem stats10918 : actualRows10918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10918=6276 := by core033_kernel_decide
theorem rows10919 : actualRows10919=WordField.canonicalRows actualModulus 10919 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10919 : actualRows10919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10919=2892 := by core033_kernel_decide
theorem rows10920 : actualRows10920=WordField.canonicalRows actualModulus 10920 (.badd 10918 10919) := by core033_kernel_decide
theorem stats10920 : actualRows10920.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10920=5388 := by core033_kernel_decide
theorem rows10921 : actualRows10921=WordField.canonicalRows actualModulus 10921 (.band 10920 1083) := by core033_kernel_decide
theorem stats10921 : actualRows10921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10921=5124 := by core033_kernel_decide
theorem rows10922 : actualRows10922=WordField.canonicalRows actualModulus 10922 (.bnot 10609) := by core033_kernel_decide
theorem stats10922 : actualRows10922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10922=6276 := by core033_kernel_decide
theorem rows10923 : actualRows10923=WordField.canonicalRows actualModulus 10923 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10923 : actualRows10923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10923=2892 := by core033_kernel_decide
theorem rows10924 : actualRows10924=WordField.canonicalRows actualModulus 10924 (.badd 10922 10923) := by core033_kernel_decide
theorem stats10924 : actualRows10924.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10924=5388 := by core033_kernel_decide
theorem rows10925 : actualRows10925=WordField.canonicalRows actualModulus 10925 (.bnot 10924) := by core033_kernel_decide
theorem stats10925 : actualRows10925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10925=6276 := by core033_kernel_decide
theorem rows10926 : actualRows10926=WordField.canonicalRows actualModulus 10926 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10926 : actualRows10926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10926=2820 := by core033_kernel_decide
theorem rows10927 : actualRows10927=WordField.canonicalRows actualModulus 10927 (.band 10925 10926) := by core033_kernel_decide
theorem stats10927 : actualRows10927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10927=5124 := by core033_kernel_decide
theorem rows10928 : actualRows10928=WordField.canonicalRows actualModulus 10928 (.bxor 10921 10927) := by core033_kernel_decide
theorem stats10928 : actualRows10928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10928=7428 := by core033_kernel_decide
theorem rows10929 : actualRows10929=WordField.canonicalRows actualModulus 10929 (.bnot 10609) := by core033_kernel_decide
theorem stats10929 : actualRows10929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10929=6276 := by core033_kernel_decide
theorem rows10930 : actualRows10930=WordField.canonicalRows actualModulus 10930 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10930 : actualRows10930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10930=2892 := by core033_kernel_decide
theorem rows10931 : actualRows10931=WordField.canonicalRows actualModulus 10931 (.badd 10929 10930) := by core033_kernel_decide
theorem stats10931 : actualRows10931.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10931=5388 := by core033_kernel_decide
theorem rows10932 : actualRows10932=WordField.canonicalRows actualModulus 10932 (.band 10931 1093) := by core033_kernel_decide
theorem stats10932 : actualRows10932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10932=5124 := by core033_kernel_decide
theorem rows10933 : actualRows10933=WordField.canonicalRows actualModulus 10933 (.bnot 10609) := by core033_kernel_decide
theorem stats10933 : actualRows10933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10933=6276 := by core033_kernel_decide
def partRows168 : List R1CS.Row := actualRows10870++actualRows10871++actualRows10872++actualRows10873++actualRows10874++actualRows10875++actualRows10876++actualRows10877++actualRows10878++actualRows10879++actualRows10880++actualRows10881++actualRows10882++actualRows10883++actualRows10884++actualRows10885++actualRows10886++actualRows10887++actualRows10888++actualRows10889++actualRows10890++actualRows10891++actualRows10892++actualRows10893++actualRows10894++actualRows10895++actualRows10896++actualRows10897++actualRows10898++actualRows10899++actualRows10900++actualRows10901++actualRows10902++actualRows10903++actualRows10904++actualRows10905++actualRows10906++actualRows10907++actualRows10908++actualRows10909++actualRows10910++actualRows10911++actualRows10912++actualRows10913++actualRows10914++actualRows10915++actualRows10916++actualRows10917++actualRows10918++actualRows10919++actualRows10920++actualRows10921++actualRows10922++actualRows10923++actualRows10924++actualRows10925++actualRows10926++actualRows10927++actualRows10928++actualRows10929++actualRows10930++actualRows10931++actualRows10932++actualRows10933
def partOps168 : List WordIR.Op := [.bnot 10869,.literal (BitVec.ofNat 32 0),.band 10870 10871,.bxor 10866 10872,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10874 10875,.band 10876 1023,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10878 10879,.bnot 10880,.literal (BitVec.ofNat 32 0),.band 10881 10882,.bxor 10877 10883,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10885 10886,.band 10887 1033,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10889 10890,.bnot 10891,.literal (BitVec.ofNat 32 0),.band 10892 10893,.bxor 10888 10894,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10896 10897,.band 10898 1043,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10900 10901,.bnot 10902,.literal (BitVec.ofNat 32 0),.band 10903 10904,.bxor 10899 10905,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10907 10908,.band 10909 1063,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10911 10912,.bnot 10913,.literal (BitVec.ofNat 32 0),.band 10914 10915,.bxor 10910 10916,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10918 10919,.band 10920 1083,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10922 10923,.bnot 10924,.literal (BitVec.ofNat 32 0),.band 10925 10926,.bxor 10921 10927,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10929 10930,.band 10931 1093,.bnot 10609]
theorem partExact168 : partRows168=WordField.rows actualModulus 10870 partOps168 := by
  simp only [partRows168,partOps168,WordField.rows,rows10870,rows10871,rows10872,rows10873,rows10874,rows10875,rows10876,rows10877,rows10878,rows10879,rows10880,rows10881,rows10882,rows10883,rows10884,rows10885,rows10886,rows10887,rows10888,rows10889,rows10890,rows10891,rows10892,rows10893,rows10894,rows10895,rows10896,rows10897,rows10898,rows10899,rows10900,rows10901,rows10902,rows10903,rows10904,rows10905,rows10906,rows10907,rows10908,rows10909,rows10910,rows10911,rows10912,rows10913,rows10914,rows10915,rows10916,rows10917,rows10918,rows10919,rows10920,rows10921,rows10922,rows10923,rows10924,rows10925,rows10926,rows10927,rows10928,rows10929,rows10930,rows10931,rows10932,rows10933,List.append_assoc,List.append_nil]
theorem partLength168 : partOps168.length=64 := by decide
theorem partStats168 : partRows168.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows168=327024 := by
  simp only [partRows168,List.length_append,MatrixRowBlocks.rows_weight_append,stats10870.1,stats10870.2,stats10871.1,stats10871.2,stats10872.1,stats10872.2,stats10873.1,stats10873.2,stats10874.1,stats10874.2,stats10875.1,stats10875.2,stats10876.1,stats10876.2,stats10877.1,stats10877.2,stats10878.1,stats10878.2,stats10879.1,stats10879.2,stats10880.1,stats10880.2,stats10881.1,stats10881.2,stats10882.1,stats10882.2,stats10883.1,stats10883.2,stats10884.1,stats10884.2,stats10885.1,stats10885.2,stats10886.1,stats10886.2,stats10887.1,stats10887.2,stats10888.1,stats10888.2,stats10889.1,stats10889.2,stats10890.1,stats10890.2,stats10891.1,stats10891.2,stats10892.1,stats10892.2,stats10893.1,stats10893.2,stats10894.1,stats10894.2,stats10895.1,stats10895.2,stats10896.1,stats10896.2,stats10897.1,stats10897.2,stats10898.1,stats10898.2,stats10899.1,stats10899.2,stats10900.1,stats10900.2,stats10901.1,stats10901.2,stats10902.1,stats10902.2,stats10903.1,stats10903.2,stats10904.1,stats10904.2,stats10905.1,stats10905.2,stats10906.1,stats10906.2,stats10907.1,stats10907.2,stats10908.1,stats10908.2,stats10909.1,stats10909.2,stats10910.1,stats10910.2,stats10911.1,stats10911.2,stats10912.1,stats10912.2,stats10913.1,stats10913.2,stats10914.1,stats10914.2,stats10915.1,stats10915.2,stats10916.1,stats10916.2,stats10917.1,stats10917.2,stats10918.1,stats10918.2,stats10919.1,stats10919.2,stats10920.1,stats10920.2,stats10921.1,stats10921.2,stats10922.1,stats10922.2,stats10923.1,stats10923.2,stats10924.1,stats10924.2,stats10925.1,stats10925.2,stats10926.1,stats10926.2,stats10927.1,stats10927.2,stats10928.1,stats10928.2,stats10929.1,stats10929.2,stats10930.1,stats10930.2,stats10931.1,stats10931.2,stats10932.1,stats10932.2,stats10933.1,stats10933.2]
  decide
end AuthenticatedBranchRoundCheckedRows
