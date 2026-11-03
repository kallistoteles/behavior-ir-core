import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData109
import PairedPathRoundInstructionMatrixData110
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7008 : actualRows7008=WordField.canonicalRows actualModulus 7008 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7008 : actualRows7008.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7008=2820 := by core033_kernel_decide
theorem rows7009 : actualRows7009=WordField.canonicalRows actualModulus 7009 (.bnot 7008) := by core033_kernel_decide
theorem stats7009 : actualRows7009.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7009=6276 := by core033_kernel_decide
theorem rows7010 : actualRows7010=WordField.canonicalRows actualModulus 7010 (.badd 7007 7009) := by core033_kernel_decide
theorem stats7010 : actualRows7010.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7010=5388 := by core033_kernel_decide
theorem rows7011 : actualRows7011=WordField.canonicalRows actualModulus 7011 (.bnot 7010) := by core033_kernel_decide
theorem stats7011 : actualRows7011.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7011=6276 := by core033_kernel_decide
theorem rows7012 : actualRows7012=WordField.canonicalRows actualModulus 7012 (.band 7006 7011) := by core033_kernel_decide
theorem stats7012 : actualRows7012.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7012=5124 := by core033_kernel_decide
theorem rows7013 : actualRows7013=WordField.canonicalRows actualModulus 7013 (.bxor 7002 7012) := by core033_kernel_decide
theorem stats7013 : actualRows7013.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7013=7428 := by core033_kernel_decide
theorem rows7014 : actualRows7014=WordField.canonicalRows actualModulus 7014 (.shr 7013 31) := by core033_kernel_decide
theorem stats7014 : actualRows7014.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7014=2892 := by core033_kernel_decide
theorem rows7015 : actualRows7015=WordField.canonicalRows actualModulus 7015 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7015 : actualRows7015.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7015=2892 := by core033_kernel_decide
theorem rows7016 : actualRows7016=WordField.canonicalRows actualModulus 7016 (.bxor 7014 7015) := by core033_kernel_decide
theorem stats7016 : actualRows7016.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7016=7428 := by core033_kernel_decide
theorem rows7017 : actualRows7017=WordField.canonicalRows actualModulus 7017 (.shr 4991 8) := by core033_kernel_decide
theorem stats7017 : actualRows7017.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7017=4548 := by core033_kernel_decide
theorem rows7018 : actualRows7018=WordField.canonicalRows actualModulus 7018 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7018 : actualRows7018.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7018=2820 := by core033_kernel_decide
theorem rows7019 : actualRows7019=WordField.canonicalRows actualModulus 7019 (.bnot 7018) := by core033_kernel_decide
theorem stats7019 : actualRows7019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7019=6276 := by core033_kernel_decide
theorem rows7020 : actualRows7020=WordField.canonicalRows actualModulus 7020 (.band 7017 7019) := by core033_kernel_decide
theorem stats7020 : actualRows7020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7020=5124 := by core033_kernel_decide
theorem rows7021 : actualRows7021=WordField.canonicalRows actualModulus 7021 (.shr 4991 8) := by core033_kernel_decide
theorem stats7021 : actualRows7021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7021=4548 := by core033_kernel_decide
theorem rows7022 : actualRows7022=WordField.canonicalRows actualModulus 7022 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7022 : actualRows7022.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7022=2820 := by core033_kernel_decide
theorem rows7023 : actualRows7023=WordField.canonicalRows actualModulus 7023 (.bnot 7022) := by core033_kernel_decide
theorem stats7023 : actualRows7023.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7023=6276 := by core033_kernel_decide
theorem rows7024 : actualRows7024=WordField.canonicalRows actualModulus 7024 (.bxor 7021 7023) := by core033_kernel_decide
theorem stats7024 : actualRows7024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7024=7428 := by core033_kernel_decide
theorem rows7025 : actualRows7025=WordField.canonicalRows actualModulus 7025 (.shr 4991 8) := by core033_kernel_decide
theorem stats7025 : actualRows7025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7025=4548 := by core033_kernel_decide
theorem rows7026 : actualRows7026=WordField.canonicalRows actualModulus 7026 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7026 : actualRows7026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7026=2820 := by core033_kernel_decide
theorem rows7027 : actualRows7027=WordField.canonicalRows actualModulus 7027 (.bnot 7026) := by core033_kernel_decide
theorem stats7027 : actualRows7027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7027=6276 := by core033_kernel_decide
theorem rows7028 : actualRows7028=WordField.canonicalRows actualModulus 7028 (.badd 7025 7027) := by core033_kernel_decide
theorem stats7028 : actualRows7028.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7028=5388 := by core033_kernel_decide
theorem rows7029 : actualRows7029=WordField.canonicalRows actualModulus 7029 (.bnot 7028) := by core033_kernel_decide
theorem stats7029 : actualRows7029.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7029=6276 := by core033_kernel_decide
theorem rows7030 : actualRows7030=WordField.canonicalRows actualModulus 7030 (.band 7024 7029) := by core033_kernel_decide
theorem stats7030 : actualRows7030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7030=5124 := by core033_kernel_decide
theorem rows7031 : actualRows7031=WordField.canonicalRows actualModulus 7031 (.bxor 7020 7030) := by core033_kernel_decide
theorem stats7031 : actualRows7031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7031=7428 := by core033_kernel_decide
theorem rows7032 : actualRows7032=WordField.canonicalRows actualModulus 7032 (.shr 7031 31) := by core033_kernel_decide
theorem stats7032 : actualRows7032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7032=2892 := by core033_kernel_decide
theorem rows7033 : actualRows7033=WordField.canonicalRows actualModulus 7033 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7033 : actualRows7033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7033=2892 := by core033_kernel_decide
theorem rows7034 : actualRows7034=WordField.canonicalRows actualModulus 7034 (.bxor 7032 7033) := by core033_kernel_decide
theorem stats7034 : actualRows7034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7034=7428 := by core033_kernel_decide
theorem rows7035 : actualRows7035=WordField.canonicalRows actualModulus 7035 (.shr 5043 8) := by core033_kernel_decide
theorem stats7035 : actualRows7035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7035=4548 := by core033_kernel_decide
theorem rows7036 : actualRows7036=WordField.canonicalRows actualModulus 7036 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7036 : actualRows7036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7036=2820 := by core033_kernel_decide
theorem rows7037 : actualRows7037=WordField.canonicalRows actualModulus 7037 (.bnot 7036) := by core033_kernel_decide
theorem stats7037 : actualRows7037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7037=6276 := by core033_kernel_decide
theorem rows7038 : actualRows7038=WordField.canonicalRows actualModulus 7038 (.band 7035 7037) := by core033_kernel_decide
theorem stats7038 : actualRows7038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7038=5124 := by core033_kernel_decide
theorem rows7039 : actualRows7039=WordField.canonicalRows actualModulus 7039 (.shr 5043 8) := by core033_kernel_decide
theorem stats7039 : actualRows7039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7039=4548 := by core033_kernel_decide
theorem rows7040 : actualRows7040=WordField.canonicalRows actualModulus 7040 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7040 : actualRows7040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7040=2820 := by core033_kernel_decide
theorem rows7041 : actualRows7041=WordField.canonicalRows actualModulus 7041 (.bnot 7040) := by core033_kernel_decide
theorem stats7041 : actualRows7041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7041=6276 := by core033_kernel_decide
theorem rows7042 : actualRows7042=WordField.canonicalRows actualModulus 7042 (.bxor 7039 7041) := by core033_kernel_decide
theorem stats7042 : actualRows7042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7042=7428 := by core033_kernel_decide
theorem rows7043 : actualRows7043=WordField.canonicalRows actualModulus 7043 (.shr 5043 8) := by core033_kernel_decide
theorem stats7043 : actualRows7043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7043=4548 := by core033_kernel_decide
theorem rows7044 : actualRows7044=WordField.canonicalRows actualModulus 7044 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7044 : actualRows7044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7044=2820 := by core033_kernel_decide
theorem rows7045 : actualRows7045=WordField.canonicalRows actualModulus 7045 (.bnot 7044) := by core033_kernel_decide
theorem stats7045 : actualRows7045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7045=6276 := by core033_kernel_decide
theorem rows7046 : actualRows7046=WordField.canonicalRows actualModulus 7046 (.badd 7043 7045) := by core033_kernel_decide
theorem stats7046 : actualRows7046.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7046=5388 := by core033_kernel_decide
theorem rows7047 : actualRows7047=WordField.canonicalRows actualModulus 7047 (.bnot 7046) := by core033_kernel_decide
theorem stats7047 : actualRows7047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7047=6276 := by core033_kernel_decide
theorem rows7048 : actualRows7048=WordField.canonicalRows actualModulus 7048 (.band 7042 7047) := by core033_kernel_decide
theorem stats7048 : actualRows7048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7048=5124 := by core033_kernel_decide
theorem rows7049 : actualRows7049=WordField.canonicalRows actualModulus 7049 (.bxor 7038 7048) := by core033_kernel_decide
theorem stats7049 : actualRows7049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7049=7428 := by core033_kernel_decide
theorem rows7050 : actualRows7050=WordField.canonicalRows actualModulus 7050 (.shr 7049 31) := by core033_kernel_decide
theorem stats7050 : actualRows7050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7050=2892 := by core033_kernel_decide
theorem rows7051 : actualRows7051=WordField.canonicalRows actualModulus 7051 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7051 : actualRows7051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7051=2892 := by core033_kernel_decide
theorem rows7052 : actualRows7052=WordField.canonicalRows actualModulus 7052 (.bxor 7050 7051) := by core033_kernel_decide
theorem stats7052 : actualRows7052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7052=7428 := by core033_kernel_decide
theorem rows7053 : actualRows7053=WordField.canonicalRows actualModulus 7053 (.shr 5095 8) := by core033_kernel_decide
theorem stats7053 : actualRows7053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7053=4548 := by core033_kernel_decide
theorem rows7054 : actualRows7054=WordField.canonicalRows actualModulus 7054 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7054 : actualRows7054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7054=2820 := by core033_kernel_decide
theorem rows7055 : actualRows7055=WordField.canonicalRows actualModulus 7055 (.bnot 7054) := by core033_kernel_decide
theorem stats7055 : actualRows7055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7055=6276 := by core033_kernel_decide
theorem rows7056 : actualRows7056=WordField.canonicalRows actualModulus 7056 (.band 7053 7055) := by core033_kernel_decide
theorem stats7056 : actualRows7056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7056=5124 := by core033_kernel_decide
theorem rows7057 : actualRows7057=WordField.canonicalRows actualModulus 7057 (.shr 5095 8) := by core033_kernel_decide
theorem stats7057 : actualRows7057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7057=4548 := by core033_kernel_decide
theorem rows7058 : actualRows7058=WordField.canonicalRows actualModulus 7058 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7058 : actualRows7058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7058=2820 := by core033_kernel_decide
theorem rows7059 : actualRows7059=WordField.canonicalRows actualModulus 7059 (.bnot 7058) := by core033_kernel_decide
theorem stats7059 : actualRows7059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7059=6276 := by core033_kernel_decide
theorem rows7060 : actualRows7060=WordField.canonicalRows actualModulus 7060 (.bxor 7057 7059) := by core033_kernel_decide
theorem stats7060 : actualRows7060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7060=7428 := by core033_kernel_decide
theorem rows7061 : actualRows7061=WordField.canonicalRows actualModulus 7061 (.shr 5095 8) := by core033_kernel_decide
theorem stats7061 : actualRows7061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7061=4548 := by core033_kernel_decide
theorem rows7062 : actualRows7062=WordField.canonicalRows actualModulus 7062 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7062 : actualRows7062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7062=2820 := by core033_kernel_decide
theorem rows7063 : actualRows7063=WordField.canonicalRows actualModulus 7063 (.bnot 7062) := by core033_kernel_decide
theorem stats7063 : actualRows7063.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7063=6276 := by core033_kernel_decide
theorem rows7064 : actualRows7064=WordField.canonicalRows actualModulus 7064 (.badd 7061 7063) := by core033_kernel_decide
theorem stats7064 : actualRows7064.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7064=5388 := by core033_kernel_decide
theorem rows7065 : actualRows7065=WordField.canonicalRows actualModulus 7065 (.bnot 7064) := by core033_kernel_decide
theorem stats7065 : actualRows7065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7065=6276 := by core033_kernel_decide
theorem rows7066 : actualRows7066=WordField.canonicalRows actualModulus 7066 (.band 7060 7065) := by core033_kernel_decide
theorem stats7066 : actualRows7066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7066=5124 := by core033_kernel_decide
theorem rows7067 : actualRows7067=WordField.canonicalRows actualModulus 7067 (.bxor 7056 7066) := by core033_kernel_decide
theorem stats7067 : actualRows7067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7067=7428 := by core033_kernel_decide
theorem rows7068 : actualRows7068=WordField.canonicalRows actualModulus 7068 (.shr 7067 31) := by core033_kernel_decide
theorem stats7068 : actualRows7068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7068=2892 := by core033_kernel_decide
theorem rows7069 : actualRows7069=WordField.canonicalRows actualModulus 7069 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7069 : actualRows7069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7069=2892 := by core033_kernel_decide
theorem rows7070 : actualRows7070=WordField.canonicalRows actualModulus 7070 (.bxor 7068 7069) := by core033_kernel_decide
theorem stats7070 : actualRows7070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7070=7428 := by core033_kernel_decide
theorem rows7071 : actualRows7071=WordField.canonicalRows actualModulus 7071 (.shr 5147 8) := by core033_kernel_decide
theorem stats7071 : actualRows7071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7071=4548 := by core033_kernel_decide
def partRows108 : List R1CS.Row := actualRows7008++actualRows7009++actualRows7010++actualRows7011++actualRows7012++actualRows7013++actualRows7014++actualRows7015++actualRows7016++actualRows7017++actualRows7018++actualRows7019++actualRows7020++actualRows7021++actualRows7022++actualRows7023++actualRows7024++actualRows7025++actualRows7026++actualRows7027++actualRows7028++actualRows7029++actualRows7030++actualRows7031++actualRows7032++actualRows7033++actualRows7034++actualRows7035++actualRows7036++actualRows7037++actualRows7038++actualRows7039++actualRows7040++actualRows7041++actualRows7042++actualRows7043++actualRows7044++actualRows7045++actualRows7046++actualRows7047++actualRows7048++actualRows7049++actualRows7050++actualRows7051++actualRows7052++actualRows7053++actualRows7054++actualRows7055++actualRows7056++actualRows7057++actualRows7058++actualRows7059++actualRows7060++actualRows7061++actualRows7062++actualRows7063++actualRows7064++actualRows7065++actualRows7066++actualRows7067++actualRows7068++actualRows7069++actualRows7070++actualRows7071
def partOps108 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 7008,.badd 7007 7009,.bnot 7010,.band 7006 7011,.bxor 7002 7012,.shr 7013 31,.literal (BitVec.ofNat 32 1),.bxor 7014 7015,.shr 4991 8,.literal (BitVec.ofNat 32 0),.bnot 7018,.band 7017 7019,.shr 4991 8,.literal (BitVec.ofNat 32 0),.bnot 7022,.bxor 7021 7023,.shr 4991 8,.literal (BitVec.ofNat 32 0),.bnot 7026,.badd 7025 7027,.bnot 7028,.band 7024 7029,.bxor 7020 7030,.shr 7031 31,.literal (BitVec.ofNat 32 1),.bxor 7032 7033,.shr 5043 8,.literal (BitVec.ofNat 32 0),.bnot 7036,.band 7035 7037,.shr 5043 8,.literal (BitVec.ofNat 32 0),.bnot 7040,.bxor 7039 7041,.shr 5043 8,.literal (BitVec.ofNat 32 0),.bnot 7044,.badd 7043 7045,.bnot 7046,.band 7042 7047,.bxor 7038 7048,.shr 7049 31,.literal (BitVec.ofNat 32 1),.bxor 7050 7051,.shr 5095 8,.literal (BitVec.ofNat 32 0),.bnot 7054,.band 7053 7055,.shr 5095 8,.literal (BitVec.ofNat 32 0),.bnot 7058,.bxor 7057 7059,.shr 5095 8,.literal (BitVec.ofNat 32 0),.bnot 7062,.badd 7061 7063,.bnot 7064,.band 7060 7065,.bxor 7056 7066,.shr 7067 31,.literal (BitVec.ofNat 32 1),.bxor 7068 7069,.shr 5147 8]
theorem partExact108 : partRows108=WordField.rows actualModulus 7008 partOps108 := by
  simp only [partRows108,partOps108,WordField.rows,rows7008,rows7009,rows7010,rows7011,rows7012,rows7013,rows7014,rows7015,rows7016,rows7017,rows7018,rows7019,rows7020,rows7021,rows7022,rows7023,rows7024,rows7025,rows7026,rows7027,rows7028,rows7029,rows7030,rows7031,rows7032,rows7033,rows7034,rows7035,rows7036,rows7037,rows7038,rows7039,rows7040,rows7041,rows7042,rows7043,rows7044,rows7045,rows7046,rows7047,rows7048,rows7049,rows7050,rows7051,rows7052,rows7053,rows7054,rows7055,rows7056,rows7057,rows7058,rows7059,rows7060,rows7061,rows7062,rows7063,rows7064,rows7065,rows7066,rows7067,rows7068,rows7069,rows7070,rows7071,List.append_assoc,List.append_nil]
theorem partLength108 : partOps108.length=64 := by decide
theorem partStats108 : partRows108.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows108=323808 := by
  simp only [partRows108,List.length_append,MatrixRowBlocks.rows_weight_append,stats7008.1,stats7008.2,stats7009.1,stats7009.2,stats7010.1,stats7010.2,stats7011.1,stats7011.2,stats7012.1,stats7012.2,stats7013.1,stats7013.2,stats7014.1,stats7014.2,stats7015.1,stats7015.2,stats7016.1,stats7016.2,stats7017.1,stats7017.2,stats7018.1,stats7018.2,stats7019.1,stats7019.2,stats7020.1,stats7020.2,stats7021.1,stats7021.2,stats7022.1,stats7022.2,stats7023.1,stats7023.2,stats7024.1,stats7024.2,stats7025.1,stats7025.2,stats7026.1,stats7026.2,stats7027.1,stats7027.2,stats7028.1,stats7028.2,stats7029.1,stats7029.2,stats7030.1,stats7030.2,stats7031.1,stats7031.2,stats7032.1,stats7032.2,stats7033.1,stats7033.2,stats7034.1,stats7034.2,stats7035.1,stats7035.2,stats7036.1,stats7036.2,stats7037.1,stats7037.2,stats7038.1,stats7038.2,stats7039.1,stats7039.2,stats7040.1,stats7040.2,stats7041.1,stats7041.2,stats7042.1,stats7042.2,stats7043.1,stats7043.2,stats7044.1,stats7044.2,stats7045.1,stats7045.2,stats7046.1,stats7046.2,stats7047.1,stats7047.2,stats7048.1,stats7048.2,stats7049.1,stats7049.2,stats7050.1,stats7050.2,stats7051.1,stats7051.2,stats7052.1,stats7052.2,stats7053.1,stats7053.2,stats7054.1,stats7054.2,stats7055.1,stats7055.2,stats7056.1,stats7056.2,stats7057.1,stats7057.2,stats7058.1,stats7058.2,stats7059.1,stats7059.2,stats7060.1,stats7060.2,stats7061.1,stats7061.2,stats7062.1,stats7062.2,stats7063.1,stats7063.2,stats7064.1,stats7064.2,stats7065.1,stats7065.2,stats7066.1,stats7066.2,stats7067.1,stats7067.2,stats7068.1,stats7068.2,stats7069.1,stats7069.2,stats7070.1,stats7070.2,stats7071.1,stats7071.2]
  decide
end QuotedPairedPathRoundCheckedRows
