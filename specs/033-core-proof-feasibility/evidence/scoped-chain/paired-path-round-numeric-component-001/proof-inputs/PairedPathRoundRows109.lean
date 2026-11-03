import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData110
import PairedPathRoundInstructionMatrixData111
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7072 : actualRows7072=WordField.canonicalRows actualModulus 7072 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7072 : actualRows7072.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7072=2820 := by core033_kernel_decide
theorem rows7073 : actualRows7073=WordField.canonicalRows actualModulus 7073 (.bnot 7072) := by core033_kernel_decide
theorem stats7073 : actualRows7073.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7073=6276 := by core033_kernel_decide
theorem rows7074 : actualRows7074=WordField.canonicalRows actualModulus 7074 (.band 7071 7073) := by core033_kernel_decide
theorem stats7074 : actualRows7074.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7074=5124 := by core033_kernel_decide
theorem rows7075 : actualRows7075=WordField.canonicalRows actualModulus 7075 (.shr 5147 8) := by core033_kernel_decide
theorem stats7075 : actualRows7075.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7075=4548 := by core033_kernel_decide
theorem rows7076 : actualRows7076=WordField.canonicalRows actualModulus 7076 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7076 : actualRows7076.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7076=2820 := by core033_kernel_decide
theorem rows7077 : actualRows7077=WordField.canonicalRows actualModulus 7077 (.bnot 7076) := by core033_kernel_decide
theorem stats7077 : actualRows7077.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7077=6276 := by core033_kernel_decide
theorem rows7078 : actualRows7078=WordField.canonicalRows actualModulus 7078 (.bxor 7075 7077) := by core033_kernel_decide
theorem stats7078 : actualRows7078.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7078=7428 := by core033_kernel_decide
theorem rows7079 : actualRows7079=WordField.canonicalRows actualModulus 7079 (.shr 5147 8) := by core033_kernel_decide
theorem stats7079 : actualRows7079.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7079=4548 := by core033_kernel_decide
theorem rows7080 : actualRows7080=WordField.canonicalRows actualModulus 7080 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7080 : actualRows7080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7080=2820 := by core033_kernel_decide
theorem rows7081 : actualRows7081=WordField.canonicalRows actualModulus 7081 (.bnot 7080) := by core033_kernel_decide
theorem stats7081 : actualRows7081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7081=6276 := by core033_kernel_decide
theorem rows7082 : actualRows7082=WordField.canonicalRows actualModulus 7082 (.badd 7079 7081) := by core033_kernel_decide
theorem stats7082 : actualRows7082.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7082=5388 := by core033_kernel_decide
theorem rows7083 : actualRows7083=WordField.canonicalRows actualModulus 7083 (.bnot 7082) := by core033_kernel_decide
theorem stats7083 : actualRows7083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7083=6276 := by core033_kernel_decide
theorem rows7084 : actualRows7084=WordField.canonicalRows actualModulus 7084 (.band 7078 7083) := by core033_kernel_decide
theorem stats7084 : actualRows7084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7084=5124 := by core033_kernel_decide
theorem rows7085 : actualRows7085=WordField.canonicalRows actualModulus 7085 (.bxor 7074 7084) := by core033_kernel_decide
theorem stats7085 : actualRows7085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7085=7428 := by core033_kernel_decide
theorem rows7086 : actualRows7086=WordField.canonicalRows actualModulus 7086 (.shr 7085 31) := by core033_kernel_decide
theorem stats7086 : actualRows7086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7086=2892 := by core033_kernel_decide
theorem rows7087 : actualRows7087=WordField.canonicalRows actualModulus 7087 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7087 : actualRows7087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7087=2892 := by core033_kernel_decide
theorem rows7088 : actualRows7088=WordField.canonicalRows actualModulus 7088 (.bxor 7086 7087) := by core033_kernel_decide
theorem stats7088 : actualRows7088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7088=7428 := by core033_kernel_decide
theorem rows7089 : actualRows7089=WordField.canonicalRows actualModulus 7089 (.shr 5199 8) := by core033_kernel_decide
theorem stats7089 : actualRows7089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7089=4548 := by core033_kernel_decide
theorem rows7090 : actualRows7090=WordField.canonicalRows actualModulus 7090 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7090 : actualRows7090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7090=2820 := by core033_kernel_decide
theorem rows7091 : actualRows7091=WordField.canonicalRows actualModulus 7091 (.bnot 7090) := by core033_kernel_decide
theorem stats7091 : actualRows7091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7091=6276 := by core033_kernel_decide
theorem rows7092 : actualRows7092=WordField.canonicalRows actualModulus 7092 (.band 7089 7091) := by core033_kernel_decide
theorem stats7092 : actualRows7092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7092=5124 := by core033_kernel_decide
theorem rows7093 : actualRows7093=WordField.canonicalRows actualModulus 7093 (.shr 5199 8) := by core033_kernel_decide
theorem stats7093 : actualRows7093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7093=4548 := by core033_kernel_decide
theorem rows7094 : actualRows7094=WordField.canonicalRows actualModulus 7094 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7094 : actualRows7094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7094=2820 := by core033_kernel_decide
theorem rows7095 : actualRows7095=WordField.canonicalRows actualModulus 7095 (.bnot 7094) := by core033_kernel_decide
theorem stats7095 : actualRows7095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7095=6276 := by core033_kernel_decide
theorem rows7096 : actualRows7096=WordField.canonicalRows actualModulus 7096 (.bxor 7093 7095) := by core033_kernel_decide
theorem stats7096 : actualRows7096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7096=7428 := by core033_kernel_decide
theorem rows7097 : actualRows7097=WordField.canonicalRows actualModulus 7097 (.shr 5199 8) := by core033_kernel_decide
theorem stats7097 : actualRows7097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7097=4548 := by core033_kernel_decide
theorem rows7098 : actualRows7098=WordField.canonicalRows actualModulus 7098 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7098 : actualRows7098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7098=2820 := by core033_kernel_decide
theorem rows7099 : actualRows7099=WordField.canonicalRows actualModulus 7099 (.bnot 7098) := by core033_kernel_decide
theorem stats7099 : actualRows7099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7099=6276 := by core033_kernel_decide
theorem rows7100 : actualRows7100=WordField.canonicalRows actualModulus 7100 (.badd 7097 7099) := by core033_kernel_decide
theorem stats7100 : actualRows7100.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7100=5388 := by core033_kernel_decide
theorem rows7101 : actualRows7101=WordField.canonicalRows actualModulus 7101 (.bnot 7100) := by core033_kernel_decide
theorem stats7101 : actualRows7101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7101=6276 := by core033_kernel_decide
theorem rows7102 : actualRows7102=WordField.canonicalRows actualModulus 7102 (.band 7096 7101) := by core033_kernel_decide
theorem stats7102 : actualRows7102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7102=5124 := by core033_kernel_decide
theorem rows7103 : actualRows7103=WordField.canonicalRows actualModulus 7103 (.bxor 7092 7102) := by core033_kernel_decide
theorem stats7103 : actualRows7103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7103=7428 := by core033_kernel_decide
theorem rows7104 : actualRows7104=WordField.canonicalRows actualModulus 7104 (.shr 7103 31) := by core033_kernel_decide
theorem stats7104 : actualRows7104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7104=2892 := by core033_kernel_decide
theorem rows7105 : actualRows7105=WordField.canonicalRows actualModulus 7105 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7105 : actualRows7105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7105=2892 := by core033_kernel_decide
theorem rows7106 : actualRows7106=WordField.canonicalRows actualModulus 7106 (.bxor 7104 7105) := by core033_kernel_decide
theorem stats7106 : actualRows7106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7106=7428 := by core033_kernel_decide
theorem rows7107 : actualRows7107=WordField.canonicalRows actualModulus 7107 (.shr 5251 8) := by core033_kernel_decide
theorem stats7107 : actualRows7107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7107=4548 := by core033_kernel_decide
theorem rows7108 : actualRows7108=WordField.canonicalRows actualModulus 7108 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7108 : actualRows7108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7108=2820 := by core033_kernel_decide
theorem rows7109 : actualRows7109=WordField.canonicalRows actualModulus 7109 (.bnot 7108) := by core033_kernel_decide
theorem stats7109 : actualRows7109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7109=6276 := by core033_kernel_decide
theorem rows7110 : actualRows7110=WordField.canonicalRows actualModulus 7110 (.band 7107 7109) := by core033_kernel_decide
theorem stats7110 : actualRows7110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7110=5124 := by core033_kernel_decide
theorem rows7111 : actualRows7111=WordField.canonicalRows actualModulus 7111 (.shr 5251 8) := by core033_kernel_decide
theorem stats7111 : actualRows7111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7111=4548 := by core033_kernel_decide
theorem rows7112 : actualRows7112=WordField.canonicalRows actualModulus 7112 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7112 : actualRows7112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7112=2820 := by core033_kernel_decide
theorem rows7113 : actualRows7113=WordField.canonicalRows actualModulus 7113 (.bnot 7112) := by core033_kernel_decide
theorem stats7113 : actualRows7113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7113=6276 := by core033_kernel_decide
theorem rows7114 : actualRows7114=WordField.canonicalRows actualModulus 7114 (.bxor 7111 7113) := by core033_kernel_decide
theorem stats7114 : actualRows7114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7114=7428 := by core033_kernel_decide
theorem rows7115 : actualRows7115=WordField.canonicalRows actualModulus 7115 (.shr 5251 8) := by core033_kernel_decide
theorem stats7115 : actualRows7115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7115=4548 := by core033_kernel_decide
theorem rows7116 : actualRows7116=WordField.canonicalRows actualModulus 7116 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7116 : actualRows7116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7116=2820 := by core033_kernel_decide
theorem rows7117 : actualRows7117=WordField.canonicalRows actualModulus 7117 (.bnot 7116) := by core033_kernel_decide
theorem stats7117 : actualRows7117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7117=6276 := by core033_kernel_decide
theorem rows7118 : actualRows7118=WordField.canonicalRows actualModulus 7118 (.badd 7115 7117) := by core033_kernel_decide
theorem stats7118 : actualRows7118.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7118=5388 := by core033_kernel_decide
theorem rows7119 : actualRows7119=WordField.canonicalRows actualModulus 7119 (.bnot 7118) := by core033_kernel_decide
theorem stats7119 : actualRows7119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7119=6276 := by core033_kernel_decide
theorem rows7120 : actualRows7120=WordField.canonicalRows actualModulus 7120 (.band 7114 7119) := by core033_kernel_decide
theorem stats7120 : actualRows7120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7120=5124 := by core033_kernel_decide
theorem rows7121 : actualRows7121=WordField.canonicalRows actualModulus 7121 (.bxor 7110 7120) := by core033_kernel_decide
theorem stats7121 : actualRows7121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7121=7428 := by core033_kernel_decide
theorem rows7122 : actualRows7122=WordField.canonicalRows actualModulus 7122 (.shr 7121 31) := by core033_kernel_decide
theorem stats7122 : actualRows7122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7122=2892 := by core033_kernel_decide
theorem rows7123 : actualRows7123=WordField.canonicalRows actualModulus 7123 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7123 : actualRows7123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7123=2892 := by core033_kernel_decide
theorem rows7124 : actualRows7124=WordField.canonicalRows actualModulus 7124 (.bxor 7122 7123) := by core033_kernel_decide
theorem stats7124 : actualRows7124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7124=7428 := by core033_kernel_decide
theorem rows7125 : actualRows7125=WordField.canonicalRows actualModulus 7125 (.shr 5303 8) := by core033_kernel_decide
theorem stats7125 : actualRows7125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7125=4548 := by core033_kernel_decide
theorem rows7126 : actualRows7126=WordField.canonicalRows actualModulus 7126 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7126 : actualRows7126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7126=2820 := by core033_kernel_decide
theorem rows7127 : actualRows7127=WordField.canonicalRows actualModulus 7127 (.bnot 7126) := by core033_kernel_decide
theorem stats7127 : actualRows7127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7127=6276 := by core033_kernel_decide
theorem rows7128 : actualRows7128=WordField.canonicalRows actualModulus 7128 (.band 7125 7127) := by core033_kernel_decide
theorem stats7128 : actualRows7128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7128=5124 := by core033_kernel_decide
theorem rows7129 : actualRows7129=WordField.canonicalRows actualModulus 7129 (.shr 5303 8) := by core033_kernel_decide
theorem stats7129 : actualRows7129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7129=4548 := by core033_kernel_decide
theorem rows7130 : actualRows7130=WordField.canonicalRows actualModulus 7130 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7130 : actualRows7130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7130=2820 := by core033_kernel_decide
theorem rows7131 : actualRows7131=WordField.canonicalRows actualModulus 7131 (.bnot 7130) := by core033_kernel_decide
theorem stats7131 : actualRows7131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7131=6276 := by core033_kernel_decide
theorem rows7132 : actualRows7132=WordField.canonicalRows actualModulus 7132 (.bxor 7129 7131) := by core033_kernel_decide
theorem stats7132 : actualRows7132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7132=7428 := by core033_kernel_decide
theorem rows7133 : actualRows7133=WordField.canonicalRows actualModulus 7133 (.shr 5303 8) := by core033_kernel_decide
theorem stats7133 : actualRows7133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7133=4548 := by core033_kernel_decide
theorem rows7134 : actualRows7134=WordField.canonicalRows actualModulus 7134 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7134 : actualRows7134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7134=2820 := by core033_kernel_decide
theorem rows7135 : actualRows7135=WordField.canonicalRows actualModulus 7135 (.bnot 7134) := by core033_kernel_decide
theorem stats7135 : actualRows7135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7135=6276 := by core033_kernel_decide
def partRows109 : List R1CS.Row := actualRows7072++actualRows7073++actualRows7074++actualRows7075++actualRows7076++actualRows7077++actualRows7078++actualRows7079++actualRows7080++actualRows7081++actualRows7082++actualRows7083++actualRows7084++actualRows7085++actualRows7086++actualRows7087++actualRows7088++actualRows7089++actualRows7090++actualRows7091++actualRows7092++actualRows7093++actualRows7094++actualRows7095++actualRows7096++actualRows7097++actualRows7098++actualRows7099++actualRows7100++actualRows7101++actualRows7102++actualRows7103++actualRows7104++actualRows7105++actualRows7106++actualRows7107++actualRows7108++actualRows7109++actualRows7110++actualRows7111++actualRows7112++actualRows7113++actualRows7114++actualRows7115++actualRows7116++actualRows7117++actualRows7118++actualRows7119++actualRows7120++actualRows7121++actualRows7122++actualRows7123++actualRows7124++actualRows7125++actualRows7126++actualRows7127++actualRows7128++actualRows7129++actualRows7130++actualRows7131++actualRows7132++actualRows7133++actualRows7134++actualRows7135
def partOps109 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 7072,.band 7071 7073,.shr 5147 8,.literal (BitVec.ofNat 32 0),.bnot 7076,.bxor 7075 7077,.shr 5147 8,.literal (BitVec.ofNat 32 0),.bnot 7080,.badd 7079 7081,.bnot 7082,.band 7078 7083,.bxor 7074 7084,.shr 7085 31,.literal (BitVec.ofNat 32 1),.bxor 7086 7087,.shr 5199 8,.literal (BitVec.ofNat 32 0),.bnot 7090,.band 7089 7091,.shr 5199 8,.literal (BitVec.ofNat 32 0),.bnot 7094,.bxor 7093 7095,.shr 5199 8,.literal (BitVec.ofNat 32 0),.bnot 7098,.badd 7097 7099,.bnot 7100,.band 7096 7101,.bxor 7092 7102,.shr 7103 31,.literal (BitVec.ofNat 32 1),.bxor 7104 7105,.shr 5251 8,.literal (BitVec.ofNat 32 0),.bnot 7108,.band 7107 7109,.shr 5251 8,.literal (BitVec.ofNat 32 0),.bnot 7112,.bxor 7111 7113,.shr 5251 8,.literal (BitVec.ofNat 32 0),.bnot 7116,.badd 7115 7117,.bnot 7118,.band 7114 7119,.bxor 7110 7120,.shr 7121 31,.literal (BitVec.ofNat 32 1),.bxor 7122 7123,.shr 5303 8,.literal (BitVec.ofNat 32 0),.bnot 7126,.band 7125 7127,.shr 5303 8,.literal (BitVec.ofNat 32 0),.bnot 7130,.bxor 7129 7131,.shr 5303 8,.literal (BitVec.ofNat 32 0),.bnot 7134]
theorem partExact109 : partRows109=WordField.rows actualModulus 7072 partOps109 := by
  simp only [partRows109,partOps109,WordField.rows,rows7072,rows7073,rows7074,rows7075,rows7076,rows7077,rows7078,rows7079,rows7080,rows7081,rows7082,rows7083,rows7084,rows7085,rows7086,rows7087,rows7088,rows7089,rows7090,rows7091,rows7092,rows7093,rows7094,rows7095,rows7096,rows7097,rows7098,rows7099,rows7100,rows7101,rows7102,rows7103,rows7104,rows7105,rows7106,rows7107,rows7108,rows7109,rows7110,rows7111,rows7112,rows7113,rows7114,rows7115,rows7116,rows7117,rows7118,rows7119,rows7120,rows7121,rows7122,rows7123,rows7124,rows7125,rows7126,rows7127,rows7128,rows7129,rows7130,rows7131,rows7132,rows7133,rows7134,rows7135,List.append_assoc,List.append_nil]
theorem partLength109 : partOps109.length=64 := by decide
theorem partStats109 : partRows109.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows109=321672 := by
  simp only [partRows109,List.length_append,MatrixRowBlocks.rows_weight_append,stats7072.1,stats7072.2,stats7073.1,stats7073.2,stats7074.1,stats7074.2,stats7075.1,stats7075.2,stats7076.1,stats7076.2,stats7077.1,stats7077.2,stats7078.1,stats7078.2,stats7079.1,stats7079.2,stats7080.1,stats7080.2,stats7081.1,stats7081.2,stats7082.1,stats7082.2,stats7083.1,stats7083.2,stats7084.1,stats7084.2,stats7085.1,stats7085.2,stats7086.1,stats7086.2,stats7087.1,stats7087.2,stats7088.1,stats7088.2,stats7089.1,stats7089.2,stats7090.1,stats7090.2,stats7091.1,stats7091.2,stats7092.1,stats7092.2,stats7093.1,stats7093.2,stats7094.1,stats7094.2,stats7095.1,stats7095.2,stats7096.1,stats7096.2,stats7097.1,stats7097.2,stats7098.1,stats7098.2,stats7099.1,stats7099.2,stats7100.1,stats7100.2,stats7101.1,stats7101.2,stats7102.1,stats7102.2,stats7103.1,stats7103.2,stats7104.1,stats7104.2,stats7105.1,stats7105.2,stats7106.1,stats7106.2,stats7107.1,stats7107.2,stats7108.1,stats7108.2,stats7109.1,stats7109.2,stats7110.1,stats7110.2,stats7111.1,stats7111.2,stats7112.1,stats7112.2,stats7113.1,stats7113.2,stats7114.1,stats7114.2,stats7115.1,stats7115.2,stats7116.1,stats7116.2,stats7117.1,stats7117.2,stats7118.1,stats7118.2,stats7119.1,stats7119.2,stats7120.1,stats7120.2,stats7121.1,stats7121.2,stats7122.1,stats7122.2,stats7123.1,stats7123.2,stats7124.1,stats7124.2,stats7125.1,stats7125.2,stats7126.1,stats7126.2,stats7127.1,stats7127.2,stats7128.1,stats7128.2,stats7129.1,stats7129.2,stats7130.1,stats7130.2,stats7131.1,stats7131.2,stats7132.1,stats7132.2,stats7133.1,stats7133.2,stats7134.1,stats7134.2,stats7135.1,stats7135.2]
  decide
end PairedPathRoundCheckedRows
