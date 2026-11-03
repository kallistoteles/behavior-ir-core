import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData124
import FrameHashControllerInstructionMatrixData125
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7979 : actualRows7979=WordField.canonicalRows actualModulus 7979 (.badd 7973 7978) := by core033_kernel_decide
theorem stats7979 : actualRows7979.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7979=5388 := by core033_kernel_decide
theorem rows7980 : actualRows7980=WordField.canonicalRows actualModulus 7980 (.badd 7968 7979) := by core033_kernel_decide
theorem stats7980 : actualRows7980.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7980=5388 := by core033_kernel_decide
theorem rows7981 : actualRows7981=WordField.canonicalRows actualModulus 7981 (.badd 7872 7968) := by core033_kernel_decide
theorem stats7981 : actualRows7981.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7981=5388 := by core033_kernel_decide
theorem rows7982 : actualRows7982=WordField.canonicalRows actualModulus 7982 (.rotr 7981 6) := by core033_kernel_decide
theorem stats7982 : actualRows7982.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7982=5124 := by core033_kernel_decide
theorem rows7983 : actualRows7983=WordField.canonicalRows actualModulus 7983 (.rotr 7981 11) := by core033_kernel_decide
theorem stats7983 : actualRows7983.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7983=5124 := by core033_kernel_decide
theorem rows7984 : actualRows7984=WordField.canonicalRows actualModulus 7984 (.bxor 7982 7983) := by core033_kernel_decide
theorem stats7984 : actualRows7984.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7984=7428 := by core033_kernel_decide
theorem rows7985 : actualRows7985=WordField.canonicalRows actualModulus 7985 (.rotr 7981 25) := by core033_kernel_decide
theorem stats7985 : actualRows7985.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7985=5124 := by core033_kernel_decide
theorem rows7986 : actualRows7986=WordField.canonicalRows actualModulus 7986 (.bxor 7984 7985) := by core033_kernel_decide
theorem stats7986 : actualRows7986.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7986=7428 := by core033_kernel_decide
theorem rows7987 : actualRows7987=WordField.canonicalRows actualModulus 7987 (.badd 7900 7986) := by core033_kernel_decide
theorem stats7987 : actualRows7987.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7987=5388 := by core033_kernel_decide
theorem rows7988 : actualRows7988=WordField.canonicalRows actualModulus 7988 (.band 7981 7954) := by core033_kernel_decide
theorem stats7988 : actualRows7988.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7988=5124 := by core033_kernel_decide
theorem rows7989 : actualRows7989=WordField.canonicalRows actualModulus 7989 (.bnot 7981) := by core033_kernel_decide
theorem stats7989 : actualRows7989.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7989=6276 := by core033_kernel_decide
theorem rows7990 : actualRows7990=WordField.canonicalRows actualModulus 7990 (.band 7989 7927) := by core033_kernel_decide
theorem stats7990 : actualRows7990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7990=5124 := by core033_kernel_decide
theorem rows7991 : actualRows7991=WordField.canonicalRows actualModulus 7991 (.bxor 7988 7990) := by core033_kernel_decide
theorem stats7991 : actualRows7991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7991=7428 := by core033_kernel_decide
theorem rows7992 : actualRows7992=WordField.canonicalRows actualModulus 7992 (.badd 7987 7991) := by core033_kernel_decide
theorem stats7992 : actualRows7992.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7992=5388 := by core033_kernel_decide
theorem rows7993 : actualRows7993=WordField.canonicalRows actualModulus 7993 (.literal (BitVec.ofNat 32 1396182291)) := by core033_kernel_decide
theorem stats7993 : actualRows7993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7993=3756 := by core033_kernel_decide
theorem rows7994 : actualRows7994=WordField.canonicalRows actualModulus 7994 (.badd 7992 7993) := by core033_kernel_decide
theorem stats7994 : actualRows7994.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7994=5388 := by core033_kernel_decide
theorem rows7995 : actualRows7995=WordField.canonicalRows actualModulus 7995 (.badd 7994 6672) := by core033_kernel_decide
theorem stats7995 : actualRows7995.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7995=5388 := by core033_kernel_decide
theorem rows7996 : actualRows7996=WordField.canonicalRows actualModulus 7996 (.rotr 7980 2) := by core033_kernel_decide
theorem stats7996 : actualRows7996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7996=5124 := by core033_kernel_decide
theorem rows7997 : actualRows7997=WordField.canonicalRows actualModulus 7997 (.rotr 7980 13) := by core033_kernel_decide
theorem stats7997 : actualRows7997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7997=5124 := by core033_kernel_decide
theorem rows7998 : actualRows7998=WordField.canonicalRows actualModulus 7998 (.bxor 7996 7997) := by core033_kernel_decide
theorem stats7998 : actualRows7998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7998=7428 := by core033_kernel_decide
theorem rows7999 : actualRows7999=WordField.canonicalRows actualModulus 7999 (.rotr 7980 22) := by core033_kernel_decide
theorem stats7999 : actualRows7999.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7999=5124 := by core033_kernel_decide
theorem rows8000 : actualRows8000=WordField.canonicalRows actualModulus 8000 (.bxor 7998 7999) := by core033_kernel_decide
theorem stats8000 : actualRows8000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8000=7428 := by core033_kernel_decide
theorem rows8001 : actualRows8001=WordField.canonicalRows actualModulus 8001 (.band 7980 7953) := by core033_kernel_decide
theorem stats8001 : actualRows8001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8001=5124 := by core033_kernel_decide
theorem rows8002 : actualRows8002=WordField.canonicalRows actualModulus 8002 (.band 7980 7926) := by core033_kernel_decide
theorem stats8002 : actualRows8002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8002=5124 := by core033_kernel_decide
theorem rows8003 : actualRows8003=WordField.canonicalRows actualModulus 8003 (.bxor 8001 8002) := by core033_kernel_decide
theorem stats8003 : actualRows8003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8003=7428 := by core033_kernel_decide
theorem rows8004 : actualRows8004=WordField.canonicalRows actualModulus 8004 (.band 7953 7926) := by core033_kernel_decide
theorem stats8004 : actualRows8004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8004=5124 := by core033_kernel_decide
theorem rows8005 : actualRows8005=WordField.canonicalRows actualModulus 8005 (.bxor 8003 8004) := by core033_kernel_decide
theorem stats8005 : actualRows8005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8005=7428 := by core033_kernel_decide
theorem rows8006 : actualRows8006=WordField.canonicalRows actualModulus 8006 (.badd 8000 8005) := by core033_kernel_decide
theorem stats8006 : actualRows8006.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8006=5388 := by core033_kernel_decide
theorem rows8007 : actualRows8007=WordField.canonicalRows actualModulus 8007 (.badd 7995 8006) := by core033_kernel_decide
theorem stats8007 : actualRows8007.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8007=5388 := by core033_kernel_decide
theorem rows8008 : actualRows8008=WordField.canonicalRows actualModulus 8008 (.badd 7899 7995) := by core033_kernel_decide
theorem stats8008 : actualRows8008.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8008=5388 := by core033_kernel_decide
theorem rows8009 : actualRows8009=WordField.canonicalRows actualModulus 8009 (.rotr 8008 6) := by core033_kernel_decide
theorem stats8009 : actualRows8009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8009=5124 := by core033_kernel_decide
theorem rows8010 : actualRows8010=WordField.canonicalRows actualModulus 8010 (.rotr 8008 11) := by core033_kernel_decide
theorem stats8010 : actualRows8010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8010=5124 := by core033_kernel_decide
theorem rows8011 : actualRows8011=WordField.canonicalRows actualModulus 8011 (.bxor 8009 8010) := by core033_kernel_decide
theorem stats8011 : actualRows8011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8011=7428 := by core033_kernel_decide
theorem rows8012 : actualRows8012=WordField.canonicalRows actualModulus 8012 (.rotr 8008 25) := by core033_kernel_decide
theorem stats8012 : actualRows8012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8012=5124 := by core033_kernel_decide
theorem rows8013 : actualRows8013=WordField.canonicalRows actualModulus 8013 (.bxor 8011 8012) := by core033_kernel_decide
theorem stats8013 : actualRows8013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8013=7428 := by core033_kernel_decide
theorem rows8014 : actualRows8014=WordField.canonicalRows actualModulus 8014 (.badd 7927 8013) := by core033_kernel_decide
theorem stats8014 : actualRows8014.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8014=5388 := by core033_kernel_decide
theorem rows8015 : actualRows8015=WordField.canonicalRows actualModulus 8015 (.band 8008 7981) := by core033_kernel_decide
theorem stats8015 : actualRows8015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8015=5124 := by core033_kernel_decide
theorem rows8016 : actualRows8016=WordField.canonicalRows actualModulus 8016 (.bnot 8008) := by core033_kernel_decide
theorem stats8016 : actualRows8016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8016=6276 := by core033_kernel_decide
theorem rows8017 : actualRows8017=WordField.canonicalRows actualModulus 8017 (.band 8016 7954) := by core033_kernel_decide
theorem stats8017 : actualRows8017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8017=5124 := by core033_kernel_decide
theorem rows8018 : actualRows8018=WordField.canonicalRows actualModulus 8018 (.bxor 8015 8017) := by core033_kernel_decide
theorem stats8018 : actualRows8018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8018=7428 := by core033_kernel_decide
theorem rows8019 : actualRows8019=WordField.canonicalRows actualModulus 8019 (.badd 8014 8018) := by core033_kernel_decide
theorem stats8019 : actualRows8019.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8019=5388 := by core033_kernel_decide
theorem rows8020 : actualRows8020=WordField.canonicalRows actualModulus 8020 (.literal (BitVec.ofNat 32 1695183700)) := by core033_kernel_decide
theorem stats8020 : actualRows8020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8020=3828 := by core033_kernel_decide
theorem rows8021 : actualRows8021=WordField.canonicalRows actualModulus 8021 (.badd 8019 8020) := by core033_kernel_decide
theorem stats8021 : actualRows8021.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8021=5388 := by core033_kernel_decide
theorem rows8022 : actualRows8022=WordField.canonicalRows actualModulus 8022 (.badd 8021 6685) := by core033_kernel_decide
theorem stats8022 : actualRows8022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8022=5388 := by core033_kernel_decide
theorem rows8023 : actualRows8023=WordField.canonicalRows actualModulus 8023 (.rotr 8007 2) := by core033_kernel_decide
theorem stats8023 : actualRows8023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8023=5124 := by core033_kernel_decide
theorem rows8024 : actualRows8024=WordField.canonicalRows actualModulus 8024 (.rotr 8007 13) := by core033_kernel_decide
theorem stats8024 : actualRows8024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8024=5124 := by core033_kernel_decide
theorem rows8025 : actualRows8025=WordField.canonicalRows actualModulus 8025 (.bxor 8023 8024) := by core033_kernel_decide
theorem stats8025 : actualRows8025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8025=7428 := by core033_kernel_decide
theorem rows8026 : actualRows8026=WordField.canonicalRows actualModulus 8026 (.rotr 8007 22) := by core033_kernel_decide
theorem stats8026 : actualRows8026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8026=5124 := by core033_kernel_decide
theorem rows8027 : actualRows8027=WordField.canonicalRows actualModulus 8027 (.bxor 8025 8026) := by core033_kernel_decide
theorem stats8027 : actualRows8027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8027=7428 := by core033_kernel_decide
theorem rows8028 : actualRows8028=WordField.canonicalRows actualModulus 8028 (.band 8007 7980) := by core033_kernel_decide
theorem stats8028 : actualRows8028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8028=5124 := by core033_kernel_decide
theorem rows8029 : actualRows8029=WordField.canonicalRows actualModulus 8029 (.band 8007 7953) := by core033_kernel_decide
theorem stats8029 : actualRows8029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8029=5124 := by core033_kernel_decide
theorem rows8030 : actualRows8030=WordField.canonicalRows actualModulus 8030 (.bxor 8028 8029) := by core033_kernel_decide
theorem stats8030 : actualRows8030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8030=7428 := by core033_kernel_decide
theorem rows8031 : actualRows8031=WordField.canonicalRows actualModulus 8031 (.band 7980 7953) := by core033_kernel_decide
theorem stats8031 : actualRows8031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8031=5124 := by core033_kernel_decide
theorem rows8032 : actualRows8032=WordField.canonicalRows actualModulus 8032 (.bxor 8030 8031) := by core033_kernel_decide
theorem stats8032 : actualRows8032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8032=7428 := by core033_kernel_decide
theorem rows8033 : actualRows8033=WordField.canonicalRows actualModulus 8033 (.badd 8027 8032) := by core033_kernel_decide
theorem stats8033 : actualRows8033.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8033=5388 := by core033_kernel_decide
theorem rows8034 : actualRows8034=WordField.canonicalRows actualModulus 8034 (.badd 8022 8033) := by core033_kernel_decide
theorem stats8034 : actualRows8034.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8034=5388 := by core033_kernel_decide
theorem rows8035 : actualRows8035=WordField.canonicalRows actualModulus 8035 (.badd 7926 8022) := by core033_kernel_decide
theorem stats8035 : actualRows8035.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8035=5388 := by core033_kernel_decide
theorem rows8036 : actualRows8036=WordField.canonicalRows actualModulus 8036 (.rotr 8035 6) := by core033_kernel_decide
theorem stats8036 : actualRows8036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8036=5124 := by core033_kernel_decide
theorem rows8037 : actualRows8037=WordField.canonicalRows actualModulus 8037 (.rotr 8035 11) := by core033_kernel_decide
theorem stats8037 : actualRows8037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8037=5124 := by core033_kernel_decide
theorem rows8038 : actualRows8038=WordField.canonicalRows actualModulus 8038 (.bxor 8036 8037) := by core033_kernel_decide
theorem stats8038 : actualRows8038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8038=7428 := by core033_kernel_decide
theorem rows8039 : actualRows8039=WordField.canonicalRows actualModulus 8039 (.rotr 8035 25) := by core033_kernel_decide
theorem stats8039 : actualRows8039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8039=5124 := by core033_kernel_decide
theorem rows8040 : actualRows8040=WordField.canonicalRows actualModulus 8040 (.bxor 8038 8039) := by core033_kernel_decide
theorem stats8040 : actualRows8040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8040=7428 := by core033_kernel_decide
theorem rows8041 : actualRows8041=WordField.canonicalRows actualModulus 8041 (.badd 7954 8040) := by core033_kernel_decide
theorem stats8041 : actualRows8041.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8041=5388 := by core033_kernel_decide
theorem rows8042 : actualRows8042=WordField.canonicalRows actualModulus 8042 (.band 8035 8008) := by core033_kernel_decide
theorem stats8042 : actualRows8042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8042=5124 := by core033_kernel_decide
def partRows124 : List R1CS.Row := actualRows7979++actualRows7980++actualRows7981++actualRows7982++actualRows7983++actualRows7984++actualRows7985++actualRows7986++actualRows7987++actualRows7988++actualRows7989++actualRows7990++actualRows7991++actualRows7992++actualRows7993++actualRows7994++actualRows7995++actualRows7996++actualRows7997++actualRows7998++actualRows7999++actualRows8000++actualRows8001++actualRows8002++actualRows8003++actualRows8004++actualRows8005++actualRows8006++actualRows8007++actualRows8008++actualRows8009++actualRows8010++actualRows8011++actualRows8012++actualRows8013++actualRows8014++actualRows8015++actualRows8016++actualRows8017++actualRows8018++actualRows8019++actualRows8020++actualRows8021++actualRows8022++actualRows8023++actualRows8024++actualRows8025++actualRows8026++actualRows8027++actualRows8028++actualRows8029++actualRows8030++actualRows8031++actualRows8032++actualRows8033++actualRows8034++actualRows8035++actualRows8036++actualRows8037++actualRows8038++actualRows8039++actualRows8040++actualRows8041++actualRows8042
def partOps124 : List WordIR.Op := [.badd 7973 7978,.badd 7968 7979,.badd 7872 7968,.rotr 7981 6,.rotr 7981 11,.bxor 7982 7983,.rotr 7981 25,.bxor 7984 7985,.badd 7900 7986,.band 7981 7954,.bnot 7981,.band 7989 7927,.bxor 7988 7990,.badd 7987 7991,.literal (BitVec.ofNat 32 1396182291),.badd 7992 7993,.badd 7994 6672,.rotr 7980 2,.rotr 7980 13,.bxor 7996 7997,.rotr 7980 22,.bxor 7998 7999,.band 7980 7953,.band 7980 7926,.bxor 8001 8002,.band 7953 7926,.bxor 8003 8004,.badd 8000 8005,.badd 7995 8006,.badd 7899 7995,.rotr 8008 6,.rotr 8008 11,.bxor 8009 8010,.rotr 8008 25,.bxor 8011 8012,.badd 7927 8013,.band 8008 7981,.bnot 8008,.band 8016 7954,.bxor 8015 8017,.badd 8014 8018,.literal (BitVec.ofNat 32 1695183700),.badd 8019 8020,.badd 8021 6685,.rotr 8007 2,.rotr 8007 13,.bxor 8023 8024,.rotr 8007 22,.bxor 8025 8026,.band 8007 7980,.band 8007 7953,.bxor 8028 8029,.band 7980 7953,.bxor 8030 8031,.badd 8027 8032,.badd 8022 8033,.badd 7926 8022,.rotr 8035 6,.rotr 8035 11,.bxor 8036 8037,.rotr 8035 25,.bxor 8038 8039,.badd 7954 8040,.band 8035 8008]
theorem partExact124 : partRows124=WordField.rows actualModulus 7979 partOps124 := by
  simp only [partRows124,partOps124,WordField.rows,rows7979,rows7980,rows7981,rows7982,rows7983,rows7984,rows7985,rows7986,rows7987,rows7988,rows7989,rows7990,rows7991,rows7992,rows7993,rows7994,rows7995,rows7996,rows7997,rows7998,rows7999,rows8000,rows8001,rows8002,rows8003,rows8004,rows8005,rows8006,rows8007,rows8008,rows8009,rows8010,rows8011,rows8012,rows8013,rows8014,rows8015,rows8016,rows8017,rows8018,rows8019,rows8020,rows8021,rows8022,rows8023,rows8024,rows8025,rows8026,rows8027,rows8028,rows8029,rows8030,rows8031,rows8032,rows8033,rows8034,rows8035,rows8036,rows8037,rows8038,rows8039,rows8040,rows8041,rows8042,List.append_assoc,List.append_nil]
theorem partLength124 : partOps124.length=64 := by decide
theorem partStats124 : partRows124.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows124=369192 := by
  simp only [partRows124,List.length_append,MatrixRowBlocks.rows_weight_append,stats7979.1,stats7979.2,stats7980.1,stats7980.2,stats7981.1,stats7981.2,stats7982.1,stats7982.2,stats7983.1,stats7983.2,stats7984.1,stats7984.2,stats7985.1,stats7985.2,stats7986.1,stats7986.2,stats7987.1,stats7987.2,stats7988.1,stats7988.2,stats7989.1,stats7989.2,stats7990.1,stats7990.2,stats7991.1,stats7991.2,stats7992.1,stats7992.2,stats7993.1,stats7993.2,stats7994.1,stats7994.2,stats7995.1,stats7995.2,stats7996.1,stats7996.2,stats7997.1,stats7997.2,stats7998.1,stats7998.2,stats7999.1,stats7999.2,stats8000.1,stats8000.2,stats8001.1,stats8001.2,stats8002.1,stats8002.2,stats8003.1,stats8003.2,stats8004.1,stats8004.2,stats8005.1,stats8005.2,stats8006.1,stats8006.2,stats8007.1,stats8007.2,stats8008.1,stats8008.2,stats8009.1,stats8009.2,stats8010.1,stats8010.2,stats8011.1,stats8011.2,stats8012.1,stats8012.2,stats8013.1,stats8013.2,stats8014.1,stats8014.2,stats8015.1,stats8015.2,stats8016.1,stats8016.2,stats8017.1,stats8017.2,stats8018.1,stats8018.2,stats8019.1,stats8019.2,stats8020.1,stats8020.2,stats8021.1,stats8021.2,stats8022.1,stats8022.2,stats8023.1,stats8023.2,stats8024.1,stats8024.2,stats8025.1,stats8025.2,stats8026.1,stats8026.2,stats8027.1,stats8027.2,stats8028.1,stats8028.2,stats8029.1,stats8029.2,stats8030.1,stats8030.2,stats8031.1,stats8031.2,stats8032.1,stats8032.2,stats8033.1,stats8033.2,stats8034.1,stats8034.2,stats8035.1,stats8035.2,stats8036.1,stats8036.2,stats8037.1,stats8037.2,stats8038.1,stats8038.2,stats8039.1,stats8039.2,stats8040.1,stats8040.2,stats8041.1,stats8041.2,stats8042.1,stats8042.2]
  decide
end FrameHashControllerCheckedRows
