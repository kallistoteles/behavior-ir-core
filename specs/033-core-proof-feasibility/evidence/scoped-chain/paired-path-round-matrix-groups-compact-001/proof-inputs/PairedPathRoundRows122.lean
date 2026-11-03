import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData123
import PairedPathRoundInstructionMatrixData124
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7904 : actualRows7904=WordField.canonicalRows actualModulus 7904 (.rotr 7890 17) := by core033_kernel_decide
theorem stats7904 : actualRows7904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7904=5124 := by core033_kernel_decide
theorem rows7905 : actualRows7905=WordField.canonicalRows actualModulus 7905 (.rotr 7890 19) := by core033_kernel_decide
theorem stats7905 : actualRows7905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7905=5124 := by core033_kernel_decide
theorem rows7906 : actualRows7906=WordField.canonicalRows actualModulus 7906 (.bxor 7904 7905) := by core033_kernel_decide
theorem stats7906 : actualRows7906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7906=7428 := by core033_kernel_decide
theorem rows7907 : actualRows7907=WordField.canonicalRows actualModulus 7907 (.shr 7890 10) := by core033_kernel_decide
theorem stats7907 : actualRows7907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7907=4404 := by core033_kernel_decide
theorem rows7908 : actualRows7908=WordField.canonicalRows actualModulus 7908 (.bxor 7906 7907) := by core033_kernel_decide
theorem stats7908 : actualRows7908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7908=7428 := by core033_kernel_decide
theorem rows7909 : actualRows7909=WordField.canonicalRows actualModulus 7909 (.badd 7908 7825) := by core033_kernel_decide
theorem stats7909 : actualRows7909.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7909=5388 := by core033_kernel_decide
theorem rows7910 : actualRows7910=WordField.canonicalRows actualModulus 7910 (.rotr 7721 7) := by core033_kernel_decide
theorem stats7910 : actualRows7910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7910=5124 := by core033_kernel_decide
theorem rows7911 : actualRows7911=WordField.canonicalRows actualModulus 7911 (.rotr 7721 18) := by core033_kernel_decide
theorem stats7911 : actualRows7911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7911=5124 := by core033_kernel_decide
theorem rows7912 : actualRows7912=WordField.canonicalRows actualModulus 7912 (.bxor 7910 7911) := by core033_kernel_decide
theorem stats7912 : actualRows7912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7912=7428 := by core033_kernel_decide
theorem rows7913 : actualRows7913=WordField.canonicalRows actualModulus 7913 (.shr 7721 3) := by core033_kernel_decide
theorem stats7913 : actualRows7913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7913=4908 := by core033_kernel_decide
theorem rows7914 : actualRows7914=WordField.canonicalRows actualModulus 7914 (.bxor 7912 7913) := by core033_kernel_decide
theorem stats7914 : actualRows7914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7914=7428 := by core033_kernel_decide
theorem rows7915 : actualRows7915=WordField.canonicalRows actualModulus 7915 (.badd 7909 7914) := by core033_kernel_decide
theorem stats7915 : actualRows7915.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7915=5388 := by core033_kernel_decide
theorem rows7916 : actualRows7916=WordField.canonicalRows actualModulus 7916 (.badd 7915 7708) := by core033_kernel_decide
theorem stats7916 : actualRows7916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7916=5388 := by core033_kernel_decide
theorem rows7917 : actualRows7917=WordField.canonicalRows actualModulus 7917 (.rotr 7903 17) := by core033_kernel_decide
theorem stats7917 : actualRows7917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7917=5124 := by core033_kernel_decide
theorem rows7918 : actualRows7918=WordField.canonicalRows actualModulus 7918 (.rotr 7903 19) := by core033_kernel_decide
theorem stats7918 : actualRows7918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7918=5124 := by core033_kernel_decide
theorem rows7919 : actualRows7919=WordField.canonicalRows actualModulus 7919 (.bxor 7917 7918) := by core033_kernel_decide
theorem stats7919 : actualRows7919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7919=7428 := by core033_kernel_decide
theorem rows7920 : actualRows7920=WordField.canonicalRows actualModulus 7920 (.shr 7903 10) := by core033_kernel_decide
theorem stats7920 : actualRows7920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7920=4404 := by core033_kernel_decide
theorem rows7921 : actualRows7921=WordField.canonicalRows actualModulus 7921 (.bxor 7919 7920) := by core033_kernel_decide
theorem stats7921 : actualRows7921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7921=7428 := by core033_kernel_decide
theorem rows7922 : actualRows7922=WordField.canonicalRows actualModulus 7922 (.badd 7921 7838) := by core033_kernel_decide
theorem stats7922 : actualRows7922.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7922=5388 := by core033_kernel_decide
theorem rows7923 : actualRows7923=WordField.canonicalRows actualModulus 7923 (.rotr 7734 7) := by core033_kernel_decide
theorem stats7923 : actualRows7923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7923=5124 := by core033_kernel_decide
theorem rows7924 : actualRows7924=WordField.canonicalRows actualModulus 7924 (.rotr 7734 18) := by core033_kernel_decide
theorem stats7924 : actualRows7924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7924=5124 := by core033_kernel_decide
theorem rows7925 : actualRows7925=WordField.canonicalRows actualModulus 7925 (.bxor 7923 7924) := by core033_kernel_decide
theorem stats7925 : actualRows7925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7925=7428 := by core033_kernel_decide
theorem rows7926 : actualRows7926=WordField.canonicalRows actualModulus 7926 (.shr 7734 3) := by core033_kernel_decide
theorem stats7926 : actualRows7926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7926=4908 := by core033_kernel_decide
theorem rows7927 : actualRows7927=WordField.canonicalRows actualModulus 7927 (.bxor 7925 7926) := by core033_kernel_decide
theorem stats7927 : actualRows7927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7927=7428 := by core033_kernel_decide
theorem rows7928 : actualRows7928=WordField.canonicalRows actualModulus 7928 (.badd 7922 7927) := by core033_kernel_decide
theorem stats7928 : actualRows7928.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7928=5388 := by core033_kernel_decide
theorem rows7929 : actualRows7929=WordField.canonicalRows actualModulus 7929 (.badd 7928 7721) := by core033_kernel_decide
theorem stats7929 : actualRows7929.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7929=5388 := by core033_kernel_decide
theorem rows7930 : actualRows7930=WordField.canonicalRows actualModulus 7930 (.rotr 7916 17) := by core033_kernel_decide
theorem stats7930 : actualRows7930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7930=5124 := by core033_kernel_decide
theorem rows7931 : actualRows7931=WordField.canonicalRows actualModulus 7931 (.rotr 7916 19) := by core033_kernel_decide
theorem stats7931 : actualRows7931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7931=5124 := by core033_kernel_decide
theorem rows7932 : actualRows7932=WordField.canonicalRows actualModulus 7932 (.bxor 7930 7931) := by core033_kernel_decide
theorem stats7932 : actualRows7932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7932=7428 := by core033_kernel_decide
theorem rows7933 : actualRows7933=WordField.canonicalRows actualModulus 7933 (.shr 7916 10) := by core033_kernel_decide
theorem stats7933 : actualRows7933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7933=4404 := by core033_kernel_decide
theorem rows7934 : actualRows7934=WordField.canonicalRows actualModulus 7934 (.bxor 7932 7933) := by core033_kernel_decide
theorem stats7934 : actualRows7934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7934=7428 := by core033_kernel_decide
theorem rows7935 : actualRows7935=WordField.canonicalRows actualModulus 7935 (.badd 7934 7851) := by core033_kernel_decide
theorem stats7935 : actualRows7935.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7935=5388 := by core033_kernel_decide
theorem rows7936 : actualRows7936=WordField.canonicalRows actualModulus 7936 (.rotr 7747 7) := by core033_kernel_decide
theorem stats7936 : actualRows7936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7936=5124 := by core033_kernel_decide
theorem rows7937 : actualRows7937=WordField.canonicalRows actualModulus 7937 (.rotr 7747 18) := by core033_kernel_decide
theorem stats7937 : actualRows7937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7937=5124 := by core033_kernel_decide
theorem rows7938 : actualRows7938=WordField.canonicalRows actualModulus 7938 (.bxor 7936 7937) := by core033_kernel_decide
theorem stats7938 : actualRows7938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7938=7428 := by core033_kernel_decide
theorem rows7939 : actualRows7939=WordField.canonicalRows actualModulus 7939 (.shr 7747 3) := by core033_kernel_decide
theorem stats7939 : actualRows7939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7939=4908 := by core033_kernel_decide
theorem rows7940 : actualRows7940=WordField.canonicalRows actualModulus 7940 (.bxor 7938 7939) := by core033_kernel_decide
theorem stats7940 : actualRows7940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7940=7428 := by core033_kernel_decide
theorem rows7941 : actualRows7941=WordField.canonicalRows actualModulus 7941 (.badd 7935 7940) := by core033_kernel_decide
theorem stats7941 : actualRows7941.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7941=5388 := by core033_kernel_decide
theorem rows7942 : actualRows7942=WordField.canonicalRows actualModulus 7942 (.badd 7941 7734) := by core033_kernel_decide
theorem stats7942 : actualRows7942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7942=5388 := by core033_kernel_decide
theorem rows7943 : actualRows7943=WordField.canonicalRows actualModulus 7943 (.rotr 7929 17) := by core033_kernel_decide
theorem stats7943 : actualRows7943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7943=5124 := by core033_kernel_decide
theorem rows7944 : actualRows7944=WordField.canonicalRows actualModulus 7944 (.rotr 7929 19) := by core033_kernel_decide
theorem stats7944 : actualRows7944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7944=5124 := by core033_kernel_decide
theorem rows7945 : actualRows7945=WordField.canonicalRows actualModulus 7945 (.bxor 7943 7944) := by core033_kernel_decide
theorem stats7945 : actualRows7945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7945=7428 := by core033_kernel_decide
theorem rows7946 : actualRows7946=WordField.canonicalRows actualModulus 7946 (.shr 7929 10) := by core033_kernel_decide
theorem stats7946 : actualRows7946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7946=4404 := by core033_kernel_decide
theorem rows7947 : actualRows7947=WordField.canonicalRows actualModulus 7947 (.bxor 7945 7946) := by core033_kernel_decide
theorem stats7947 : actualRows7947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7947=7428 := by core033_kernel_decide
theorem rows7948 : actualRows7948=WordField.canonicalRows actualModulus 7948 (.badd 7947 7864) := by core033_kernel_decide
theorem stats7948 : actualRows7948.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7948=5388 := by core033_kernel_decide
theorem rows7949 : actualRows7949=WordField.canonicalRows actualModulus 7949 (.rotr 7760 7) := by core033_kernel_decide
theorem stats7949 : actualRows7949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7949=5124 := by core033_kernel_decide
theorem rows7950 : actualRows7950=WordField.canonicalRows actualModulus 7950 (.rotr 7760 18) := by core033_kernel_decide
theorem stats7950 : actualRows7950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7950=5124 := by core033_kernel_decide
theorem rows7951 : actualRows7951=WordField.canonicalRows actualModulus 7951 (.bxor 7949 7950) := by core033_kernel_decide
theorem stats7951 : actualRows7951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7951=7428 := by core033_kernel_decide
theorem rows7952 : actualRows7952=WordField.canonicalRows actualModulus 7952 (.shr 7760 3) := by core033_kernel_decide
theorem stats7952 : actualRows7952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7952=4908 := by core033_kernel_decide
theorem rows7953 : actualRows7953=WordField.canonicalRows actualModulus 7953 (.bxor 7951 7952) := by core033_kernel_decide
theorem stats7953 : actualRows7953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7953=7428 := by core033_kernel_decide
theorem rows7954 : actualRows7954=WordField.canonicalRows actualModulus 7954 (.badd 7948 7953) := by core033_kernel_decide
theorem stats7954 : actualRows7954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7954=5388 := by core033_kernel_decide
theorem rows7955 : actualRows7955=WordField.canonicalRows actualModulus 7955 (.badd 7954 7747) := by core033_kernel_decide
theorem stats7955 : actualRows7955.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7955=5388 := by core033_kernel_decide
theorem rows7956 : actualRows7956=WordField.canonicalRows actualModulus 7956 (.rotr 7942 17) := by core033_kernel_decide
theorem stats7956 : actualRows7956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7956=5124 := by core033_kernel_decide
theorem rows7957 : actualRows7957=WordField.canonicalRows actualModulus 7957 (.rotr 7942 19) := by core033_kernel_decide
theorem stats7957 : actualRows7957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7957=5124 := by core033_kernel_decide
theorem rows7958 : actualRows7958=WordField.canonicalRows actualModulus 7958 (.bxor 7956 7957) := by core033_kernel_decide
theorem stats7958 : actualRows7958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7958=7428 := by core033_kernel_decide
theorem rows7959 : actualRows7959=WordField.canonicalRows actualModulus 7959 (.shr 7942 10) := by core033_kernel_decide
theorem stats7959 : actualRows7959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7959=4404 := by core033_kernel_decide
theorem rows7960 : actualRows7960=WordField.canonicalRows actualModulus 7960 (.bxor 7958 7959) := by core033_kernel_decide
theorem stats7960 : actualRows7960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7960=7428 := by core033_kernel_decide
theorem rows7961 : actualRows7961=WordField.canonicalRows actualModulus 7961 (.badd 7960 7877) := by core033_kernel_decide
theorem stats7961 : actualRows7961.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7961=5388 := by core033_kernel_decide
theorem rows7962 : actualRows7962=WordField.canonicalRows actualModulus 7962 (.rotr 7773 7) := by core033_kernel_decide
theorem stats7962 : actualRows7962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7962=5124 := by core033_kernel_decide
theorem rows7963 : actualRows7963=WordField.canonicalRows actualModulus 7963 (.rotr 7773 18) := by core033_kernel_decide
theorem stats7963 : actualRows7963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7963=5124 := by core033_kernel_decide
theorem rows7964 : actualRows7964=WordField.canonicalRows actualModulus 7964 (.bxor 7962 7963) := by core033_kernel_decide
theorem stats7964 : actualRows7964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7964=7428 := by core033_kernel_decide
theorem rows7965 : actualRows7965=WordField.canonicalRows actualModulus 7965 (.shr 7773 3) := by core033_kernel_decide
theorem stats7965 : actualRows7965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7965=4908 := by core033_kernel_decide
theorem rows7966 : actualRows7966=WordField.canonicalRows actualModulus 7966 (.bxor 7964 7965) := by core033_kernel_decide
theorem stats7966 : actualRows7966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7966=7428 := by core033_kernel_decide
theorem rows7967 : actualRows7967=WordField.canonicalRows actualModulus 7967 (.badd 7961 7966) := by core033_kernel_decide
theorem stats7967 : actualRows7967.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7967=5388 := by core033_kernel_decide
def partRows122 : List R1CS.Row := actualRows7904++actualRows7905++actualRows7906++actualRows7907++actualRows7908++actualRows7909++actualRows7910++actualRows7911++actualRows7912++actualRows7913++actualRows7914++actualRows7915++actualRows7916++actualRows7917++actualRows7918++actualRows7919++actualRows7920++actualRows7921++actualRows7922++actualRows7923++actualRows7924++actualRows7925++actualRows7926++actualRows7927++actualRows7928++actualRows7929++actualRows7930++actualRows7931++actualRows7932++actualRows7933++actualRows7934++actualRows7935++actualRows7936++actualRows7937++actualRows7938++actualRows7939++actualRows7940++actualRows7941++actualRows7942++actualRows7943++actualRows7944++actualRows7945++actualRows7946++actualRows7947++actualRows7948++actualRows7949++actualRows7950++actualRows7951++actualRows7952++actualRows7953++actualRows7954++actualRows7955++actualRows7956++actualRows7957++actualRows7958++actualRows7959++actualRows7960++actualRows7961++actualRows7962++actualRows7963++actualRows7964++actualRows7965++actualRows7966++actualRows7967
def partOps122 : List WordIR.Op := [.rotr 7890 17,.rotr 7890 19,.bxor 7904 7905,.shr 7890 10,.bxor 7906 7907,.badd 7908 7825,.rotr 7721 7,.rotr 7721 18,.bxor 7910 7911,.shr 7721 3,.bxor 7912 7913,.badd 7909 7914,.badd 7915 7708,.rotr 7903 17,.rotr 7903 19,.bxor 7917 7918,.shr 7903 10,.bxor 7919 7920,.badd 7921 7838,.rotr 7734 7,.rotr 7734 18,.bxor 7923 7924,.shr 7734 3,.bxor 7925 7926,.badd 7922 7927,.badd 7928 7721,.rotr 7916 17,.rotr 7916 19,.bxor 7930 7931,.shr 7916 10,.bxor 7932 7933,.badd 7934 7851,.rotr 7747 7,.rotr 7747 18,.bxor 7936 7937,.shr 7747 3,.bxor 7938 7939,.badd 7935 7940,.badd 7941 7734,.rotr 7929 17,.rotr 7929 19,.bxor 7943 7944,.shr 7929 10,.bxor 7945 7946,.badd 7947 7864,.rotr 7760 7,.rotr 7760 18,.bxor 7949 7950,.shr 7760 3,.bxor 7951 7952,.badd 7948 7953,.badd 7954 7747,.rotr 7942 17,.rotr 7942 19,.bxor 7956 7957,.shr 7942 10,.bxor 7958 7959,.badd 7960 7877,.rotr 7773 7,.rotr 7773 18,.bxor 7962 7963,.shr 7773 3,.bxor 7964 7965,.badd 7961 7966]
theorem partExact122 : partRows122=WordField.rows actualModulus 7904 partOps122 := by
  simp only [partRows122,partOps122,WordField.rows,rows7904,rows7905,rows7906,rows7907,rows7908,rows7909,rows7910,rows7911,rows7912,rows7913,rows7914,rows7915,rows7916,rows7917,rows7918,rows7919,rows7920,rows7921,rows7922,rows7923,rows7924,rows7925,rows7926,rows7927,rows7928,rows7929,rows7930,rows7931,rows7932,rows7933,rows7934,rows7935,rows7936,rows7937,rows7938,rows7939,rows7940,rows7941,rows7942,rows7943,rows7944,rows7945,rows7946,rows7947,rows7948,rows7949,rows7950,rows7951,rows7952,rows7953,rows7954,rows7955,rows7956,rows7957,rows7958,rows7959,rows7960,rows7961,rows7962,rows7963,rows7964,rows7965,rows7966,rows7967,List.append_assoc,List.append_nil]
theorem partLength122 : partOps122.length=64 := by decide
theorem partStats122 : partRows122.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows122=373032 := by
  simp only [partRows122,List.length_append,MatrixRowBlocks.rows_weight_append,stats7904.1,stats7904.2,stats7905.1,stats7905.2,stats7906.1,stats7906.2,stats7907.1,stats7907.2,stats7908.1,stats7908.2,stats7909.1,stats7909.2,stats7910.1,stats7910.2,stats7911.1,stats7911.2,stats7912.1,stats7912.2,stats7913.1,stats7913.2,stats7914.1,stats7914.2,stats7915.1,stats7915.2,stats7916.1,stats7916.2,stats7917.1,stats7917.2,stats7918.1,stats7918.2,stats7919.1,stats7919.2,stats7920.1,stats7920.2,stats7921.1,stats7921.2,stats7922.1,stats7922.2,stats7923.1,stats7923.2,stats7924.1,stats7924.2,stats7925.1,stats7925.2,stats7926.1,stats7926.2,stats7927.1,stats7927.2,stats7928.1,stats7928.2,stats7929.1,stats7929.2,stats7930.1,stats7930.2,stats7931.1,stats7931.2,stats7932.1,stats7932.2,stats7933.1,stats7933.2,stats7934.1,stats7934.2,stats7935.1,stats7935.2,stats7936.1,stats7936.2,stats7937.1,stats7937.2,stats7938.1,stats7938.2,stats7939.1,stats7939.2,stats7940.1,stats7940.2,stats7941.1,stats7941.2,stats7942.1,stats7942.2,stats7943.1,stats7943.2,stats7944.1,stats7944.2,stats7945.1,stats7945.2,stats7946.1,stats7946.2,stats7947.1,stats7947.2,stats7948.1,stats7948.2,stats7949.1,stats7949.2,stats7950.1,stats7950.2,stats7951.1,stats7951.2,stats7952.1,stats7952.2,stats7953.1,stats7953.2,stats7954.1,stats7954.2,stats7955.1,stats7955.2,stats7956.1,stats7956.2,stats7957.1,stats7957.2,stats7958.1,stats7958.2,stats7959.1,stats7959.2,stats7960.1,stats7960.2,stats7961.1,stats7961.2,stats7962.1,stats7962.2,stats7963.1,stats7963.2,stats7964.1,stats7964.2,stats7965.1,stats7965.2,stats7966.1,stats7966.2,stats7967.1,stats7967.2]
  decide
end PairedPathRoundCheckedRows
