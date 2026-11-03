import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData124
import PairedPathRoundInstructionMatrixData125
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7968 : actualRows7968=WordField.canonicalRows actualModulus 7968 (.badd 7967 7760) := by core033_kernel_decide
theorem stats7968 : actualRows7968.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7968=5388 := by core033_kernel_decide
theorem rows7969 : actualRows7969=WordField.canonicalRows actualModulus 7969 (.rotr 7955 17) := by core033_kernel_decide
theorem stats7969 : actualRows7969.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7969=5124 := by core033_kernel_decide
theorem rows7970 : actualRows7970=WordField.canonicalRows actualModulus 7970 (.rotr 7955 19) := by core033_kernel_decide
theorem stats7970 : actualRows7970.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7970=5124 := by core033_kernel_decide
theorem rows7971 : actualRows7971=WordField.canonicalRows actualModulus 7971 (.bxor 7969 7970) := by core033_kernel_decide
theorem stats7971 : actualRows7971.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7971=7428 := by core033_kernel_decide
theorem rows7972 : actualRows7972=WordField.canonicalRows actualModulus 7972 (.shr 7955 10) := by core033_kernel_decide
theorem stats7972 : actualRows7972.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7972=4404 := by core033_kernel_decide
theorem rows7973 : actualRows7973=WordField.canonicalRows actualModulus 7973 (.bxor 7971 7972) := by core033_kernel_decide
theorem stats7973 : actualRows7973.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7973=7428 := by core033_kernel_decide
theorem rows7974 : actualRows7974=WordField.canonicalRows actualModulus 7974 (.badd 7973 7890) := by core033_kernel_decide
theorem stats7974 : actualRows7974.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7974=5388 := by core033_kernel_decide
theorem rows7975 : actualRows7975=WordField.canonicalRows actualModulus 7975 (.rotr 7786 7) := by core033_kernel_decide
theorem stats7975 : actualRows7975.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7975=5124 := by core033_kernel_decide
theorem rows7976 : actualRows7976=WordField.canonicalRows actualModulus 7976 (.rotr 7786 18) := by core033_kernel_decide
theorem stats7976 : actualRows7976.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7976=5124 := by core033_kernel_decide
theorem rows7977 : actualRows7977=WordField.canonicalRows actualModulus 7977 (.bxor 7975 7976) := by core033_kernel_decide
theorem stats7977 : actualRows7977.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7977=7428 := by core033_kernel_decide
theorem rows7978 : actualRows7978=WordField.canonicalRows actualModulus 7978 (.shr 7786 3) := by core033_kernel_decide
theorem stats7978 : actualRows7978.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7978=4908 := by core033_kernel_decide
theorem rows7979 : actualRows7979=WordField.canonicalRows actualModulus 7979 (.bxor 7977 7978) := by core033_kernel_decide
theorem stats7979 : actualRows7979.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7979=7428 := by core033_kernel_decide
theorem rows7980 : actualRows7980=WordField.canonicalRows actualModulus 7980 (.badd 7974 7979) := by core033_kernel_decide
theorem stats7980 : actualRows7980.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7980=5388 := by core033_kernel_decide
theorem rows7981 : actualRows7981=WordField.canonicalRows actualModulus 7981 (.badd 7980 7773) := by core033_kernel_decide
theorem stats7981 : actualRows7981.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7981=5388 := by core033_kernel_decide
theorem rows7982 : actualRows7982=WordField.canonicalRows actualModulus 7982 (.rotr 7968 17) := by core033_kernel_decide
theorem stats7982 : actualRows7982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7982=5124 := by core033_kernel_decide
theorem rows7983 : actualRows7983=WordField.canonicalRows actualModulus 7983 (.rotr 7968 19) := by core033_kernel_decide
theorem stats7983 : actualRows7983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7983=5124 := by core033_kernel_decide
theorem rows7984 : actualRows7984=WordField.canonicalRows actualModulus 7984 (.bxor 7982 7983) := by core033_kernel_decide
theorem stats7984 : actualRows7984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7984=7428 := by core033_kernel_decide
theorem rows7985 : actualRows7985=WordField.canonicalRows actualModulus 7985 (.shr 7968 10) := by core033_kernel_decide
theorem stats7985 : actualRows7985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7985=4404 := by core033_kernel_decide
theorem rows7986 : actualRows7986=WordField.canonicalRows actualModulus 7986 (.bxor 7984 7985) := by core033_kernel_decide
theorem stats7986 : actualRows7986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7986=7428 := by core033_kernel_decide
theorem rows7987 : actualRows7987=WordField.canonicalRows actualModulus 7987 (.badd 7986 7903) := by core033_kernel_decide
theorem stats7987 : actualRows7987.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7987=5388 := by core033_kernel_decide
theorem rows7988 : actualRows7988=WordField.canonicalRows actualModulus 7988 (.rotr 7799 7) := by core033_kernel_decide
theorem stats7988 : actualRows7988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7988=5124 := by core033_kernel_decide
theorem rows7989 : actualRows7989=WordField.canonicalRows actualModulus 7989 (.rotr 7799 18) := by core033_kernel_decide
theorem stats7989 : actualRows7989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7989=5124 := by core033_kernel_decide
theorem rows7990 : actualRows7990=WordField.canonicalRows actualModulus 7990 (.bxor 7988 7989) := by core033_kernel_decide
theorem stats7990 : actualRows7990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7990=7428 := by core033_kernel_decide
theorem rows7991 : actualRows7991=WordField.canonicalRows actualModulus 7991 (.shr 7799 3) := by core033_kernel_decide
theorem stats7991 : actualRows7991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7991=4908 := by core033_kernel_decide
theorem rows7992 : actualRows7992=WordField.canonicalRows actualModulus 7992 (.bxor 7990 7991) := by core033_kernel_decide
theorem stats7992 : actualRows7992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7992=7428 := by core033_kernel_decide
theorem rows7993 : actualRows7993=WordField.canonicalRows actualModulus 7993 (.badd 7987 7992) := by core033_kernel_decide
theorem stats7993 : actualRows7993.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7993=5388 := by core033_kernel_decide
theorem rows7994 : actualRows7994=WordField.canonicalRows actualModulus 7994 (.badd 7993 7786) := by core033_kernel_decide
theorem stats7994 : actualRows7994.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7994=5388 := by core033_kernel_decide
theorem rows7995 : actualRows7995=WordField.canonicalRows actualModulus 7995 (.rotr 7981 17) := by core033_kernel_decide
theorem stats7995 : actualRows7995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7995=5124 := by core033_kernel_decide
theorem rows7996 : actualRows7996=WordField.canonicalRows actualModulus 7996 (.rotr 7981 19) := by core033_kernel_decide
theorem stats7996 : actualRows7996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7996=5124 := by core033_kernel_decide
theorem rows7997 : actualRows7997=WordField.canonicalRows actualModulus 7997 (.bxor 7995 7996) := by core033_kernel_decide
theorem stats7997 : actualRows7997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7997=7428 := by core033_kernel_decide
theorem rows7998 : actualRows7998=WordField.canonicalRows actualModulus 7998 (.shr 7981 10) := by core033_kernel_decide
theorem stats7998 : actualRows7998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7998=4404 := by core033_kernel_decide
theorem rows7999 : actualRows7999=WordField.canonicalRows actualModulus 7999 (.bxor 7997 7998) := by core033_kernel_decide
theorem stats7999 : actualRows7999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7999=7428 := by core033_kernel_decide
theorem rows8000 : actualRows8000=WordField.canonicalRows actualModulus 8000 (.badd 7999 7916) := by core033_kernel_decide
theorem stats8000 : actualRows8000.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8000=5388 := by core033_kernel_decide
theorem rows8001 : actualRows8001=WordField.canonicalRows actualModulus 8001 (.rotr 7812 7) := by core033_kernel_decide
theorem stats8001 : actualRows8001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8001=5124 := by core033_kernel_decide
theorem rows8002 : actualRows8002=WordField.canonicalRows actualModulus 8002 (.rotr 7812 18) := by core033_kernel_decide
theorem stats8002 : actualRows8002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8002=5124 := by core033_kernel_decide
theorem rows8003 : actualRows8003=WordField.canonicalRows actualModulus 8003 (.bxor 8001 8002) := by core033_kernel_decide
theorem stats8003 : actualRows8003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8003=7428 := by core033_kernel_decide
theorem rows8004 : actualRows8004=WordField.canonicalRows actualModulus 8004 (.shr 7812 3) := by core033_kernel_decide
theorem stats8004 : actualRows8004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8004=4908 := by core033_kernel_decide
theorem rows8005 : actualRows8005=WordField.canonicalRows actualModulus 8005 (.bxor 8003 8004) := by core033_kernel_decide
theorem stats8005 : actualRows8005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8005=7428 := by core033_kernel_decide
theorem rows8006 : actualRows8006=WordField.canonicalRows actualModulus 8006 (.badd 8000 8005) := by core033_kernel_decide
theorem stats8006 : actualRows8006.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8006=5388 := by core033_kernel_decide
theorem rows8007 : actualRows8007=WordField.canonicalRows actualModulus 8007 (.badd 8006 7799) := by core033_kernel_decide
theorem stats8007 : actualRows8007.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8007=5388 := by core033_kernel_decide
theorem rows8008 : actualRows8008=WordField.canonicalRows actualModulus 8008 (.rotr 7994 17) := by core033_kernel_decide
theorem stats8008 : actualRows8008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8008=5124 := by core033_kernel_decide
theorem rows8009 : actualRows8009=WordField.canonicalRows actualModulus 8009 (.rotr 7994 19) := by core033_kernel_decide
theorem stats8009 : actualRows8009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8009=5124 := by core033_kernel_decide
theorem rows8010 : actualRows8010=WordField.canonicalRows actualModulus 8010 (.bxor 8008 8009) := by core033_kernel_decide
theorem stats8010 : actualRows8010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8010=7428 := by core033_kernel_decide
theorem rows8011 : actualRows8011=WordField.canonicalRows actualModulus 8011 (.shr 7994 10) := by core033_kernel_decide
theorem stats8011 : actualRows8011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8011=4404 := by core033_kernel_decide
theorem rows8012 : actualRows8012=WordField.canonicalRows actualModulus 8012 (.bxor 8010 8011) := by core033_kernel_decide
theorem stats8012 : actualRows8012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8012=7428 := by core033_kernel_decide
theorem rows8013 : actualRows8013=WordField.canonicalRows actualModulus 8013 (.badd 8012 7929) := by core033_kernel_decide
theorem stats8013 : actualRows8013.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8013=5388 := by core033_kernel_decide
theorem rows8014 : actualRows8014=WordField.canonicalRows actualModulus 8014 (.rotr 7825 7) := by core033_kernel_decide
theorem stats8014 : actualRows8014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8014=5124 := by core033_kernel_decide
theorem rows8015 : actualRows8015=WordField.canonicalRows actualModulus 8015 (.rotr 7825 18) := by core033_kernel_decide
theorem stats8015 : actualRows8015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8015=5124 := by core033_kernel_decide
theorem rows8016 : actualRows8016=WordField.canonicalRows actualModulus 8016 (.bxor 8014 8015) := by core033_kernel_decide
theorem stats8016 : actualRows8016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8016=7428 := by core033_kernel_decide
theorem rows8017 : actualRows8017=WordField.canonicalRows actualModulus 8017 (.shr 7825 3) := by core033_kernel_decide
theorem stats8017 : actualRows8017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8017=4908 := by core033_kernel_decide
theorem rows8018 : actualRows8018=WordField.canonicalRows actualModulus 8018 (.bxor 8016 8017) := by core033_kernel_decide
theorem stats8018 : actualRows8018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8018=7428 := by core033_kernel_decide
theorem rows8019 : actualRows8019=WordField.canonicalRows actualModulus 8019 (.badd 8013 8018) := by core033_kernel_decide
theorem stats8019 : actualRows8019.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8019=5388 := by core033_kernel_decide
theorem rows8020 : actualRows8020=WordField.canonicalRows actualModulus 8020 (.badd 8019 7812) := by core033_kernel_decide
theorem stats8020 : actualRows8020.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8020=5388 := by core033_kernel_decide
theorem rows8021 : actualRows8021=WordField.canonicalRows actualModulus 8021 (.rotr 8007 17) := by core033_kernel_decide
theorem stats8021 : actualRows8021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8021=5124 := by core033_kernel_decide
theorem rows8022 : actualRows8022=WordField.canonicalRows actualModulus 8022 (.rotr 8007 19) := by core033_kernel_decide
theorem stats8022 : actualRows8022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8022=5124 := by core033_kernel_decide
theorem rows8023 : actualRows8023=WordField.canonicalRows actualModulus 8023 (.bxor 8021 8022) := by core033_kernel_decide
theorem stats8023 : actualRows8023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8023=7428 := by core033_kernel_decide
theorem rows8024 : actualRows8024=WordField.canonicalRows actualModulus 8024 (.shr 8007 10) := by core033_kernel_decide
theorem stats8024 : actualRows8024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8024=4404 := by core033_kernel_decide
theorem rows8025 : actualRows8025=WordField.canonicalRows actualModulus 8025 (.bxor 8023 8024) := by core033_kernel_decide
theorem stats8025 : actualRows8025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8025=7428 := by core033_kernel_decide
theorem rows8026 : actualRows8026=WordField.canonicalRows actualModulus 8026 (.badd 8025 7942) := by core033_kernel_decide
theorem stats8026 : actualRows8026.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8026=5388 := by core033_kernel_decide
theorem rows8027 : actualRows8027=WordField.canonicalRows actualModulus 8027 (.rotr 7838 7) := by core033_kernel_decide
theorem stats8027 : actualRows8027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8027=5124 := by core033_kernel_decide
theorem rows8028 : actualRows8028=WordField.canonicalRows actualModulus 8028 (.rotr 7838 18) := by core033_kernel_decide
theorem stats8028 : actualRows8028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8028=5124 := by core033_kernel_decide
theorem rows8029 : actualRows8029=WordField.canonicalRows actualModulus 8029 (.bxor 8027 8028) := by core033_kernel_decide
theorem stats8029 : actualRows8029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8029=7428 := by core033_kernel_decide
theorem rows8030 : actualRows8030=WordField.canonicalRows actualModulus 8030 (.shr 7838 3) := by core033_kernel_decide
theorem stats8030 : actualRows8030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8030=4908 := by core033_kernel_decide
theorem rows8031 : actualRows8031=WordField.canonicalRows actualModulus 8031 (.bxor 8029 8030) := by core033_kernel_decide
theorem stats8031 : actualRows8031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8031=7428 := by core033_kernel_decide
def partRows123 : List R1CS.Row := actualRows7968++actualRows7969++actualRows7970++actualRows7971++actualRows7972++actualRows7973++actualRows7974++actualRows7975++actualRows7976++actualRows7977++actualRows7978++actualRows7979++actualRows7980++actualRows7981++actualRows7982++actualRows7983++actualRows7984++actualRows7985++actualRows7986++actualRows7987++actualRows7988++actualRows7989++actualRows7990++actualRows7991++actualRows7992++actualRows7993++actualRows7994++actualRows7995++actualRows7996++actualRows7997++actualRows7998++actualRows7999++actualRows8000++actualRows8001++actualRows8002++actualRows8003++actualRows8004++actualRows8005++actualRows8006++actualRows8007++actualRows8008++actualRows8009++actualRows8010++actualRows8011++actualRows8012++actualRows8013++actualRows8014++actualRows8015++actualRows8016++actualRows8017++actualRows8018++actualRows8019++actualRows8020++actualRows8021++actualRows8022++actualRows8023++actualRows8024++actualRows8025++actualRows8026++actualRows8027++actualRows8028++actualRows8029++actualRows8030++actualRows8031
def partOps123 : List WordIR.Op := [.badd 7967 7760,.rotr 7955 17,.rotr 7955 19,.bxor 7969 7970,.shr 7955 10,.bxor 7971 7972,.badd 7973 7890,.rotr 7786 7,.rotr 7786 18,.bxor 7975 7976,.shr 7786 3,.bxor 7977 7978,.badd 7974 7979,.badd 7980 7773,.rotr 7968 17,.rotr 7968 19,.bxor 7982 7983,.shr 7968 10,.bxor 7984 7985,.badd 7986 7903,.rotr 7799 7,.rotr 7799 18,.bxor 7988 7989,.shr 7799 3,.bxor 7990 7991,.badd 7987 7992,.badd 7993 7786,.rotr 7981 17,.rotr 7981 19,.bxor 7995 7996,.shr 7981 10,.bxor 7997 7998,.badd 7999 7916,.rotr 7812 7,.rotr 7812 18,.bxor 8001 8002,.shr 7812 3,.bxor 8003 8004,.badd 8000 8005,.badd 8006 7799,.rotr 7994 17,.rotr 7994 19,.bxor 8008 8009,.shr 7994 10,.bxor 8010 8011,.badd 8012 7929,.rotr 7825 7,.rotr 7825 18,.bxor 8014 8015,.shr 7825 3,.bxor 8016 8017,.badd 8013 8018,.badd 8019 7812,.rotr 8007 17,.rotr 8007 19,.bxor 8021 8022,.shr 8007 10,.bxor 8023 8024,.badd 8025 7942,.rotr 7838 7,.rotr 7838 18,.bxor 8027 8028,.shr 7838 3,.bxor 8029 8030]
theorem partExact123 : partRows123=WordField.rows actualModulus 7968 partOps123 := by
  simp only [partRows123,partOps123,WordField.rows,rows7968,rows7969,rows7970,rows7971,rows7972,rows7973,rows7974,rows7975,rows7976,rows7977,rows7978,rows7979,rows7980,rows7981,rows7982,rows7983,rows7984,rows7985,rows7986,rows7987,rows7988,rows7989,rows7990,rows7991,rows7992,rows7993,rows7994,rows7995,rows7996,rows7997,rows7998,rows7999,rows8000,rows8001,rows8002,rows8003,rows8004,rows8005,rows8006,rows8007,rows8008,rows8009,rows8010,rows8011,rows8012,rows8013,rows8014,rows8015,rows8016,rows8017,rows8018,rows8019,rows8020,rows8021,rows8022,rows8023,rows8024,rows8025,rows8026,rows8027,rows8028,rows8029,rows8030,rows8031,List.append_assoc,List.append_nil]
theorem partLength123 : partOps123.length=64 := by decide
theorem partStats123 : partRows123.length=2190 ∧ MatrixRowBlocks.rowsWeight partRows123=373032 := by
  simp only [partRows123,List.length_append,MatrixRowBlocks.rows_weight_append,stats7968.1,stats7968.2,stats7969.1,stats7969.2,stats7970.1,stats7970.2,stats7971.1,stats7971.2,stats7972.1,stats7972.2,stats7973.1,stats7973.2,stats7974.1,stats7974.2,stats7975.1,stats7975.2,stats7976.1,stats7976.2,stats7977.1,stats7977.2,stats7978.1,stats7978.2,stats7979.1,stats7979.2,stats7980.1,stats7980.2,stats7981.1,stats7981.2,stats7982.1,stats7982.2,stats7983.1,stats7983.2,stats7984.1,stats7984.2,stats7985.1,stats7985.2,stats7986.1,stats7986.2,stats7987.1,stats7987.2,stats7988.1,stats7988.2,stats7989.1,stats7989.2,stats7990.1,stats7990.2,stats7991.1,stats7991.2,stats7992.1,stats7992.2,stats7993.1,stats7993.2,stats7994.1,stats7994.2,stats7995.1,stats7995.2,stats7996.1,stats7996.2,stats7997.1,stats7997.2,stats7998.1,stats7998.2,stats7999.1,stats7999.2,stats8000.1,stats8000.2,stats8001.1,stats8001.2,stats8002.1,stats8002.2,stats8003.1,stats8003.2,stats8004.1,stats8004.2,stats8005.1,stats8005.2,stats8006.1,stats8006.2,stats8007.1,stats8007.2,stats8008.1,stats8008.2,stats8009.1,stats8009.2,stats8010.1,stats8010.2,stats8011.1,stats8011.2,stats8012.1,stats8012.2,stats8013.1,stats8013.2,stats8014.1,stats8014.2,stats8015.1,stats8015.2,stats8016.1,stats8016.2,stats8017.1,stats8017.2,stats8018.1,stats8018.2,stats8019.1,stats8019.2,stats8020.1,stats8020.2,stats8021.1,stats8021.2,stats8022.1,stats8022.2,stats8023.1,stats8023.2,stats8024.1,stats8024.2,stats8025.1,stats8025.2,stats8026.1,stats8026.2,stats8027.1,stats8027.2,stats8028.1,stats8028.2,stats8029.1,stats8029.2,stats8030.1,stats8030.2,stats8031.1,stats8031.2]
  decide
end PairedPathRoundCheckedRows
