import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData123
import PathRoundDispatchInstructionMatrixData124
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7915 : actualRows7915=WordField.canonicalRows actualModulus 7915 (.literal (BitVec.ofNat 32 2162078206)) := by core033_kernel_decide
theorem stats7915 : actualRows7915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7915=4116 := by core033_kernel_decide
theorem rows7916 : actualRows7916=WordField.canonicalRows actualModulus 7916 (.badd 7914 7915) := by core033_kernel_decide
theorem stats7916 : actualRows7916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7916=5388 := by core033_kernel_decide
theorem rows7917 : actualRows7917=WordField.canonicalRows actualModulus 7917 (.badd 7916 5764) := by core033_kernel_decide
theorem stats7917 : actualRows7917.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7917=5388 := by core033_kernel_decide
theorem rows7918 : actualRows7918=WordField.canonicalRows actualModulus 7918 (.rotr 7902 2) := by core033_kernel_decide
theorem stats7918 : actualRows7918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7918=5124 := by core033_kernel_decide
theorem rows7919 : actualRows7919=WordField.canonicalRows actualModulus 7919 (.rotr 7902 13) := by core033_kernel_decide
theorem stats7919 : actualRows7919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7919=5124 := by core033_kernel_decide
theorem rows7920 : actualRows7920=WordField.canonicalRows actualModulus 7920 (.bxor 7918 7919) := by core033_kernel_decide
theorem stats7920 : actualRows7920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7920=7428 := by core033_kernel_decide
theorem rows7921 : actualRows7921=WordField.canonicalRows actualModulus 7921 (.rotr 7902 22) := by core033_kernel_decide
theorem stats7921 : actualRows7921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7921=5124 := by core033_kernel_decide
theorem rows7922 : actualRows7922=WordField.canonicalRows actualModulus 7922 (.bxor 7920 7921) := by core033_kernel_decide
theorem stats7922 : actualRows7922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7922=7428 := by core033_kernel_decide
theorem rows7923 : actualRows7923=WordField.canonicalRows actualModulus 7923 (.band 7902 7875) := by core033_kernel_decide
theorem stats7923 : actualRows7923.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7923=5124 := by core033_kernel_decide
theorem rows7924 : actualRows7924=WordField.canonicalRows actualModulus 7924 (.band 7902 7848) := by core033_kernel_decide
theorem stats7924 : actualRows7924.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7924=5124 := by core033_kernel_decide
theorem rows7925 : actualRows7925=WordField.canonicalRows actualModulus 7925 (.bxor 7923 7924) := by core033_kernel_decide
theorem stats7925 : actualRows7925.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7925=7428 := by core033_kernel_decide
theorem rows7926 : actualRows7926=WordField.canonicalRows actualModulus 7926 (.band 7875 7848) := by core033_kernel_decide
theorem stats7926 : actualRows7926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7926=5124 := by core033_kernel_decide
theorem rows7927 : actualRows7927=WordField.canonicalRows actualModulus 7927 (.bxor 7925 7926) := by core033_kernel_decide
theorem stats7927 : actualRows7927.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7927=7428 := by core033_kernel_decide
theorem rows7928 : actualRows7928=WordField.canonicalRows actualModulus 7928 (.badd 7922 7927) := by core033_kernel_decide
theorem stats7928 : actualRows7928.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7928=5388 := by core033_kernel_decide
theorem rows7929 : actualRows7929=WordField.canonicalRows actualModulus 7929 (.badd 7917 7928) := by core033_kernel_decide
theorem stats7929 : actualRows7929.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7929=5388 := by core033_kernel_decide
theorem rows7930 : actualRows7930=WordField.canonicalRows actualModulus 7930 (.badd 7821 7917) := by core033_kernel_decide
theorem stats7930 : actualRows7930.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7930=5388 := by core033_kernel_decide
theorem rows7931 : actualRows7931=WordField.canonicalRows actualModulus 7931 (.rotr 7930 6) := by core033_kernel_decide
theorem stats7931 : actualRows7931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7931=5124 := by core033_kernel_decide
theorem rows7932 : actualRows7932=WordField.canonicalRows actualModulus 7932 (.rotr 7930 11) := by core033_kernel_decide
theorem stats7932 : actualRows7932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7932=5124 := by core033_kernel_decide
theorem rows7933 : actualRows7933=WordField.canonicalRows actualModulus 7933 (.bxor 7931 7932) := by core033_kernel_decide
theorem stats7933 : actualRows7933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7933=7428 := by core033_kernel_decide
theorem rows7934 : actualRows7934=WordField.canonicalRows actualModulus 7934 (.rotr 7930 25) := by core033_kernel_decide
theorem stats7934 : actualRows7934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7934=5124 := by core033_kernel_decide
theorem rows7935 : actualRows7935=WordField.canonicalRows actualModulus 7935 (.bxor 7933 7934) := by core033_kernel_decide
theorem stats7935 : actualRows7935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7935=7428 := by core033_kernel_decide
theorem rows7936 : actualRows7936=WordField.canonicalRows actualModulus 7936 (.badd 7849 7935) := by core033_kernel_decide
theorem stats7936 : actualRows7936.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7936=5388 := by core033_kernel_decide
theorem rows7937 : actualRows7937=WordField.canonicalRows actualModulus 7937 (.band 7930 7903) := by core033_kernel_decide
theorem stats7937 : actualRows7937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7937=5124 := by core033_kernel_decide
theorem rows7938 : actualRows7938=WordField.canonicalRows actualModulus 7938 (.bnot 7930) := by core033_kernel_decide
theorem stats7938 : actualRows7938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7938=6276 := by core033_kernel_decide
theorem rows7939 : actualRows7939=WordField.canonicalRows actualModulus 7939 (.band 7938 7876) := by core033_kernel_decide
theorem stats7939 : actualRows7939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7939=5124 := by core033_kernel_decide
theorem rows7940 : actualRows7940=WordField.canonicalRows actualModulus 7940 (.bxor 7937 7939) := by core033_kernel_decide
theorem stats7940 : actualRows7940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7940=7428 := by core033_kernel_decide
theorem rows7941 : actualRows7941=WordField.canonicalRows actualModulus 7941 (.badd 7936 7940) := by core033_kernel_decide
theorem stats7941 : actualRows7941.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7941=5388 := by core033_kernel_decide
theorem rows7942 : actualRows7942=WordField.canonicalRows actualModulus 7942 (.literal (BitVec.ofNat 32 2614888103)) := by core033_kernel_decide
theorem stats7942 : actualRows7942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7942=4044 := by core033_kernel_decide
theorem rows7943 : actualRows7943=WordField.canonicalRows actualModulus 7943 (.badd 7941 7942) := by core033_kernel_decide
theorem stats7943 : actualRows7943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7943=5388 := by core033_kernel_decide
theorem rows7944 : actualRows7944=WordField.canonicalRows actualModulus 7944 (.badd 7943 5770) := by core033_kernel_decide
theorem stats7944 : actualRows7944.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7944=5388 := by core033_kernel_decide
theorem rows7945 : actualRows7945=WordField.canonicalRows actualModulus 7945 (.rotr 7929 2) := by core033_kernel_decide
theorem stats7945 : actualRows7945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7945=5124 := by core033_kernel_decide
theorem rows7946 : actualRows7946=WordField.canonicalRows actualModulus 7946 (.rotr 7929 13) := by core033_kernel_decide
theorem stats7946 : actualRows7946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7946=5124 := by core033_kernel_decide
theorem rows7947 : actualRows7947=WordField.canonicalRows actualModulus 7947 (.bxor 7945 7946) := by core033_kernel_decide
theorem stats7947 : actualRows7947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7947=7428 := by core033_kernel_decide
theorem rows7948 : actualRows7948=WordField.canonicalRows actualModulus 7948 (.rotr 7929 22) := by core033_kernel_decide
theorem stats7948 : actualRows7948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7948=5124 := by core033_kernel_decide
theorem rows7949 : actualRows7949=WordField.canonicalRows actualModulus 7949 (.bxor 7947 7948) := by core033_kernel_decide
theorem stats7949 : actualRows7949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7949=7428 := by core033_kernel_decide
theorem rows7950 : actualRows7950=WordField.canonicalRows actualModulus 7950 (.band 7929 7902) := by core033_kernel_decide
theorem stats7950 : actualRows7950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7950=5124 := by core033_kernel_decide
theorem rows7951 : actualRows7951=WordField.canonicalRows actualModulus 7951 (.band 7929 7875) := by core033_kernel_decide
theorem stats7951 : actualRows7951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7951=5124 := by core033_kernel_decide
theorem rows7952 : actualRows7952=WordField.canonicalRows actualModulus 7952 (.bxor 7950 7951) := by core033_kernel_decide
theorem stats7952 : actualRows7952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7952=7428 := by core033_kernel_decide
theorem rows7953 : actualRows7953=WordField.canonicalRows actualModulus 7953 (.band 7902 7875) := by core033_kernel_decide
theorem stats7953 : actualRows7953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7953=5124 := by core033_kernel_decide
theorem rows7954 : actualRows7954=WordField.canonicalRows actualModulus 7954 (.bxor 7952 7953) := by core033_kernel_decide
theorem stats7954 : actualRows7954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7954=7428 := by core033_kernel_decide
theorem rows7955 : actualRows7955=WordField.canonicalRows actualModulus 7955 (.badd 7949 7954) := by core033_kernel_decide
theorem stats7955 : actualRows7955.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7955=5388 := by core033_kernel_decide
theorem rows7956 : actualRows7956=WordField.canonicalRows actualModulus 7956 (.badd 7944 7955) := by core033_kernel_decide
theorem stats7956 : actualRows7956.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7956=5388 := by core033_kernel_decide
theorem rows7957 : actualRows7957=WordField.canonicalRows actualModulus 7957 (.badd 7848 7944) := by core033_kernel_decide
theorem stats7957 : actualRows7957.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7957=5388 := by core033_kernel_decide
theorem rows7958 : actualRows7958=WordField.canonicalRows actualModulus 7958 (.rotr 7957 6) := by core033_kernel_decide
theorem stats7958 : actualRows7958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7958=5124 := by core033_kernel_decide
theorem rows7959 : actualRows7959=WordField.canonicalRows actualModulus 7959 (.rotr 7957 11) := by core033_kernel_decide
theorem stats7959 : actualRows7959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7959=5124 := by core033_kernel_decide
theorem rows7960 : actualRows7960=WordField.canonicalRows actualModulus 7960 (.bxor 7958 7959) := by core033_kernel_decide
theorem stats7960 : actualRows7960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7960=7428 := by core033_kernel_decide
theorem rows7961 : actualRows7961=WordField.canonicalRows actualModulus 7961 (.rotr 7957 25) := by core033_kernel_decide
theorem stats7961 : actualRows7961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7961=5124 := by core033_kernel_decide
theorem rows7962 : actualRows7962=WordField.canonicalRows actualModulus 7962 (.bxor 7960 7961) := by core033_kernel_decide
theorem stats7962 : actualRows7962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7962=7428 := by core033_kernel_decide
theorem rows7963 : actualRows7963=WordField.canonicalRows actualModulus 7963 (.badd 7876 7962) := by core033_kernel_decide
theorem stats7963 : actualRows7963.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7963=5388 := by core033_kernel_decide
theorem rows7964 : actualRows7964=WordField.canonicalRows actualModulus 7964 (.band 7957 7930) := by core033_kernel_decide
theorem stats7964 : actualRows7964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7964=5124 := by core033_kernel_decide
theorem rows7965 : actualRows7965=WordField.canonicalRows actualModulus 7965 (.bnot 7957) := by core033_kernel_decide
theorem stats7965 : actualRows7965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7965=6276 := by core033_kernel_decide
theorem rows7966 : actualRows7966=WordField.canonicalRows actualModulus 7966 (.band 7965 7903) := by core033_kernel_decide
theorem stats7966 : actualRows7966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7966=5124 := by core033_kernel_decide
theorem rows7967 : actualRows7967=WordField.canonicalRows actualModulus 7967 (.bxor 7964 7966) := by core033_kernel_decide
theorem stats7967 : actualRows7967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7967=7428 := by core033_kernel_decide
theorem rows7968 : actualRows7968=WordField.canonicalRows actualModulus 7968 (.badd 7963 7967) := by core033_kernel_decide
theorem stats7968 : actualRows7968.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7968=5388 := by core033_kernel_decide
theorem rows7969 : actualRows7969=WordField.canonicalRows actualModulus 7969 (.literal (BitVec.ofNat 32 3248222580)) := by core033_kernel_decide
theorem stats7969 : actualRows7969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7969=4044 := by core033_kernel_decide
theorem rows7970 : actualRows7970=WordField.canonicalRows actualModulus 7970 (.badd 7968 7969) := by core033_kernel_decide
theorem stats7970 : actualRows7970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7970=5388 := by core033_kernel_decide
theorem rows7971 : actualRows7971=WordField.canonicalRows actualModulus 7971 (.badd 7970 5776) := by core033_kernel_decide
theorem stats7971 : actualRows7971.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7971=5388 := by core033_kernel_decide
theorem rows7972 : actualRows7972=WordField.canonicalRows actualModulus 7972 (.rotr 7956 2) := by core033_kernel_decide
theorem stats7972 : actualRows7972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7972=5124 := by core033_kernel_decide
theorem rows7973 : actualRows7973=WordField.canonicalRows actualModulus 7973 (.rotr 7956 13) := by core033_kernel_decide
theorem stats7973 : actualRows7973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7973=5124 := by core033_kernel_decide
theorem rows7974 : actualRows7974=WordField.canonicalRows actualModulus 7974 (.bxor 7972 7973) := by core033_kernel_decide
theorem stats7974 : actualRows7974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7974=7428 := by core033_kernel_decide
theorem rows7975 : actualRows7975=WordField.canonicalRows actualModulus 7975 (.rotr 7956 22) := by core033_kernel_decide
theorem stats7975 : actualRows7975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7975=5124 := by core033_kernel_decide
theorem rows7976 : actualRows7976=WordField.canonicalRows actualModulus 7976 (.bxor 7974 7975) := by core033_kernel_decide
theorem stats7976 : actualRows7976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7976=7428 := by core033_kernel_decide
theorem rows7977 : actualRows7977=WordField.canonicalRows actualModulus 7977 (.band 7956 7929) := by core033_kernel_decide
theorem stats7977 : actualRows7977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7977=5124 := by core033_kernel_decide
theorem rows7978 : actualRows7978=WordField.canonicalRows actualModulus 7978 (.band 7956 7902) := by core033_kernel_decide
theorem stats7978 : actualRows7978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7978=5124 := by core033_kernel_decide
def partRows123 : List R1CS.Row := actualRows7915++actualRows7916++actualRows7917++actualRows7918++actualRows7919++actualRows7920++actualRows7921++actualRows7922++actualRows7923++actualRows7924++actualRows7925++actualRows7926++actualRows7927++actualRows7928++actualRows7929++actualRows7930++actualRows7931++actualRows7932++actualRows7933++actualRows7934++actualRows7935++actualRows7936++actualRows7937++actualRows7938++actualRows7939++actualRows7940++actualRows7941++actualRows7942++actualRows7943++actualRows7944++actualRows7945++actualRows7946++actualRows7947++actualRows7948++actualRows7949++actualRows7950++actualRows7951++actualRows7952++actualRows7953++actualRows7954++actualRows7955++actualRows7956++actualRows7957++actualRows7958++actualRows7959++actualRows7960++actualRows7961++actualRows7962++actualRows7963++actualRows7964++actualRows7965++actualRows7966++actualRows7967++actualRows7968++actualRows7969++actualRows7970++actualRows7971++actualRows7972++actualRows7973++actualRows7974++actualRows7975++actualRows7976++actualRows7977++actualRows7978
def partOps123 : List WordIR.Op := [.literal (BitVec.ofNat 32 2162078206),.badd 7914 7915,.badd 7916 5764,.rotr 7902 2,.rotr 7902 13,.bxor 7918 7919,.rotr 7902 22,.bxor 7920 7921,.band 7902 7875,.band 7902 7848,.bxor 7923 7924,.band 7875 7848,.bxor 7925 7926,.badd 7922 7927,.badd 7917 7928,.badd 7821 7917,.rotr 7930 6,.rotr 7930 11,.bxor 7931 7932,.rotr 7930 25,.bxor 7933 7934,.badd 7849 7935,.band 7930 7903,.bnot 7930,.band 7938 7876,.bxor 7937 7939,.badd 7936 7940,.literal (BitVec.ofNat 32 2614888103),.badd 7941 7942,.badd 7943 5770,.rotr 7929 2,.rotr 7929 13,.bxor 7945 7946,.rotr 7929 22,.bxor 7947 7948,.band 7929 7902,.band 7929 7875,.bxor 7950 7951,.band 7902 7875,.bxor 7952 7953,.badd 7949 7954,.badd 7944 7955,.badd 7848 7944,.rotr 7957 6,.rotr 7957 11,.bxor 7958 7959,.rotr 7957 25,.bxor 7960 7961,.badd 7876 7962,.band 7957 7930,.bnot 7957,.band 7965 7903,.bxor 7964 7966,.badd 7963 7967,.literal (BitVec.ofNat 32 3248222580),.badd 7968 7969,.badd 7970 5776,.rotr 7956 2,.rotr 7956 13,.bxor 7972 7973,.rotr 7956 22,.bxor 7974 7975,.band 7956 7929,.band 7956 7902]
theorem partExact123 : partRows123=WordField.rows actualModulus 7915 partOps123 := by
  simp only [partRows123,partOps123,WordField.rows,rows7915,rows7916,rows7917,rows7918,rows7919,rows7920,rows7921,rows7922,rows7923,rows7924,rows7925,rows7926,rows7927,rows7928,rows7929,rows7930,rows7931,rows7932,rows7933,rows7934,rows7935,rows7936,rows7937,rows7938,rows7939,rows7940,rows7941,rows7942,rows7943,rows7944,rows7945,rows7946,rows7947,rows7948,rows7949,rows7950,rows7951,rows7952,rows7953,rows7954,rows7955,rows7956,rows7957,rows7958,rows7959,rows7960,rows7961,rows7962,rows7963,rows7964,rows7965,rows7966,rows7967,rows7968,rows7969,rows7970,rows7971,rows7972,rows7973,rows7974,rows7975,rows7976,rows7977,rows7978,List.append_assoc,List.append_nil]
theorem partLength123 : partOps123.length=64 := by decide
theorem partStats123 : partRows123.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows123=368160 := by
  simp only [partRows123,List.length_append,MatrixRowBlocks.rows_weight_append,stats7915.1,stats7915.2,stats7916.1,stats7916.2,stats7917.1,stats7917.2,stats7918.1,stats7918.2,stats7919.1,stats7919.2,stats7920.1,stats7920.2,stats7921.1,stats7921.2,stats7922.1,stats7922.2,stats7923.1,stats7923.2,stats7924.1,stats7924.2,stats7925.1,stats7925.2,stats7926.1,stats7926.2,stats7927.1,stats7927.2,stats7928.1,stats7928.2,stats7929.1,stats7929.2,stats7930.1,stats7930.2,stats7931.1,stats7931.2,stats7932.1,stats7932.2,stats7933.1,stats7933.2,stats7934.1,stats7934.2,stats7935.1,stats7935.2,stats7936.1,stats7936.2,stats7937.1,stats7937.2,stats7938.1,stats7938.2,stats7939.1,stats7939.2,stats7940.1,stats7940.2,stats7941.1,stats7941.2,stats7942.1,stats7942.2,stats7943.1,stats7943.2,stats7944.1,stats7944.2,stats7945.1,stats7945.2,stats7946.1,stats7946.2,stats7947.1,stats7947.2,stats7948.1,stats7948.2,stats7949.1,stats7949.2,stats7950.1,stats7950.2,stats7951.1,stats7951.2,stats7952.1,stats7952.2,stats7953.1,stats7953.2,stats7954.1,stats7954.2,stats7955.1,stats7955.2,stats7956.1,stats7956.2,stats7957.1,stats7957.2,stats7958.1,stats7958.2,stats7959.1,stats7959.2,stats7960.1,stats7960.2,stats7961.1,stats7961.2,stats7962.1,stats7962.2,stats7963.1,stats7963.2,stats7964.1,stats7964.2,stats7965.1,stats7965.2,stats7966.1,stats7966.2,stats7967.1,stats7967.2,stats7968.1,stats7968.2,stats7969.1,stats7969.2,stats7970.1,stats7970.2,stats7971.1,stats7971.2,stats7972.1,stats7972.2,stats7973.1,stats7973.2,stats7974.1,stats7974.2,stats7975.1,stats7975.2,stats7976.1,stats7976.2,stats7977.1,stats7977.2,stats7978.1,stats7978.2]
  decide
end PathRoundDispatchCheckedRows
