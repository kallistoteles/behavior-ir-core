import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData139
import AuthenticatedBranchRoundInstructionMatrixData140
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8950 : actualRows8950=WordField.canonicalRows actualModulus 8950 (.badd 8863 8949) := by core033_kernel_decide
theorem stats8950 : actualRows8950.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8950=5388 := by core033_kernel_decide
theorem rows8951 : actualRows8951=WordField.canonicalRows actualModulus 8951 (.band 8944 8917) := by core033_kernel_decide
theorem stats8951 : actualRows8951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8951=5124 := by core033_kernel_decide
theorem rows8952 : actualRows8952=WordField.canonicalRows actualModulus 8952 (.bnot 8944) := by core033_kernel_decide
theorem stats8952 : actualRows8952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8952=6276 := by core033_kernel_decide
theorem rows8953 : actualRows8953=WordField.canonicalRows actualModulus 8953 (.band 8952 8890) := by core033_kernel_decide
theorem stats8953 : actualRows8953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8953=5124 := by core033_kernel_decide
theorem rows8954 : actualRows8954=WordField.canonicalRows actualModulus 8954 (.bxor 8951 8953) := by core033_kernel_decide
theorem stats8954 : actualRows8954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8954=7428 := by core033_kernel_decide
theorem rows8955 : actualRows8955=WordField.canonicalRows actualModulus 8955 (.badd 8950 8954) := by core033_kernel_decide
theorem stats8955 : actualRows8955.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8955=5388 := by core033_kernel_decide
theorem rows8956 : actualRows8956=WordField.canonicalRows actualModulus 8956 (.literal (BitVec.ofNat 32 2870763221)) := by core033_kernel_decide
theorem stats8956 : actualRows8956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8956=4116 := by core033_kernel_decide
theorem rows8957 : actualRows8957=WordField.canonicalRows actualModulus 8957 (.badd 8955 8956) := by core033_kernel_decide
theorem stats8957 : actualRows8957.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8957=5388 := by core033_kernel_decide
theorem rows8958 : actualRows8958=WordField.canonicalRows actualModulus 8958 (.badd 8957 6931) := by core033_kernel_decide
theorem stats8958 : actualRows8958.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8958=5388 := by core033_kernel_decide
theorem rows8959 : actualRows8959=WordField.canonicalRows actualModulus 8959 (.rotr 8943 2) := by core033_kernel_decide
theorem stats8959 : actualRows8959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8959=5124 := by core033_kernel_decide
theorem rows8960 : actualRows8960=WordField.canonicalRows actualModulus 8960 (.rotr 8943 13) := by core033_kernel_decide
theorem stats8960 : actualRows8960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8960=5124 := by core033_kernel_decide
theorem rows8961 : actualRows8961=WordField.canonicalRows actualModulus 8961 (.bxor 8959 8960) := by core033_kernel_decide
theorem stats8961 : actualRows8961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8961=7428 := by core033_kernel_decide
theorem rows8962 : actualRows8962=WordField.canonicalRows actualModulus 8962 (.rotr 8943 22) := by core033_kernel_decide
theorem stats8962 : actualRows8962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8962=5124 := by core033_kernel_decide
theorem rows8963 : actualRows8963=WordField.canonicalRows actualModulus 8963 (.bxor 8961 8962) := by core033_kernel_decide
theorem stats8963 : actualRows8963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8963=7428 := by core033_kernel_decide
theorem rows8964 : actualRows8964=WordField.canonicalRows actualModulus 8964 (.band 8943 8916) := by core033_kernel_decide
theorem stats8964 : actualRows8964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8964=5124 := by core033_kernel_decide
theorem rows8965 : actualRows8965=WordField.canonicalRows actualModulus 8965 (.band 8943 8889) := by core033_kernel_decide
theorem stats8965 : actualRows8965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8965=5124 := by core033_kernel_decide
theorem rows8966 : actualRows8966=WordField.canonicalRows actualModulus 8966 (.bxor 8964 8965) := by core033_kernel_decide
theorem stats8966 : actualRows8966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8966=7428 := by core033_kernel_decide
theorem rows8967 : actualRows8967=WordField.canonicalRows actualModulus 8967 (.band 8916 8889) := by core033_kernel_decide
theorem stats8967 : actualRows8967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8967=5124 := by core033_kernel_decide
theorem rows8968 : actualRows8968=WordField.canonicalRows actualModulus 8968 (.bxor 8966 8967) := by core033_kernel_decide
theorem stats8968 : actualRows8968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8968=7428 := by core033_kernel_decide
theorem rows8969 : actualRows8969=WordField.canonicalRows actualModulus 8969 (.badd 8963 8968) := by core033_kernel_decide
theorem stats8969 : actualRows8969.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8969=5388 := by core033_kernel_decide
theorem rows8970 : actualRows8970=WordField.canonicalRows actualModulus 8970 (.badd 8958 8969) := by core033_kernel_decide
theorem stats8970 : actualRows8970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8970=5388 := by core033_kernel_decide
theorem rows8971 : actualRows8971=WordField.canonicalRows actualModulus 8971 (.badd 8862 8958) := by core033_kernel_decide
theorem stats8971 : actualRows8971.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8971=5388 := by core033_kernel_decide
theorem rows8972 : actualRows8972=WordField.canonicalRows actualModulus 8972 (.rotr 8971 6) := by core033_kernel_decide
theorem stats8972 : actualRows8972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8972=5124 := by core033_kernel_decide
theorem rows8973 : actualRows8973=WordField.canonicalRows actualModulus 8973 (.rotr 8971 11) := by core033_kernel_decide
theorem stats8973 : actualRows8973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8973=5124 := by core033_kernel_decide
theorem rows8974 : actualRows8974=WordField.canonicalRows actualModulus 8974 (.bxor 8972 8973) := by core033_kernel_decide
theorem stats8974 : actualRows8974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8974=7428 := by core033_kernel_decide
theorem rows8975 : actualRows8975=WordField.canonicalRows actualModulus 8975 (.rotr 8971 25) := by core033_kernel_decide
theorem stats8975 : actualRows8975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8975=5124 := by core033_kernel_decide
theorem rows8976 : actualRows8976=WordField.canonicalRows actualModulus 8976 (.bxor 8974 8975) := by core033_kernel_decide
theorem stats8976 : actualRows8976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8976=7428 := by core033_kernel_decide
theorem rows8977 : actualRows8977=WordField.canonicalRows actualModulus 8977 (.badd 8890 8976) := by core033_kernel_decide
theorem stats8977 : actualRows8977.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8977=5388 := by core033_kernel_decide
theorem rows8978 : actualRows8978=WordField.canonicalRows actualModulus 8978 (.band 8971 8944) := by core033_kernel_decide
theorem stats8978 : actualRows8978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8978=5124 := by core033_kernel_decide
theorem rows8979 : actualRows8979=WordField.canonicalRows actualModulus 8979 (.bnot 8971) := by core033_kernel_decide
theorem stats8979 : actualRows8979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8979=6276 := by core033_kernel_decide
theorem rows8980 : actualRows8980=WordField.canonicalRows actualModulus 8980 (.band 8979 8917) := by core033_kernel_decide
theorem stats8980 : actualRows8980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8980=5124 := by core033_kernel_decide
theorem rows8981 : actualRows8981=WordField.canonicalRows actualModulus 8981 (.bxor 8978 8980) := by core033_kernel_decide
theorem stats8981 : actualRows8981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8981=7428 := by core033_kernel_decide
theorem rows8982 : actualRows8982=WordField.canonicalRows actualModulus 8982 (.badd 8977 8981) := by core033_kernel_decide
theorem stats8982 : actualRows8982.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8982=5388 := by core033_kernel_decide
theorem rows8983 : actualRows8983=WordField.canonicalRows actualModulus 8983 (.literal (BitVec.ofNat 32 3624381080)) := by core033_kernel_decide
theorem stats8983 : actualRows8983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8983=3828 := by core033_kernel_decide
theorem rows8984 : actualRows8984=WordField.canonicalRows actualModulus 8984 (.badd 8982 8983) := by core033_kernel_decide
theorem stats8984 : actualRows8984.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8984=5388 := by core033_kernel_decide
theorem rows8985 : actualRows8985=WordField.canonicalRows actualModulus 8985 (.badd 8984 6937) := by core033_kernel_decide
theorem stats8985 : actualRows8985.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8985=5388 := by core033_kernel_decide
theorem rows8986 : actualRows8986=WordField.canonicalRows actualModulus 8986 (.rotr 8970 2) := by core033_kernel_decide
theorem stats8986 : actualRows8986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8986=5124 := by core033_kernel_decide
theorem rows8987 : actualRows8987=WordField.canonicalRows actualModulus 8987 (.rotr 8970 13) := by core033_kernel_decide
theorem stats8987 : actualRows8987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8987=5124 := by core033_kernel_decide
theorem rows8988 : actualRows8988=WordField.canonicalRows actualModulus 8988 (.bxor 8986 8987) := by core033_kernel_decide
theorem stats8988 : actualRows8988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8988=7428 := by core033_kernel_decide
theorem rows8989 : actualRows8989=WordField.canonicalRows actualModulus 8989 (.rotr 8970 22) := by core033_kernel_decide
theorem stats8989 : actualRows8989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8989=5124 := by core033_kernel_decide
theorem rows8990 : actualRows8990=WordField.canonicalRows actualModulus 8990 (.bxor 8988 8989) := by core033_kernel_decide
theorem stats8990 : actualRows8990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8990=7428 := by core033_kernel_decide
theorem rows8991 : actualRows8991=WordField.canonicalRows actualModulus 8991 (.band 8970 8943) := by core033_kernel_decide
theorem stats8991 : actualRows8991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8991=5124 := by core033_kernel_decide
theorem rows8992 : actualRows8992=WordField.canonicalRows actualModulus 8992 (.band 8970 8916) := by core033_kernel_decide
theorem stats8992 : actualRows8992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8992=5124 := by core033_kernel_decide
theorem rows8993 : actualRows8993=WordField.canonicalRows actualModulus 8993 (.bxor 8991 8992) := by core033_kernel_decide
theorem stats8993 : actualRows8993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8993=7428 := by core033_kernel_decide
theorem rows8994 : actualRows8994=WordField.canonicalRows actualModulus 8994 (.band 8943 8916) := by core033_kernel_decide
theorem stats8994 : actualRows8994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8994=5124 := by core033_kernel_decide
theorem rows8995 : actualRows8995=WordField.canonicalRows actualModulus 8995 (.bxor 8993 8994) := by core033_kernel_decide
theorem stats8995 : actualRows8995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8995=7428 := by core033_kernel_decide
theorem rows8996 : actualRows8996=WordField.canonicalRows actualModulus 8996 (.badd 8990 8995) := by core033_kernel_decide
theorem stats8996 : actualRows8996.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8996=5388 := by core033_kernel_decide
theorem rows8997 : actualRows8997=WordField.canonicalRows actualModulus 8997 (.badd 8985 8996) := by core033_kernel_decide
theorem stats8997 : actualRows8997.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8997=5388 := by core033_kernel_decide
theorem rows8998 : actualRows8998=WordField.canonicalRows actualModulus 8998 (.badd 8889 8985) := by core033_kernel_decide
theorem stats8998 : actualRows8998.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8998=5388 := by core033_kernel_decide
theorem rows8999 : actualRows8999=WordField.canonicalRows actualModulus 8999 (.rotr 8998 6) := by core033_kernel_decide
theorem stats8999 : actualRows8999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8999=5124 := by core033_kernel_decide
theorem rows9000 : actualRows9000=WordField.canonicalRows actualModulus 9000 (.rotr 8998 11) := by core033_kernel_decide
theorem stats9000 : actualRows9000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9000=5124 := by core033_kernel_decide
theorem rows9001 : actualRows9001=WordField.canonicalRows actualModulus 9001 (.bxor 8999 9000) := by core033_kernel_decide
theorem stats9001 : actualRows9001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9001=7428 := by core033_kernel_decide
theorem rows9002 : actualRows9002=WordField.canonicalRows actualModulus 9002 (.rotr 8998 25) := by core033_kernel_decide
theorem stats9002 : actualRows9002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9002=5124 := by core033_kernel_decide
theorem rows9003 : actualRows9003=WordField.canonicalRows actualModulus 9003 (.bxor 9001 9002) := by core033_kernel_decide
theorem stats9003 : actualRows9003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9003=7428 := by core033_kernel_decide
theorem rows9004 : actualRows9004=WordField.canonicalRows actualModulus 9004 (.badd 8917 9003) := by core033_kernel_decide
theorem stats9004 : actualRows9004.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9004=5388 := by core033_kernel_decide
theorem rows9005 : actualRows9005=WordField.canonicalRows actualModulus 9005 (.band 8998 8971) := by core033_kernel_decide
theorem stats9005 : actualRows9005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9005=5124 := by core033_kernel_decide
theorem rows9006 : actualRows9006=WordField.canonicalRows actualModulus 9006 (.bnot 8998) := by core033_kernel_decide
theorem stats9006 : actualRows9006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9006=6276 := by core033_kernel_decide
theorem rows9007 : actualRows9007=WordField.canonicalRows actualModulus 9007 (.band 9006 8944) := by core033_kernel_decide
theorem stats9007 : actualRows9007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9007=5124 := by core033_kernel_decide
theorem rows9008 : actualRows9008=WordField.canonicalRows actualModulus 9008 (.bxor 9005 9007) := by core033_kernel_decide
theorem stats9008 : actualRows9008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9008=7428 := by core033_kernel_decide
theorem rows9009 : actualRows9009=WordField.canonicalRows actualModulus 9009 (.badd 9004 9008) := by core033_kernel_decide
theorem stats9009 : actualRows9009.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9009=5388 := by core033_kernel_decide
theorem rows9010 : actualRows9010=WordField.canonicalRows actualModulus 9010 (.literal (BitVec.ofNat 32 310598401)) := by core033_kernel_decide
theorem stats9010 : actualRows9010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9010=3612 := by core033_kernel_decide
theorem rows9011 : actualRows9011=WordField.canonicalRows actualModulus 9011 (.badd 9009 9010) := by core033_kernel_decide
theorem stats9011 : actualRows9011.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9011=5388 := by core033_kernel_decide
theorem rows9012 : actualRows9012=WordField.canonicalRows actualModulus 9012 (.badd 9011 6943) := by core033_kernel_decide
theorem stats9012 : actualRows9012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows9012=5388 := by core033_kernel_decide
theorem rows9013 : actualRows9013=WordField.canonicalRows actualModulus 9013 (.rotr 8997 2) := by core033_kernel_decide
theorem stats9013 : actualRows9013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9013=5124 := by core033_kernel_decide
def partRows138 : List R1CS.Row := actualRows8950++actualRows8951++actualRows8952++actualRows8953++actualRows8954++actualRows8955++actualRows8956++actualRows8957++actualRows8958++actualRows8959++actualRows8960++actualRows8961++actualRows8962++actualRows8963++actualRows8964++actualRows8965++actualRows8966++actualRows8967++actualRows8968++actualRows8969++actualRows8970++actualRows8971++actualRows8972++actualRows8973++actualRows8974++actualRows8975++actualRows8976++actualRows8977++actualRows8978++actualRows8979++actualRows8980++actualRows8981++actualRows8982++actualRows8983++actualRows8984++actualRows8985++actualRows8986++actualRows8987++actualRows8988++actualRows8989++actualRows8990++actualRows8991++actualRows8992++actualRows8993++actualRows8994++actualRows8995++actualRows8996++actualRows8997++actualRows8998++actualRows8999++actualRows9000++actualRows9001++actualRows9002++actualRows9003++actualRows9004++actualRows9005++actualRows9006++actualRows9007++actualRows9008++actualRows9009++actualRows9010++actualRows9011++actualRows9012++actualRows9013
def partOps138 : List WordIR.Op := [.badd 8863 8949,.band 8944 8917,.bnot 8944,.band 8952 8890,.bxor 8951 8953,.badd 8950 8954,.literal (BitVec.ofNat 32 2870763221),.badd 8955 8956,.badd 8957 6931,.rotr 8943 2,.rotr 8943 13,.bxor 8959 8960,.rotr 8943 22,.bxor 8961 8962,.band 8943 8916,.band 8943 8889,.bxor 8964 8965,.band 8916 8889,.bxor 8966 8967,.badd 8963 8968,.badd 8958 8969,.badd 8862 8958,.rotr 8971 6,.rotr 8971 11,.bxor 8972 8973,.rotr 8971 25,.bxor 8974 8975,.badd 8890 8976,.band 8971 8944,.bnot 8971,.band 8979 8917,.bxor 8978 8980,.badd 8977 8981,.literal (BitVec.ofNat 32 3624381080),.badd 8982 8983,.badd 8984 6937,.rotr 8970 2,.rotr 8970 13,.bxor 8986 8987,.rotr 8970 22,.bxor 8988 8989,.band 8970 8943,.band 8970 8916,.bxor 8991 8992,.band 8943 8916,.bxor 8993 8994,.badd 8990 8995,.badd 8985 8996,.badd 8889 8985,.rotr 8998 6,.rotr 8998 11,.bxor 8999 9000,.rotr 8998 25,.bxor 9001 9002,.badd 8917 9003,.band 8998 8971,.bnot 8998,.band 9006 8944,.bxor 9005 9007,.badd 9004 9008,.literal (BitVec.ofNat 32 310598401),.badd 9009 9010,.badd 9011 6943,.rotr 8997 2]
theorem partExact138 : partRows138=WordField.rows actualModulus 8950 partOps138 := by
  simp only [partRows138,partOps138,WordField.rows,rows8950,rows8951,rows8952,rows8953,rows8954,rows8955,rows8956,rows8957,rows8958,rows8959,rows8960,rows8961,rows8962,rows8963,rows8964,rows8965,rows8966,rows8967,rows8968,rows8969,rows8970,rows8971,rows8972,rows8973,rows8974,rows8975,rows8976,rows8977,rows8978,rows8979,rows8980,rows8981,rows8982,rows8983,rows8984,rows8985,rows8986,rows8987,rows8988,rows8989,rows8990,rows8991,rows8992,rows8993,rows8994,rows8995,rows8996,rows8997,rows8998,rows8999,rows9000,rows9001,rows9002,rows9003,rows9004,rows9005,rows9006,rows9007,rows9008,rows9009,rows9010,rows9011,rows9012,rows9013,List.append_assoc,List.append_nil]
theorem partLength138 : partOps138.length=64 := by decide
theorem partStats138 : partRows138.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows138=366888 := by
  simp only [partRows138,List.length_append,MatrixRowBlocks.rows_weight_append,stats8950.1,stats8950.2,stats8951.1,stats8951.2,stats8952.1,stats8952.2,stats8953.1,stats8953.2,stats8954.1,stats8954.2,stats8955.1,stats8955.2,stats8956.1,stats8956.2,stats8957.1,stats8957.2,stats8958.1,stats8958.2,stats8959.1,stats8959.2,stats8960.1,stats8960.2,stats8961.1,stats8961.2,stats8962.1,stats8962.2,stats8963.1,stats8963.2,stats8964.1,stats8964.2,stats8965.1,stats8965.2,stats8966.1,stats8966.2,stats8967.1,stats8967.2,stats8968.1,stats8968.2,stats8969.1,stats8969.2,stats8970.1,stats8970.2,stats8971.1,stats8971.2,stats8972.1,stats8972.2,stats8973.1,stats8973.2,stats8974.1,stats8974.2,stats8975.1,stats8975.2,stats8976.1,stats8976.2,stats8977.1,stats8977.2,stats8978.1,stats8978.2,stats8979.1,stats8979.2,stats8980.1,stats8980.2,stats8981.1,stats8981.2,stats8982.1,stats8982.2,stats8983.1,stats8983.2,stats8984.1,stats8984.2,stats8985.1,stats8985.2,stats8986.1,stats8986.2,stats8987.1,stats8987.2,stats8988.1,stats8988.2,stats8989.1,stats8989.2,stats8990.1,stats8990.2,stats8991.1,stats8991.2,stats8992.1,stats8992.2,stats8993.1,stats8993.2,stats8994.1,stats8994.2,stats8995.1,stats8995.2,stats8996.1,stats8996.2,stats8997.1,stats8997.2,stats8998.1,stats8998.2,stats8999.1,stats8999.2,stats9000.1,stats9000.2,stats9001.1,stats9001.2,stats9002.1,stats9002.2,stats9003.1,stats9003.2,stats9004.1,stats9004.2,stats9005.1,stats9005.2,stats9006.1,stats9006.2,stats9007.1,stats9007.2,stats9008.1,stats9008.2,stats9009.1,stats9009.2,stats9010.1,stats9010.2,stats9011.1,stats9011.2,stats9012.1,stats9012.2,stats9013.1,stats9013.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
