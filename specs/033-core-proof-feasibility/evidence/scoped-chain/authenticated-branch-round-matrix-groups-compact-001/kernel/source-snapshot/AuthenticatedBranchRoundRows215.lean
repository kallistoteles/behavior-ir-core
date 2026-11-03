import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData216
import AuthenticatedBranchRoundInstructionMatrixData217
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13878 : actualRows13878=WordField.canonicalRows actualModulus 13878 (.badd 13876 13877) := by core033_kernel_decide
theorem stats13878 : actualRows13878.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13878=5388 := by core033_kernel_decide
theorem rows13879 : actualRows13879=WordField.canonicalRows actualModulus 13879 (.bnot 13878) := by core033_kernel_decide
theorem stats13879 : actualRows13879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13879=6276 := by core033_kernel_decide
theorem rows13880 : actualRows13880=WordField.canonicalRows actualModulus 13880 (.band 13879 56) := by core033_kernel_decide
theorem stats13880 : actualRows13880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13880=5124 := by core033_kernel_decide
theorem rows13881 : actualRows13881=WordField.canonicalRows actualModulus 13881 (.bxor 13875 13880) := by core033_kernel_decide
theorem stats13881 : actualRows13881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13881=7428 := by core033_kernel_decide
theorem rows13882 : actualRows13882=WordField.canonicalRows actualModulus 13882 (.bnot 419) := by core033_kernel_decide
theorem stats13882 : actualRows13882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13882=6276 := by core033_kernel_decide
theorem rows13883 : actualRows13883=WordField.canonicalRows actualModulus 13883 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13883 : actualRows13883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13883=2892 := by core033_kernel_decide
theorem rows13884 : actualRows13884=WordField.canonicalRows actualModulus 13884 (.badd 13882 13883) := by core033_kernel_decide
theorem stats13884 : actualRows13884.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13884=5388 := by core033_kernel_decide
theorem rows13885 : actualRows13885=WordField.canonicalRows actualModulus 13885 (.band 13884 12156) := by core033_kernel_decide
theorem stats13885 : actualRows13885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13885=5124 := by core033_kernel_decide
theorem rows13886 : actualRows13886=WordField.canonicalRows actualModulus 13886 (.bnot 419) := by core033_kernel_decide
theorem stats13886 : actualRows13886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13886=6276 := by core033_kernel_decide
theorem rows13887 : actualRows13887=WordField.canonicalRows actualModulus 13887 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13887 : actualRows13887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13887=2892 := by core033_kernel_decide
theorem rows13888 : actualRows13888=WordField.canonicalRows actualModulus 13888 (.badd 13886 13887) := by core033_kernel_decide
theorem stats13888 : actualRows13888.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13888=5388 := by core033_kernel_decide
theorem rows13889 : actualRows13889=WordField.canonicalRows actualModulus 13889 (.bnot 13888) := by core033_kernel_decide
theorem stats13889 : actualRows13889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13889=6276 := by core033_kernel_decide
theorem rows13890 : actualRows13890=WordField.canonicalRows actualModulus 13890 (.band 13889 57) := by core033_kernel_decide
theorem stats13890 : actualRows13890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13890=5124 := by core033_kernel_decide
theorem rows13891 : actualRows13891=WordField.canonicalRows actualModulus 13891 (.bxor 13885 13890) := by core033_kernel_decide
theorem stats13891 : actualRows13891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13891=7428 := by core033_kernel_decide
theorem rows13892 : actualRows13892=WordField.canonicalRows actualModulus 13892 (.bnot 419) := by core033_kernel_decide
theorem stats13892 : actualRows13892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13892=6276 := by core033_kernel_decide
theorem rows13893 : actualRows13893=WordField.canonicalRows actualModulus 13893 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13893 : actualRows13893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13893=2892 := by core033_kernel_decide
theorem rows13894 : actualRows13894=WordField.canonicalRows actualModulus 13894 (.badd 13892 13893) := by core033_kernel_decide
theorem stats13894 : actualRows13894.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13894=5388 := by core033_kernel_decide
theorem rows13895 : actualRows13895=WordField.canonicalRows actualModulus 13895 (.band 13894 12208) := by core033_kernel_decide
theorem stats13895 : actualRows13895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13895=5124 := by core033_kernel_decide
theorem rows13896 : actualRows13896=WordField.canonicalRows actualModulus 13896 (.bnot 419) := by core033_kernel_decide
theorem stats13896 : actualRows13896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13896=6276 := by core033_kernel_decide
theorem rows13897 : actualRows13897=WordField.canonicalRows actualModulus 13897 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13897 : actualRows13897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13897=2892 := by core033_kernel_decide
theorem rows13898 : actualRows13898=WordField.canonicalRows actualModulus 13898 (.badd 13896 13897) := by core033_kernel_decide
theorem stats13898 : actualRows13898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13898=5388 := by core033_kernel_decide
theorem rows13899 : actualRows13899=WordField.canonicalRows actualModulus 13899 (.bnot 13898) := by core033_kernel_decide
theorem stats13899 : actualRows13899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13899=6276 := by core033_kernel_decide
theorem rows13900 : actualRows13900=WordField.canonicalRows actualModulus 13900 (.band 13899 58) := by core033_kernel_decide
theorem stats13900 : actualRows13900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13900=5124 := by core033_kernel_decide
theorem rows13901 : actualRows13901=WordField.canonicalRows actualModulus 13901 (.bxor 13895 13900) := by core033_kernel_decide
theorem stats13901 : actualRows13901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13901=7428 := by core033_kernel_decide
theorem rows13902 : actualRows13902=WordField.canonicalRows actualModulus 13902 (.bnot 419) := by core033_kernel_decide
theorem stats13902 : actualRows13902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13902=6276 := by core033_kernel_decide
theorem rows13903 : actualRows13903=WordField.canonicalRows actualModulus 13903 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13903 : actualRows13903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13903=2892 := by core033_kernel_decide
theorem rows13904 : actualRows13904=WordField.canonicalRows actualModulus 13904 (.badd 13902 13903) := by core033_kernel_decide
theorem stats13904 : actualRows13904.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13904=5388 := by core033_kernel_decide
theorem rows13905 : actualRows13905=WordField.canonicalRows actualModulus 13905 (.band 13904 12260) := by core033_kernel_decide
theorem stats13905 : actualRows13905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13905=5124 := by core033_kernel_decide
theorem rows13906 : actualRows13906=WordField.canonicalRows actualModulus 13906 (.bnot 419) := by core033_kernel_decide
theorem stats13906 : actualRows13906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13906=6276 := by core033_kernel_decide
theorem rows13907 : actualRows13907=WordField.canonicalRows actualModulus 13907 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13907 : actualRows13907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13907=2892 := by core033_kernel_decide
theorem rows13908 : actualRows13908=WordField.canonicalRows actualModulus 13908 (.badd 13906 13907) := by core033_kernel_decide
theorem stats13908 : actualRows13908.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13908=5388 := by core033_kernel_decide
theorem rows13909 : actualRows13909=WordField.canonicalRows actualModulus 13909 (.bnot 13908) := by core033_kernel_decide
theorem stats13909 : actualRows13909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13909=6276 := by core033_kernel_decide
theorem rows13910 : actualRows13910=WordField.canonicalRows actualModulus 13910 (.band 13909 59) := by core033_kernel_decide
theorem stats13910 : actualRows13910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13910=5124 := by core033_kernel_decide
theorem rows13911 : actualRows13911=WordField.canonicalRows actualModulus 13911 (.bxor 13905 13910) := by core033_kernel_decide
theorem stats13911 : actualRows13911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13911=7428 := by core033_kernel_decide
theorem rows13912 : actualRows13912=WordField.canonicalRows actualModulus 13912 (.bnot 419) := by core033_kernel_decide
theorem stats13912 : actualRows13912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13912=6276 := by core033_kernel_decide
theorem rows13913 : actualRows13913=WordField.canonicalRows actualModulus 13913 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13913 : actualRows13913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13913=2892 := by core033_kernel_decide
theorem rows13914 : actualRows13914=WordField.canonicalRows actualModulus 13914 (.badd 13912 13913) := by core033_kernel_decide
theorem stats13914 : actualRows13914.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13914=5388 := by core033_kernel_decide
theorem rows13915 : actualRows13915=WordField.canonicalRows actualModulus 13915 (.band 13914 12312) := by core033_kernel_decide
theorem stats13915 : actualRows13915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13915=5124 := by core033_kernel_decide
theorem rows13916 : actualRows13916=WordField.canonicalRows actualModulus 13916 (.bnot 419) := by core033_kernel_decide
theorem stats13916 : actualRows13916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13916=6276 := by core033_kernel_decide
theorem rows13917 : actualRows13917=WordField.canonicalRows actualModulus 13917 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13917 : actualRows13917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13917=2892 := by core033_kernel_decide
theorem rows13918 : actualRows13918=WordField.canonicalRows actualModulus 13918 (.badd 13916 13917) := by core033_kernel_decide
theorem stats13918 : actualRows13918.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13918=5388 := by core033_kernel_decide
theorem rows13919 : actualRows13919=WordField.canonicalRows actualModulus 13919 (.bnot 13918) := by core033_kernel_decide
theorem stats13919 : actualRows13919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13919=6276 := by core033_kernel_decide
theorem rows13920 : actualRows13920=WordField.canonicalRows actualModulus 13920 (.band 13919 60) := by core033_kernel_decide
theorem stats13920 : actualRows13920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13920=5124 := by core033_kernel_decide
theorem rows13921 : actualRows13921=WordField.canonicalRows actualModulus 13921 (.bxor 13915 13920) := by core033_kernel_decide
theorem stats13921 : actualRows13921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13921=7428 := by core033_kernel_decide
theorem rows13922 : actualRows13922=WordField.canonicalRows actualModulus 13922 (.bnot 419) := by core033_kernel_decide
theorem stats13922 : actualRows13922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13922=6276 := by core033_kernel_decide
theorem rows13923 : actualRows13923=WordField.canonicalRows actualModulus 13923 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13923 : actualRows13923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13923=2892 := by core033_kernel_decide
theorem rows13924 : actualRows13924=WordField.canonicalRows actualModulus 13924 (.badd 13922 13923) := by core033_kernel_decide
theorem stats13924 : actualRows13924.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13924=5388 := by core033_kernel_decide
theorem rows13925 : actualRows13925=WordField.canonicalRows actualModulus 13925 (.band 13924 12364) := by core033_kernel_decide
theorem stats13925 : actualRows13925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13925=5124 := by core033_kernel_decide
theorem rows13926 : actualRows13926=WordField.canonicalRows actualModulus 13926 (.bnot 419) := by core033_kernel_decide
theorem stats13926 : actualRows13926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13926=6276 := by core033_kernel_decide
theorem rows13927 : actualRows13927=WordField.canonicalRows actualModulus 13927 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13927 : actualRows13927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13927=2892 := by core033_kernel_decide
theorem rows13928 : actualRows13928=WordField.canonicalRows actualModulus 13928 (.badd 13926 13927) := by core033_kernel_decide
theorem stats13928 : actualRows13928.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13928=5388 := by core033_kernel_decide
theorem rows13929 : actualRows13929=WordField.canonicalRows actualModulus 13929 (.bnot 13928) := by core033_kernel_decide
theorem stats13929 : actualRows13929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13929=6276 := by core033_kernel_decide
theorem rows13930 : actualRows13930=WordField.canonicalRows actualModulus 13930 (.band 13929 61) := by core033_kernel_decide
theorem stats13930 : actualRows13930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13930=5124 := by core033_kernel_decide
theorem rows13931 : actualRows13931=WordField.canonicalRows actualModulus 13931 (.bxor 13925 13930) := by core033_kernel_decide
theorem stats13931 : actualRows13931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13931=7428 := by core033_kernel_decide
theorem rows13932 : actualRows13932=WordField.canonicalRows actualModulus 13932 (.bnot 419) := by core033_kernel_decide
theorem stats13932 : actualRows13932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13932=6276 := by core033_kernel_decide
theorem rows13933 : actualRows13933=WordField.canonicalRows actualModulus 13933 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13933 : actualRows13933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13933=2892 := by core033_kernel_decide
theorem rows13934 : actualRows13934=WordField.canonicalRows actualModulus 13934 (.badd 13932 13933) := by core033_kernel_decide
theorem stats13934 : actualRows13934.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13934=5388 := by core033_kernel_decide
theorem rows13935 : actualRows13935=WordField.canonicalRows actualModulus 13935 (.band 13934 12416) := by core033_kernel_decide
theorem stats13935 : actualRows13935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13935=5124 := by core033_kernel_decide
theorem rows13936 : actualRows13936=WordField.canonicalRows actualModulus 13936 (.bnot 419) := by core033_kernel_decide
theorem stats13936 : actualRows13936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13936=6276 := by core033_kernel_decide
theorem rows13937 : actualRows13937=WordField.canonicalRows actualModulus 13937 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13937 : actualRows13937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13937=2892 := by core033_kernel_decide
theorem rows13938 : actualRows13938=WordField.canonicalRows actualModulus 13938 (.badd 13936 13937) := by core033_kernel_decide
theorem stats13938 : actualRows13938.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13938=5388 := by core033_kernel_decide
theorem rows13939 : actualRows13939=WordField.canonicalRows actualModulus 13939 (.bnot 13938) := by core033_kernel_decide
theorem stats13939 : actualRows13939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13939=6276 := by core033_kernel_decide
theorem rows13940 : actualRows13940=WordField.canonicalRows actualModulus 13940 (.band 13939 62) := by core033_kernel_decide
theorem stats13940 : actualRows13940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13940=5124 := by core033_kernel_decide
theorem rows13941 : actualRows13941=WordField.canonicalRows actualModulus 13941 (.bxor 13935 13940) := by core033_kernel_decide
theorem stats13941 : actualRows13941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13941=7428 := by core033_kernel_decide
def partRows215 : List R1CS.Row := actualRows13878++actualRows13879++actualRows13880++actualRows13881++actualRows13882++actualRows13883++actualRows13884++actualRows13885++actualRows13886++actualRows13887++actualRows13888++actualRows13889++actualRows13890++actualRows13891++actualRows13892++actualRows13893++actualRows13894++actualRows13895++actualRows13896++actualRows13897++actualRows13898++actualRows13899++actualRows13900++actualRows13901++actualRows13902++actualRows13903++actualRows13904++actualRows13905++actualRows13906++actualRows13907++actualRows13908++actualRows13909++actualRows13910++actualRows13911++actualRows13912++actualRows13913++actualRows13914++actualRows13915++actualRows13916++actualRows13917++actualRows13918++actualRows13919++actualRows13920++actualRows13921++actualRows13922++actualRows13923++actualRows13924++actualRows13925++actualRows13926++actualRows13927++actualRows13928++actualRows13929++actualRows13930++actualRows13931++actualRows13932++actualRows13933++actualRows13934++actualRows13935++actualRows13936++actualRows13937++actualRows13938++actualRows13939++actualRows13940++actualRows13941
def partOps215 : List WordIR.Op := [.badd 13876 13877,.bnot 13878,.band 13879 56,.bxor 13875 13880,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13882 13883,.band 13884 12156,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13886 13887,.bnot 13888,.band 13889 57,.bxor 13885 13890,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13892 13893,.band 13894 12208,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13896 13897,.bnot 13898,.band 13899 58,.bxor 13895 13900,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13902 13903,.band 13904 12260,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13906 13907,.bnot 13908,.band 13909 59,.bxor 13905 13910,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13912 13913,.band 13914 12312,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13916 13917,.bnot 13918,.band 13919 60,.bxor 13915 13920,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13922 13923,.band 13924 12364,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13926 13927,.bnot 13928,.band 13929 61,.bxor 13925 13930,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13932 13933,.band 13934 12416,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13936 13937,.bnot 13938,.band 13939 62,.bxor 13935 13940]
theorem partExact215 : partRows215=WordField.rows actualModulus 13878 partOps215 := by
  simp only [partRows215,partOps215,WordField.rows,rows13878,rows13879,rows13880,rows13881,rows13882,rows13883,rows13884,rows13885,rows13886,rows13887,rows13888,rows13889,rows13890,rows13891,rows13892,rows13893,rows13894,rows13895,rows13896,rows13897,rows13898,rows13899,rows13900,rows13901,rows13902,rows13903,rows13904,rows13905,rows13906,rows13907,rows13908,rows13909,rows13910,rows13911,rows13912,rows13913,rows13914,rows13915,rows13916,rows13917,rows13918,rows13919,rows13920,rows13921,rows13922,rows13923,rows13924,rows13925,rows13926,rows13927,rows13928,rows13929,rows13930,rows13931,rows13932,rows13933,rows13934,rows13935,rows13936,rows13937,rows13938,rows13939,rows13940,rows13941,List.append_assoc,List.append_nil]
theorem partLength215 : partOps215.length=64 := by decide
theorem partStats215 : partRows215.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows215=342600 := by
  simp only [partRows215,List.length_append,MatrixRowBlocks.rows_weight_append,stats13878.1,stats13878.2,stats13879.1,stats13879.2,stats13880.1,stats13880.2,stats13881.1,stats13881.2,stats13882.1,stats13882.2,stats13883.1,stats13883.2,stats13884.1,stats13884.2,stats13885.1,stats13885.2,stats13886.1,stats13886.2,stats13887.1,stats13887.2,stats13888.1,stats13888.2,stats13889.1,stats13889.2,stats13890.1,stats13890.2,stats13891.1,stats13891.2,stats13892.1,stats13892.2,stats13893.1,stats13893.2,stats13894.1,stats13894.2,stats13895.1,stats13895.2,stats13896.1,stats13896.2,stats13897.1,stats13897.2,stats13898.1,stats13898.2,stats13899.1,stats13899.2,stats13900.1,stats13900.2,stats13901.1,stats13901.2,stats13902.1,stats13902.2,stats13903.1,stats13903.2,stats13904.1,stats13904.2,stats13905.1,stats13905.2,stats13906.1,stats13906.2,stats13907.1,stats13907.2,stats13908.1,stats13908.2,stats13909.1,stats13909.2,stats13910.1,stats13910.2,stats13911.1,stats13911.2,stats13912.1,stats13912.2,stats13913.1,stats13913.2,stats13914.1,stats13914.2,stats13915.1,stats13915.2,stats13916.1,stats13916.2,stats13917.1,stats13917.2,stats13918.1,stats13918.2,stats13919.1,stats13919.2,stats13920.1,stats13920.2,stats13921.1,stats13921.2,stats13922.1,stats13922.2,stats13923.1,stats13923.2,stats13924.1,stats13924.2,stats13925.1,stats13925.2,stats13926.1,stats13926.2,stats13927.1,stats13927.2,stats13928.1,stats13928.2,stats13929.1,stats13929.2,stats13930.1,stats13930.2,stats13931.1,stats13931.2,stats13932.1,stats13932.2,stats13933.1,stats13933.2,stats13934.1,stats13934.2,stats13935.1,stats13935.2,stats13936.1,stats13936.2,stats13937.1,stats13937.2,stats13938.1,stats13938.2,stats13939.1,stats13939.2,stats13940.1,stats13940.2,stats13941.1,stats13941.2]
  decide
end AuthenticatedBranchRoundCheckedRows
