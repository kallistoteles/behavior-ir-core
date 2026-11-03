import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData108
import PairedPathRoundInstructionMatrixData109
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6944 : actualRows6944=WordField.canonicalRows actualModulus 6944 (.bxor 6942 6943) := by core033_kernel_decide
theorem stats6944 : actualRows6944.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6944=7428 := by core033_kernel_decide
theorem rows6945 : actualRows6945=WordField.canonicalRows actualModulus 6945 (.shr 4783 8) := by core033_kernel_decide
theorem stats6945 : actualRows6945.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6945=4548 := by core033_kernel_decide
theorem rows6946 : actualRows6946=WordField.canonicalRows actualModulus 6946 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6946 : actualRows6946.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6946=2820 := by core033_kernel_decide
theorem rows6947 : actualRows6947=WordField.canonicalRows actualModulus 6947 (.bnot 6946) := by core033_kernel_decide
theorem stats6947 : actualRows6947.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6947=6276 := by core033_kernel_decide
theorem rows6948 : actualRows6948=WordField.canonicalRows actualModulus 6948 (.band 6945 6947) := by core033_kernel_decide
theorem stats6948 : actualRows6948.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6948=5124 := by core033_kernel_decide
theorem rows6949 : actualRows6949=WordField.canonicalRows actualModulus 6949 (.shr 4783 8) := by core033_kernel_decide
theorem stats6949 : actualRows6949.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6949=4548 := by core033_kernel_decide
theorem rows6950 : actualRows6950=WordField.canonicalRows actualModulus 6950 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6950 : actualRows6950.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6950=2820 := by core033_kernel_decide
theorem rows6951 : actualRows6951=WordField.canonicalRows actualModulus 6951 (.bnot 6950) := by core033_kernel_decide
theorem stats6951 : actualRows6951.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6951=6276 := by core033_kernel_decide
theorem rows6952 : actualRows6952=WordField.canonicalRows actualModulus 6952 (.bxor 6949 6951) := by core033_kernel_decide
theorem stats6952 : actualRows6952.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6952=7428 := by core033_kernel_decide
theorem rows6953 : actualRows6953=WordField.canonicalRows actualModulus 6953 (.shr 4783 8) := by core033_kernel_decide
theorem stats6953 : actualRows6953.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6953=4548 := by core033_kernel_decide
theorem rows6954 : actualRows6954=WordField.canonicalRows actualModulus 6954 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6954 : actualRows6954.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6954=2820 := by core033_kernel_decide
theorem rows6955 : actualRows6955=WordField.canonicalRows actualModulus 6955 (.bnot 6954) := by core033_kernel_decide
theorem stats6955 : actualRows6955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6955=6276 := by core033_kernel_decide
theorem rows6956 : actualRows6956=WordField.canonicalRows actualModulus 6956 (.badd 6953 6955) := by core033_kernel_decide
theorem stats6956 : actualRows6956.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6956=5388 := by core033_kernel_decide
theorem rows6957 : actualRows6957=WordField.canonicalRows actualModulus 6957 (.bnot 6956) := by core033_kernel_decide
theorem stats6957 : actualRows6957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6957=6276 := by core033_kernel_decide
theorem rows6958 : actualRows6958=WordField.canonicalRows actualModulus 6958 (.band 6952 6957) := by core033_kernel_decide
theorem stats6958 : actualRows6958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6958=5124 := by core033_kernel_decide
theorem rows6959 : actualRows6959=WordField.canonicalRows actualModulus 6959 (.bxor 6948 6958) := by core033_kernel_decide
theorem stats6959 : actualRows6959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6959=7428 := by core033_kernel_decide
theorem rows6960 : actualRows6960=WordField.canonicalRows actualModulus 6960 (.shr 6959 31) := by core033_kernel_decide
theorem stats6960 : actualRows6960.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6960=2892 := by core033_kernel_decide
theorem rows6961 : actualRows6961=WordField.canonicalRows actualModulus 6961 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6961 : actualRows6961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6961=2892 := by core033_kernel_decide
theorem rows6962 : actualRows6962=WordField.canonicalRows actualModulus 6962 (.bxor 6960 6961) := by core033_kernel_decide
theorem stats6962 : actualRows6962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6962=7428 := by core033_kernel_decide
theorem rows6963 : actualRows6963=WordField.canonicalRows actualModulus 6963 (.shr 4835 8) := by core033_kernel_decide
theorem stats6963 : actualRows6963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6963=4548 := by core033_kernel_decide
theorem rows6964 : actualRows6964=WordField.canonicalRows actualModulus 6964 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6964 : actualRows6964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6964=2820 := by core033_kernel_decide
theorem rows6965 : actualRows6965=WordField.canonicalRows actualModulus 6965 (.bnot 6964) := by core033_kernel_decide
theorem stats6965 : actualRows6965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6965=6276 := by core033_kernel_decide
theorem rows6966 : actualRows6966=WordField.canonicalRows actualModulus 6966 (.band 6963 6965) := by core033_kernel_decide
theorem stats6966 : actualRows6966.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6966=5124 := by core033_kernel_decide
theorem rows6967 : actualRows6967=WordField.canonicalRows actualModulus 6967 (.shr 4835 8) := by core033_kernel_decide
theorem stats6967 : actualRows6967.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6967=4548 := by core033_kernel_decide
theorem rows6968 : actualRows6968=WordField.canonicalRows actualModulus 6968 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6968 : actualRows6968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6968=2820 := by core033_kernel_decide
theorem rows6969 : actualRows6969=WordField.canonicalRows actualModulus 6969 (.bnot 6968) := by core033_kernel_decide
theorem stats6969 : actualRows6969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6969=6276 := by core033_kernel_decide
theorem rows6970 : actualRows6970=WordField.canonicalRows actualModulus 6970 (.bxor 6967 6969) := by core033_kernel_decide
theorem stats6970 : actualRows6970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6970=7428 := by core033_kernel_decide
theorem rows6971 : actualRows6971=WordField.canonicalRows actualModulus 6971 (.shr 4835 8) := by core033_kernel_decide
theorem stats6971 : actualRows6971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6971=4548 := by core033_kernel_decide
theorem rows6972 : actualRows6972=WordField.canonicalRows actualModulus 6972 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6972 : actualRows6972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6972=2820 := by core033_kernel_decide
theorem rows6973 : actualRows6973=WordField.canonicalRows actualModulus 6973 (.bnot 6972) := by core033_kernel_decide
theorem stats6973 : actualRows6973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6973=6276 := by core033_kernel_decide
theorem rows6974 : actualRows6974=WordField.canonicalRows actualModulus 6974 (.badd 6971 6973) := by core033_kernel_decide
theorem stats6974 : actualRows6974.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6974=5388 := by core033_kernel_decide
theorem rows6975 : actualRows6975=WordField.canonicalRows actualModulus 6975 (.bnot 6974) := by core033_kernel_decide
theorem stats6975 : actualRows6975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6975=6276 := by core033_kernel_decide
theorem rows6976 : actualRows6976=WordField.canonicalRows actualModulus 6976 (.band 6970 6975) := by core033_kernel_decide
theorem stats6976 : actualRows6976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6976=5124 := by core033_kernel_decide
theorem rows6977 : actualRows6977=WordField.canonicalRows actualModulus 6977 (.bxor 6966 6976) := by core033_kernel_decide
theorem stats6977 : actualRows6977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6977=7428 := by core033_kernel_decide
theorem rows6978 : actualRows6978=WordField.canonicalRows actualModulus 6978 (.shr 6977 31) := by core033_kernel_decide
theorem stats6978 : actualRows6978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6978=2892 := by core033_kernel_decide
theorem rows6979 : actualRows6979=WordField.canonicalRows actualModulus 6979 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6979 : actualRows6979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6979=2892 := by core033_kernel_decide
theorem rows6980 : actualRows6980=WordField.canonicalRows actualModulus 6980 (.bxor 6978 6979) := by core033_kernel_decide
theorem stats6980 : actualRows6980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6980=7428 := by core033_kernel_decide
theorem rows6981 : actualRows6981=WordField.canonicalRows actualModulus 6981 (.shr 4887 8) := by core033_kernel_decide
theorem stats6981 : actualRows6981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6981=4548 := by core033_kernel_decide
theorem rows6982 : actualRows6982=WordField.canonicalRows actualModulus 6982 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6982 : actualRows6982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6982=2820 := by core033_kernel_decide
theorem rows6983 : actualRows6983=WordField.canonicalRows actualModulus 6983 (.bnot 6982) := by core033_kernel_decide
theorem stats6983 : actualRows6983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6983=6276 := by core033_kernel_decide
theorem rows6984 : actualRows6984=WordField.canonicalRows actualModulus 6984 (.band 6981 6983) := by core033_kernel_decide
theorem stats6984 : actualRows6984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6984=5124 := by core033_kernel_decide
theorem rows6985 : actualRows6985=WordField.canonicalRows actualModulus 6985 (.shr 4887 8) := by core033_kernel_decide
theorem stats6985 : actualRows6985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6985=4548 := by core033_kernel_decide
theorem rows6986 : actualRows6986=WordField.canonicalRows actualModulus 6986 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6986 : actualRows6986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6986=2820 := by core033_kernel_decide
theorem rows6987 : actualRows6987=WordField.canonicalRows actualModulus 6987 (.bnot 6986) := by core033_kernel_decide
theorem stats6987 : actualRows6987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6987=6276 := by core033_kernel_decide
theorem rows6988 : actualRows6988=WordField.canonicalRows actualModulus 6988 (.bxor 6985 6987) := by core033_kernel_decide
theorem stats6988 : actualRows6988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6988=7428 := by core033_kernel_decide
theorem rows6989 : actualRows6989=WordField.canonicalRows actualModulus 6989 (.shr 4887 8) := by core033_kernel_decide
theorem stats6989 : actualRows6989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6989=4548 := by core033_kernel_decide
theorem rows6990 : actualRows6990=WordField.canonicalRows actualModulus 6990 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6990 : actualRows6990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6990=2820 := by core033_kernel_decide
theorem rows6991 : actualRows6991=WordField.canonicalRows actualModulus 6991 (.bnot 6990) := by core033_kernel_decide
theorem stats6991 : actualRows6991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6991=6276 := by core033_kernel_decide
theorem rows6992 : actualRows6992=WordField.canonicalRows actualModulus 6992 (.badd 6989 6991) := by core033_kernel_decide
theorem stats6992 : actualRows6992.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6992=5388 := by core033_kernel_decide
theorem rows6993 : actualRows6993=WordField.canonicalRows actualModulus 6993 (.bnot 6992) := by core033_kernel_decide
theorem stats6993 : actualRows6993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6993=6276 := by core033_kernel_decide
theorem rows6994 : actualRows6994=WordField.canonicalRows actualModulus 6994 (.band 6988 6993) := by core033_kernel_decide
theorem stats6994 : actualRows6994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6994=5124 := by core033_kernel_decide
theorem rows6995 : actualRows6995=WordField.canonicalRows actualModulus 6995 (.bxor 6984 6994) := by core033_kernel_decide
theorem stats6995 : actualRows6995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6995=7428 := by core033_kernel_decide
theorem rows6996 : actualRows6996=WordField.canonicalRows actualModulus 6996 (.shr 6995 31) := by core033_kernel_decide
theorem stats6996 : actualRows6996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6996=2892 := by core033_kernel_decide
theorem rows6997 : actualRows6997=WordField.canonicalRows actualModulus 6997 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6997 : actualRows6997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6997=2892 := by core033_kernel_decide
theorem rows6998 : actualRows6998=WordField.canonicalRows actualModulus 6998 (.bxor 6996 6997) := by core033_kernel_decide
theorem stats6998 : actualRows6998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6998=7428 := by core033_kernel_decide
theorem rows6999 : actualRows6999=WordField.canonicalRows actualModulus 6999 (.shr 4939 8) := by core033_kernel_decide
theorem stats6999 : actualRows6999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6999=4548 := by core033_kernel_decide
theorem rows7000 : actualRows7000=WordField.canonicalRows actualModulus 7000 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7000 : actualRows7000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7000=2820 := by core033_kernel_decide
theorem rows7001 : actualRows7001=WordField.canonicalRows actualModulus 7001 (.bnot 7000) := by core033_kernel_decide
theorem stats7001 : actualRows7001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7001=6276 := by core033_kernel_decide
theorem rows7002 : actualRows7002=WordField.canonicalRows actualModulus 7002 (.band 6999 7001) := by core033_kernel_decide
theorem stats7002 : actualRows7002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7002=5124 := by core033_kernel_decide
theorem rows7003 : actualRows7003=WordField.canonicalRows actualModulus 7003 (.shr 4939 8) := by core033_kernel_decide
theorem stats7003 : actualRows7003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7003=4548 := by core033_kernel_decide
theorem rows7004 : actualRows7004=WordField.canonicalRows actualModulus 7004 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7004 : actualRows7004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7004=2820 := by core033_kernel_decide
theorem rows7005 : actualRows7005=WordField.canonicalRows actualModulus 7005 (.bnot 7004) := by core033_kernel_decide
theorem stats7005 : actualRows7005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7005=6276 := by core033_kernel_decide
theorem rows7006 : actualRows7006=WordField.canonicalRows actualModulus 7006 (.bxor 7003 7005) := by core033_kernel_decide
theorem stats7006 : actualRows7006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7006=7428 := by core033_kernel_decide
theorem rows7007 : actualRows7007=WordField.canonicalRows actualModulus 7007 (.shr 4939 8) := by core033_kernel_decide
theorem stats7007 : actualRows7007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7007=4548 := by core033_kernel_decide
def partRows107 : List R1CS.Row := actualRows6944++actualRows6945++actualRows6946++actualRows6947++actualRows6948++actualRows6949++actualRows6950++actualRows6951++actualRows6952++actualRows6953++actualRows6954++actualRows6955++actualRows6956++actualRows6957++actualRows6958++actualRows6959++actualRows6960++actualRows6961++actualRows6962++actualRows6963++actualRows6964++actualRows6965++actualRows6966++actualRows6967++actualRows6968++actualRows6969++actualRows6970++actualRows6971++actualRows6972++actualRows6973++actualRows6974++actualRows6975++actualRows6976++actualRows6977++actualRows6978++actualRows6979++actualRows6980++actualRows6981++actualRows6982++actualRows6983++actualRows6984++actualRows6985++actualRows6986++actualRows6987++actualRows6988++actualRows6989++actualRows6990++actualRows6991++actualRows6992++actualRows6993++actualRows6994++actualRows6995++actualRows6996++actualRows6997++actualRows6998++actualRows6999++actualRows7000++actualRows7001++actualRows7002++actualRows7003++actualRows7004++actualRows7005++actualRows7006++actualRows7007
def partOps107 : List WordIR.Op := [.bxor 6942 6943,.shr 4783 8,.literal (BitVec.ofNat 32 0),.bnot 6946,.band 6945 6947,.shr 4783 8,.literal (BitVec.ofNat 32 0),.bnot 6950,.bxor 6949 6951,.shr 4783 8,.literal (BitVec.ofNat 32 0),.bnot 6954,.badd 6953 6955,.bnot 6956,.band 6952 6957,.bxor 6948 6958,.shr 6959 31,.literal (BitVec.ofNat 32 1),.bxor 6960 6961,.shr 4835 8,.literal (BitVec.ofNat 32 0),.bnot 6964,.band 6963 6965,.shr 4835 8,.literal (BitVec.ofNat 32 0),.bnot 6968,.bxor 6967 6969,.shr 4835 8,.literal (BitVec.ofNat 32 0),.bnot 6972,.badd 6971 6973,.bnot 6974,.band 6970 6975,.bxor 6966 6976,.shr 6977 31,.literal (BitVec.ofNat 32 1),.bxor 6978 6979,.shr 4887 8,.literal (BitVec.ofNat 32 0),.bnot 6982,.band 6981 6983,.shr 4887 8,.literal (BitVec.ofNat 32 0),.bnot 6986,.bxor 6985 6987,.shr 4887 8,.literal (BitVec.ofNat 32 0),.bnot 6990,.badd 6989 6991,.bnot 6992,.band 6988 6993,.bxor 6984 6994,.shr 6995 31,.literal (BitVec.ofNat 32 1),.bxor 6996 6997,.shr 4939 8,.literal (BitVec.ofNat 32 0),.bnot 7000,.band 6999 7001,.shr 4939 8,.literal (BitVec.ofNat 32 0),.bnot 7004,.bxor 7003 7005,.shr 4939 8]
theorem partExact107 : partRows107=WordField.rows actualModulus 6944 partOps107 := by
  simp only [partRows107,partOps107,WordField.rows,rows6944,rows6945,rows6946,rows6947,rows6948,rows6949,rows6950,rows6951,rows6952,rows6953,rows6954,rows6955,rows6956,rows6957,rows6958,rows6959,rows6960,rows6961,rows6962,rows6963,rows6964,rows6965,rows6966,rows6967,rows6968,rows6969,rows6970,rows6971,rows6972,rows6973,rows6974,rows6975,rows6976,rows6977,rows6978,rows6979,rows6980,rows6981,rows6982,rows6983,rows6984,rows6985,rows6986,rows6987,rows6988,rows6989,rows6990,rows6991,rows6992,rows6993,rows6994,rows6995,rows6996,rows6997,rows6998,rows6999,rows7000,rows7001,rows7002,rows7003,rows7004,rows7005,rows7006,rows7007,List.append_assoc,List.append_nil]
theorem partLength107 : partOps107.length=64 := by decide
theorem partStats107 : partRows107.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows107=324552 := by
  simp only [partRows107,List.length_append,MatrixRowBlocks.rows_weight_append,stats6944.1,stats6944.2,stats6945.1,stats6945.2,stats6946.1,stats6946.2,stats6947.1,stats6947.2,stats6948.1,stats6948.2,stats6949.1,stats6949.2,stats6950.1,stats6950.2,stats6951.1,stats6951.2,stats6952.1,stats6952.2,stats6953.1,stats6953.2,stats6954.1,stats6954.2,stats6955.1,stats6955.2,stats6956.1,stats6956.2,stats6957.1,stats6957.2,stats6958.1,stats6958.2,stats6959.1,stats6959.2,stats6960.1,stats6960.2,stats6961.1,stats6961.2,stats6962.1,stats6962.2,stats6963.1,stats6963.2,stats6964.1,stats6964.2,stats6965.1,stats6965.2,stats6966.1,stats6966.2,stats6967.1,stats6967.2,stats6968.1,stats6968.2,stats6969.1,stats6969.2,stats6970.1,stats6970.2,stats6971.1,stats6971.2,stats6972.1,stats6972.2,stats6973.1,stats6973.2,stats6974.1,stats6974.2,stats6975.1,stats6975.2,stats6976.1,stats6976.2,stats6977.1,stats6977.2,stats6978.1,stats6978.2,stats6979.1,stats6979.2,stats6980.1,stats6980.2,stats6981.1,stats6981.2,stats6982.1,stats6982.2,stats6983.1,stats6983.2,stats6984.1,stats6984.2,stats6985.1,stats6985.2,stats6986.1,stats6986.2,stats6987.1,stats6987.2,stats6988.1,stats6988.2,stats6989.1,stats6989.2,stats6990.1,stats6990.2,stats6991.1,stats6991.2,stats6992.1,stats6992.2,stats6993.1,stats6993.2,stats6994.1,stats6994.2,stats6995.1,stats6995.2,stats6996.1,stats6996.2,stats6997.1,stats6997.2,stats6998.1,stats6998.2,stats6999.1,stats6999.2,stats7000.1,stats7000.2,stats7001.1,stats7001.2,stats7002.1,stats7002.2,stats7003.1,stats7003.2,stats7004.1,stats7004.2,stats7005.1,stats7005.2,stats7006.1,stats7006.2,stats7007.1,stats7007.2]
  decide
end PairedPathRoundCheckedRows
