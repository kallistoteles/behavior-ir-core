import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData108
import AuthenticatedBranchRoundInstructionMatrixData109
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6966 : actualRows6966=WordField.canonicalRows actualModulus 6966 (.badd 6964 6965) := by core033_kernel_decide
theorem stats6966 : actualRows6966.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6966=5388 := by core033_kernel_decide
theorem rows6967 : actualRows6967=WordField.canonicalRows actualModulus 6967 (.badd 6966 6459) := by core033_kernel_decide
theorem stats6967 : actualRows6967.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6967=5388 := by core033_kernel_decide
theorem rows6968 : actualRows6968=WordField.canonicalRows actualModulus 6968 (.rotr 6512 8) := by core033_kernel_decide
theorem stats6968 : actualRows6968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6968=5124 := by core033_kernel_decide
theorem rows6969 : actualRows6969=WordField.canonicalRows actualModulus 6969 (.rotr 6565 16) := by core033_kernel_decide
theorem stats6969 : actualRows6969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6969=5124 := by core033_kernel_decide
theorem rows6970 : actualRows6970=WordField.canonicalRows actualModulus 6970 (.badd 6968 6969) := by core033_kernel_decide
theorem stats6970 : actualRows6970.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6970=5388 := by core033_kernel_decide
theorem rows6971 : actualRows6971=WordField.canonicalRows actualModulus 6971 (.rotr 6618 24) := by core033_kernel_decide
theorem stats6971 : actualRows6971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6971=5124 := by core033_kernel_decide
theorem rows6972 : actualRows6972=WordField.canonicalRows actualModulus 6972 (.badd 6970 6971) := by core033_kernel_decide
theorem stats6972 : actualRows6972.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6972=5388 := by core033_kernel_decide
theorem rows6973 : actualRows6973=WordField.canonicalRows actualModulus 6973 (.badd 6972 6671) := by core033_kernel_decide
theorem stats6973 : actualRows6973.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6973=5388 := by core033_kernel_decide
theorem rows6974 : actualRows6974=WordField.canonicalRows actualModulus 6974 (.rotr 6724 8) := by core033_kernel_decide
theorem stats6974 : actualRows6974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6974=5124 := by core033_kernel_decide
theorem rows6975 : actualRows6975=WordField.canonicalRows actualModulus 6975 (.rotr 6777 16) := by core033_kernel_decide
theorem stats6975 : actualRows6975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6975=5124 := by core033_kernel_decide
theorem rows6976 : actualRows6976=WordField.canonicalRows actualModulus 6976 (.badd 6974 6975) := by core033_kernel_decide
theorem stats6976 : actualRows6976.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6976=5388 := by core033_kernel_decide
theorem rows6977 : actualRows6977=WordField.canonicalRows actualModulus 6977 (.rotr 6830 24) := by core033_kernel_decide
theorem stats6977 : actualRows6977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6977=5124 := by core033_kernel_decide
theorem rows6978 : actualRows6978=WordField.canonicalRows actualModulus 6978 (.badd 6976 6977) := by core033_kernel_decide
theorem stats6978 : actualRows6978.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6978=5388 := by core033_kernel_decide
theorem rows6979 : actualRows6979=WordField.canonicalRows actualModulus 6979 (.badd 6978 6883) := by core033_kernel_decide
theorem stats6979 : actualRows6979.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6979=5388 := by core033_kernel_decide
theorem rows6980 : actualRows6980=WordField.canonicalRows actualModulus 6980 (.shr 3594 8) := by core033_kernel_decide
theorem stats6980 : actualRows6980.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6980=4548 := by core033_kernel_decide
theorem rows6981 : actualRows6981=WordField.canonicalRows actualModulus 6981 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6981 : actualRows6981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6981=2820 := by core033_kernel_decide
theorem rows6982 : actualRows6982=WordField.canonicalRows actualModulus 6982 (.bnot 6981) := by core033_kernel_decide
theorem stats6982 : actualRows6982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6982=6276 := by core033_kernel_decide
theorem rows6983 : actualRows6983=WordField.canonicalRows actualModulus 6983 (.band 6980 6982) := by core033_kernel_decide
theorem stats6983 : actualRows6983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6983=5124 := by core033_kernel_decide
theorem rows6984 : actualRows6984=WordField.canonicalRows actualModulus 6984 (.shr 3594 8) := by core033_kernel_decide
theorem stats6984 : actualRows6984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6984=4548 := by core033_kernel_decide
theorem rows6985 : actualRows6985=WordField.canonicalRows actualModulus 6985 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6985 : actualRows6985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6985=2820 := by core033_kernel_decide
theorem rows6986 : actualRows6986=WordField.canonicalRows actualModulus 6986 (.bnot 6985) := by core033_kernel_decide
theorem stats6986 : actualRows6986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6986=6276 := by core033_kernel_decide
theorem rows6987 : actualRows6987=WordField.canonicalRows actualModulus 6987 (.bxor 6984 6986) := by core033_kernel_decide
theorem stats6987 : actualRows6987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6987=7428 := by core033_kernel_decide
theorem rows6988 : actualRows6988=WordField.canonicalRows actualModulus 6988 (.shr 3594 8) := by core033_kernel_decide
theorem stats6988 : actualRows6988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6988=4548 := by core033_kernel_decide
theorem rows6989 : actualRows6989=WordField.canonicalRows actualModulus 6989 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6989 : actualRows6989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6989=2820 := by core033_kernel_decide
theorem rows6990 : actualRows6990=WordField.canonicalRows actualModulus 6990 (.bnot 6989) := by core033_kernel_decide
theorem stats6990 : actualRows6990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6990=6276 := by core033_kernel_decide
theorem rows6991 : actualRows6991=WordField.canonicalRows actualModulus 6991 (.badd 6988 6990) := by core033_kernel_decide
theorem stats6991 : actualRows6991.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6991=5388 := by core033_kernel_decide
theorem rows6992 : actualRows6992=WordField.canonicalRows actualModulus 6992 (.bnot 6991) := by core033_kernel_decide
theorem stats6992 : actualRows6992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6992=6276 := by core033_kernel_decide
theorem rows6993 : actualRows6993=WordField.canonicalRows actualModulus 6993 (.band 6987 6992) := by core033_kernel_decide
theorem stats6993 : actualRows6993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6993=5124 := by core033_kernel_decide
theorem rows6994 : actualRows6994=WordField.canonicalRows actualModulus 6994 (.bxor 6983 6993) := by core033_kernel_decide
theorem stats6994 : actualRows6994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6994=7428 := by core033_kernel_decide
theorem rows6995 : actualRows6995=WordField.canonicalRows actualModulus 6995 (.shr 6994 31) := by core033_kernel_decide
theorem stats6995 : actualRows6995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6995=2892 := by core033_kernel_decide
theorem rows6996 : actualRows6996=WordField.canonicalRows actualModulus 6996 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6996 : actualRows6996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6996=2892 := by core033_kernel_decide
theorem rows6997 : actualRows6997=WordField.canonicalRows actualModulus 6997 (.bxor 6995 6996) := by core033_kernel_decide
theorem stats6997 : actualRows6997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6997=7428 := by core033_kernel_decide
theorem rows6998 : actualRows6998=WordField.canonicalRows actualModulus 6998 (.shr 3646 8) := by core033_kernel_decide
theorem stats6998 : actualRows6998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6998=4548 := by core033_kernel_decide
theorem rows6999 : actualRows6999=WordField.canonicalRows actualModulus 6999 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6999 : actualRows6999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6999=2820 := by core033_kernel_decide
theorem rows7000 : actualRows7000=WordField.canonicalRows actualModulus 7000 (.bnot 6999) := by core033_kernel_decide
theorem stats7000 : actualRows7000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7000=6276 := by core033_kernel_decide
theorem rows7001 : actualRows7001=WordField.canonicalRows actualModulus 7001 (.band 6998 7000) := by core033_kernel_decide
theorem stats7001 : actualRows7001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7001=5124 := by core033_kernel_decide
theorem rows7002 : actualRows7002=WordField.canonicalRows actualModulus 7002 (.shr 3646 8) := by core033_kernel_decide
theorem stats7002 : actualRows7002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7002=4548 := by core033_kernel_decide
theorem rows7003 : actualRows7003=WordField.canonicalRows actualModulus 7003 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7003 : actualRows7003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7003=2820 := by core033_kernel_decide
theorem rows7004 : actualRows7004=WordField.canonicalRows actualModulus 7004 (.bnot 7003) := by core033_kernel_decide
theorem stats7004 : actualRows7004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7004=6276 := by core033_kernel_decide
theorem rows7005 : actualRows7005=WordField.canonicalRows actualModulus 7005 (.bxor 7002 7004) := by core033_kernel_decide
theorem stats7005 : actualRows7005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7005=7428 := by core033_kernel_decide
theorem rows7006 : actualRows7006=WordField.canonicalRows actualModulus 7006 (.shr 3646 8) := by core033_kernel_decide
theorem stats7006 : actualRows7006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7006=4548 := by core033_kernel_decide
theorem rows7007 : actualRows7007=WordField.canonicalRows actualModulus 7007 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7007 : actualRows7007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7007=2820 := by core033_kernel_decide
theorem rows7008 : actualRows7008=WordField.canonicalRows actualModulus 7008 (.bnot 7007) := by core033_kernel_decide
theorem stats7008 : actualRows7008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7008=6276 := by core033_kernel_decide
theorem rows7009 : actualRows7009=WordField.canonicalRows actualModulus 7009 (.badd 7006 7008) := by core033_kernel_decide
theorem stats7009 : actualRows7009.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7009=5388 := by core033_kernel_decide
theorem rows7010 : actualRows7010=WordField.canonicalRows actualModulus 7010 (.bnot 7009) := by core033_kernel_decide
theorem stats7010 : actualRows7010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7010=6276 := by core033_kernel_decide
theorem rows7011 : actualRows7011=WordField.canonicalRows actualModulus 7011 (.band 7005 7010) := by core033_kernel_decide
theorem stats7011 : actualRows7011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7011=5124 := by core033_kernel_decide
theorem rows7012 : actualRows7012=WordField.canonicalRows actualModulus 7012 (.bxor 7001 7011) := by core033_kernel_decide
theorem stats7012 : actualRows7012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7012=7428 := by core033_kernel_decide
theorem rows7013 : actualRows7013=WordField.canonicalRows actualModulus 7013 (.shr 7012 31) := by core033_kernel_decide
theorem stats7013 : actualRows7013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7013=2892 := by core033_kernel_decide
theorem rows7014 : actualRows7014=WordField.canonicalRows actualModulus 7014 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7014 : actualRows7014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7014=2892 := by core033_kernel_decide
theorem rows7015 : actualRows7015=WordField.canonicalRows actualModulus 7015 (.bxor 7013 7014) := by core033_kernel_decide
theorem stats7015 : actualRows7015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7015=7428 := by core033_kernel_decide
theorem rows7016 : actualRows7016=WordField.canonicalRows actualModulus 7016 (.shr 3698 8) := by core033_kernel_decide
theorem stats7016 : actualRows7016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7016=4548 := by core033_kernel_decide
theorem rows7017 : actualRows7017=WordField.canonicalRows actualModulus 7017 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7017 : actualRows7017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7017=2820 := by core033_kernel_decide
theorem rows7018 : actualRows7018=WordField.canonicalRows actualModulus 7018 (.bnot 7017) := by core033_kernel_decide
theorem stats7018 : actualRows7018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7018=6276 := by core033_kernel_decide
theorem rows7019 : actualRows7019=WordField.canonicalRows actualModulus 7019 (.band 7016 7018) := by core033_kernel_decide
theorem stats7019 : actualRows7019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7019=5124 := by core033_kernel_decide
theorem rows7020 : actualRows7020=WordField.canonicalRows actualModulus 7020 (.shr 3698 8) := by core033_kernel_decide
theorem stats7020 : actualRows7020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7020=4548 := by core033_kernel_decide
theorem rows7021 : actualRows7021=WordField.canonicalRows actualModulus 7021 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7021 : actualRows7021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7021=2820 := by core033_kernel_decide
theorem rows7022 : actualRows7022=WordField.canonicalRows actualModulus 7022 (.bnot 7021) := by core033_kernel_decide
theorem stats7022 : actualRows7022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7022=6276 := by core033_kernel_decide
theorem rows7023 : actualRows7023=WordField.canonicalRows actualModulus 7023 (.bxor 7020 7022) := by core033_kernel_decide
theorem stats7023 : actualRows7023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7023=7428 := by core033_kernel_decide
theorem rows7024 : actualRows7024=WordField.canonicalRows actualModulus 7024 (.shr 3698 8) := by core033_kernel_decide
theorem stats7024 : actualRows7024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7024=4548 := by core033_kernel_decide
theorem rows7025 : actualRows7025=WordField.canonicalRows actualModulus 7025 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7025 : actualRows7025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7025=2820 := by core033_kernel_decide
theorem rows7026 : actualRows7026=WordField.canonicalRows actualModulus 7026 (.bnot 7025) := by core033_kernel_decide
theorem stats7026 : actualRows7026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7026=6276 := by core033_kernel_decide
theorem rows7027 : actualRows7027=WordField.canonicalRows actualModulus 7027 (.badd 7024 7026) := by core033_kernel_decide
theorem stats7027 : actualRows7027.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7027=5388 := by core033_kernel_decide
theorem rows7028 : actualRows7028=WordField.canonicalRows actualModulus 7028 (.bnot 7027) := by core033_kernel_decide
theorem stats7028 : actualRows7028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7028=6276 := by core033_kernel_decide
theorem rows7029 : actualRows7029=WordField.canonicalRows actualModulus 7029 (.band 7023 7028) := by core033_kernel_decide
theorem stats7029 : actualRows7029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7029=5124 := by core033_kernel_decide
def partRows107 : List R1CS.Row := actualRows6966++actualRows6967++actualRows6968++actualRows6969++actualRows6970++actualRows6971++actualRows6972++actualRows6973++actualRows6974++actualRows6975++actualRows6976++actualRows6977++actualRows6978++actualRows6979++actualRows6980++actualRows6981++actualRows6982++actualRows6983++actualRows6984++actualRows6985++actualRows6986++actualRows6987++actualRows6988++actualRows6989++actualRows6990++actualRows6991++actualRows6992++actualRows6993++actualRows6994++actualRows6995++actualRows6996++actualRows6997++actualRows6998++actualRows6999++actualRows7000++actualRows7001++actualRows7002++actualRows7003++actualRows7004++actualRows7005++actualRows7006++actualRows7007++actualRows7008++actualRows7009++actualRows7010++actualRows7011++actualRows7012++actualRows7013++actualRows7014++actualRows7015++actualRows7016++actualRows7017++actualRows7018++actualRows7019++actualRows7020++actualRows7021++actualRows7022++actualRows7023++actualRows7024++actualRows7025++actualRows7026++actualRows7027++actualRows7028++actualRows7029
def partOps107 : List WordIR.Op := [.badd 6964 6965,.badd 6966 6459,.rotr 6512 8,.rotr 6565 16,.badd 6968 6969,.rotr 6618 24,.badd 6970 6971,.badd 6972 6671,.rotr 6724 8,.rotr 6777 16,.badd 6974 6975,.rotr 6830 24,.badd 6976 6977,.badd 6978 6883,.shr 3594 8,.literal (BitVec.ofNat 32 0),.bnot 6981,.band 6980 6982,.shr 3594 8,.literal (BitVec.ofNat 32 0),.bnot 6985,.bxor 6984 6986,.shr 3594 8,.literal (BitVec.ofNat 32 0),.bnot 6989,.badd 6988 6990,.bnot 6991,.band 6987 6992,.bxor 6983 6993,.shr 6994 31,.literal (BitVec.ofNat 32 1),.bxor 6995 6996,.shr 3646 8,.literal (BitVec.ofNat 32 0),.bnot 6999,.band 6998 7000,.shr 3646 8,.literal (BitVec.ofNat 32 0),.bnot 7003,.bxor 7002 7004,.shr 3646 8,.literal (BitVec.ofNat 32 0),.bnot 7007,.badd 7006 7008,.bnot 7009,.band 7005 7010,.bxor 7001 7011,.shr 7012 31,.literal (BitVec.ofNat 32 1),.bxor 7013 7014,.shr 3698 8,.literal (BitVec.ofNat 32 0),.bnot 7017,.band 7016 7018,.shr 3698 8,.literal (BitVec.ofNat 32 0),.bnot 7021,.bxor 7020 7022,.shr 3698 8,.literal (BitVec.ofNat 32 0),.bnot 7025,.badd 7024 7026,.bnot 7027,.band 7023 7028]
theorem partExact107 : partRows107=WordField.rows actualModulus 6966 partOps107 := by
  simp only [partRows107,partOps107,WordField.rows,rows6966,rows6967,rows6968,rows6969,rows6970,rows6971,rows6972,rows6973,rows6974,rows6975,rows6976,rows6977,rows6978,rows6979,rows6980,rows6981,rows6982,rows6983,rows6984,rows6985,rows6986,rows6987,rows6988,rows6989,rows6990,rows6991,rows6992,rows6993,rows6994,rows6995,rows6996,rows6997,rows6998,rows6999,rows7000,rows7001,rows7002,rows7003,rows7004,rows7005,rows7006,rows7007,rows7008,rows7009,rows7010,rows7011,rows7012,rows7013,rows7014,rows7015,rows7016,rows7017,rows7018,rows7019,rows7020,rows7021,rows7022,rows7023,rows7024,rows7025,rows7026,rows7027,rows7028,rows7029,List.append_assoc,List.append_nil]
theorem partLength107 : partOps107.length=64 := by decide
theorem partStats107 : partRows107.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows107=325944 := by
  simp only [partRows107,List.length_append,MatrixRowBlocks.rows_weight_append,stats6966.1,stats6966.2,stats6967.1,stats6967.2,stats6968.1,stats6968.2,stats6969.1,stats6969.2,stats6970.1,stats6970.2,stats6971.1,stats6971.2,stats6972.1,stats6972.2,stats6973.1,stats6973.2,stats6974.1,stats6974.2,stats6975.1,stats6975.2,stats6976.1,stats6976.2,stats6977.1,stats6977.2,stats6978.1,stats6978.2,stats6979.1,stats6979.2,stats6980.1,stats6980.2,stats6981.1,stats6981.2,stats6982.1,stats6982.2,stats6983.1,stats6983.2,stats6984.1,stats6984.2,stats6985.1,stats6985.2,stats6986.1,stats6986.2,stats6987.1,stats6987.2,stats6988.1,stats6988.2,stats6989.1,stats6989.2,stats6990.1,stats6990.2,stats6991.1,stats6991.2,stats6992.1,stats6992.2,stats6993.1,stats6993.2,stats6994.1,stats6994.2,stats6995.1,stats6995.2,stats6996.1,stats6996.2,stats6997.1,stats6997.2,stats6998.1,stats6998.2,stats6999.1,stats6999.2,stats7000.1,stats7000.2,stats7001.1,stats7001.2,stats7002.1,stats7002.2,stats7003.1,stats7003.2,stats7004.1,stats7004.2,stats7005.1,stats7005.2,stats7006.1,stats7006.2,stats7007.1,stats7007.2,stats7008.1,stats7008.2,stats7009.1,stats7009.2,stats7010.1,stats7010.2,stats7011.1,stats7011.2,stats7012.1,stats7012.2,stats7013.1,stats7013.2,stats7014.1,stats7014.2,stats7015.1,stats7015.2,stats7016.1,stats7016.2,stats7017.1,stats7017.2,stats7018.1,stats7018.2,stats7019.1,stats7019.2,stats7020.1,stats7020.2,stats7021.1,stats7021.2,stats7022.1,stats7022.2,stats7023.1,stats7023.2,stats7024.1,stats7024.2,stats7025.1,stats7025.2,stats7026.1,stats7026.2,stats7027.1,stats7027.2,stats7028.1,stats7028.2,stats7029.1,stats7029.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
