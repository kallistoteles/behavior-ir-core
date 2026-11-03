import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData139
import PairedPathRoundInstructionMatrixData140
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8928 : actualRows8928=WordField.canonicalRows actualModulus 8928 (.bxor 8926 8927) := by core033_kernel_decide
theorem stats8928 : actualRows8928.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8928=7428 := by core033_kernel_decide
theorem rows8929 : actualRows8929=WordField.canonicalRows actualModulus 8929 (.band 8908 8881) := by core033_kernel_decide
theorem stats8929 : actualRows8929.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8929=5124 := by core033_kernel_decide
theorem rows8930 : actualRows8930=WordField.canonicalRows actualModulus 8930 (.band 8908 8854) := by core033_kernel_decide
theorem stats8930 : actualRows8930.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8930=5124 := by core033_kernel_decide
theorem rows8931 : actualRows8931=WordField.canonicalRows actualModulus 8931 (.bxor 8929 8930) := by core033_kernel_decide
theorem stats8931 : actualRows8931.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8931=7428 := by core033_kernel_decide
theorem rows8932 : actualRows8932=WordField.canonicalRows actualModulus 8932 (.band 8881 8854) := by core033_kernel_decide
theorem stats8932 : actualRows8932.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8932=5124 := by core033_kernel_decide
theorem rows8933 : actualRows8933=WordField.canonicalRows actualModulus 8933 (.bxor 8931 8932) := by core033_kernel_decide
theorem stats8933 : actualRows8933.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8933=7428 := by core033_kernel_decide
theorem rows8934 : actualRows8934=WordField.canonicalRows actualModulus 8934 (.badd 8928 8933) := by core033_kernel_decide
theorem stats8934 : actualRows8934.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8934=5388 := by core033_kernel_decide
theorem rows8935 : actualRows8935=WordField.canonicalRows actualModulus 8935 (.badd 8923 8934) := by core033_kernel_decide
theorem stats8935 : actualRows8935.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8935=5388 := by core033_kernel_decide
theorem rows8936 : actualRows8936=WordField.canonicalRows actualModulus 8936 (.badd 8827 8923) := by core033_kernel_decide
theorem stats8936 : actualRows8936.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8936=5388 := by core033_kernel_decide
theorem rows8937 : actualRows8937=WordField.canonicalRows actualModulus 8937 (.rotr 8936 6) := by core033_kernel_decide
theorem stats8937 : actualRows8937.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8937=5124 := by core033_kernel_decide
theorem rows8938 : actualRows8938=WordField.canonicalRows actualModulus 8938 (.rotr 8936 11) := by core033_kernel_decide
theorem stats8938 : actualRows8938.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8938=5124 := by core033_kernel_decide
theorem rows8939 : actualRows8939=WordField.canonicalRows actualModulus 8939 (.bxor 8937 8938) := by core033_kernel_decide
theorem stats8939 : actualRows8939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8939=7428 := by core033_kernel_decide
theorem rows8940 : actualRows8940=WordField.canonicalRows actualModulus 8940 (.rotr 8936 25) := by core033_kernel_decide
theorem stats8940 : actualRows8940.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8940=5124 := by core033_kernel_decide
theorem rows8941 : actualRows8941=WordField.canonicalRows actualModulus 8941 (.bxor 8939 8940) := by core033_kernel_decide
theorem stats8941 : actualRows8941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8941=7428 := by core033_kernel_decide
theorem rows8942 : actualRows8942=WordField.canonicalRows actualModulus 8942 (.badd 8855 8941) := by core033_kernel_decide
theorem stats8942 : actualRows8942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8942=5388 := by core033_kernel_decide
theorem rows8943 : actualRows8943=WordField.canonicalRows actualModulus 8943 (.band 8936 8909) := by core033_kernel_decide
theorem stats8943 : actualRows8943.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8943=5124 := by core033_kernel_decide
theorem rows8944 : actualRows8944=WordField.canonicalRows actualModulus 8944 (.bnot 8936) := by core033_kernel_decide
theorem stats8944 : actualRows8944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8944=6276 := by core033_kernel_decide
theorem rows8945 : actualRows8945=WordField.canonicalRows actualModulus 8945 (.band 8944 8882) := by core033_kernel_decide
theorem stats8945 : actualRows8945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8945=5124 := by core033_kernel_decide
theorem rows8946 : actualRows8946=WordField.canonicalRows actualModulus 8946 (.bxor 8943 8945) := by core033_kernel_decide
theorem stats8946 : actualRows8946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8946=7428 := by core033_kernel_decide
theorem rows8947 : actualRows8947=WordField.canonicalRows actualModulus 8947 (.badd 8942 8946) := by core033_kernel_decide
theorem stats8947 : actualRows8947.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8947=5388 := by core033_kernel_decide
theorem rows8948 : actualRows8948=WordField.canonicalRows actualModulus 8948 (.literal (BitVec.ofNat 32 666307205)) := by core033_kernel_decide
theorem stats8948 : actualRows8948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8948=3900 := by core033_kernel_decide
theorem rows8949 : actualRows8949=WordField.canonicalRows actualModulus 8949 (.badd 8947 8948) := by core033_kernel_decide
theorem stats8949 : actualRows8949.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8949=5388 := by core033_kernel_decide
theorem rows8950 : actualRows8950=WordField.canonicalRows actualModulus 8950 (.badd 8949 7669) := by core033_kernel_decide
theorem stats8950 : actualRows8950.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8950=5388 := by core033_kernel_decide
theorem rows8951 : actualRows8951=WordField.canonicalRows actualModulus 8951 (.rotr 8935 2) := by core033_kernel_decide
theorem stats8951 : actualRows8951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8951=5124 := by core033_kernel_decide
theorem rows8952 : actualRows8952=WordField.canonicalRows actualModulus 8952 (.rotr 8935 13) := by core033_kernel_decide
theorem stats8952 : actualRows8952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8952=5124 := by core033_kernel_decide
theorem rows8953 : actualRows8953=WordField.canonicalRows actualModulus 8953 (.bxor 8951 8952) := by core033_kernel_decide
theorem stats8953 : actualRows8953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8953=7428 := by core033_kernel_decide
theorem rows8954 : actualRows8954=WordField.canonicalRows actualModulus 8954 (.rotr 8935 22) := by core033_kernel_decide
theorem stats8954 : actualRows8954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8954=5124 := by core033_kernel_decide
theorem rows8955 : actualRows8955=WordField.canonicalRows actualModulus 8955 (.bxor 8953 8954) := by core033_kernel_decide
theorem stats8955 : actualRows8955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8955=7428 := by core033_kernel_decide
theorem rows8956 : actualRows8956=WordField.canonicalRows actualModulus 8956 (.band 8935 8908) := by core033_kernel_decide
theorem stats8956 : actualRows8956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8956=5124 := by core033_kernel_decide
theorem rows8957 : actualRows8957=WordField.canonicalRows actualModulus 8957 (.band 8935 8881) := by core033_kernel_decide
theorem stats8957 : actualRows8957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8957=5124 := by core033_kernel_decide
theorem rows8958 : actualRows8958=WordField.canonicalRows actualModulus 8958 (.bxor 8956 8957) := by core033_kernel_decide
theorem stats8958 : actualRows8958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8958=7428 := by core033_kernel_decide
theorem rows8959 : actualRows8959=WordField.canonicalRows actualModulus 8959 (.band 8908 8881) := by core033_kernel_decide
theorem stats8959 : actualRows8959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8959=5124 := by core033_kernel_decide
theorem rows8960 : actualRows8960=WordField.canonicalRows actualModulus 8960 (.bxor 8958 8959) := by core033_kernel_decide
theorem stats8960 : actualRows8960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8960=7428 := by core033_kernel_decide
theorem rows8961 : actualRows8961=WordField.canonicalRows actualModulus 8961 (.badd 8955 8960) := by core033_kernel_decide
theorem stats8961 : actualRows8961.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8961=5388 := by core033_kernel_decide
theorem rows8962 : actualRows8962=WordField.canonicalRows actualModulus 8962 (.badd 8950 8961) := by core033_kernel_decide
theorem stats8962 : actualRows8962.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8962=5388 := by core033_kernel_decide
theorem rows8963 : actualRows8963=WordField.canonicalRows actualModulus 8963 (.badd 8854 8950) := by core033_kernel_decide
theorem stats8963 : actualRows8963.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8963=5388 := by core033_kernel_decide
theorem rows8964 : actualRows8964=WordField.canonicalRows actualModulus 8964 (.rotr 8963 6) := by core033_kernel_decide
theorem stats8964 : actualRows8964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8964=5124 := by core033_kernel_decide
theorem rows8965 : actualRows8965=WordField.canonicalRows actualModulus 8965 (.rotr 8963 11) := by core033_kernel_decide
theorem stats8965 : actualRows8965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8965=5124 := by core033_kernel_decide
theorem rows8966 : actualRows8966=WordField.canonicalRows actualModulus 8966 (.bxor 8964 8965) := by core033_kernel_decide
theorem stats8966 : actualRows8966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8966=7428 := by core033_kernel_decide
theorem rows8967 : actualRows8967=WordField.canonicalRows actualModulus 8967 (.rotr 8963 25) := by core033_kernel_decide
theorem stats8967 : actualRows8967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8967=5124 := by core033_kernel_decide
theorem rows8968 : actualRows8968=WordField.canonicalRows actualModulus 8968 (.bxor 8966 8967) := by core033_kernel_decide
theorem stats8968 : actualRows8968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8968=7428 := by core033_kernel_decide
theorem rows8969 : actualRows8969=WordField.canonicalRows actualModulus 8969 (.badd 8882 8968) := by core033_kernel_decide
theorem stats8969 : actualRows8969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8969=5388 := by core033_kernel_decide
theorem rows8970 : actualRows8970=WordField.canonicalRows actualModulus 8970 (.band 8963 8936) := by core033_kernel_decide
theorem stats8970 : actualRows8970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8970=5124 := by core033_kernel_decide
theorem rows8971 : actualRows8971=WordField.canonicalRows actualModulus 8971 (.bnot 8963) := by core033_kernel_decide
theorem stats8971 : actualRows8971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8971=6276 := by core033_kernel_decide
theorem rows8972 : actualRows8972=WordField.canonicalRows actualModulus 8972 (.band 8971 8909) := by core033_kernel_decide
theorem stats8972 : actualRows8972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8972=5124 := by core033_kernel_decide
theorem rows8973 : actualRows8973=WordField.canonicalRows actualModulus 8973 (.bxor 8970 8972) := by core033_kernel_decide
theorem stats8973 : actualRows8973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8973=7428 := by core033_kernel_decide
theorem rows8974 : actualRows8974=WordField.canonicalRows actualModulus 8974 (.badd 8969 8973) := by core033_kernel_decide
theorem stats8974 : actualRows8974.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8974=5388 := by core033_kernel_decide
theorem rows8975 : actualRows8975=WordField.canonicalRows actualModulus 8975 (.literal (BitVec.ofNat 32 773529912)) := by core033_kernel_decide
theorem stats8975 : actualRows8975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8975=3756 := by core033_kernel_decide
theorem rows8976 : actualRows8976=WordField.canonicalRows actualModulus 8976 (.badd 8974 8975) := by core033_kernel_decide
theorem stats8976 : actualRows8976.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8976=5388 := by core033_kernel_decide
theorem rows8977 : actualRows8977=WordField.canonicalRows actualModulus 8977 (.badd 8976 7682) := by core033_kernel_decide
theorem stats8977 : actualRows8977.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8977=5388 := by core033_kernel_decide
theorem rows8978 : actualRows8978=WordField.canonicalRows actualModulus 8978 (.rotr 8962 2) := by core033_kernel_decide
theorem stats8978 : actualRows8978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8978=5124 := by core033_kernel_decide
theorem rows8979 : actualRows8979=WordField.canonicalRows actualModulus 8979 (.rotr 8962 13) := by core033_kernel_decide
theorem stats8979 : actualRows8979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8979=5124 := by core033_kernel_decide
theorem rows8980 : actualRows8980=WordField.canonicalRows actualModulus 8980 (.bxor 8978 8979) := by core033_kernel_decide
theorem stats8980 : actualRows8980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8980=7428 := by core033_kernel_decide
theorem rows8981 : actualRows8981=WordField.canonicalRows actualModulus 8981 (.rotr 8962 22) := by core033_kernel_decide
theorem stats8981 : actualRows8981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8981=5124 := by core033_kernel_decide
theorem rows8982 : actualRows8982=WordField.canonicalRows actualModulus 8982 (.bxor 8980 8981) := by core033_kernel_decide
theorem stats8982 : actualRows8982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8982=7428 := by core033_kernel_decide
theorem rows8983 : actualRows8983=WordField.canonicalRows actualModulus 8983 (.band 8962 8935) := by core033_kernel_decide
theorem stats8983 : actualRows8983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8983=5124 := by core033_kernel_decide
theorem rows8984 : actualRows8984=WordField.canonicalRows actualModulus 8984 (.band 8962 8908) := by core033_kernel_decide
theorem stats8984 : actualRows8984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8984=5124 := by core033_kernel_decide
theorem rows8985 : actualRows8985=WordField.canonicalRows actualModulus 8985 (.bxor 8983 8984) := by core033_kernel_decide
theorem stats8985 : actualRows8985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8985=7428 := by core033_kernel_decide
theorem rows8986 : actualRows8986=WordField.canonicalRows actualModulus 8986 (.band 8935 8908) := by core033_kernel_decide
theorem stats8986 : actualRows8986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8986=5124 := by core033_kernel_decide
theorem rows8987 : actualRows8987=WordField.canonicalRows actualModulus 8987 (.bxor 8985 8986) := by core033_kernel_decide
theorem stats8987 : actualRows8987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8987=7428 := by core033_kernel_decide
theorem rows8988 : actualRows8988=WordField.canonicalRows actualModulus 8988 (.badd 8982 8987) := by core033_kernel_decide
theorem stats8988 : actualRows8988.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8988=5388 := by core033_kernel_decide
theorem rows8989 : actualRows8989=WordField.canonicalRows actualModulus 8989 (.badd 8977 8988) := by core033_kernel_decide
theorem stats8989 : actualRows8989.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8989=5388 := by core033_kernel_decide
theorem rows8990 : actualRows8990=WordField.canonicalRows actualModulus 8990 (.badd 8881 8977) := by core033_kernel_decide
theorem stats8990 : actualRows8990.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8990=5388 := by core033_kernel_decide
theorem rows8991 : actualRows8991=WordField.canonicalRows actualModulus 8991 (.rotr 8990 6) := by core033_kernel_decide
theorem stats8991 : actualRows8991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8991=5124 := by core033_kernel_decide
def partRows138 : List R1CS.Row := actualRows8928++actualRows8929++actualRows8930++actualRows8931++actualRows8932++actualRows8933++actualRows8934++actualRows8935++actualRows8936++actualRows8937++actualRows8938++actualRows8939++actualRows8940++actualRows8941++actualRows8942++actualRows8943++actualRows8944++actualRows8945++actualRows8946++actualRows8947++actualRows8948++actualRows8949++actualRows8950++actualRows8951++actualRows8952++actualRows8953++actualRows8954++actualRows8955++actualRows8956++actualRows8957++actualRows8958++actualRows8959++actualRows8960++actualRows8961++actualRows8962++actualRows8963++actualRows8964++actualRows8965++actualRows8966++actualRows8967++actualRows8968++actualRows8969++actualRows8970++actualRows8971++actualRows8972++actualRows8973++actualRows8974++actualRows8975++actualRows8976++actualRows8977++actualRows8978++actualRows8979++actualRows8980++actualRows8981++actualRows8982++actualRows8983++actualRows8984++actualRows8985++actualRows8986++actualRows8987++actualRows8988++actualRows8989++actualRows8990++actualRows8991
def partOps138 : List WordIR.Op := [.bxor 8926 8927,.band 8908 8881,.band 8908 8854,.bxor 8929 8930,.band 8881 8854,.bxor 8931 8932,.badd 8928 8933,.badd 8923 8934,.badd 8827 8923,.rotr 8936 6,.rotr 8936 11,.bxor 8937 8938,.rotr 8936 25,.bxor 8939 8940,.badd 8855 8941,.band 8936 8909,.bnot 8936,.band 8944 8882,.bxor 8943 8945,.badd 8942 8946,.literal (BitVec.ofNat 32 666307205),.badd 8947 8948,.badd 8949 7669,.rotr 8935 2,.rotr 8935 13,.bxor 8951 8952,.rotr 8935 22,.bxor 8953 8954,.band 8935 8908,.band 8935 8881,.bxor 8956 8957,.band 8908 8881,.bxor 8958 8959,.badd 8955 8960,.badd 8950 8961,.badd 8854 8950,.rotr 8963 6,.rotr 8963 11,.bxor 8964 8965,.rotr 8963 25,.bxor 8966 8967,.badd 8882 8968,.band 8963 8936,.bnot 8963,.band 8971 8909,.bxor 8970 8972,.badd 8969 8973,.literal (BitVec.ofNat 32 773529912),.badd 8974 8975,.badd 8976 7682,.rotr 8962 2,.rotr 8962 13,.bxor 8978 8979,.rotr 8962 22,.bxor 8980 8981,.band 8962 8935,.band 8962 8908,.bxor 8983 8984,.band 8935 8908,.bxor 8985 8986,.badd 8982 8987,.badd 8977 8988,.badd 8881 8977,.rotr 8990 6]
theorem partExact138 : partRows138=WordField.rows actualModulus 8928 partOps138 := by
  simp only [partRows138,partOps138,WordField.rows,rows8928,rows8929,rows8930,rows8931,rows8932,rows8933,rows8934,rows8935,rows8936,rows8937,rows8938,rows8939,rows8940,rows8941,rows8942,rows8943,rows8944,rows8945,rows8946,rows8947,rows8948,rows8949,rows8950,rows8951,rows8952,rows8953,rows8954,rows8955,rows8956,rows8957,rows8958,rows8959,rows8960,rows8961,rows8962,rows8963,rows8964,rows8965,rows8966,rows8967,rows8968,rows8969,rows8970,rows8971,rows8972,rows8973,rows8974,rows8975,rows8976,rows8977,rows8978,rows8979,rows8980,rows8981,rows8982,rows8983,rows8984,rows8985,rows8986,rows8987,rows8988,rows8989,rows8990,rows8991,List.append_assoc,List.append_nil]
theorem partLength138 : partOps138.length=64 := by decide
theorem partStats138 : partRows138.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows138=371304 := by
  simp only [partRows138,List.length_append,MatrixRowBlocks.rows_weight_append,stats8928.1,stats8928.2,stats8929.1,stats8929.2,stats8930.1,stats8930.2,stats8931.1,stats8931.2,stats8932.1,stats8932.2,stats8933.1,stats8933.2,stats8934.1,stats8934.2,stats8935.1,stats8935.2,stats8936.1,stats8936.2,stats8937.1,stats8937.2,stats8938.1,stats8938.2,stats8939.1,stats8939.2,stats8940.1,stats8940.2,stats8941.1,stats8941.2,stats8942.1,stats8942.2,stats8943.1,stats8943.2,stats8944.1,stats8944.2,stats8945.1,stats8945.2,stats8946.1,stats8946.2,stats8947.1,stats8947.2,stats8948.1,stats8948.2,stats8949.1,stats8949.2,stats8950.1,stats8950.2,stats8951.1,stats8951.2,stats8952.1,stats8952.2,stats8953.1,stats8953.2,stats8954.1,stats8954.2,stats8955.1,stats8955.2,stats8956.1,stats8956.2,stats8957.1,stats8957.2,stats8958.1,stats8958.2,stats8959.1,stats8959.2,stats8960.1,stats8960.2,stats8961.1,stats8961.2,stats8962.1,stats8962.2,stats8963.1,stats8963.2,stats8964.1,stats8964.2,stats8965.1,stats8965.2,stats8966.1,stats8966.2,stats8967.1,stats8967.2,stats8968.1,stats8968.2,stats8969.1,stats8969.2,stats8970.1,stats8970.2,stats8971.1,stats8971.2,stats8972.1,stats8972.2,stats8973.1,stats8973.2,stats8974.1,stats8974.2,stats8975.1,stats8975.2,stats8976.1,stats8976.2,stats8977.1,stats8977.2,stats8978.1,stats8978.2,stats8979.1,stats8979.2,stats8980.1,stats8980.2,stats8981.1,stats8981.2,stats8982.1,stats8982.2,stats8983.1,stats8983.2,stats8984.1,stats8984.2,stats8985.1,stats8985.2,stats8986.1,stats8986.2,stats8987.1,stats8987.2,stats8988.1,stats8988.2,stats8989.1,stats8989.2,stats8990.1,stats8990.2,stats8991.1,stats8991.2]
  decide
end PairedPathRoundCheckedRows
