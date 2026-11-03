import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData123
import AuthenticatedBranchRoundInstructionMatrixData124
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7926 : actualRows7926=WordField.canonicalRows actualModulus 7926 (.bnot 7925) := by core033_kernel_decide
theorem stats7926 : actualRows7926.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7926=6276 := by core033_kernel_decide
theorem rows7927 : actualRows7927=WordField.canonicalRows actualModulus 7927 (.badd 7924 7926) := by core033_kernel_decide
theorem stats7927 : actualRows7927.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7927=5388 := by core033_kernel_decide
theorem rows7928 : actualRows7928=WordField.canonicalRows actualModulus 7928 (.bnot 7927) := by core033_kernel_decide
theorem stats7928 : actualRows7928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7928=6276 := by core033_kernel_decide
theorem rows7929 : actualRows7929=WordField.canonicalRows actualModulus 7929 (.band 7923 7928) := by core033_kernel_decide
theorem stats7929 : actualRows7929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7929=5124 := by core033_kernel_decide
theorem rows7930 : actualRows7930=WordField.canonicalRows actualModulus 7930 (.bxor 7919 7929) := by core033_kernel_decide
theorem stats7930 : actualRows7930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7930=7428 := by core033_kernel_decide
theorem rows7931 : actualRows7931=WordField.canonicalRows actualModulus 7931 (.shr 7930 31) := by core033_kernel_decide
theorem stats7931 : actualRows7931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7931=2892 := by core033_kernel_decide
theorem rows7932 : actualRows7932=WordField.canonicalRows actualModulus 7932 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7932 : actualRows7932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7932=2892 := by core033_kernel_decide
theorem rows7933 : actualRows7933=WordField.canonicalRows actualModulus 7933 (.bxor 7931 7932) := by core033_kernel_decide
theorem stats7933 : actualRows7933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7933=7428 := by core033_kernel_decide
theorem rows7934 : actualRows7934=WordField.canonicalRows actualModulus 7934 (.shr 6353 8) := by core033_kernel_decide
theorem stats7934 : actualRows7934.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7934=4548 := by core033_kernel_decide
theorem rows7935 : actualRows7935=WordField.canonicalRows actualModulus 7935 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7935 : actualRows7935.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7935=2820 := by core033_kernel_decide
theorem rows7936 : actualRows7936=WordField.canonicalRows actualModulus 7936 (.bnot 7935) := by core033_kernel_decide
theorem stats7936 : actualRows7936.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7936=6276 := by core033_kernel_decide
theorem rows7937 : actualRows7937=WordField.canonicalRows actualModulus 7937 (.band 7934 7936) := by core033_kernel_decide
theorem stats7937 : actualRows7937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7937=5124 := by core033_kernel_decide
theorem rows7938 : actualRows7938=WordField.canonicalRows actualModulus 7938 (.shr 6353 8) := by core033_kernel_decide
theorem stats7938 : actualRows7938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7938=4548 := by core033_kernel_decide
theorem rows7939 : actualRows7939=WordField.canonicalRows actualModulus 7939 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7939 : actualRows7939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7939=2820 := by core033_kernel_decide
theorem rows7940 : actualRows7940=WordField.canonicalRows actualModulus 7940 (.bnot 7939) := by core033_kernel_decide
theorem stats7940 : actualRows7940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7940=6276 := by core033_kernel_decide
theorem rows7941 : actualRows7941=WordField.canonicalRows actualModulus 7941 (.bxor 7938 7940) := by core033_kernel_decide
theorem stats7941 : actualRows7941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7941=7428 := by core033_kernel_decide
theorem rows7942 : actualRows7942=WordField.canonicalRows actualModulus 7942 (.shr 6353 8) := by core033_kernel_decide
theorem stats7942 : actualRows7942.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7942=4548 := by core033_kernel_decide
theorem rows7943 : actualRows7943=WordField.canonicalRows actualModulus 7943 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7943 : actualRows7943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7943=2820 := by core033_kernel_decide
theorem rows7944 : actualRows7944=WordField.canonicalRows actualModulus 7944 (.bnot 7943) := by core033_kernel_decide
theorem stats7944 : actualRows7944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7944=6276 := by core033_kernel_decide
theorem rows7945 : actualRows7945=WordField.canonicalRows actualModulus 7945 (.badd 7942 7944) := by core033_kernel_decide
theorem stats7945 : actualRows7945.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7945=5388 := by core033_kernel_decide
theorem rows7946 : actualRows7946=WordField.canonicalRows actualModulus 7946 (.bnot 7945) := by core033_kernel_decide
theorem stats7946 : actualRows7946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7946=6276 := by core033_kernel_decide
theorem rows7947 : actualRows7947=WordField.canonicalRows actualModulus 7947 (.band 7941 7946) := by core033_kernel_decide
theorem stats7947 : actualRows7947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7947=5124 := by core033_kernel_decide
theorem rows7948 : actualRows7948=WordField.canonicalRows actualModulus 7948 (.bxor 7937 7947) := by core033_kernel_decide
theorem stats7948 : actualRows7948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7948=7428 := by core033_kernel_decide
theorem rows7949 : actualRows7949=WordField.canonicalRows actualModulus 7949 (.shr 7948 31) := by core033_kernel_decide
theorem stats7949 : actualRows7949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7949=2892 := by core033_kernel_decide
theorem rows7950 : actualRows7950=WordField.canonicalRows actualModulus 7950 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7950 : actualRows7950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7950=2892 := by core033_kernel_decide
theorem rows7951 : actualRows7951=WordField.canonicalRows actualModulus 7951 (.bxor 7949 7950) := by core033_kernel_decide
theorem stats7951 : actualRows7951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7951=7428 := by core033_kernel_decide
theorem rows7952 : actualRows7952=WordField.canonicalRows actualModulus 7952 (.shr 6406 8) := by core033_kernel_decide
theorem stats7952 : actualRows7952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7952=4548 := by core033_kernel_decide
theorem rows7953 : actualRows7953=WordField.canonicalRows actualModulus 7953 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7953 : actualRows7953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7953=2820 := by core033_kernel_decide
theorem rows7954 : actualRows7954=WordField.canonicalRows actualModulus 7954 (.bnot 7953) := by core033_kernel_decide
theorem stats7954 : actualRows7954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7954=6276 := by core033_kernel_decide
theorem rows7955 : actualRows7955=WordField.canonicalRows actualModulus 7955 (.band 7952 7954) := by core033_kernel_decide
theorem stats7955 : actualRows7955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7955=5124 := by core033_kernel_decide
theorem rows7956 : actualRows7956=WordField.canonicalRows actualModulus 7956 (.shr 6406 8) := by core033_kernel_decide
theorem stats7956 : actualRows7956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7956=4548 := by core033_kernel_decide
theorem rows7957 : actualRows7957=WordField.canonicalRows actualModulus 7957 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7957 : actualRows7957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7957=2820 := by core033_kernel_decide
theorem rows7958 : actualRows7958=WordField.canonicalRows actualModulus 7958 (.bnot 7957) := by core033_kernel_decide
theorem stats7958 : actualRows7958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7958=6276 := by core033_kernel_decide
theorem rows7959 : actualRows7959=WordField.canonicalRows actualModulus 7959 (.bxor 7956 7958) := by core033_kernel_decide
theorem stats7959 : actualRows7959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7959=7428 := by core033_kernel_decide
theorem rows7960 : actualRows7960=WordField.canonicalRows actualModulus 7960 (.shr 6406 8) := by core033_kernel_decide
theorem stats7960 : actualRows7960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7960=4548 := by core033_kernel_decide
theorem rows7961 : actualRows7961=WordField.canonicalRows actualModulus 7961 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7961 : actualRows7961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7961=2820 := by core033_kernel_decide
theorem rows7962 : actualRows7962=WordField.canonicalRows actualModulus 7962 (.bnot 7961) := by core033_kernel_decide
theorem stats7962 : actualRows7962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7962=6276 := by core033_kernel_decide
theorem rows7963 : actualRows7963=WordField.canonicalRows actualModulus 7963 (.badd 7960 7962) := by core033_kernel_decide
theorem stats7963 : actualRows7963.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7963=5388 := by core033_kernel_decide
theorem rows7964 : actualRows7964=WordField.canonicalRows actualModulus 7964 (.bnot 7963) := by core033_kernel_decide
theorem stats7964 : actualRows7964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7964=6276 := by core033_kernel_decide
theorem rows7965 : actualRows7965=WordField.canonicalRows actualModulus 7965 (.band 7959 7964) := by core033_kernel_decide
theorem stats7965 : actualRows7965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7965=5124 := by core033_kernel_decide
theorem rows7966 : actualRows7966=WordField.canonicalRows actualModulus 7966 (.bxor 7955 7965) := by core033_kernel_decide
theorem stats7966 : actualRows7966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7966=7428 := by core033_kernel_decide
theorem rows7967 : actualRows7967=WordField.canonicalRows actualModulus 7967 (.shr 7966 31) := by core033_kernel_decide
theorem stats7967 : actualRows7967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7967=2892 := by core033_kernel_decide
theorem rows7968 : actualRows7968=WordField.canonicalRows actualModulus 7968 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7968 : actualRows7968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7968=2892 := by core033_kernel_decide
theorem rows7969 : actualRows7969=WordField.canonicalRows actualModulus 7969 (.bxor 7967 7968) := by core033_kernel_decide
theorem stats7969 : actualRows7969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7969=7428 := by core033_kernel_decide
theorem rows7970 : actualRows7970=WordField.canonicalRows actualModulus 7970 (.shr 6459 8) := by core033_kernel_decide
theorem stats7970 : actualRows7970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7970=4548 := by core033_kernel_decide
theorem rows7971 : actualRows7971=WordField.canonicalRows actualModulus 7971 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7971 : actualRows7971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7971=2820 := by core033_kernel_decide
theorem rows7972 : actualRows7972=WordField.canonicalRows actualModulus 7972 (.bnot 7971) := by core033_kernel_decide
theorem stats7972 : actualRows7972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7972=6276 := by core033_kernel_decide
theorem rows7973 : actualRows7973=WordField.canonicalRows actualModulus 7973 (.band 7970 7972) := by core033_kernel_decide
theorem stats7973 : actualRows7973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7973=5124 := by core033_kernel_decide
theorem rows7974 : actualRows7974=WordField.canonicalRows actualModulus 7974 (.shr 6459 8) := by core033_kernel_decide
theorem stats7974 : actualRows7974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7974=4548 := by core033_kernel_decide
theorem rows7975 : actualRows7975=WordField.canonicalRows actualModulus 7975 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7975 : actualRows7975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7975=2820 := by core033_kernel_decide
theorem rows7976 : actualRows7976=WordField.canonicalRows actualModulus 7976 (.bnot 7975) := by core033_kernel_decide
theorem stats7976 : actualRows7976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7976=6276 := by core033_kernel_decide
theorem rows7977 : actualRows7977=WordField.canonicalRows actualModulus 7977 (.bxor 7974 7976) := by core033_kernel_decide
theorem stats7977 : actualRows7977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7977=7428 := by core033_kernel_decide
theorem rows7978 : actualRows7978=WordField.canonicalRows actualModulus 7978 (.shr 6459 8) := by core033_kernel_decide
theorem stats7978 : actualRows7978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7978=4548 := by core033_kernel_decide
theorem rows7979 : actualRows7979=WordField.canonicalRows actualModulus 7979 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7979 : actualRows7979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7979=2820 := by core033_kernel_decide
theorem rows7980 : actualRows7980=WordField.canonicalRows actualModulus 7980 (.bnot 7979) := by core033_kernel_decide
theorem stats7980 : actualRows7980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7980=6276 := by core033_kernel_decide
theorem rows7981 : actualRows7981=WordField.canonicalRows actualModulus 7981 (.badd 7978 7980) := by core033_kernel_decide
theorem stats7981 : actualRows7981.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7981=5388 := by core033_kernel_decide
theorem rows7982 : actualRows7982=WordField.canonicalRows actualModulus 7982 (.bnot 7981) := by core033_kernel_decide
theorem stats7982 : actualRows7982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7982=6276 := by core033_kernel_decide
theorem rows7983 : actualRows7983=WordField.canonicalRows actualModulus 7983 (.band 7977 7982) := by core033_kernel_decide
theorem stats7983 : actualRows7983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7983=5124 := by core033_kernel_decide
theorem rows7984 : actualRows7984=WordField.canonicalRows actualModulus 7984 (.bxor 7973 7983) := by core033_kernel_decide
theorem stats7984 : actualRows7984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7984=7428 := by core033_kernel_decide
theorem rows7985 : actualRows7985=WordField.canonicalRows actualModulus 7985 (.shr 7984 31) := by core033_kernel_decide
theorem stats7985 : actualRows7985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7985=2892 := by core033_kernel_decide
theorem rows7986 : actualRows7986=WordField.canonicalRows actualModulus 7986 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7986 : actualRows7986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7986=2892 := by core033_kernel_decide
theorem rows7987 : actualRows7987=WordField.canonicalRows actualModulus 7987 (.bxor 7985 7986) := by core033_kernel_decide
theorem stats7987 : actualRows7987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7987=7428 := by core033_kernel_decide
theorem rows7988 : actualRows7988=WordField.canonicalRows actualModulus 7988 (.shr 6512 8) := by core033_kernel_decide
theorem stats7988 : actualRows7988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7988=4548 := by core033_kernel_decide
theorem rows7989 : actualRows7989=WordField.canonicalRows actualModulus 7989 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7989 : actualRows7989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7989=2820 := by core033_kernel_decide
def partRows122 : List R1CS.Row := actualRows7926++actualRows7927++actualRows7928++actualRows7929++actualRows7930++actualRows7931++actualRows7932++actualRows7933++actualRows7934++actualRows7935++actualRows7936++actualRows7937++actualRows7938++actualRows7939++actualRows7940++actualRows7941++actualRows7942++actualRows7943++actualRows7944++actualRows7945++actualRows7946++actualRows7947++actualRows7948++actualRows7949++actualRows7950++actualRows7951++actualRows7952++actualRows7953++actualRows7954++actualRows7955++actualRows7956++actualRows7957++actualRows7958++actualRows7959++actualRows7960++actualRows7961++actualRows7962++actualRows7963++actualRows7964++actualRows7965++actualRows7966++actualRows7967++actualRows7968++actualRows7969++actualRows7970++actualRows7971++actualRows7972++actualRows7973++actualRows7974++actualRows7975++actualRows7976++actualRows7977++actualRows7978++actualRows7979++actualRows7980++actualRows7981++actualRows7982++actualRows7983++actualRows7984++actualRows7985++actualRows7986++actualRows7987++actualRows7988++actualRows7989
def partOps122 : List WordIR.Op := [.bnot 7925,.badd 7924 7926,.bnot 7927,.band 7923 7928,.bxor 7919 7929,.shr 7930 31,.literal (BitVec.ofNat 32 1),.bxor 7931 7932,.shr 6353 8,.literal (BitVec.ofNat 32 0),.bnot 7935,.band 7934 7936,.shr 6353 8,.literal (BitVec.ofNat 32 0),.bnot 7939,.bxor 7938 7940,.shr 6353 8,.literal (BitVec.ofNat 32 0),.bnot 7943,.badd 7942 7944,.bnot 7945,.band 7941 7946,.bxor 7937 7947,.shr 7948 31,.literal (BitVec.ofNat 32 1),.bxor 7949 7950,.shr 6406 8,.literal (BitVec.ofNat 32 0),.bnot 7953,.band 7952 7954,.shr 6406 8,.literal (BitVec.ofNat 32 0),.bnot 7957,.bxor 7956 7958,.shr 6406 8,.literal (BitVec.ofNat 32 0),.bnot 7961,.badd 7960 7962,.bnot 7963,.band 7959 7964,.bxor 7955 7965,.shr 7966 31,.literal (BitVec.ofNat 32 1),.bxor 7967 7968,.shr 6459 8,.literal (BitVec.ofNat 32 0),.bnot 7971,.band 7970 7972,.shr 6459 8,.literal (BitVec.ofNat 32 0),.bnot 7975,.bxor 7974 7976,.shr 6459 8,.literal (BitVec.ofNat 32 0),.bnot 7979,.badd 7978 7980,.bnot 7981,.band 7977 7982,.bxor 7973 7983,.shr 7984 31,.literal (BitVec.ofNat 32 1),.bxor 7985 7986,.shr 6512 8,.literal (BitVec.ofNat 32 0)]
theorem partExact122 : partRows122=WordField.rows actualModulus 7926 partOps122 := by
  simp only [partRows122,partOps122,WordField.rows,rows7926,rows7927,rows7928,rows7929,rows7930,rows7931,rows7932,rows7933,rows7934,rows7935,rows7936,rows7937,rows7938,rows7939,rows7940,rows7941,rows7942,rows7943,rows7944,rows7945,rows7946,rows7947,rows7948,rows7949,rows7950,rows7951,rows7952,rows7953,rows7954,rows7955,rows7956,rows7957,rows7958,rows7959,rows7960,rows7961,rows7962,rows7963,rows7964,rows7965,rows7966,rows7967,rows7968,rows7969,rows7970,rows7971,rows7972,rows7973,rows7974,rows7975,rows7976,rows7977,rows7978,rows7979,rows7980,rows7981,rows7982,rows7983,rows7984,rows7985,rows7986,rows7987,rows7988,rows7989,List.append_assoc,List.append_nil]
theorem partLength122 : partOps122.length=64 := by decide
theorem partStats122 : partRows122.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows122=323808 := by
  simp only [partRows122,List.length_append,MatrixRowBlocks.rows_weight_append,stats7926.1,stats7926.2,stats7927.1,stats7927.2,stats7928.1,stats7928.2,stats7929.1,stats7929.2,stats7930.1,stats7930.2,stats7931.1,stats7931.2,stats7932.1,stats7932.2,stats7933.1,stats7933.2,stats7934.1,stats7934.2,stats7935.1,stats7935.2,stats7936.1,stats7936.2,stats7937.1,stats7937.2,stats7938.1,stats7938.2,stats7939.1,stats7939.2,stats7940.1,stats7940.2,stats7941.1,stats7941.2,stats7942.1,stats7942.2,stats7943.1,stats7943.2,stats7944.1,stats7944.2,stats7945.1,stats7945.2,stats7946.1,stats7946.2,stats7947.1,stats7947.2,stats7948.1,stats7948.2,stats7949.1,stats7949.2,stats7950.1,stats7950.2,stats7951.1,stats7951.2,stats7952.1,stats7952.2,stats7953.1,stats7953.2,stats7954.1,stats7954.2,stats7955.1,stats7955.2,stats7956.1,stats7956.2,stats7957.1,stats7957.2,stats7958.1,stats7958.2,stats7959.1,stats7959.2,stats7960.1,stats7960.2,stats7961.1,stats7961.2,stats7962.1,stats7962.2,stats7963.1,stats7963.2,stats7964.1,stats7964.2,stats7965.1,stats7965.2,stats7966.1,stats7966.2,stats7967.1,stats7967.2,stats7968.1,stats7968.2,stats7969.1,stats7969.2,stats7970.1,stats7970.2,stats7971.1,stats7971.2,stats7972.1,stats7972.2,stats7973.1,stats7973.2,stats7974.1,stats7974.2,stats7975.1,stats7975.2,stats7976.1,stats7976.2,stats7977.1,stats7977.2,stats7978.1,stats7978.2,stats7979.1,stats7979.2,stats7980.1,stats7980.2,stats7981.1,stats7981.2,stats7982.1,stats7982.2,stats7983.1,stats7983.2,stats7984.1,stats7984.2,stats7985.1,stats7985.2,stats7986.1,stats7986.2,stats7987.1,stats7987.2,stats7988.1,stats7988.2,stats7989.1,stats7989.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
