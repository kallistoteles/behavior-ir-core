import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData124
import AuthenticatedBranchRoundInstructionMatrixData125
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7990 : actualRows7990=WordField.canonicalRows actualModulus 7990 (.bnot 7989) := by core033_kernel_decide
theorem stats7990 : actualRows7990.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7990=6276 := by core033_kernel_decide
theorem rows7991 : actualRows7991=WordField.canonicalRows actualModulus 7991 (.band 7988 7990) := by core033_kernel_decide
theorem stats7991 : actualRows7991.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7991=5124 := by core033_kernel_decide
theorem rows7992 : actualRows7992=WordField.canonicalRows actualModulus 7992 (.shr 6512 8) := by core033_kernel_decide
theorem stats7992 : actualRows7992.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7992=4548 := by core033_kernel_decide
theorem rows7993 : actualRows7993=WordField.canonicalRows actualModulus 7993 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7993 : actualRows7993.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7993=2820 := by core033_kernel_decide
theorem rows7994 : actualRows7994=WordField.canonicalRows actualModulus 7994 (.bnot 7993) := by core033_kernel_decide
theorem stats7994 : actualRows7994.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7994=6276 := by core033_kernel_decide
theorem rows7995 : actualRows7995=WordField.canonicalRows actualModulus 7995 (.bxor 7992 7994) := by core033_kernel_decide
theorem stats7995 : actualRows7995.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7995=7428 := by core033_kernel_decide
theorem rows7996 : actualRows7996=WordField.canonicalRows actualModulus 7996 (.shr 6512 8) := by core033_kernel_decide
theorem stats7996 : actualRows7996.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7996=4548 := by core033_kernel_decide
theorem rows7997 : actualRows7997=WordField.canonicalRows actualModulus 7997 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7997 : actualRows7997.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7997=2820 := by core033_kernel_decide
theorem rows7998 : actualRows7998=WordField.canonicalRows actualModulus 7998 (.bnot 7997) := by core033_kernel_decide
theorem stats7998 : actualRows7998.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7998=6276 := by core033_kernel_decide
theorem rows7999 : actualRows7999=WordField.canonicalRows actualModulus 7999 (.badd 7996 7998) := by core033_kernel_decide
theorem stats7999 : actualRows7999.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7999=5388 := by core033_kernel_decide
theorem rows8000 : actualRows8000=WordField.canonicalRows actualModulus 8000 (.bnot 7999) := by core033_kernel_decide
theorem stats8000 : actualRows8000.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8000=6276 := by core033_kernel_decide
theorem rows8001 : actualRows8001=WordField.canonicalRows actualModulus 8001 (.band 7995 8000) := by core033_kernel_decide
theorem stats8001 : actualRows8001.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8001=5124 := by core033_kernel_decide
theorem rows8002 : actualRows8002=WordField.canonicalRows actualModulus 8002 (.bxor 7991 8001) := by core033_kernel_decide
theorem stats8002 : actualRows8002.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8002=7428 := by core033_kernel_decide
theorem rows8003 : actualRows8003=WordField.canonicalRows actualModulus 8003 (.shr 8002 31) := by core033_kernel_decide
theorem stats8003 : actualRows8003.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8003=2892 := by core033_kernel_decide
theorem rows8004 : actualRows8004=WordField.canonicalRows actualModulus 8004 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8004 : actualRows8004.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8004=2892 := by core033_kernel_decide
theorem rows8005 : actualRows8005=WordField.canonicalRows actualModulus 8005 (.bxor 8003 8004) := by core033_kernel_decide
theorem stats8005 : actualRows8005.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8005=7428 := by core033_kernel_decide
theorem rows8006 : actualRows8006=WordField.canonicalRows actualModulus 8006 (.shr 6565 8) := by core033_kernel_decide
theorem stats8006 : actualRows8006.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8006=4548 := by core033_kernel_decide
theorem rows8007 : actualRows8007=WordField.canonicalRows actualModulus 8007 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8007 : actualRows8007.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8007=2820 := by core033_kernel_decide
theorem rows8008 : actualRows8008=WordField.canonicalRows actualModulus 8008 (.bnot 8007) := by core033_kernel_decide
theorem stats8008 : actualRows8008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8008=6276 := by core033_kernel_decide
theorem rows8009 : actualRows8009=WordField.canonicalRows actualModulus 8009 (.band 8006 8008) := by core033_kernel_decide
theorem stats8009 : actualRows8009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8009=5124 := by core033_kernel_decide
theorem rows8010 : actualRows8010=WordField.canonicalRows actualModulus 8010 (.shr 6565 8) := by core033_kernel_decide
theorem stats8010 : actualRows8010.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8010=4548 := by core033_kernel_decide
theorem rows8011 : actualRows8011=WordField.canonicalRows actualModulus 8011 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8011 : actualRows8011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8011=2820 := by core033_kernel_decide
theorem rows8012 : actualRows8012=WordField.canonicalRows actualModulus 8012 (.bnot 8011) := by core033_kernel_decide
theorem stats8012 : actualRows8012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8012=6276 := by core033_kernel_decide
theorem rows8013 : actualRows8013=WordField.canonicalRows actualModulus 8013 (.bxor 8010 8012) := by core033_kernel_decide
theorem stats8013 : actualRows8013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8013=7428 := by core033_kernel_decide
theorem rows8014 : actualRows8014=WordField.canonicalRows actualModulus 8014 (.shr 6565 8) := by core033_kernel_decide
theorem stats8014 : actualRows8014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8014=4548 := by core033_kernel_decide
theorem rows8015 : actualRows8015=WordField.canonicalRows actualModulus 8015 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8015 : actualRows8015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8015=2820 := by core033_kernel_decide
theorem rows8016 : actualRows8016=WordField.canonicalRows actualModulus 8016 (.bnot 8015) := by core033_kernel_decide
theorem stats8016 : actualRows8016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8016=6276 := by core033_kernel_decide
theorem rows8017 : actualRows8017=WordField.canonicalRows actualModulus 8017 (.badd 8014 8016) := by core033_kernel_decide
theorem stats8017 : actualRows8017.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8017=5388 := by core033_kernel_decide
theorem rows8018 : actualRows8018=WordField.canonicalRows actualModulus 8018 (.bnot 8017) := by core033_kernel_decide
theorem stats8018 : actualRows8018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8018=6276 := by core033_kernel_decide
theorem rows8019 : actualRows8019=WordField.canonicalRows actualModulus 8019 (.band 8013 8018) := by core033_kernel_decide
theorem stats8019 : actualRows8019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8019=5124 := by core033_kernel_decide
theorem rows8020 : actualRows8020=WordField.canonicalRows actualModulus 8020 (.bxor 8009 8019) := by core033_kernel_decide
theorem stats8020 : actualRows8020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8020=7428 := by core033_kernel_decide
theorem rows8021 : actualRows8021=WordField.canonicalRows actualModulus 8021 (.shr 8020 31) := by core033_kernel_decide
theorem stats8021 : actualRows8021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8021=2892 := by core033_kernel_decide
theorem rows8022 : actualRows8022=WordField.canonicalRows actualModulus 8022 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8022 : actualRows8022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8022=2892 := by core033_kernel_decide
theorem rows8023 : actualRows8023=WordField.canonicalRows actualModulus 8023 (.bxor 8021 8022) := by core033_kernel_decide
theorem stats8023 : actualRows8023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8023=7428 := by core033_kernel_decide
theorem rows8024 : actualRows8024=WordField.canonicalRows actualModulus 8024 (.shr 6618 8) := by core033_kernel_decide
theorem stats8024 : actualRows8024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8024=4548 := by core033_kernel_decide
theorem rows8025 : actualRows8025=WordField.canonicalRows actualModulus 8025 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8025 : actualRows8025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8025=2820 := by core033_kernel_decide
theorem rows8026 : actualRows8026=WordField.canonicalRows actualModulus 8026 (.bnot 8025) := by core033_kernel_decide
theorem stats8026 : actualRows8026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8026=6276 := by core033_kernel_decide
theorem rows8027 : actualRows8027=WordField.canonicalRows actualModulus 8027 (.band 8024 8026) := by core033_kernel_decide
theorem stats8027 : actualRows8027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8027=5124 := by core033_kernel_decide
theorem rows8028 : actualRows8028=WordField.canonicalRows actualModulus 8028 (.shr 6618 8) := by core033_kernel_decide
theorem stats8028 : actualRows8028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8028=4548 := by core033_kernel_decide
theorem rows8029 : actualRows8029=WordField.canonicalRows actualModulus 8029 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8029 : actualRows8029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8029=2820 := by core033_kernel_decide
theorem rows8030 : actualRows8030=WordField.canonicalRows actualModulus 8030 (.bnot 8029) := by core033_kernel_decide
theorem stats8030 : actualRows8030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8030=6276 := by core033_kernel_decide
theorem rows8031 : actualRows8031=WordField.canonicalRows actualModulus 8031 (.bxor 8028 8030) := by core033_kernel_decide
theorem stats8031 : actualRows8031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8031=7428 := by core033_kernel_decide
theorem rows8032 : actualRows8032=WordField.canonicalRows actualModulus 8032 (.shr 6618 8) := by core033_kernel_decide
theorem stats8032 : actualRows8032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8032=4548 := by core033_kernel_decide
theorem rows8033 : actualRows8033=WordField.canonicalRows actualModulus 8033 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8033 : actualRows8033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8033=2820 := by core033_kernel_decide
theorem rows8034 : actualRows8034=WordField.canonicalRows actualModulus 8034 (.bnot 8033) := by core033_kernel_decide
theorem stats8034 : actualRows8034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8034=6276 := by core033_kernel_decide
theorem rows8035 : actualRows8035=WordField.canonicalRows actualModulus 8035 (.badd 8032 8034) := by core033_kernel_decide
theorem stats8035 : actualRows8035.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8035=5388 := by core033_kernel_decide
theorem rows8036 : actualRows8036=WordField.canonicalRows actualModulus 8036 (.bnot 8035) := by core033_kernel_decide
theorem stats8036 : actualRows8036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8036=6276 := by core033_kernel_decide
theorem rows8037 : actualRows8037=WordField.canonicalRows actualModulus 8037 (.band 8031 8036) := by core033_kernel_decide
theorem stats8037 : actualRows8037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8037=5124 := by core033_kernel_decide
theorem rows8038 : actualRows8038=WordField.canonicalRows actualModulus 8038 (.bxor 8027 8037) := by core033_kernel_decide
theorem stats8038 : actualRows8038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8038=7428 := by core033_kernel_decide
theorem rows8039 : actualRows8039=WordField.canonicalRows actualModulus 8039 (.shr 8038 31) := by core033_kernel_decide
theorem stats8039 : actualRows8039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8039=2892 := by core033_kernel_decide
theorem rows8040 : actualRows8040=WordField.canonicalRows actualModulus 8040 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats8040 : actualRows8040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8040=2892 := by core033_kernel_decide
theorem rows8041 : actualRows8041=WordField.canonicalRows actualModulus 8041 (.bxor 8039 8040) := by core033_kernel_decide
theorem stats8041 : actualRows8041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8041=7428 := by core033_kernel_decide
theorem rows8042 : actualRows8042=WordField.canonicalRows actualModulus 8042 (.shr 6671 8) := by core033_kernel_decide
theorem stats8042 : actualRows8042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8042=4548 := by core033_kernel_decide
theorem rows8043 : actualRows8043=WordField.canonicalRows actualModulus 8043 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8043 : actualRows8043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8043=2820 := by core033_kernel_decide
theorem rows8044 : actualRows8044=WordField.canonicalRows actualModulus 8044 (.bnot 8043) := by core033_kernel_decide
theorem stats8044 : actualRows8044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8044=6276 := by core033_kernel_decide
theorem rows8045 : actualRows8045=WordField.canonicalRows actualModulus 8045 (.band 8042 8044) := by core033_kernel_decide
theorem stats8045 : actualRows8045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8045=5124 := by core033_kernel_decide
theorem rows8046 : actualRows8046=WordField.canonicalRows actualModulus 8046 (.shr 6671 8) := by core033_kernel_decide
theorem stats8046 : actualRows8046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8046=4548 := by core033_kernel_decide
theorem rows8047 : actualRows8047=WordField.canonicalRows actualModulus 8047 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8047 : actualRows8047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8047=2820 := by core033_kernel_decide
theorem rows8048 : actualRows8048=WordField.canonicalRows actualModulus 8048 (.bnot 8047) := by core033_kernel_decide
theorem stats8048 : actualRows8048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8048=6276 := by core033_kernel_decide
theorem rows8049 : actualRows8049=WordField.canonicalRows actualModulus 8049 (.bxor 8046 8048) := by core033_kernel_decide
theorem stats8049 : actualRows8049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8049=7428 := by core033_kernel_decide
theorem rows8050 : actualRows8050=WordField.canonicalRows actualModulus 8050 (.shr 6671 8) := by core033_kernel_decide
theorem stats8050 : actualRows8050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8050=4548 := by core033_kernel_decide
theorem rows8051 : actualRows8051=WordField.canonicalRows actualModulus 8051 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats8051 : actualRows8051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8051=2820 := by core033_kernel_decide
theorem rows8052 : actualRows8052=WordField.canonicalRows actualModulus 8052 (.bnot 8051) := by core033_kernel_decide
theorem stats8052 : actualRows8052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8052=6276 := by core033_kernel_decide
theorem rows8053 : actualRows8053=WordField.canonicalRows actualModulus 8053 (.badd 8050 8052) := by core033_kernel_decide
theorem stats8053 : actualRows8053.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8053=5388 := by core033_kernel_decide
def partRows123 : List R1CS.Row := actualRows7990++actualRows7991++actualRows7992++actualRows7993++actualRows7994++actualRows7995++actualRows7996++actualRows7997++actualRows7998++actualRows7999++actualRows8000++actualRows8001++actualRows8002++actualRows8003++actualRows8004++actualRows8005++actualRows8006++actualRows8007++actualRows8008++actualRows8009++actualRows8010++actualRows8011++actualRows8012++actualRows8013++actualRows8014++actualRows8015++actualRows8016++actualRows8017++actualRows8018++actualRows8019++actualRows8020++actualRows8021++actualRows8022++actualRows8023++actualRows8024++actualRows8025++actualRows8026++actualRows8027++actualRows8028++actualRows8029++actualRows8030++actualRows8031++actualRows8032++actualRows8033++actualRows8034++actualRows8035++actualRows8036++actualRows8037++actualRows8038++actualRows8039++actualRows8040++actualRows8041++actualRows8042++actualRows8043++actualRows8044++actualRows8045++actualRows8046++actualRows8047++actualRows8048++actualRows8049++actualRows8050++actualRows8051++actualRows8052++actualRows8053
def partOps123 : List WordIR.Op := [.bnot 7989,.band 7988 7990,.shr 6512 8,.literal (BitVec.ofNat 32 0),.bnot 7993,.bxor 7992 7994,.shr 6512 8,.literal (BitVec.ofNat 32 0),.bnot 7997,.badd 7996 7998,.bnot 7999,.band 7995 8000,.bxor 7991 8001,.shr 8002 31,.literal (BitVec.ofNat 32 1),.bxor 8003 8004,.shr 6565 8,.literal (BitVec.ofNat 32 0),.bnot 8007,.band 8006 8008,.shr 6565 8,.literal (BitVec.ofNat 32 0),.bnot 8011,.bxor 8010 8012,.shr 6565 8,.literal (BitVec.ofNat 32 0),.bnot 8015,.badd 8014 8016,.bnot 8017,.band 8013 8018,.bxor 8009 8019,.shr 8020 31,.literal (BitVec.ofNat 32 1),.bxor 8021 8022,.shr 6618 8,.literal (BitVec.ofNat 32 0),.bnot 8025,.band 8024 8026,.shr 6618 8,.literal (BitVec.ofNat 32 0),.bnot 8029,.bxor 8028 8030,.shr 6618 8,.literal (BitVec.ofNat 32 0),.bnot 8033,.badd 8032 8034,.bnot 8035,.band 8031 8036,.bxor 8027 8037,.shr 8038 31,.literal (BitVec.ofNat 32 1),.bxor 8039 8040,.shr 6671 8,.literal (BitVec.ofNat 32 0),.bnot 8043,.band 8042 8044,.shr 6671 8,.literal (BitVec.ofNat 32 0),.bnot 8047,.bxor 8046 8048,.shr 6671 8,.literal (BitVec.ofNat 32 0),.bnot 8051,.badd 8050 8052]
theorem partExact123 : partRows123=WordField.rows actualModulus 7990 partOps123 := by
  simp only [partRows123,partOps123,WordField.rows,rows7990,rows7991,rows7992,rows7993,rows7994,rows7995,rows7996,rows7997,rows7998,rows7999,rows8000,rows8001,rows8002,rows8003,rows8004,rows8005,rows8006,rows8007,rows8008,rows8009,rows8010,rows8011,rows8012,rows8013,rows8014,rows8015,rows8016,rows8017,rows8018,rows8019,rows8020,rows8021,rows8022,rows8023,rows8024,rows8025,rows8026,rows8027,rows8028,rows8029,rows8030,rows8031,rows8032,rows8033,rows8034,rows8035,rows8036,rows8037,rows8038,rows8039,rows8040,rows8041,rows8042,rows8043,rows8044,rows8045,rows8046,rows8047,rows8048,rows8049,rows8050,rows8051,rows8052,rows8053,List.append_assoc,List.append_nil]
theorem partLength123 : partOps123.length=64 := by decide
theorem partStats123 : partRows123.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows123=324240 := by
  simp only [partRows123,List.length_append,MatrixRowBlocks.rows_weight_append,stats7990.1,stats7990.2,stats7991.1,stats7991.2,stats7992.1,stats7992.2,stats7993.1,stats7993.2,stats7994.1,stats7994.2,stats7995.1,stats7995.2,stats7996.1,stats7996.2,stats7997.1,stats7997.2,stats7998.1,stats7998.2,stats7999.1,stats7999.2,stats8000.1,stats8000.2,stats8001.1,stats8001.2,stats8002.1,stats8002.2,stats8003.1,stats8003.2,stats8004.1,stats8004.2,stats8005.1,stats8005.2,stats8006.1,stats8006.2,stats8007.1,stats8007.2,stats8008.1,stats8008.2,stats8009.1,stats8009.2,stats8010.1,stats8010.2,stats8011.1,stats8011.2,stats8012.1,stats8012.2,stats8013.1,stats8013.2,stats8014.1,stats8014.2,stats8015.1,stats8015.2,stats8016.1,stats8016.2,stats8017.1,stats8017.2,stats8018.1,stats8018.2,stats8019.1,stats8019.2,stats8020.1,stats8020.2,stats8021.1,stats8021.2,stats8022.1,stats8022.2,stats8023.1,stats8023.2,stats8024.1,stats8024.2,stats8025.1,stats8025.2,stats8026.1,stats8026.2,stats8027.1,stats8027.2,stats8028.1,stats8028.2,stats8029.1,stats8029.2,stats8030.1,stats8030.2,stats8031.1,stats8031.2,stats8032.1,stats8032.2,stats8033.1,stats8033.2,stats8034.1,stats8034.2,stats8035.1,stats8035.2,stats8036.1,stats8036.2,stats8037.1,stats8037.2,stats8038.1,stats8038.2,stats8039.1,stats8039.2,stats8040.1,stats8040.2,stats8041.1,stats8041.2,stats8042.1,stats8042.2,stats8043.1,stats8043.2,stats8044.1,stats8044.2,stats8045.1,stats8045.2,stats8046.1,stats8046.2,stats8047.1,stats8047.2,stats8048.1,stats8048.2,stats8049.1,stats8049.2,stats8050.1,stats8050.2,stats8051.1,stats8051.2,stats8052.1,stats8052.2,stats8053.1,stats8053.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
