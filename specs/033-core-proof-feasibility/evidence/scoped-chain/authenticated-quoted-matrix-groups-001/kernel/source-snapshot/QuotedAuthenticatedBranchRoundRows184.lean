import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData185
import AuthenticatedBranchRoundInstructionMatrixData186
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11894 : actualRows11894=WordField.canonicalRows actualModulus 11894 (.bnot 11893) := by core033_kernel_decide
theorem stats11894 : actualRows11894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11894=6276 := by core033_kernel_decide
theorem rows11895 : actualRows11895=WordField.canonicalRows actualModulus 11895 (.band 11894 1387) := by core033_kernel_decide
theorem stats11895 : actualRows11895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11895=5124 := by core033_kernel_decide
theorem rows11896 : actualRows11896=WordField.canonicalRows actualModulus 11896 (.bxor 11869 11895) := by core033_kernel_decide
theorem stats11896 : actualRows11896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11896=7428 := by core033_kernel_decide
theorem rows11897 : actualRows11897=WordField.canonicalRows actualModulus 11897 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11897 : actualRows11897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11897=2964 := by core033_kernel_decide
theorem rows11898 : actualRows11898=WordField.canonicalRows actualModulus 11898 (.bxor 693 11897) := by core033_kernel_decide
theorem stats11898 : actualRows11898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11898=7428 := by core033_kernel_decide
theorem rows11899 : actualRows11899=WordField.canonicalRows actualModulus 11899 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11899 : actualRows11899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11899=2820 := by core033_kernel_decide
theorem rows11900 : actualRows11900=WordField.canonicalRows actualModulus 11900 (.bnot 11899) := by core033_kernel_decide
theorem stats11900 : actualRows11900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11900=6276 := by core033_kernel_decide
theorem rows11901 : actualRows11901=WordField.canonicalRows actualModulus 11901 (.band 11898 11900) := by core033_kernel_decide
theorem stats11901 : actualRows11901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11901=5124 := by core033_kernel_decide
theorem rows11902 : actualRows11902=WordField.canonicalRows actualModulus 11902 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11902 : actualRows11902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11902=2964 := by core033_kernel_decide
theorem rows11903 : actualRows11903=WordField.canonicalRows actualModulus 11903 (.bxor 693 11902) := by core033_kernel_decide
theorem stats11903 : actualRows11903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11903=7428 := by core033_kernel_decide
theorem rows11904 : actualRows11904=WordField.canonicalRows actualModulus 11904 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11904 : actualRows11904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11904=2820 := by core033_kernel_decide
theorem rows11905 : actualRows11905=WordField.canonicalRows actualModulus 11905 (.bnot 11904) := by core033_kernel_decide
theorem stats11905 : actualRows11905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11905=6276 := by core033_kernel_decide
theorem rows11906 : actualRows11906=WordField.canonicalRows actualModulus 11906 (.bxor 11903 11905) := by core033_kernel_decide
theorem stats11906 : actualRows11906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11906=7428 := by core033_kernel_decide
theorem rows11907 : actualRows11907=WordField.canonicalRows actualModulus 11907 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11907 : actualRows11907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11907=2964 := by core033_kernel_decide
theorem rows11908 : actualRows11908=WordField.canonicalRows actualModulus 11908 (.bxor 693 11907) := by core033_kernel_decide
theorem stats11908 : actualRows11908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11908=7428 := by core033_kernel_decide
theorem rows11909 : actualRows11909=WordField.canonicalRows actualModulus 11909 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11909 : actualRows11909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11909=2820 := by core033_kernel_decide
theorem rows11910 : actualRows11910=WordField.canonicalRows actualModulus 11910 (.bnot 11909) := by core033_kernel_decide
theorem stats11910 : actualRows11910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11910=6276 := by core033_kernel_decide
theorem rows11911 : actualRows11911=WordField.canonicalRows actualModulus 11911 (.badd 11908 11910) := by core033_kernel_decide
theorem stats11911 : actualRows11911.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11911=5388 := by core033_kernel_decide
theorem rows11912 : actualRows11912=WordField.canonicalRows actualModulus 11912 (.bnot 11911) := by core033_kernel_decide
theorem stats11912 : actualRows11912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11912=6276 := by core033_kernel_decide
theorem rows11913 : actualRows11913=WordField.canonicalRows actualModulus 11913 (.band 11906 11912) := by core033_kernel_decide
theorem stats11913 : actualRows11913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11913=5124 := by core033_kernel_decide
theorem rows11914 : actualRows11914=WordField.canonicalRows actualModulus 11914 (.bxor 11901 11913) := by core033_kernel_decide
theorem stats11914 : actualRows11914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11914=7428 := by core033_kernel_decide
theorem rows11915 : actualRows11915=WordField.canonicalRows actualModulus 11915 (.shr 11914 31) := by core033_kernel_decide
theorem stats11915 : actualRows11915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11915=2892 := by core033_kernel_decide
theorem rows11916 : actualRows11916=WordField.canonicalRows actualModulus 11916 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11916 : actualRows11916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11916=2892 := by core033_kernel_decide
theorem rows11917 : actualRows11917=WordField.canonicalRows actualModulus 11917 (.bxor 11915 11916) := by core033_kernel_decide
theorem stats11917 : actualRows11917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11917=7428 := by core033_kernel_decide
theorem rows11918 : actualRows11918=WordField.canonicalRows actualModulus 11918 (.bnot 11917) := by core033_kernel_decide
theorem stats11918 : actualRows11918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11918=6276 := by core033_kernel_decide
theorem rows11919 : actualRows11919=WordField.canonicalRows actualModulus 11919 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11919 : actualRows11919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11919=2892 := by core033_kernel_decide
theorem rows11920 : actualRows11920=WordField.canonicalRows actualModulus 11920 (.badd 11918 11919) := by core033_kernel_decide
theorem stats11920 : actualRows11920.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11920=5388 := by core033_kernel_decide
theorem rows11921 : actualRows11921=WordField.canonicalRows actualModulus 11921 (.band 11920 10719) := by core033_kernel_decide
theorem stats11921 : actualRows11921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11921=5124 := by core033_kernel_decide
theorem rows11922 : actualRows11922=WordField.canonicalRows actualModulus 11922 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11922 : actualRows11922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11922=2964 := by core033_kernel_decide
theorem rows11923 : actualRows11923=WordField.canonicalRows actualModulus 11923 (.bxor 693 11922) := by core033_kernel_decide
theorem stats11923 : actualRows11923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11923=7428 := by core033_kernel_decide
theorem rows11924 : actualRows11924=WordField.canonicalRows actualModulus 11924 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11924 : actualRows11924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11924=2820 := by core033_kernel_decide
theorem rows11925 : actualRows11925=WordField.canonicalRows actualModulus 11925 (.bnot 11924) := by core033_kernel_decide
theorem stats11925 : actualRows11925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11925=6276 := by core033_kernel_decide
theorem rows11926 : actualRows11926=WordField.canonicalRows actualModulus 11926 (.band 11923 11925) := by core033_kernel_decide
theorem stats11926 : actualRows11926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11926=5124 := by core033_kernel_decide
theorem rows11927 : actualRows11927=WordField.canonicalRows actualModulus 11927 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11927 : actualRows11927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11927=2964 := by core033_kernel_decide
theorem rows11928 : actualRows11928=WordField.canonicalRows actualModulus 11928 (.bxor 693 11927) := by core033_kernel_decide
theorem stats11928 : actualRows11928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11928=7428 := by core033_kernel_decide
theorem rows11929 : actualRows11929=WordField.canonicalRows actualModulus 11929 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11929 : actualRows11929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11929=2820 := by core033_kernel_decide
theorem rows11930 : actualRows11930=WordField.canonicalRows actualModulus 11930 (.bnot 11929) := by core033_kernel_decide
theorem stats11930 : actualRows11930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11930=6276 := by core033_kernel_decide
theorem rows11931 : actualRows11931=WordField.canonicalRows actualModulus 11931 (.bxor 11928 11930) := by core033_kernel_decide
theorem stats11931 : actualRows11931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11931=7428 := by core033_kernel_decide
theorem rows11932 : actualRows11932=WordField.canonicalRows actualModulus 11932 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11932 : actualRows11932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11932=2964 := by core033_kernel_decide
theorem rows11933 : actualRows11933=WordField.canonicalRows actualModulus 11933 (.bxor 693 11932) := by core033_kernel_decide
theorem stats11933 : actualRows11933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11933=7428 := by core033_kernel_decide
theorem rows11934 : actualRows11934=WordField.canonicalRows actualModulus 11934 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11934 : actualRows11934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11934=2820 := by core033_kernel_decide
theorem rows11935 : actualRows11935=WordField.canonicalRows actualModulus 11935 (.bnot 11934) := by core033_kernel_decide
theorem stats11935 : actualRows11935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11935=6276 := by core033_kernel_decide
theorem rows11936 : actualRows11936=WordField.canonicalRows actualModulus 11936 (.badd 11933 11935) := by core033_kernel_decide
theorem stats11936 : actualRows11936.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11936=5388 := by core033_kernel_decide
theorem rows11937 : actualRows11937=WordField.canonicalRows actualModulus 11937 (.bnot 11936) := by core033_kernel_decide
theorem stats11937 : actualRows11937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11937=6276 := by core033_kernel_decide
theorem rows11938 : actualRows11938=WordField.canonicalRows actualModulus 11938 (.band 11931 11937) := by core033_kernel_decide
theorem stats11938 : actualRows11938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11938=5124 := by core033_kernel_decide
theorem rows11939 : actualRows11939=WordField.canonicalRows actualModulus 11939 (.bxor 11926 11938) := by core033_kernel_decide
theorem stats11939 : actualRows11939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11939=7428 := by core033_kernel_decide
theorem rows11940 : actualRows11940=WordField.canonicalRows actualModulus 11940 (.shr 11939 31) := by core033_kernel_decide
theorem stats11940 : actualRows11940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11940=2892 := by core033_kernel_decide
theorem rows11941 : actualRows11941=WordField.canonicalRows actualModulus 11941 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11941 : actualRows11941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11941=2892 := by core033_kernel_decide
theorem rows11942 : actualRows11942=WordField.canonicalRows actualModulus 11942 (.bxor 11940 11941) := by core033_kernel_decide
theorem stats11942 : actualRows11942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11942=7428 := by core033_kernel_decide
theorem rows11943 : actualRows11943=WordField.canonicalRows actualModulus 11943 (.bnot 11942) := by core033_kernel_decide
theorem stats11943 : actualRows11943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11943=6276 := by core033_kernel_decide
theorem rows11944 : actualRows11944=WordField.canonicalRows actualModulus 11944 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11944 : actualRows11944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11944=2892 := by core033_kernel_decide
theorem rows11945 : actualRows11945=WordField.canonicalRows actualModulus 11945 (.badd 11943 11944) := by core033_kernel_decide
theorem stats11945 : actualRows11945.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11945=5388 := by core033_kernel_decide
theorem rows11946 : actualRows11946=WordField.canonicalRows actualModulus 11946 (.bnot 11945) := by core033_kernel_decide
theorem stats11946 : actualRows11946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11946=6276 := by core033_kernel_decide
theorem rows11947 : actualRows11947=WordField.canonicalRows actualModulus 11947 (.band 11946 1398) := by core033_kernel_decide
theorem stats11947 : actualRows11947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11947=5124 := by core033_kernel_decide
theorem rows11948 : actualRows11948=WordField.canonicalRows actualModulus 11948 (.bxor 11921 11947) := by core033_kernel_decide
theorem stats11948 : actualRows11948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11948=7428 := by core033_kernel_decide
theorem rows11949 : actualRows11949=WordField.canonicalRows actualModulus 11949 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11949 : actualRows11949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11949=2964 := by core033_kernel_decide
theorem rows11950 : actualRows11950=WordField.canonicalRows actualModulus 11950 (.bxor 693 11949) := by core033_kernel_decide
theorem stats11950 : actualRows11950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11950=7428 := by core033_kernel_decide
theorem rows11951 : actualRows11951=WordField.canonicalRows actualModulus 11951 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11951 : actualRows11951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11951=2820 := by core033_kernel_decide
theorem rows11952 : actualRows11952=WordField.canonicalRows actualModulus 11952 (.bnot 11951) := by core033_kernel_decide
theorem stats11952 : actualRows11952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11952=6276 := by core033_kernel_decide
theorem rows11953 : actualRows11953=WordField.canonicalRows actualModulus 11953 (.band 11950 11952) := by core033_kernel_decide
theorem stats11953 : actualRows11953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11953=5124 := by core033_kernel_decide
theorem rows11954 : actualRows11954=WordField.canonicalRows actualModulus 11954 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11954 : actualRows11954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11954=2964 := by core033_kernel_decide
theorem rows11955 : actualRows11955=WordField.canonicalRows actualModulus 11955 (.bxor 693 11954) := by core033_kernel_decide
theorem stats11955 : actualRows11955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11955=7428 := by core033_kernel_decide
theorem rows11956 : actualRows11956=WordField.canonicalRows actualModulus 11956 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11956 : actualRows11956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11956=2820 := by core033_kernel_decide
theorem rows11957 : actualRows11957=WordField.canonicalRows actualModulus 11957 (.bnot 11956) := by core033_kernel_decide
theorem stats11957 : actualRows11957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11957=6276 := by core033_kernel_decide
def partRows184 : List R1CS.Row := actualRows11894++actualRows11895++actualRows11896++actualRows11897++actualRows11898++actualRows11899++actualRows11900++actualRows11901++actualRows11902++actualRows11903++actualRows11904++actualRows11905++actualRows11906++actualRows11907++actualRows11908++actualRows11909++actualRows11910++actualRows11911++actualRows11912++actualRows11913++actualRows11914++actualRows11915++actualRows11916++actualRows11917++actualRows11918++actualRows11919++actualRows11920++actualRows11921++actualRows11922++actualRows11923++actualRows11924++actualRows11925++actualRows11926++actualRows11927++actualRows11928++actualRows11929++actualRows11930++actualRows11931++actualRows11932++actualRows11933++actualRows11934++actualRows11935++actualRows11936++actualRows11937++actualRows11938++actualRows11939++actualRows11940++actualRows11941++actualRows11942++actualRows11943++actualRows11944++actualRows11945++actualRows11946++actualRows11947++actualRows11948++actualRows11949++actualRows11950++actualRows11951++actualRows11952++actualRows11953++actualRows11954++actualRows11955++actualRows11956++actualRows11957
def partOps184 : List WordIR.Op := [.bnot 11893,.band 11894 1387,.bxor 11869 11895,.literal (BitVec.ofNat 32 3),.bxor 693 11897,.literal (BitVec.ofNat 32 0),.bnot 11899,.band 11898 11900,.literal (BitVec.ofNat 32 3),.bxor 693 11902,.literal (BitVec.ofNat 32 0),.bnot 11904,.bxor 11903 11905,.literal (BitVec.ofNat 32 3),.bxor 693 11907,.literal (BitVec.ofNat 32 0),.bnot 11909,.badd 11908 11910,.bnot 11911,.band 11906 11912,.bxor 11901 11913,.shr 11914 31,.literal (BitVec.ofNat 32 1),.bxor 11915 11916,.bnot 11917,.literal (BitVec.ofNat 32 1),.badd 11918 11919,.band 11920 10719,.literal (BitVec.ofNat 32 3),.bxor 693 11922,.literal (BitVec.ofNat 32 0),.bnot 11924,.band 11923 11925,.literal (BitVec.ofNat 32 3),.bxor 693 11927,.literal (BitVec.ofNat 32 0),.bnot 11929,.bxor 11928 11930,.literal (BitVec.ofNat 32 3),.bxor 693 11932,.literal (BitVec.ofNat 32 0),.bnot 11934,.badd 11933 11935,.bnot 11936,.band 11931 11937,.bxor 11926 11938,.shr 11939 31,.literal (BitVec.ofNat 32 1),.bxor 11940 11941,.bnot 11942,.literal (BitVec.ofNat 32 1),.badd 11943 11944,.bnot 11945,.band 11946 1398,.bxor 11921 11947,.literal (BitVec.ofNat 32 3),.bxor 693 11949,.literal (BitVec.ofNat 32 0),.bnot 11951,.band 11950 11952,.literal (BitVec.ofNat 32 3),.bxor 693 11954,.literal (BitVec.ofNat 32 0),.bnot 11956]
theorem partExact184 : partRows184=WordField.rows actualModulus 11894 partOps184 := by
  simp only [partRows184,partOps184,WordField.rows,rows11894,rows11895,rows11896,rows11897,rows11898,rows11899,rows11900,rows11901,rows11902,rows11903,rows11904,rows11905,rows11906,rows11907,rows11908,rows11909,rows11910,rows11911,rows11912,rows11913,rows11914,rows11915,rows11916,rows11917,rows11918,rows11919,rows11920,rows11921,rows11922,rows11923,rows11924,rows11925,rows11926,rows11927,rows11928,rows11929,rows11930,rows11931,rows11932,rows11933,rows11934,rows11935,rows11936,rows11937,rows11938,rows11939,rows11940,rows11941,rows11942,rows11943,rows11944,rows11945,rows11946,rows11947,rows11948,rows11949,rows11950,rows11951,rows11952,rows11953,rows11954,rows11955,rows11956,rows11957,List.append_assoc,List.append_nil]
theorem partLength184 : partOps184.length=64 := by decide
theorem partStats184 : partRows184.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows184=332880 := by
  simp only [partRows184,List.length_append,MatrixRowBlocks.rows_weight_append,stats11894.1,stats11894.2,stats11895.1,stats11895.2,stats11896.1,stats11896.2,stats11897.1,stats11897.2,stats11898.1,stats11898.2,stats11899.1,stats11899.2,stats11900.1,stats11900.2,stats11901.1,stats11901.2,stats11902.1,stats11902.2,stats11903.1,stats11903.2,stats11904.1,stats11904.2,stats11905.1,stats11905.2,stats11906.1,stats11906.2,stats11907.1,stats11907.2,stats11908.1,stats11908.2,stats11909.1,stats11909.2,stats11910.1,stats11910.2,stats11911.1,stats11911.2,stats11912.1,stats11912.2,stats11913.1,stats11913.2,stats11914.1,stats11914.2,stats11915.1,stats11915.2,stats11916.1,stats11916.2,stats11917.1,stats11917.2,stats11918.1,stats11918.2,stats11919.1,stats11919.2,stats11920.1,stats11920.2,stats11921.1,stats11921.2,stats11922.1,stats11922.2,stats11923.1,stats11923.2,stats11924.1,stats11924.2,stats11925.1,stats11925.2,stats11926.1,stats11926.2,stats11927.1,stats11927.2,stats11928.1,stats11928.2,stats11929.1,stats11929.2,stats11930.1,stats11930.2,stats11931.1,stats11931.2,stats11932.1,stats11932.2,stats11933.1,stats11933.2,stats11934.1,stats11934.2,stats11935.1,stats11935.2,stats11936.1,stats11936.2,stats11937.1,stats11937.2,stats11938.1,stats11938.2,stats11939.1,stats11939.2,stats11940.1,stats11940.2,stats11941.1,stats11941.2,stats11942.1,stats11942.2,stats11943.1,stats11943.2,stats11944.1,stats11944.2,stats11945.1,stats11945.2,stats11946.1,stats11946.2,stats11947.1,stats11947.2,stats11948.1,stats11948.2,stats11949.1,stats11949.2,stats11950.1,stats11950.2,stats11951.1,stats11951.2,stats11952.1,stats11952.2,stats11953.1,stats11953.2,stats11954.1,stats11954.2,stats11955.1,stats11955.2,stats11956.1,stats11956.2,stats11957.1,stats11957.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
