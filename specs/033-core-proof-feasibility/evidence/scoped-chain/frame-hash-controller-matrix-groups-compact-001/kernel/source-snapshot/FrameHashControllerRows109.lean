import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData109
import FrameHashControllerInstructionMatrixData110
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7019 : actualRows7019=WordField.canonicalRows actualModulus 7019 (.bxor 7017 7018) := by core033_kernel_decide
theorem stats7019 : actualRows7019.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7019=7428 := by core033_kernel_decide
theorem rows7020 : actualRows7020=WordField.canonicalRows actualModulus 7020 (.shr 6828 3) := by core033_kernel_decide
theorem stats7020 : actualRows7020.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7020=4908 := by core033_kernel_decide
theorem rows7021 : actualRows7021=WordField.canonicalRows actualModulus 7021 (.bxor 7019 7020) := by core033_kernel_decide
theorem stats7021 : actualRows7021.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7021=7428 := by core033_kernel_decide
theorem rows7022 : actualRows7022=WordField.canonicalRows actualModulus 7022 (.badd 7016 7021) := by core033_kernel_decide
theorem stats7022 : actualRows7022.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7022=5388 := by core033_kernel_decide
theorem rows7023 : actualRows7023=WordField.canonicalRows actualModulus 7023 (.badd 7022 6815) := by core033_kernel_decide
theorem stats7023 : actualRows7023.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7023=5388 := by core033_kernel_decide
theorem rows7024 : actualRows7024=WordField.canonicalRows actualModulus 7024 (.rotr 7010 17) := by core033_kernel_decide
theorem stats7024 : actualRows7024.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7024=5124 := by core033_kernel_decide
theorem rows7025 : actualRows7025=WordField.canonicalRows actualModulus 7025 (.rotr 7010 19) := by core033_kernel_decide
theorem stats7025 : actualRows7025.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7025=5124 := by core033_kernel_decide
theorem rows7026 : actualRows7026=WordField.canonicalRows actualModulus 7026 (.bxor 7024 7025) := by core033_kernel_decide
theorem stats7026 : actualRows7026.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7026=7428 := by core033_kernel_decide
theorem rows7027 : actualRows7027=WordField.canonicalRows actualModulus 7027 (.shr 7010 10) := by core033_kernel_decide
theorem stats7027 : actualRows7027.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7027=4404 := by core033_kernel_decide
theorem rows7028 : actualRows7028=WordField.canonicalRows actualModulus 7028 (.bxor 7026 7027) := by core033_kernel_decide
theorem stats7028 : actualRows7028.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7028=7428 := by core033_kernel_decide
theorem rows7029 : actualRows7029=WordField.canonicalRows actualModulus 7029 (.badd 7028 6945) := by core033_kernel_decide
theorem stats7029 : actualRows7029.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7029=5388 := by core033_kernel_decide
theorem rows7030 : actualRows7030=WordField.canonicalRows actualModulus 7030 (.rotr 6841 7) := by core033_kernel_decide
theorem stats7030 : actualRows7030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7030=5124 := by core033_kernel_decide
theorem rows7031 : actualRows7031=WordField.canonicalRows actualModulus 7031 (.rotr 6841 18) := by core033_kernel_decide
theorem stats7031 : actualRows7031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7031=5124 := by core033_kernel_decide
theorem rows7032 : actualRows7032=WordField.canonicalRows actualModulus 7032 (.bxor 7030 7031) := by core033_kernel_decide
theorem stats7032 : actualRows7032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7032=7428 := by core033_kernel_decide
theorem rows7033 : actualRows7033=WordField.canonicalRows actualModulus 7033 (.shr 6841 3) := by core033_kernel_decide
theorem stats7033 : actualRows7033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7033=4908 := by core033_kernel_decide
theorem rows7034 : actualRows7034=WordField.canonicalRows actualModulus 7034 (.bxor 7032 7033) := by core033_kernel_decide
theorem stats7034 : actualRows7034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7034=7428 := by core033_kernel_decide
theorem rows7035 : actualRows7035=WordField.canonicalRows actualModulus 7035 (.badd 7029 7034) := by core033_kernel_decide
theorem stats7035 : actualRows7035.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7035=5388 := by core033_kernel_decide
theorem rows7036 : actualRows7036=WordField.canonicalRows actualModulus 7036 (.badd 7035 6828) := by core033_kernel_decide
theorem stats7036 : actualRows7036.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7036=5388 := by core033_kernel_decide
theorem rows7037 : actualRows7037=WordField.canonicalRows actualModulus 7037 (.rotr 1664 6) := by core033_kernel_decide
theorem stats7037 : actualRows7037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7037=5124 := by core033_kernel_decide
theorem rows7038 : actualRows7038=WordField.canonicalRows actualModulus 7038 (.rotr 1664 11) := by core033_kernel_decide
theorem stats7038 : actualRows7038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7038=5124 := by core033_kernel_decide
theorem rows7039 : actualRows7039=WordField.canonicalRows actualModulus 7039 (.bxor 7037 7038) := by core033_kernel_decide
theorem stats7039 : actualRows7039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7039=7428 := by core033_kernel_decide
theorem rows7040 : actualRows7040=WordField.canonicalRows actualModulus 7040 (.rotr 1664 25) := by core033_kernel_decide
theorem stats7040 : actualRows7040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7040=5124 := by core033_kernel_decide
theorem rows7041 : actualRows7041=WordField.canonicalRows actualModulus 7041 (.bxor 7039 7040) := by core033_kernel_decide
theorem stats7041 : actualRows7041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7041=7428 := by core033_kernel_decide
theorem rows7042 : actualRows7042=WordField.canonicalRows actualModulus 7042 (.badd 1823 7041) := by core033_kernel_decide
theorem stats7042 : actualRows7042.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7042=5388 := by core033_kernel_decide
theorem rows7043 : actualRows7043=WordField.canonicalRows actualModulus 7043 (.band 1664 1717) := by core033_kernel_decide
theorem stats7043 : actualRows7043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7043=5124 := by core033_kernel_decide
theorem rows7044 : actualRows7044=WordField.canonicalRows actualModulus 7044 (.bnot 1664) := by core033_kernel_decide
theorem stats7044 : actualRows7044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7044=6276 := by core033_kernel_decide
theorem rows7045 : actualRows7045=WordField.canonicalRows actualModulus 7045 (.band 7044 1770) := by core033_kernel_decide
theorem stats7045 : actualRows7045.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7045=5124 := by core033_kernel_decide
theorem rows7046 : actualRows7046=WordField.canonicalRows actualModulus 7046 (.bxor 7043 7045) := by core033_kernel_decide
theorem stats7046 : actualRows7046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7046=7428 := by core033_kernel_decide
theorem rows7047 : actualRows7047=WordField.canonicalRows actualModulus 7047 (.badd 7042 7046) := by core033_kernel_decide
theorem stats7047 : actualRows7047.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7047=5388 := by core033_kernel_decide
theorem rows7048 : actualRows7048=WordField.canonicalRows actualModulus 7048 (.literal (BitVec.ofNat 32 1116352408)) := by core033_kernel_decide
theorem stats7048 : actualRows7048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7048=3756 := by core033_kernel_decide
theorem rows7049 : actualRows7049=WordField.canonicalRows actualModulus 7049 (.badd 7047 7048) := by core033_kernel_decide
theorem stats7049 : actualRows7049.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7049=5388 := by core033_kernel_decide
theorem rows7050 : actualRows7050=WordField.canonicalRows actualModulus 7050 (.badd 7049 5170) := by core033_kernel_decide
theorem stats7050 : actualRows7050.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7050=5388 := by core033_kernel_decide
theorem rows7051 : actualRows7051=WordField.canonicalRows actualModulus 7051 (.rotr 1452 2) := by core033_kernel_decide
theorem stats7051 : actualRows7051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7051=5124 := by core033_kernel_decide
theorem rows7052 : actualRows7052=WordField.canonicalRows actualModulus 7052 (.rotr 1452 13) := by core033_kernel_decide
theorem stats7052 : actualRows7052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7052=5124 := by core033_kernel_decide
theorem rows7053 : actualRows7053=WordField.canonicalRows actualModulus 7053 (.bxor 7051 7052) := by core033_kernel_decide
theorem stats7053 : actualRows7053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7053=7428 := by core033_kernel_decide
theorem rows7054 : actualRows7054=WordField.canonicalRows actualModulus 7054 (.rotr 1452 22) := by core033_kernel_decide
theorem stats7054 : actualRows7054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7054=5124 := by core033_kernel_decide
theorem rows7055 : actualRows7055=WordField.canonicalRows actualModulus 7055 (.bxor 7053 7054) := by core033_kernel_decide
theorem stats7055 : actualRows7055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7055=7428 := by core033_kernel_decide
theorem rows7056 : actualRows7056=WordField.canonicalRows actualModulus 7056 (.band 1452 1505) := by core033_kernel_decide
theorem stats7056 : actualRows7056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7056=5124 := by core033_kernel_decide
theorem rows7057 : actualRows7057=WordField.canonicalRows actualModulus 7057 (.band 1452 1558) := by core033_kernel_decide
theorem stats7057 : actualRows7057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7057=5124 := by core033_kernel_decide
theorem rows7058 : actualRows7058=WordField.canonicalRows actualModulus 7058 (.bxor 7056 7057) := by core033_kernel_decide
theorem stats7058 : actualRows7058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7058=7428 := by core033_kernel_decide
theorem rows7059 : actualRows7059=WordField.canonicalRows actualModulus 7059 (.band 1505 1558) := by core033_kernel_decide
theorem stats7059 : actualRows7059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7059=5124 := by core033_kernel_decide
theorem rows7060 : actualRows7060=WordField.canonicalRows actualModulus 7060 (.bxor 7058 7059) := by core033_kernel_decide
theorem stats7060 : actualRows7060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7060=7428 := by core033_kernel_decide
theorem rows7061 : actualRows7061=WordField.canonicalRows actualModulus 7061 (.badd 7055 7060) := by core033_kernel_decide
theorem stats7061 : actualRows7061.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7061=5388 := by core033_kernel_decide
theorem rows7062 : actualRows7062=WordField.canonicalRows actualModulus 7062 (.badd 7050 7061) := by core033_kernel_decide
theorem stats7062 : actualRows7062.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7062=5388 := by core033_kernel_decide
theorem rows7063 : actualRows7063=WordField.canonicalRows actualModulus 7063 (.badd 1611 7050) := by core033_kernel_decide
theorem stats7063 : actualRows7063.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7063=5388 := by core033_kernel_decide
theorem rows7064 : actualRows7064=WordField.canonicalRows actualModulus 7064 (.rotr 7063 6) := by core033_kernel_decide
theorem stats7064 : actualRows7064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7064=5124 := by core033_kernel_decide
theorem rows7065 : actualRows7065=WordField.canonicalRows actualModulus 7065 (.rotr 7063 11) := by core033_kernel_decide
theorem stats7065 : actualRows7065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7065=5124 := by core033_kernel_decide
theorem rows7066 : actualRows7066=WordField.canonicalRows actualModulus 7066 (.bxor 7064 7065) := by core033_kernel_decide
theorem stats7066 : actualRows7066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7066=7428 := by core033_kernel_decide
theorem rows7067 : actualRows7067=WordField.canonicalRows actualModulus 7067 (.rotr 7063 25) := by core033_kernel_decide
theorem stats7067 : actualRows7067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7067=5124 := by core033_kernel_decide
theorem rows7068 : actualRows7068=WordField.canonicalRows actualModulus 7068 (.bxor 7066 7067) := by core033_kernel_decide
theorem stats7068 : actualRows7068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7068=7428 := by core033_kernel_decide
theorem rows7069 : actualRows7069=WordField.canonicalRows actualModulus 7069 (.badd 1770 7068) := by core033_kernel_decide
theorem stats7069 : actualRows7069.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7069=5388 := by core033_kernel_decide
theorem rows7070 : actualRows7070=WordField.canonicalRows actualModulus 7070 (.band 7063 1664) := by core033_kernel_decide
theorem stats7070 : actualRows7070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7070=5124 := by core033_kernel_decide
theorem rows7071 : actualRows7071=WordField.canonicalRows actualModulus 7071 (.bnot 7063) := by core033_kernel_decide
theorem stats7071 : actualRows7071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7071=6276 := by core033_kernel_decide
theorem rows7072 : actualRows7072=WordField.canonicalRows actualModulus 7072 (.band 7071 1717) := by core033_kernel_decide
theorem stats7072 : actualRows7072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7072=5124 := by core033_kernel_decide
theorem rows7073 : actualRows7073=WordField.canonicalRows actualModulus 7073 (.bxor 7070 7072) := by core033_kernel_decide
theorem stats7073 : actualRows7073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7073=7428 := by core033_kernel_decide
theorem rows7074 : actualRows7074=WordField.canonicalRows actualModulus 7074 (.badd 7069 7073) := by core033_kernel_decide
theorem stats7074 : actualRows7074.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7074=5388 := by core033_kernel_decide
theorem rows7075 : actualRows7075=WordField.canonicalRows actualModulus 7075 (.literal (BitVec.ofNat 32 1899447441)) := by core033_kernel_decide
theorem stats7075 : actualRows7075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7075=3828 := by core033_kernel_decide
theorem rows7076 : actualRows7076=WordField.canonicalRows actualModulus 7076 (.badd 7074 7075) := by core033_kernel_decide
theorem stats7076 : actualRows7076.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7076=5388 := by core033_kernel_decide
theorem rows7077 : actualRows7077=WordField.canonicalRows actualModulus 7077 (.badd 7076 5176) := by core033_kernel_decide
theorem stats7077 : actualRows7077.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7077=5388 := by core033_kernel_decide
theorem rows7078 : actualRows7078=WordField.canonicalRows actualModulus 7078 (.rotr 7062 2) := by core033_kernel_decide
theorem stats7078 : actualRows7078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7078=5124 := by core033_kernel_decide
theorem rows7079 : actualRows7079=WordField.canonicalRows actualModulus 7079 (.rotr 7062 13) := by core033_kernel_decide
theorem stats7079 : actualRows7079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7079=5124 := by core033_kernel_decide
theorem rows7080 : actualRows7080=WordField.canonicalRows actualModulus 7080 (.bxor 7078 7079) := by core033_kernel_decide
theorem stats7080 : actualRows7080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7080=7428 := by core033_kernel_decide
theorem rows7081 : actualRows7081=WordField.canonicalRows actualModulus 7081 (.rotr 7062 22) := by core033_kernel_decide
theorem stats7081 : actualRows7081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7081=5124 := by core033_kernel_decide
theorem rows7082 : actualRows7082=WordField.canonicalRows actualModulus 7082 (.bxor 7080 7081) := by core033_kernel_decide
theorem stats7082 : actualRows7082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7082=7428 := by core033_kernel_decide
def partRows109 : List R1CS.Row := actualRows7019++actualRows7020++actualRows7021++actualRows7022++actualRows7023++actualRows7024++actualRows7025++actualRows7026++actualRows7027++actualRows7028++actualRows7029++actualRows7030++actualRows7031++actualRows7032++actualRows7033++actualRows7034++actualRows7035++actualRows7036++actualRows7037++actualRows7038++actualRows7039++actualRows7040++actualRows7041++actualRows7042++actualRows7043++actualRows7044++actualRows7045++actualRows7046++actualRows7047++actualRows7048++actualRows7049++actualRows7050++actualRows7051++actualRows7052++actualRows7053++actualRows7054++actualRows7055++actualRows7056++actualRows7057++actualRows7058++actualRows7059++actualRows7060++actualRows7061++actualRows7062++actualRows7063++actualRows7064++actualRows7065++actualRows7066++actualRows7067++actualRows7068++actualRows7069++actualRows7070++actualRows7071++actualRows7072++actualRows7073++actualRows7074++actualRows7075++actualRows7076++actualRows7077++actualRows7078++actualRows7079++actualRows7080++actualRows7081++actualRows7082
def partOps109 : List WordIR.Op := [.bxor 7017 7018,.shr 6828 3,.bxor 7019 7020,.badd 7016 7021,.badd 7022 6815,.rotr 7010 17,.rotr 7010 19,.bxor 7024 7025,.shr 7010 10,.bxor 7026 7027,.badd 7028 6945,.rotr 6841 7,.rotr 6841 18,.bxor 7030 7031,.shr 6841 3,.bxor 7032 7033,.badd 7029 7034,.badd 7035 6828,.rotr 1664 6,.rotr 1664 11,.bxor 7037 7038,.rotr 1664 25,.bxor 7039 7040,.badd 1823 7041,.band 1664 1717,.bnot 1664,.band 7044 1770,.bxor 7043 7045,.badd 7042 7046,.literal (BitVec.ofNat 32 1116352408),.badd 7047 7048,.badd 7049 5170,.rotr 1452 2,.rotr 1452 13,.bxor 7051 7052,.rotr 1452 22,.bxor 7053 7054,.band 1452 1505,.band 1452 1558,.bxor 7056 7057,.band 1505 1558,.bxor 7058 7059,.badd 7055 7060,.badd 7050 7061,.badd 1611 7050,.rotr 7063 6,.rotr 7063 11,.bxor 7064 7065,.rotr 7063 25,.bxor 7066 7067,.badd 1770 7068,.band 7063 1664,.bnot 7063,.band 7071 1717,.bxor 7070 7072,.badd 7069 7073,.literal (BitVec.ofNat 32 1899447441),.badd 7074 7075,.badd 7076 5176,.rotr 7062 2,.rotr 7062 13,.bxor 7078 7079,.rotr 7062 22,.bxor 7080 7081]
theorem partExact109 : partRows109=WordField.rows actualModulus 7019 partOps109 := by
  simp only [partRows109,partOps109,WordField.rows,rows7019,rows7020,rows7021,rows7022,rows7023,rows7024,rows7025,rows7026,rows7027,rows7028,rows7029,rows7030,rows7031,rows7032,rows7033,rows7034,rows7035,rows7036,rows7037,rows7038,rows7039,rows7040,rows7041,rows7042,rows7043,rows7044,rows7045,rows7046,rows7047,rows7048,rows7049,rows7050,rows7051,rows7052,rows7053,rows7054,rows7055,rows7056,rows7057,rows7058,rows7059,rows7060,rows7061,rows7062,rows7063,rows7064,rows7065,rows7066,rows7067,rows7068,rows7069,rows7070,rows7071,rows7072,rows7073,rows7074,rows7075,rows7076,rows7077,rows7078,rows7079,rows7080,rows7081,rows7082,List.append_assoc,List.append_nil]
theorem partLength109 : partOps109.length=64 := by decide
theorem partStats109 : partRows109.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows109=372120 := by
  simp only [partRows109,List.length_append,MatrixRowBlocks.rows_weight_append,stats7019.1,stats7019.2,stats7020.1,stats7020.2,stats7021.1,stats7021.2,stats7022.1,stats7022.2,stats7023.1,stats7023.2,stats7024.1,stats7024.2,stats7025.1,stats7025.2,stats7026.1,stats7026.2,stats7027.1,stats7027.2,stats7028.1,stats7028.2,stats7029.1,stats7029.2,stats7030.1,stats7030.2,stats7031.1,stats7031.2,stats7032.1,stats7032.2,stats7033.1,stats7033.2,stats7034.1,stats7034.2,stats7035.1,stats7035.2,stats7036.1,stats7036.2,stats7037.1,stats7037.2,stats7038.1,stats7038.2,stats7039.1,stats7039.2,stats7040.1,stats7040.2,stats7041.1,stats7041.2,stats7042.1,stats7042.2,stats7043.1,stats7043.2,stats7044.1,stats7044.2,stats7045.1,stats7045.2,stats7046.1,stats7046.2,stats7047.1,stats7047.2,stats7048.1,stats7048.2,stats7049.1,stats7049.2,stats7050.1,stats7050.2,stats7051.1,stats7051.2,stats7052.1,stats7052.2,stats7053.1,stats7053.2,stats7054.1,stats7054.2,stats7055.1,stats7055.2,stats7056.1,stats7056.2,stats7057.1,stats7057.2,stats7058.1,stats7058.2,stats7059.1,stats7059.2,stats7060.1,stats7060.2,stats7061.1,stats7061.2,stats7062.1,stats7062.2,stats7063.1,stats7063.2,stats7064.1,stats7064.2,stats7065.1,stats7065.2,stats7066.1,stats7066.2,stats7067.1,stats7067.2,stats7068.1,stats7068.2,stats7069.1,stats7069.2,stats7070.1,stats7070.2,stats7071.1,stats7071.2,stats7072.1,stats7072.2,stats7073.1,stats7073.2,stats7074.1,stats7074.2,stats7075.1,stats7075.2,stats7076.1,stats7076.2,stats7077.1,stats7077.2,stats7078.1,stats7078.2,stats7079.1,stats7079.2,stats7080.1,stats7080.2,stats7081.1,stats7081.2,stats7082.1,stats7082.2]
  decide
end FrameHashControllerCheckedRows
