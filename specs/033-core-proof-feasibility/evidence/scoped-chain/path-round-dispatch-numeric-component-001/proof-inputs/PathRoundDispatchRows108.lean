import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData108
import PathRoundDispatchInstructionMatrixData109
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows6955 : actualRows6955=WordField.canonicalRows actualModulus 6955 (.rotr 6941 17) := by core033_kernel_decide
theorem stats6955 : actualRows6955.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6955=5124 := by core033_kernel_decide
theorem rows6956 : actualRows6956=WordField.canonicalRows actualModulus 6956 (.rotr 6941 19) := by core033_kernel_decide
theorem stats6956 : actualRows6956.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6956=5124 := by core033_kernel_decide
theorem rows6957 : actualRows6957=WordField.canonicalRows actualModulus 6957 (.bxor 6955 6956) := by core033_kernel_decide
theorem stats6957 : actualRows6957.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6957=7428 := by core033_kernel_decide
theorem rows6958 : actualRows6958=WordField.canonicalRows actualModulus 6958 (.shr 6941 10) := by core033_kernel_decide
theorem stats6958 : actualRows6958.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6958=4404 := by core033_kernel_decide
theorem rows6959 : actualRows6959=WordField.canonicalRows actualModulus 6959 (.bxor 6957 6958) := by core033_kernel_decide
theorem stats6959 : actualRows6959.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6959=7428 := by core033_kernel_decide
theorem rows6960 : actualRows6960=WordField.canonicalRows actualModulus 6960 (.badd 6959 5752) := by core033_kernel_decide
theorem stats6960 : actualRows6960.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6960=5388 := by core033_kernel_decide
theorem rows6961 : actualRows6961=WordField.canonicalRows actualModulus 6961 (.rotr 5704 7) := by core033_kernel_decide
theorem stats6961 : actualRows6961.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6961=5124 := by core033_kernel_decide
theorem rows6962 : actualRows6962=WordField.canonicalRows actualModulus 6962 (.rotr 5704 18) := by core033_kernel_decide
theorem stats6962 : actualRows6962.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6962=5124 := by core033_kernel_decide
theorem rows6963 : actualRows6963=WordField.canonicalRows actualModulus 6963 (.bxor 6961 6962) := by core033_kernel_decide
theorem stats6963 : actualRows6963.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6963=7428 := by core033_kernel_decide
theorem rows6964 : actualRows6964=WordField.canonicalRows actualModulus 6964 (.shr 5704 3) := by core033_kernel_decide
theorem stats6964 : actualRows6964.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6964=4908 := by core033_kernel_decide
theorem rows6965 : actualRows6965=WordField.canonicalRows actualModulus 6965 (.bxor 6963 6964) := by core033_kernel_decide
theorem stats6965 : actualRows6965.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6965=7428 := by core033_kernel_decide
theorem rows6966 : actualRows6966=WordField.canonicalRows actualModulus 6966 (.badd 6960 6965) := by core033_kernel_decide
theorem stats6966 : actualRows6966.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6966=5388 := by core033_kernel_decide
theorem rows6967 : actualRows6967=WordField.canonicalRows actualModulus 6967 (.badd 6966 5698) := by core033_kernel_decide
theorem stats6967 : actualRows6967.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6967=5388 := by core033_kernel_decide
theorem rows6968 : actualRows6968=WordField.canonicalRows actualModulus 6968 (.rotr 6954 17) := by core033_kernel_decide
theorem stats6968 : actualRows6968.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6968=5124 := by core033_kernel_decide
theorem rows6969 : actualRows6969=WordField.canonicalRows actualModulus 6969 (.rotr 6954 19) := by core033_kernel_decide
theorem stats6969 : actualRows6969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6969=5124 := by core033_kernel_decide
theorem rows6970 : actualRows6970=WordField.canonicalRows actualModulus 6970 (.bxor 6968 6969) := by core033_kernel_decide
theorem stats6970 : actualRows6970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6970=7428 := by core033_kernel_decide
theorem rows6971 : actualRows6971=WordField.canonicalRows actualModulus 6971 (.shr 6954 10) := by core033_kernel_decide
theorem stats6971 : actualRows6971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6971=4404 := by core033_kernel_decide
theorem rows6972 : actualRows6972=WordField.canonicalRows actualModulus 6972 (.bxor 6970 6971) := by core033_kernel_decide
theorem stats6972 : actualRows6972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6972=7428 := by core033_kernel_decide
theorem rows6973 : actualRows6973=WordField.canonicalRows actualModulus 6973 (.badd 6972 5758) := by core033_kernel_decide
theorem stats6973 : actualRows6973.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6973=5388 := by core033_kernel_decide
theorem rows6974 : actualRows6974=WordField.canonicalRows actualModulus 6974 (.rotr 5710 7) := by core033_kernel_decide
theorem stats6974 : actualRows6974.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6974=5124 := by core033_kernel_decide
theorem rows6975 : actualRows6975=WordField.canonicalRows actualModulus 6975 (.rotr 5710 18) := by core033_kernel_decide
theorem stats6975 : actualRows6975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6975=5124 := by core033_kernel_decide
theorem rows6976 : actualRows6976=WordField.canonicalRows actualModulus 6976 (.bxor 6974 6975) := by core033_kernel_decide
theorem stats6976 : actualRows6976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6976=7428 := by core033_kernel_decide
theorem rows6977 : actualRows6977=WordField.canonicalRows actualModulus 6977 (.shr 5710 3) := by core033_kernel_decide
theorem stats6977 : actualRows6977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6977=4908 := by core033_kernel_decide
theorem rows6978 : actualRows6978=WordField.canonicalRows actualModulus 6978 (.bxor 6976 6977) := by core033_kernel_decide
theorem stats6978 : actualRows6978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6978=7428 := by core033_kernel_decide
theorem rows6979 : actualRows6979=WordField.canonicalRows actualModulus 6979 (.badd 6973 6978) := by core033_kernel_decide
theorem stats6979 : actualRows6979.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6979=5388 := by core033_kernel_decide
theorem rows6980 : actualRows6980=WordField.canonicalRows actualModulus 6980 (.badd 6979 5704) := by core033_kernel_decide
theorem stats6980 : actualRows6980.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6980=5388 := by core033_kernel_decide
theorem rows6981 : actualRows6981=WordField.canonicalRows actualModulus 6981 (.rotr 6967 17) := by core033_kernel_decide
theorem stats6981 : actualRows6981.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6981=5124 := by core033_kernel_decide
theorem rows6982 : actualRows6982=WordField.canonicalRows actualModulus 6982 (.rotr 6967 19) := by core033_kernel_decide
theorem stats6982 : actualRows6982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6982=5124 := by core033_kernel_decide
theorem rows6983 : actualRows6983=WordField.canonicalRows actualModulus 6983 (.bxor 6981 6982) := by core033_kernel_decide
theorem stats6983 : actualRows6983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6983=7428 := by core033_kernel_decide
theorem rows6984 : actualRows6984=WordField.canonicalRows actualModulus 6984 (.shr 6967 10) := by core033_kernel_decide
theorem stats6984 : actualRows6984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6984=4404 := by core033_kernel_decide
theorem rows6985 : actualRows6985=WordField.canonicalRows actualModulus 6985 (.bxor 6983 6984) := by core033_kernel_decide
theorem stats6985 : actualRows6985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6985=7428 := by core033_kernel_decide
theorem rows6986 : actualRows6986=WordField.canonicalRows actualModulus 6986 (.badd 6985 5764) := by core033_kernel_decide
theorem stats6986 : actualRows6986.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6986=5388 := by core033_kernel_decide
theorem rows6987 : actualRows6987=WordField.canonicalRows actualModulus 6987 (.rotr 5716 7) := by core033_kernel_decide
theorem stats6987 : actualRows6987.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6987=5124 := by core033_kernel_decide
theorem rows6988 : actualRows6988=WordField.canonicalRows actualModulus 6988 (.rotr 5716 18) := by core033_kernel_decide
theorem stats6988 : actualRows6988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6988=5124 := by core033_kernel_decide
theorem rows6989 : actualRows6989=WordField.canonicalRows actualModulus 6989 (.bxor 6987 6988) := by core033_kernel_decide
theorem stats6989 : actualRows6989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6989=7428 := by core033_kernel_decide
theorem rows6990 : actualRows6990=WordField.canonicalRows actualModulus 6990 (.shr 5716 3) := by core033_kernel_decide
theorem stats6990 : actualRows6990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6990=4908 := by core033_kernel_decide
theorem rows6991 : actualRows6991=WordField.canonicalRows actualModulus 6991 (.bxor 6989 6990) := by core033_kernel_decide
theorem stats6991 : actualRows6991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6991=7428 := by core033_kernel_decide
theorem rows6992 : actualRows6992=WordField.canonicalRows actualModulus 6992 (.badd 6986 6991) := by core033_kernel_decide
theorem stats6992 : actualRows6992.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6992=5388 := by core033_kernel_decide
theorem rows6993 : actualRows6993=WordField.canonicalRows actualModulus 6993 (.badd 6992 5710) := by core033_kernel_decide
theorem stats6993 : actualRows6993.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6993=5388 := by core033_kernel_decide
theorem rows6994 : actualRows6994=WordField.canonicalRows actualModulus 6994 (.rotr 6980 17) := by core033_kernel_decide
theorem stats6994 : actualRows6994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6994=5124 := by core033_kernel_decide
theorem rows6995 : actualRows6995=WordField.canonicalRows actualModulus 6995 (.rotr 6980 19) := by core033_kernel_decide
theorem stats6995 : actualRows6995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6995=5124 := by core033_kernel_decide
theorem rows6996 : actualRows6996=WordField.canonicalRows actualModulus 6996 (.bxor 6994 6995) := by core033_kernel_decide
theorem stats6996 : actualRows6996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6996=7428 := by core033_kernel_decide
theorem rows6997 : actualRows6997=WordField.canonicalRows actualModulus 6997 (.shr 6980 10) := by core033_kernel_decide
theorem stats6997 : actualRows6997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6997=4404 := by core033_kernel_decide
theorem rows6998 : actualRows6998=WordField.canonicalRows actualModulus 6998 (.bxor 6996 6997) := by core033_kernel_decide
theorem stats6998 : actualRows6998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6998=7428 := by core033_kernel_decide
theorem rows6999 : actualRows6999=WordField.canonicalRows actualModulus 6999 (.badd 6998 5770) := by core033_kernel_decide
theorem stats6999 : actualRows6999.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows6999=5388 := by core033_kernel_decide
theorem rows7000 : actualRows7000=WordField.canonicalRows actualModulus 7000 (.rotr 5722 7) := by core033_kernel_decide
theorem stats7000 : actualRows7000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7000=5124 := by core033_kernel_decide
theorem rows7001 : actualRows7001=WordField.canonicalRows actualModulus 7001 (.rotr 5722 18) := by core033_kernel_decide
theorem stats7001 : actualRows7001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7001=5124 := by core033_kernel_decide
theorem rows7002 : actualRows7002=WordField.canonicalRows actualModulus 7002 (.bxor 7000 7001) := by core033_kernel_decide
theorem stats7002 : actualRows7002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7002=7428 := by core033_kernel_decide
theorem rows7003 : actualRows7003=WordField.canonicalRows actualModulus 7003 (.shr 5722 3) := by core033_kernel_decide
theorem stats7003 : actualRows7003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7003=4908 := by core033_kernel_decide
theorem rows7004 : actualRows7004=WordField.canonicalRows actualModulus 7004 (.bxor 7002 7003) := by core033_kernel_decide
theorem stats7004 : actualRows7004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7004=7428 := by core033_kernel_decide
theorem rows7005 : actualRows7005=WordField.canonicalRows actualModulus 7005 (.badd 6999 7004) := by core033_kernel_decide
theorem stats7005 : actualRows7005.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7005=5388 := by core033_kernel_decide
theorem rows7006 : actualRows7006=WordField.canonicalRows actualModulus 7006 (.badd 7005 5716) := by core033_kernel_decide
theorem stats7006 : actualRows7006.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7006=5388 := by core033_kernel_decide
theorem rows7007 : actualRows7007=WordField.canonicalRows actualModulus 7007 (.rotr 6993 17) := by core033_kernel_decide
theorem stats7007 : actualRows7007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7007=5124 := by core033_kernel_decide
theorem rows7008 : actualRows7008=WordField.canonicalRows actualModulus 7008 (.rotr 6993 19) := by core033_kernel_decide
theorem stats7008 : actualRows7008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7008=5124 := by core033_kernel_decide
theorem rows7009 : actualRows7009=WordField.canonicalRows actualModulus 7009 (.bxor 7007 7008) := by core033_kernel_decide
theorem stats7009 : actualRows7009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7009=7428 := by core033_kernel_decide
theorem rows7010 : actualRows7010=WordField.canonicalRows actualModulus 7010 (.shr 6993 10) := by core033_kernel_decide
theorem stats7010 : actualRows7010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7010=4404 := by core033_kernel_decide
theorem rows7011 : actualRows7011=WordField.canonicalRows actualModulus 7011 (.bxor 7009 7010) := by core033_kernel_decide
theorem stats7011 : actualRows7011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7011=7428 := by core033_kernel_decide
theorem rows7012 : actualRows7012=WordField.canonicalRows actualModulus 7012 (.badd 7011 5776) := by core033_kernel_decide
theorem stats7012 : actualRows7012.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7012=5388 := by core033_kernel_decide
theorem rows7013 : actualRows7013=WordField.canonicalRows actualModulus 7013 (.rotr 5728 7) := by core033_kernel_decide
theorem stats7013 : actualRows7013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7013=5124 := by core033_kernel_decide
theorem rows7014 : actualRows7014=WordField.canonicalRows actualModulus 7014 (.rotr 5728 18) := by core033_kernel_decide
theorem stats7014 : actualRows7014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7014=5124 := by core033_kernel_decide
theorem rows7015 : actualRows7015=WordField.canonicalRows actualModulus 7015 (.bxor 7013 7014) := by core033_kernel_decide
theorem stats7015 : actualRows7015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7015=7428 := by core033_kernel_decide
theorem rows7016 : actualRows7016=WordField.canonicalRows actualModulus 7016 (.shr 5728 3) := by core033_kernel_decide
theorem stats7016 : actualRows7016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7016=4908 := by core033_kernel_decide
theorem rows7017 : actualRows7017=WordField.canonicalRows actualModulus 7017 (.bxor 7015 7016) := by core033_kernel_decide
theorem stats7017 : actualRows7017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7017=7428 := by core033_kernel_decide
theorem rows7018 : actualRows7018=WordField.canonicalRows actualModulus 7018 (.badd 7012 7017) := by core033_kernel_decide
theorem stats7018 : actualRows7018.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7018=5388 := by core033_kernel_decide
def partRows108 : List R1CS.Row := actualRows6955++actualRows6956++actualRows6957++actualRows6958++actualRows6959++actualRows6960++actualRows6961++actualRows6962++actualRows6963++actualRows6964++actualRows6965++actualRows6966++actualRows6967++actualRows6968++actualRows6969++actualRows6970++actualRows6971++actualRows6972++actualRows6973++actualRows6974++actualRows6975++actualRows6976++actualRows6977++actualRows6978++actualRows6979++actualRows6980++actualRows6981++actualRows6982++actualRows6983++actualRows6984++actualRows6985++actualRows6986++actualRows6987++actualRows6988++actualRows6989++actualRows6990++actualRows6991++actualRows6992++actualRows6993++actualRows6994++actualRows6995++actualRows6996++actualRows6997++actualRows6998++actualRows6999++actualRows7000++actualRows7001++actualRows7002++actualRows7003++actualRows7004++actualRows7005++actualRows7006++actualRows7007++actualRows7008++actualRows7009++actualRows7010++actualRows7011++actualRows7012++actualRows7013++actualRows7014++actualRows7015++actualRows7016++actualRows7017++actualRows7018
def partOps108 : List WordIR.Op := [.rotr 6941 17,.rotr 6941 19,.bxor 6955 6956,.shr 6941 10,.bxor 6957 6958,.badd 6959 5752,.rotr 5704 7,.rotr 5704 18,.bxor 6961 6962,.shr 5704 3,.bxor 6963 6964,.badd 6960 6965,.badd 6966 5698,.rotr 6954 17,.rotr 6954 19,.bxor 6968 6969,.shr 6954 10,.bxor 6970 6971,.badd 6972 5758,.rotr 5710 7,.rotr 5710 18,.bxor 6974 6975,.shr 5710 3,.bxor 6976 6977,.badd 6973 6978,.badd 6979 5704,.rotr 6967 17,.rotr 6967 19,.bxor 6981 6982,.shr 6967 10,.bxor 6983 6984,.badd 6985 5764,.rotr 5716 7,.rotr 5716 18,.bxor 6987 6988,.shr 5716 3,.bxor 6989 6990,.badd 6986 6991,.badd 6992 5710,.rotr 6980 17,.rotr 6980 19,.bxor 6994 6995,.shr 6980 10,.bxor 6996 6997,.badd 6998 5770,.rotr 5722 7,.rotr 5722 18,.bxor 7000 7001,.shr 5722 3,.bxor 7002 7003,.badd 6999 7004,.badd 7005 5716,.rotr 6993 17,.rotr 6993 19,.bxor 7007 7008,.shr 6993 10,.bxor 7009 7010,.badd 7011 5776,.rotr 5728 7,.rotr 5728 18,.bxor 7013 7014,.shr 5728 3,.bxor 7015 7016,.badd 7012 7017]
theorem partExact108 : partRows108=WordField.rows actualModulus 6955 partOps108 := by
  simp only [partRows108,partOps108,WordField.rows,rows6955,rows6956,rows6957,rows6958,rows6959,rows6960,rows6961,rows6962,rows6963,rows6964,rows6965,rows6966,rows6967,rows6968,rows6969,rows6970,rows6971,rows6972,rows6973,rows6974,rows6975,rows6976,rows6977,rows6978,rows6979,rows6980,rows6981,rows6982,rows6983,rows6984,rows6985,rows6986,rows6987,rows6988,rows6989,rows6990,rows6991,rows6992,rows6993,rows6994,rows6995,rows6996,rows6997,rows6998,rows6999,rows7000,rows7001,rows7002,rows7003,rows7004,rows7005,rows7006,rows7007,rows7008,rows7009,rows7010,rows7011,rows7012,rows7013,rows7014,rows7015,rows7016,rows7017,rows7018,List.append_assoc,List.append_nil]
theorem partLength108 : partOps108.length=64 := by decide
theorem partStats108 : partRows108.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows108=373032 := by
  simp only [partRows108,List.length_append,MatrixRowBlocks.rows_weight_append,stats6955.1,stats6955.2,stats6956.1,stats6956.2,stats6957.1,stats6957.2,stats6958.1,stats6958.2,stats6959.1,stats6959.2,stats6960.1,stats6960.2,stats6961.1,stats6961.2,stats6962.1,stats6962.2,stats6963.1,stats6963.2,stats6964.1,stats6964.2,stats6965.1,stats6965.2,stats6966.1,stats6966.2,stats6967.1,stats6967.2,stats6968.1,stats6968.2,stats6969.1,stats6969.2,stats6970.1,stats6970.2,stats6971.1,stats6971.2,stats6972.1,stats6972.2,stats6973.1,stats6973.2,stats6974.1,stats6974.2,stats6975.1,stats6975.2,stats6976.1,stats6976.2,stats6977.1,stats6977.2,stats6978.1,stats6978.2,stats6979.1,stats6979.2,stats6980.1,stats6980.2,stats6981.1,stats6981.2,stats6982.1,stats6982.2,stats6983.1,stats6983.2,stats6984.1,stats6984.2,stats6985.1,stats6985.2,stats6986.1,stats6986.2,stats6987.1,stats6987.2,stats6988.1,stats6988.2,stats6989.1,stats6989.2,stats6990.1,stats6990.2,stats6991.1,stats6991.2,stats6992.1,stats6992.2,stats6993.1,stats6993.2,stats6994.1,stats6994.2,stats6995.1,stats6995.2,stats6996.1,stats6996.2,stats6997.1,stats6997.2,stats6998.1,stats6998.2,stats6999.1,stats6999.2,stats7000.1,stats7000.2,stats7001.1,stats7001.2,stats7002.1,stats7002.2,stats7003.1,stats7003.2,stats7004.1,stats7004.2,stats7005.1,stats7005.2,stats7006.1,stats7006.2,stats7007.1,stats7007.2,stats7008.1,stats7008.2,stats7009.1,stats7009.2,stats7010.1,stats7010.2,stats7011.1,stats7011.2,stats7012.1,stats7012.2,stats7013.1,stats7013.2,stats7014.1,stats7014.2,stats7015.1,stats7015.2,stats7016.1,stats7016.2,stats7017.1,stats7017.2,stats7018.1,stats7018.2]
  decide
end PathRoundDispatchCheckedRows
