import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData109
import AuthenticatedBranchRoundInstructionMatrixData110
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7030 : actualRows7030=WordField.canonicalRows actualModulus 7030 (.bxor 7019 7029) := by core033_kernel_decide
theorem stats7030 : actualRows7030.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7030=7428 := by core033_kernel_decide
theorem rows7031 : actualRows7031=WordField.canonicalRows actualModulus 7031 (.shr 7030 31) := by core033_kernel_decide
theorem stats7031 : actualRows7031.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7031=2892 := by core033_kernel_decide
theorem rows7032 : actualRows7032=WordField.canonicalRows actualModulus 7032 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7032 : actualRows7032.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7032=2892 := by core033_kernel_decide
theorem rows7033 : actualRows7033=WordField.canonicalRows actualModulus 7033 (.bxor 7031 7032) := by core033_kernel_decide
theorem stats7033 : actualRows7033.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7033=7428 := by core033_kernel_decide
theorem rows7034 : actualRows7034=WordField.canonicalRows actualModulus 7034 (.shr 3750 8) := by core033_kernel_decide
theorem stats7034 : actualRows7034.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7034=4548 := by core033_kernel_decide
theorem rows7035 : actualRows7035=WordField.canonicalRows actualModulus 7035 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7035 : actualRows7035.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7035=2820 := by core033_kernel_decide
theorem rows7036 : actualRows7036=WordField.canonicalRows actualModulus 7036 (.bnot 7035) := by core033_kernel_decide
theorem stats7036 : actualRows7036.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7036=6276 := by core033_kernel_decide
theorem rows7037 : actualRows7037=WordField.canonicalRows actualModulus 7037 (.band 7034 7036) := by core033_kernel_decide
theorem stats7037 : actualRows7037.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7037=5124 := by core033_kernel_decide
theorem rows7038 : actualRows7038=WordField.canonicalRows actualModulus 7038 (.shr 3750 8) := by core033_kernel_decide
theorem stats7038 : actualRows7038.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7038=4548 := by core033_kernel_decide
theorem rows7039 : actualRows7039=WordField.canonicalRows actualModulus 7039 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7039 : actualRows7039.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7039=2820 := by core033_kernel_decide
theorem rows7040 : actualRows7040=WordField.canonicalRows actualModulus 7040 (.bnot 7039) := by core033_kernel_decide
theorem stats7040 : actualRows7040.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7040=6276 := by core033_kernel_decide
theorem rows7041 : actualRows7041=WordField.canonicalRows actualModulus 7041 (.bxor 7038 7040) := by core033_kernel_decide
theorem stats7041 : actualRows7041.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7041=7428 := by core033_kernel_decide
theorem rows7042 : actualRows7042=WordField.canonicalRows actualModulus 7042 (.shr 3750 8) := by core033_kernel_decide
theorem stats7042 : actualRows7042.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7042=4548 := by core033_kernel_decide
theorem rows7043 : actualRows7043=WordField.canonicalRows actualModulus 7043 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7043 : actualRows7043.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7043=2820 := by core033_kernel_decide
theorem rows7044 : actualRows7044=WordField.canonicalRows actualModulus 7044 (.bnot 7043) := by core033_kernel_decide
theorem stats7044 : actualRows7044.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7044=6276 := by core033_kernel_decide
theorem rows7045 : actualRows7045=WordField.canonicalRows actualModulus 7045 (.badd 7042 7044) := by core033_kernel_decide
theorem stats7045 : actualRows7045.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7045=5388 := by core033_kernel_decide
theorem rows7046 : actualRows7046=WordField.canonicalRows actualModulus 7046 (.bnot 7045) := by core033_kernel_decide
theorem stats7046 : actualRows7046.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7046=6276 := by core033_kernel_decide
theorem rows7047 : actualRows7047=WordField.canonicalRows actualModulus 7047 (.band 7041 7046) := by core033_kernel_decide
theorem stats7047 : actualRows7047.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7047=5124 := by core033_kernel_decide
theorem rows7048 : actualRows7048=WordField.canonicalRows actualModulus 7048 (.bxor 7037 7047) := by core033_kernel_decide
theorem stats7048 : actualRows7048.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7048=7428 := by core033_kernel_decide
theorem rows7049 : actualRows7049=WordField.canonicalRows actualModulus 7049 (.shr 7048 31) := by core033_kernel_decide
theorem stats7049 : actualRows7049.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7049=2892 := by core033_kernel_decide
theorem rows7050 : actualRows7050=WordField.canonicalRows actualModulus 7050 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7050 : actualRows7050.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7050=2892 := by core033_kernel_decide
theorem rows7051 : actualRows7051=WordField.canonicalRows actualModulus 7051 (.bxor 7049 7050) := by core033_kernel_decide
theorem stats7051 : actualRows7051.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7051=7428 := by core033_kernel_decide
theorem rows7052 : actualRows7052=WordField.canonicalRows actualModulus 7052 (.shr 3802 8) := by core033_kernel_decide
theorem stats7052 : actualRows7052.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7052=4548 := by core033_kernel_decide
theorem rows7053 : actualRows7053=WordField.canonicalRows actualModulus 7053 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7053 : actualRows7053.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7053=2820 := by core033_kernel_decide
theorem rows7054 : actualRows7054=WordField.canonicalRows actualModulus 7054 (.bnot 7053) := by core033_kernel_decide
theorem stats7054 : actualRows7054.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7054=6276 := by core033_kernel_decide
theorem rows7055 : actualRows7055=WordField.canonicalRows actualModulus 7055 (.band 7052 7054) := by core033_kernel_decide
theorem stats7055 : actualRows7055.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7055=5124 := by core033_kernel_decide
theorem rows7056 : actualRows7056=WordField.canonicalRows actualModulus 7056 (.shr 3802 8) := by core033_kernel_decide
theorem stats7056 : actualRows7056.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7056=4548 := by core033_kernel_decide
theorem rows7057 : actualRows7057=WordField.canonicalRows actualModulus 7057 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7057 : actualRows7057.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7057=2820 := by core033_kernel_decide
theorem rows7058 : actualRows7058=WordField.canonicalRows actualModulus 7058 (.bnot 7057) := by core033_kernel_decide
theorem stats7058 : actualRows7058.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7058=6276 := by core033_kernel_decide
theorem rows7059 : actualRows7059=WordField.canonicalRows actualModulus 7059 (.bxor 7056 7058) := by core033_kernel_decide
theorem stats7059 : actualRows7059.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7059=7428 := by core033_kernel_decide
theorem rows7060 : actualRows7060=WordField.canonicalRows actualModulus 7060 (.shr 3802 8) := by core033_kernel_decide
theorem stats7060 : actualRows7060.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7060=4548 := by core033_kernel_decide
theorem rows7061 : actualRows7061=WordField.canonicalRows actualModulus 7061 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7061 : actualRows7061.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7061=2820 := by core033_kernel_decide
theorem rows7062 : actualRows7062=WordField.canonicalRows actualModulus 7062 (.bnot 7061) := by core033_kernel_decide
theorem stats7062 : actualRows7062.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7062=6276 := by core033_kernel_decide
theorem rows7063 : actualRows7063=WordField.canonicalRows actualModulus 7063 (.badd 7060 7062) := by core033_kernel_decide
theorem stats7063 : actualRows7063.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7063=5388 := by core033_kernel_decide
theorem rows7064 : actualRows7064=WordField.canonicalRows actualModulus 7064 (.bnot 7063) := by core033_kernel_decide
theorem stats7064 : actualRows7064.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7064=6276 := by core033_kernel_decide
theorem rows7065 : actualRows7065=WordField.canonicalRows actualModulus 7065 (.band 7059 7064) := by core033_kernel_decide
theorem stats7065 : actualRows7065.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7065=5124 := by core033_kernel_decide
theorem rows7066 : actualRows7066=WordField.canonicalRows actualModulus 7066 (.bxor 7055 7065) := by core033_kernel_decide
theorem stats7066 : actualRows7066.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7066=7428 := by core033_kernel_decide
theorem rows7067 : actualRows7067=WordField.canonicalRows actualModulus 7067 (.shr 7066 31) := by core033_kernel_decide
theorem stats7067 : actualRows7067.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7067=2892 := by core033_kernel_decide
theorem rows7068 : actualRows7068=WordField.canonicalRows actualModulus 7068 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7068 : actualRows7068.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7068=2892 := by core033_kernel_decide
theorem rows7069 : actualRows7069=WordField.canonicalRows actualModulus 7069 (.bxor 7067 7068) := by core033_kernel_decide
theorem stats7069 : actualRows7069.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7069=7428 := by core033_kernel_decide
theorem rows7070 : actualRows7070=WordField.canonicalRows actualModulus 7070 (.shr 3854 8) := by core033_kernel_decide
theorem stats7070 : actualRows7070.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7070=4548 := by core033_kernel_decide
theorem rows7071 : actualRows7071=WordField.canonicalRows actualModulus 7071 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7071 : actualRows7071.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7071=2820 := by core033_kernel_decide
theorem rows7072 : actualRows7072=WordField.canonicalRows actualModulus 7072 (.bnot 7071) := by core033_kernel_decide
theorem stats7072 : actualRows7072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7072=6276 := by core033_kernel_decide
theorem rows7073 : actualRows7073=WordField.canonicalRows actualModulus 7073 (.band 7070 7072) := by core033_kernel_decide
theorem stats7073 : actualRows7073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7073=5124 := by core033_kernel_decide
theorem rows7074 : actualRows7074=WordField.canonicalRows actualModulus 7074 (.shr 3854 8) := by core033_kernel_decide
theorem stats7074 : actualRows7074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7074=4548 := by core033_kernel_decide
theorem rows7075 : actualRows7075=WordField.canonicalRows actualModulus 7075 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7075 : actualRows7075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7075=2820 := by core033_kernel_decide
theorem rows7076 : actualRows7076=WordField.canonicalRows actualModulus 7076 (.bnot 7075) := by core033_kernel_decide
theorem stats7076 : actualRows7076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7076=6276 := by core033_kernel_decide
theorem rows7077 : actualRows7077=WordField.canonicalRows actualModulus 7077 (.bxor 7074 7076) := by core033_kernel_decide
theorem stats7077 : actualRows7077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7077=7428 := by core033_kernel_decide
theorem rows7078 : actualRows7078=WordField.canonicalRows actualModulus 7078 (.shr 3854 8) := by core033_kernel_decide
theorem stats7078 : actualRows7078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7078=4548 := by core033_kernel_decide
theorem rows7079 : actualRows7079=WordField.canonicalRows actualModulus 7079 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7079 : actualRows7079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7079=2820 := by core033_kernel_decide
theorem rows7080 : actualRows7080=WordField.canonicalRows actualModulus 7080 (.bnot 7079) := by core033_kernel_decide
theorem stats7080 : actualRows7080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7080=6276 := by core033_kernel_decide
theorem rows7081 : actualRows7081=WordField.canonicalRows actualModulus 7081 (.badd 7078 7080) := by core033_kernel_decide
theorem stats7081 : actualRows7081.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7081=5388 := by core033_kernel_decide
theorem rows7082 : actualRows7082=WordField.canonicalRows actualModulus 7082 (.bnot 7081) := by core033_kernel_decide
theorem stats7082 : actualRows7082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7082=6276 := by core033_kernel_decide
theorem rows7083 : actualRows7083=WordField.canonicalRows actualModulus 7083 (.band 7077 7082) := by core033_kernel_decide
theorem stats7083 : actualRows7083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7083=5124 := by core033_kernel_decide
theorem rows7084 : actualRows7084=WordField.canonicalRows actualModulus 7084 (.bxor 7073 7083) := by core033_kernel_decide
theorem stats7084 : actualRows7084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7084=7428 := by core033_kernel_decide
theorem rows7085 : actualRows7085=WordField.canonicalRows actualModulus 7085 (.shr 7084 31) := by core033_kernel_decide
theorem stats7085 : actualRows7085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7085=2892 := by core033_kernel_decide
theorem rows7086 : actualRows7086=WordField.canonicalRows actualModulus 7086 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7086 : actualRows7086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7086=2892 := by core033_kernel_decide
theorem rows7087 : actualRows7087=WordField.canonicalRows actualModulus 7087 (.bxor 7085 7086) := by core033_kernel_decide
theorem stats7087 : actualRows7087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7087=7428 := by core033_kernel_decide
theorem rows7088 : actualRows7088=WordField.canonicalRows actualModulus 7088 (.shr 3906 8) := by core033_kernel_decide
theorem stats7088 : actualRows7088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7088=4548 := by core033_kernel_decide
theorem rows7089 : actualRows7089=WordField.canonicalRows actualModulus 7089 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7089 : actualRows7089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7089=2820 := by core033_kernel_decide
theorem rows7090 : actualRows7090=WordField.canonicalRows actualModulus 7090 (.bnot 7089) := by core033_kernel_decide
theorem stats7090 : actualRows7090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7090=6276 := by core033_kernel_decide
theorem rows7091 : actualRows7091=WordField.canonicalRows actualModulus 7091 (.band 7088 7090) := by core033_kernel_decide
theorem stats7091 : actualRows7091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7091=5124 := by core033_kernel_decide
theorem rows7092 : actualRows7092=WordField.canonicalRows actualModulus 7092 (.shr 3906 8) := by core033_kernel_decide
theorem stats7092 : actualRows7092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7092=4548 := by core033_kernel_decide
theorem rows7093 : actualRows7093=WordField.canonicalRows actualModulus 7093 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7093 : actualRows7093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7093=2820 := by core033_kernel_decide
def partRows108 : List R1CS.Row := actualRows7030++actualRows7031++actualRows7032++actualRows7033++actualRows7034++actualRows7035++actualRows7036++actualRows7037++actualRows7038++actualRows7039++actualRows7040++actualRows7041++actualRows7042++actualRows7043++actualRows7044++actualRows7045++actualRows7046++actualRows7047++actualRows7048++actualRows7049++actualRows7050++actualRows7051++actualRows7052++actualRows7053++actualRows7054++actualRows7055++actualRows7056++actualRows7057++actualRows7058++actualRows7059++actualRows7060++actualRows7061++actualRows7062++actualRows7063++actualRows7064++actualRows7065++actualRows7066++actualRows7067++actualRows7068++actualRows7069++actualRows7070++actualRows7071++actualRows7072++actualRows7073++actualRows7074++actualRows7075++actualRows7076++actualRows7077++actualRows7078++actualRows7079++actualRows7080++actualRows7081++actualRows7082++actualRows7083++actualRows7084++actualRows7085++actualRows7086++actualRows7087++actualRows7088++actualRows7089++actualRows7090++actualRows7091++actualRows7092++actualRows7093
def partOps108 : List WordIR.Op := [.bxor 7019 7029,.shr 7030 31,.literal (BitVec.ofNat 32 1),.bxor 7031 7032,.shr 3750 8,.literal (BitVec.ofNat 32 0),.bnot 7035,.band 7034 7036,.shr 3750 8,.literal (BitVec.ofNat 32 0),.bnot 7039,.bxor 7038 7040,.shr 3750 8,.literal (BitVec.ofNat 32 0),.bnot 7043,.badd 7042 7044,.bnot 7045,.band 7041 7046,.bxor 7037 7047,.shr 7048 31,.literal (BitVec.ofNat 32 1),.bxor 7049 7050,.shr 3802 8,.literal (BitVec.ofNat 32 0),.bnot 7053,.band 7052 7054,.shr 3802 8,.literal (BitVec.ofNat 32 0),.bnot 7057,.bxor 7056 7058,.shr 3802 8,.literal (BitVec.ofNat 32 0),.bnot 7061,.badd 7060 7062,.bnot 7063,.band 7059 7064,.bxor 7055 7065,.shr 7066 31,.literal (BitVec.ofNat 32 1),.bxor 7067 7068,.shr 3854 8,.literal (BitVec.ofNat 32 0),.bnot 7071,.band 7070 7072,.shr 3854 8,.literal (BitVec.ofNat 32 0),.bnot 7075,.bxor 7074 7076,.shr 3854 8,.literal (BitVec.ofNat 32 0),.bnot 7079,.badd 7078 7080,.bnot 7081,.band 7077 7082,.bxor 7073 7083,.shr 7084 31,.literal (BitVec.ofNat 32 1),.bxor 7085 7086,.shr 3906 8,.literal (BitVec.ofNat 32 0),.bnot 7089,.band 7088 7090,.shr 3906 8,.literal (BitVec.ofNat 32 0)]
theorem partExact108 : partRows108=WordField.rows actualModulus 7030 partOps108 := by
  simp only [partRows108,partOps108,WordField.rows,rows7030,rows7031,rows7032,rows7033,rows7034,rows7035,rows7036,rows7037,rows7038,rows7039,rows7040,rows7041,rows7042,rows7043,rows7044,rows7045,rows7046,rows7047,rows7048,rows7049,rows7050,rows7051,rows7052,rows7053,rows7054,rows7055,rows7056,rows7057,rows7058,rows7059,rows7060,rows7061,rows7062,rows7063,rows7064,rows7065,rows7066,rows7067,rows7068,rows7069,rows7070,rows7071,rows7072,rows7073,rows7074,rows7075,rows7076,rows7077,rows7078,rows7079,rows7080,rows7081,rows7082,rows7083,rows7084,rows7085,rows7086,rows7087,rows7088,rows7089,rows7090,rows7091,rows7092,rows7093,List.append_assoc,List.append_nil]
theorem partLength108 : partOps108.length=64 := by decide
theorem partStats108 : partRows108.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows108=319512 := by
  simp only [partRows108,List.length_append,MatrixRowBlocks.rows_weight_append,stats7030.1,stats7030.2,stats7031.1,stats7031.2,stats7032.1,stats7032.2,stats7033.1,stats7033.2,stats7034.1,stats7034.2,stats7035.1,stats7035.2,stats7036.1,stats7036.2,stats7037.1,stats7037.2,stats7038.1,stats7038.2,stats7039.1,stats7039.2,stats7040.1,stats7040.2,stats7041.1,stats7041.2,stats7042.1,stats7042.2,stats7043.1,stats7043.2,stats7044.1,stats7044.2,stats7045.1,stats7045.2,stats7046.1,stats7046.2,stats7047.1,stats7047.2,stats7048.1,stats7048.2,stats7049.1,stats7049.2,stats7050.1,stats7050.2,stats7051.1,stats7051.2,stats7052.1,stats7052.2,stats7053.1,stats7053.2,stats7054.1,stats7054.2,stats7055.1,stats7055.2,stats7056.1,stats7056.2,stats7057.1,stats7057.2,stats7058.1,stats7058.2,stats7059.1,stats7059.2,stats7060.1,stats7060.2,stats7061.1,stats7061.2,stats7062.1,stats7062.2,stats7063.1,stats7063.2,stats7064.1,stats7064.2,stats7065.1,stats7065.2,stats7066.1,stats7066.2,stats7067.1,stats7067.2,stats7068.1,stats7068.2,stats7069.1,stats7069.2,stats7070.1,stats7070.2,stats7071.1,stats7071.2,stats7072.1,stats7072.2,stats7073.1,stats7073.2,stats7074.1,stats7074.2,stats7075.1,stats7075.2,stats7076.1,stats7076.2,stats7077.1,stats7077.2,stats7078.1,stats7078.2,stats7079.1,stats7079.2,stats7080.1,stats7080.2,stats7081.1,stats7081.2,stats7082.1,stats7082.2,stats7083.1,stats7083.2,stats7084.1,stats7084.2,stats7085.1,stats7085.2,stats7086.1,stats7086.2,stats7087.1,stats7087.2,stats7088.1,stats7088.2,stats7089.1,stats7089.2,stats7090.1,stats7090.2,stats7091.1,stats7091.2,stats7092.1,stats7092.2,stats7093.1,stats7093.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
