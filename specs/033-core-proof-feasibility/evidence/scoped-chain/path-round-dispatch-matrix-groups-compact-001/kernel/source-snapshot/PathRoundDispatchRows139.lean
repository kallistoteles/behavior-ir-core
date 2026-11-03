import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData139
import PathRoundDispatchInstructionMatrixData140
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8939 : actualRows8939=WordField.canonicalRows actualModulus 8939 (.bxor 8936 8938) := by core033_kernel_decide
theorem stats8939 : actualRows8939.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8939=7428 := by core033_kernel_decide
theorem rows8940 : actualRows8940=WordField.canonicalRows actualModulus 8940 (.badd 8935 8939) := by core033_kernel_decide
theorem stats8940 : actualRows8940.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8940=5388 := by core033_kernel_decide
theorem rows8941 : actualRows8941=WordField.canonicalRows actualModulus 8941 (.literal (BitVec.ofNat 32 883997877)) := by core033_kernel_decide
theorem stats8941 : actualRows8941.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8941=3972 := by core033_kernel_decide
theorem rows8942 : actualRows8942=WordField.canonicalRows actualModulus 8942 (.badd 8940 8941) := by core033_kernel_decide
theorem stats8942 : actualRows8942.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8942=5388 := by core033_kernel_decide
theorem rows8943 : actualRows8943=WordField.canonicalRows actualModulus 8943 (.badd 8942 7396) := by core033_kernel_decide
theorem stats8943 : actualRows8943.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8943=5388 := by core033_kernel_decide
theorem rows8944 : actualRows8944=WordField.canonicalRows actualModulus 8944 (.rotr 8928 2) := by core033_kernel_decide
theorem stats8944 : actualRows8944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8944=5124 := by core033_kernel_decide
theorem rows8945 : actualRows8945=WordField.canonicalRows actualModulus 8945 (.rotr 8928 13) := by core033_kernel_decide
theorem stats8945 : actualRows8945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8945=5124 := by core033_kernel_decide
theorem rows8946 : actualRows8946=WordField.canonicalRows actualModulus 8946 (.bxor 8944 8945) := by core033_kernel_decide
theorem stats8946 : actualRows8946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8946=7428 := by core033_kernel_decide
theorem rows8947 : actualRows8947=WordField.canonicalRows actualModulus 8947 (.rotr 8928 22) := by core033_kernel_decide
theorem stats8947 : actualRows8947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8947=5124 := by core033_kernel_decide
theorem rows8948 : actualRows8948=WordField.canonicalRows actualModulus 8948 (.bxor 8946 8947) := by core033_kernel_decide
theorem stats8948 : actualRows8948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8948=7428 := by core033_kernel_decide
theorem rows8949 : actualRows8949=WordField.canonicalRows actualModulus 8949 (.band 8928 8901) := by core033_kernel_decide
theorem stats8949 : actualRows8949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8949=5124 := by core033_kernel_decide
theorem rows8950 : actualRows8950=WordField.canonicalRows actualModulus 8950 (.band 8928 8874) := by core033_kernel_decide
theorem stats8950 : actualRows8950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8950=5124 := by core033_kernel_decide
theorem rows8951 : actualRows8951=WordField.canonicalRows actualModulus 8951 (.bxor 8949 8950) := by core033_kernel_decide
theorem stats8951 : actualRows8951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8951=7428 := by core033_kernel_decide
theorem rows8952 : actualRows8952=WordField.canonicalRows actualModulus 8952 (.band 8901 8874) := by core033_kernel_decide
theorem stats8952 : actualRows8952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8952=5124 := by core033_kernel_decide
theorem rows8953 : actualRows8953=WordField.canonicalRows actualModulus 8953 (.bxor 8951 8952) := by core033_kernel_decide
theorem stats8953 : actualRows8953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8953=7428 := by core033_kernel_decide
theorem rows8954 : actualRows8954=WordField.canonicalRows actualModulus 8954 (.badd 8948 8953) := by core033_kernel_decide
theorem stats8954 : actualRows8954.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8954=5388 := by core033_kernel_decide
theorem rows8955 : actualRows8955=WordField.canonicalRows actualModulus 8955 (.badd 8943 8954) := by core033_kernel_decide
theorem stats8955 : actualRows8955.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8955=5388 := by core033_kernel_decide
theorem rows8956 : actualRows8956=WordField.canonicalRows actualModulus 8956 (.badd 8847 8943) := by core033_kernel_decide
theorem stats8956 : actualRows8956.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8956=5388 := by core033_kernel_decide
theorem rows8957 : actualRows8957=WordField.canonicalRows actualModulus 8957 (.rotr 8956 6) := by core033_kernel_decide
theorem stats8957 : actualRows8957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8957=5124 := by core033_kernel_decide
theorem rows8958 : actualRows8958=WordField.canonicalRows actualModulus 8958 (.rotr 8956 11) := by core033_kernel_decide
theorem stats8958 : actualRows8958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8958=5124 := by core033_kernel_decide
theorem rows8959 : actualRows8959=WordField.canonicalRows actualModulus 8959 (.bxor 8957 8958) := by core033_kernel_decide
theorem stats8959 : actualRows8959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8959=7428 := by core033_kernel_decide
theorem rows8960 : actualRows8960=WordField.canonicalRows actualModulus 8960 (.rotr 8956 25) := by core033_kernel_decide
theorem stats8960 : actualRows8960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8960=5124 := by core033_kernel_decide
theorem rows8961 : actualRows8961=WordField.canonicalRows actualModulus 8961 (.bxor 8959 8960) := by core033_kernel_decide
theorem stats8961 : actualRows8961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8961=7428 := by core033_kernel_decide
theorem rows8962 : actualRows8962=WordField.canonicalRows actualModulus 8962 (.badd 8875 8961) := by core033_kernel_decide
theorem stats8962 : actualRows8962.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8962=5388 := by core033_kernel_decide
theorem rows8963 : actualRows8963=WordField.canonicalRows actualModulus 8963 (.band 8956 8929) := by core033_kernel_decide
theorem stats8963 : actualRows8963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8963=5124 := by core033_kernel_decide
theorem rows8964 : actualRows8964=WordField.canonicalRows actualModulus 8964 (.bnot 8956) := by core033_kernel_decide
theorem stats8964 : actualRows8964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8964=6276 := by core033_kernel_decide
theorem rows8965 : actualRows8965=WordField.canonicalRows actualModulus 8965 (.band 8964 8902) := by core033_kernel_decide
theorem stats8965 : actualRows8965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8965=5124 := by core033_kernel_decide
theorem rows8966 : actualRows8966=WordField.canonicalRows actualModulus 8966 (.bxor 8963 8965) := by core033_kernel_decide
theorem stats8966 : actualRows8966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8966=7428 := by core033_kernel_decide
theorem rows8967 : actualRows8967=WordField.canonicalRows actualModulus 8967 (.badd 8962 8966) := by core033_kernel_decide
theorem stats8967 : actualRows8967.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8967=5388 := by core033_kernel_decide
theorem rows8968 : actualRows8968=WordField.canonicalRows actualModulus 8968 (.literal (BitVec.ofNat 32 958139571)) := by core033_kernel_decide
theorem stats8968 : actualRows8968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8968=3828 := by core033_kernel_decide
theorem rows8969 : actualRows8969=WordField.canonicalRows actualModulus 8969 (.badd 8967 8968) := by core033_kernel_decide
theorem stats8969 : actualRows8969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8969=5388 := by core033_kernel_decide
theorem rows8970 : actualRows8970=WordField.canonicalRows actualModulus 8970 (.badd 8969 7409) := by core033_kernel_decide
theorem stats8970 : actualRows8970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8970=5388 := by core033_kernel_decide
theorem rows8971 : actualRows8971=WordField.canonicalRows actualModulus 8971 (.rotr 8955 2) := by core033_kernel_decide
theorem stats8971 : actualRows8971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8971=5124 := by core033_kernel_decide
theorem rows8972 : actualRows8972=WordField.canonicalRows actualModulus 8972 (.rotr 8955 13) := by core033_kernel_decide
theorem stats8972 : actualRows8972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8972=5124 := by core033_kernel_decide
theorem rows8973 : actualRows8973=WordField.canonicalRows actualModulus 8973 (.bxor 8971 8972) := by core033_kernel_decide
theorem stats8973 : actualRows8973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8973=7428 := by core033_kernel_decide
theorem rows8974 : actualRows8974=WordField.canonicalRows actualModulus 8974 (.rotr 8955 22) := by core033_kernel_decide
theorem stats8974 : actualRows8974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8974=5124 := by core033_kernel_decide
theorem rows8975 : actualRows8975=WordField.canonicalRows actualModulus 8975 (.bxor 8973 8974) := by core033_kernel_decide
theorem stats8975 : actualRows8975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8975=7428 := by core033_kernel_decide
theorem rows8976 : actualRows8976=WordField.canonicalRows actualModulus 8976 (.band 8955 8928) := by core033_kernel_decide
theorem stats8976 : actualRows8976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8976=5124 := by core033_kernel_decide
theorem rows8977 : actualRows8977=WordField.canonicalRows actualModulus 8977 (.band 8955 8901) := by core033_kernel_decide
theorem stats8977 : actualRows8977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8977=5124 := by core033_kernel_decide
theorem rows8978 : actualRows8978=WordField.canonicalRows actualModulus 8978 (.bxor 8976 8977) := by core033_kernel_decide
theorem stats8978 : actualRows8978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8978=7428 := by core033_kernel_decide
theorem rows8979 : actualRows8979=WordField.canonicalRows actualModulus 8979 (.band 8928 8901) := by core033_kernel_decide
theorem stats8979 : actualRows8979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8979=5124 := by core033_kernel_decide
theorem rows8980 : actualRows8980=WordField.canonicalRows actualModulus 8980 (.bxor 8978 8979) := by core033_kernel_decide
theorem stats8980 : actualRows8980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8980=7428 := by core033_kernel_decide
theorem rows8981 : actualRows8981=WordField.canonicalRows actualModulus 8981 (.badd 8975 8980) := by core033_kernel_decide
theorem stats8981 : actualRows8981.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8981=5388 := by core033_kernel_decide
theorem rows8982 : actualRows8982=WordField.canonicalRows actualModulus 8982 (.badd 8970 8981) := by core033_kernel_decide
theorem stats8982 : actualRows8982.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8982=5388 := by core033_kernel_decide
theorem rows8983 : actualRows8983=WordField.canonicalRows actualModulus 8983 (.badd 8874 8970) := by core033_kernel_decide
theorem stats8983 : actualRows8983.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8983=5388 := by core033_kernel_decide
theorem rows8984 : actualRows8984=WordField.canonicalRows actualModulus 8984 (.rotr 8983 6) := by core033_kernel_decide
theorem stats8984 : actualRows8984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8984=5124 := by core033_kernel_decide
theorem rows8985 : actualRows8985=WordField.canonicalRows actualModulus 8985 (.rotr 8983 11) := by core033_kernel_decide
theorem stats8985 : actualRows8985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8985=5124 := by core033_kernel_decide
theorem rows8986 : actualRows8986=WordField.canonicalRows actualModulus 8986 (.bxor 8984 8985) := by core033_kernel_decide
theorem stats8986 : actualRows8986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8986=7428 := by core033_kernel_decide
theorem rows8987 : actualRows8987=WordField.canonicalRows actualModulus 8987 (.rotr 8983 25) := by core033_kernel_decide
theorem stats8987 : actualRows8987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8987=5124 := by core033_kernel_decide
theorem rows8988 : actualRows8988=WordField.canonicalRows actualModulus 8988 (.bxor 8986 8987) := by core033_kernel_decide
theorem stats8988 : actualRows8988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8988=7428 := by core033_kernel_decide
theorem rows8989 : actualRows8989=WordField.canonicalRows actualModulus 8989 (.badd 8902 8988) := by core033_kernel_decide
theorem stats8989 : actualRows8989.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8989=5388 := by core033_kernel_decide
theorem rows8990 : actualRows8990=WordField.canonicalRows actualModulus 8990 (.band 8983 8956) := by core033_kernel_decide
theorem stats8990 : actualRows8990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8990=5124 := by core033_kernel_decide
theorem rows8991 : actualRows8991=WordField.canonicalRows actualModulus 8991 (.bnot 8983) := by core033_kernel_decide
theorem stats8991 : actualRows8991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8991=6276 := by core033_kernel_decide
theorem rows8992 : actualRows8992=WordField.canonicalRows actualModulus 8992 (.band 8991 8929) := by core033_kernel_decide
theorem stats8992 : actualRows8992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8992=5124 := by core033_kernel_decide
theorem rows8993 : actualRows8993=WordField.canonicalRows actualModulus 8993 (.bxor 8990 8992) := by core033_kernel_decide
theorem stats8993 : actualRows8993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8993=7428 := by core033_kernel_decide
theorem rows8994 : actualRows8994=WordField.canonicalRows actualModulus 8994 (.badd 8989 8993) := by core033_kernel_decide
theorem stats8994 : actualRows8994.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8994=5388 := by core033_kernel_decide
theorem rows8995 : actualRows8995=WordField.canonicalRows actualModulus 8995 (.literal (BitVec.ofNat 32 1322822218)) := by core033_kernel_decide
theorem stats8995 : actualRows8995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8995=3900 := by core033_kernel_decide
theorem rows8996 : actualRows8996=WordField.canonicalRows actualModulus 8996 (.badd 8994 8995) := by core033_kernel_decide
theorem stats8996 : actualRows8996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8996=5388 := by core033_kernel_decide
theorem rows8997 : actualRows8997=WordField.canonicalRows actualModulus 8997 (.badd 8996 7422) := by core033_kernel_decide
theorem stats8997 : actualRows8997.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8997=5388 := by core033_kernel_decide
theorem rows8998 : actualRows8998=WordField.canonicalRows actualModulus 8998 (.rotr 8982 2) := by core033_kernel_decide
theorem stats8998 : actualRows8998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8998=5124 := by core033_kernel_decide
theorem rows8999 : actualRows8999=WordField.canonicalRows actualModulus 8999 (.rotr 8982 13) := by core033_kernel_decide
theorem stats8999 : actualRows8999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8999=5124 := by core033_kernel_decide
theorem rows9000 : actualRows9000=WordField.canonicalRows actualModulus 9000 (.bxor 8998 8999) := by core033_kernel_decide
theorem stats9000 : actualRows9000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9000=7428 := by core033_kernel_decide
theorem rows9001 : actualRows9001=WordField.canonicalRows actualModulus 9001 (.rotr 8982 22) := by core033_kernel_decide
theorem stats9001 : actualRows9001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9001=5124 := by core033_kernel_decide
theorem rows9002 : actualRows9002=WordField.canonicalRows actualModulus 9002 (.bxor 9000 9001) := by core033_kernel_decide
theorem stats9002 : actualRows9002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9002=7428 := by core033_kernel_decide
def partRows139 : List R1CS.Row := actualRows8939++actualRows8940++actualRows8941++actualRows8942++actualRows8943++actualRows8944++actualRows8945++actualRows8946++actualRows8947++actualRows8948++actualRows8949++actualRows8950++actualRows8951++actualRows8952++actualRows8953++actualRows8954++actualRows8955++actualRows8956++actualRows8957++actualRows8958++actualRows8959++actualRows8960++actualRows8961++actualRows8962++actualRows8963++actualRows8964++actualRows8965++actualRows8966++actualRows8967++actualRows8968++actualRows8969++actualRows8970++actualRows8971++actualRows8972++actualRows8973++actualRows8974++actualRows8975++actualRows8976++actualRows8977++actualRows8978++actualRows8979++actualRows8980++actualRows8981++actualRows8982++actualRows8983++actualRows8984++actualRows8985++actualRows8986++actualRows8987++actualRows8988++actualRows8989++actualRows8990++actualRows8991++actualRows8992++actualRows8993++actualRows8994++actualRows8995++actualRows8996++actualRows8997++actualRows8998++actualRows8999++actualRows9000++actualRows9001++actualRows9002
def partOps139 : List WordIR.Op := [.bxor 8936 8938,.badd 8935 8939,.literal (BitVec.ofNat 32 883997877),.badd 8940 8941,.badd 8942 7396,.rotr 8928 2,.rotr 8928 13,.bxor 8944 8945,.rotr 8928 22,.bxor 8946 8947,.band 8928 8901,.band 8928 8874,.bxor 8949 8950,.band 8901 8874,.bxor 8951 8952,.badd 8948 8953,.badd 8943 8954,.badd 8847 8943,.rotr 8956 6,.rotr 8956 11,.bxor 8957 8958,.rotr 8956 25,.bxor 8959 8960,.badd 8875 8961,.band 8956 8929,.bnot 8956,.band 8964 8902,.bxor 8963 8965,.badd 8962 8966,.literal (BitVec.ofNat 32 958139571),.badd 8967 8968,.badd 8969 7409,.rotr 8955 2,.rotr 8955 13,.bxor 8971 8972,.rotr 8955 22,.bxor 8973 8974,.band 8955 8928,.band 8955 8901,.bxor 8976 8977,.band 8928 8901,.bxor 8978 8979,.badd 8975 8980,.badd 8970 8981,.badd 8874 8970,.rotr 8983 6,.rotr 8983 11,.bxor 8984 8985,.rotr 8983 25,.bxor 8986 8987,.badd 8902 8988,.band 8983 8956,.bnot 8983,.band 8991 8929,.bxor 8990 8992,.badd 8989 8993,.literal (BitVec.ofNat 32 1322822218),.badd 8994 8995,.badd 8996 7422,.rotr 8982 2,.rotr 8982 13,.bxor 8998 8999,.rotr 8982 22,.bxor 9000 9001]
theorem partExact139 : partRows139=WordField.rows actualModulus 8939 partOps139 := by
  simp only [partRows139,partOps139,WordField.rows,rows8939,rows8940,rows8941,rows8942,rows8943,rows8944,rows8945,rows8946,rows8947,rows8948,rows8949,rows8950,rows8951,rows8952,rows8953,rows8954,rows8955,rows8956,rows8957,rows8958,rows8959,rows8960,rows8961,rows8962,rows8963,rows8964,rows8965,rows8966,rows8967,rows8968,rows8969,rows8970,rows8971,rows8972,rows8973,rows8974,rows8975,rows8976,rows8977,rows8978,rows8979,rows8980,rows8981,rows8982,rows8983,rows8984,rows8985,rows8986,rows8987,rows8988,rows8989,rows8990,rows8991,rows8992,rows8993,rows8994,rows8995,rows8996,rows8997,rows8998,rows8999,rows9000,rows9001,rows9002,List.append_assoc,List.append_nil]
theorem partLength139 : partOps139.length=64 := by decide
theorem partStats139 : partRows139.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows139=370224 := by
  simp only [partRows139,List.length_append,MatrixRowBlocks.rows_weight_append,stats8939.1,stats8939.2,stats8940.1,stats8940.2,stats8941.1,stats8941.2,stats8942.1,stats8942.2,stats8943.1,stats8943.2,stats8944.1,stats8944.2,stats8945.1,stats8945.2,stats8946.1,stats8946.2,stats8947.1,stats8947.2,stats8948.1,stats8948.2,stats8949.1,stats8949.2,stats8950.1,stats8950.2,stats8951.1,stats8951.2,stats8952.1,stats8952.2,stats8953.1,stats8953.2,stats8954.1,stats8954.2,stats8955.1,stats8955.2,stats8956.1,stats8956.2,stats8957.1,stats8957.2,stats8958.1,stats8958.2,stats8959.1,stats8959.2,stats8960.1,stats8960.2,stats8961.1,stats8961.2,stats8962.1,stats8962.2,stats8963.1,stats8963.2,stats8964.1,stats8964.2,stats8965.1,stats8965.2,stats8966.1,stats8966.2,stats8967.1,stats8967.2,stats8968.1,stats8968.2,stats8969.1,stats8969.2,stats8970.1,stats8970.2,stats8971.1,stats8971.2,stats8972.1,stats8972.2,stats8973.1,stats8973.2,stats8974.1,stats8974.2,stats8975.1,stats8975.2,stats8976.1,stats8976.2,stats8977.1,stats8977.2,stats8978.1,stats8978.2,stats8979.1,stats8979.2,stats8980.1,stats8980.2,stats8981.1,stats8981.2,stats8982.1,stats8982.2,stats8983.1,stats8983.2,stats8984.1,stats8984.2,stats8985.1,stats8985.2,stats8986.1,stats8986.2,stats8987.1,stats8987.2,stats8988.1,stats8988.2,stats8989.1,stats8989.2,stats8990.1,stats8990.2,stats8991.1,stats8991.2,stats8992.1,stats8992.2,stats8993.1,stats8993.2,stats8994.1,stats8994.2,stats8995.1,stats8995.2,stats8996.1,stats8996.2,stats8997.1,stats8997.2,stats8998.1,stats8998.2,stats8999.1,stats8999.2,stats9000.1,stats9000.2,stats9001.1,stats9001.2,stats9002.1,stats9002.2]
  decide
end PathRoundDispatchCheckedRows
