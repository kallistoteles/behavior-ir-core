import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData110
import FrameHashControllerInstructionMatrixData111
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7083 : actualRows7083=WordField.canonicalRows actualModulus 7083 (.band 7062 1452) := by core033_kernel_decide
theorem stats7083 : actualRows7083.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7083=5124 := by core033_kernel_decide
theorem rows7084 : actualRows7084=WordField.canonicalRows actualModulus 7084 (.band 7062 1505) := by core033_kernel_decide
theorem stats7084 : actualRows7084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7084=5124 := by core033_kernel_decide
theorem rows7085 : actualRows7085=WordField.canonicalRows actualModulus 7085 (.bxor 7083 7084) := by core033_kernel_decide
theorem stats7085 : actualRows7085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7085=7428 := by core033_kernel_decide
theorem rows7086 : actualRows7086=WordField.canonicalRows actualModulus 7086 (.band 1452 1505) := by core033_kernel_decide
theorem stats7086 : actualRows7086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7086=5124 := by core033_kernel_decide
theorem rows7087 : actualRows7087=WordField.canonicalRows actualModulus 7087 (.bxor 7085 7086) := by core033_kernel_decide
theorem stats7087 : actualRows7087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7087=7428 := by core033_kernel_decide
theorem rows7088 : actualRows7088=WordField.canonicalRows actualModulus 7088 (.badd 7082 7087) := by core033_kernel_decide
theorem stats7088 : actualRows7088.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7088=5388 := by core033_kernel_decide
theorem rows7089 : actualRows7089=WordField.canonicalRows actualModulus 7089 (.badd 7077 7088) := by core033_kernel_decide
theorem stats7089 : actualRows7089.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7089=5388 := by core033_kernel_decide
theorem rows7090 : actualRows7090=WordField.canonicalRows actualModulus 7090 (.badd 1558 7077) := by core033_kernel_decide
theorem stats7090 : actualRows7090.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7090=5388 := by core033_kernel_decide
theorem rows7091 : actualRows7091=WordField.canonicalRows actualModulus 7091 (.rotr 7090 6) := by core033_kernel_decide
theorem stats7091 : actualRows7091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7091=5124 := by core033_kernel_decide
theorem rows7092 : actualRows7092=WordField.canonicalRows actualModulus 7092 (.rotr 7090 11) := by core033_kernel_decide
theorem stats7092 : actualRows7092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7092=5124 := by core033_kernel_decide
theorem rows7093 : actualRows7093=WordField.canonicalRows actualModulus 7093 (.bxor 7091 7092) := by core033_kernel_decide
theorem stats7093 : actualRows7093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7093=7428 := by core033_kernel_decide
theorem rows7094 : actualRows7094=WordField.canonicalRows actualModulus 7094 (.rotr 7090 25) := by core033_kernel_decide
theorem stats7094 : actualRows7094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7094=5124 := by core033_kernel_decide
theorem rows7095 : actualRows7095=WordField.canonicalRows actualModulus 7095 (.bxor 7093 7094) := by core033_kernel_decide
theorem stats7095 : actualRows7095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7095=7428 := by core033_kernel_decide
theorem rows7096 : actualRows7096=WordField.canonicalRows actualModulus 7096 (.badd 1717 7095) := by core033_kernel_decide
theorem stats7096 : actualRows7096.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7096=5388 := by core033_kernel_decide
theorem rows7097 : actualRows7097=WordField.canonicalRows actualModulus 7097 (.band 7090 7063) := by core033_kernel_decide
theorem stats7097 : actualRows7097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7097=5124 := by core033_kernel_decide
theorem rows7098 : actualRows7098=WordField.canonicalRows actualModulus 7098 (.bnot 7090) := by core033_kernel_decide
theorem stats7098 : actualRows7098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7098=6276 := by core033_kernel_decide
theorem rows7099 : actualRows7099=WordField.canonicalRows actualModulus 7099 (.band 7098 1664) := by core033_kernel_decide
theorem stats7099 : actualRows7099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7099=5124 := by core033_kernel_decide
theorem rows7100 : actualRows7100=WordField.canonicalRows actualModulus 7100 (.bxor 7097 7099) := by core033_kernel_decide
theorem stats7100 : actualRows7100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7100=7428 := by core033_kernel_decide
theorem rows7101 : actualRows7101=WordField.canonicalRows actualModulus 7101 (.badd 7096 7100) := by core033_kernel_decide
theorem stats7101 : actualRows7101.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7101=5388 := by core033_kernel_decide
theorem rows7102 : actualRows7102=WordField.canonicalRows actualModulus 7102 (.literal (BitVec.ofNat 32 3049323471)) := by core033_kernel_decide
theorem stats7102 : actualRows7102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7102=4260 := by core033_kernel_decide
theorem rows7103 : actualRows7103=WordField.canonicalRows actualModulus 7103 (.badd 7101 7102) := by core033_kernel_decide
theorem stats7103 : actualRows7103.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7103=5388 := by core033_kernel_decide
theorem rows7104 : actualRows7104=WordField.canonicalRows actualModulus 7104 (.badd 7103 5182) := by core033_kernel_decide
theorem stats7104 : actualRows7104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7104=5388 := by core033_kernel_decide
theorem rows7105 : actualRows7105=WordField.canonicalRows actualModulus 7105 (.rotr 7089 2) := by core033_kernel_decide
theorem stats7105 : actualRows7105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7105=5124 := by core033_kernel_decide
theorem rows7106 : actualRows7106=WordField.canonicalRows actualModulus 7106 (.rotr 7089 13) := by core033_kernel_decide
theorem stats7106 : actualRows7106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7106=5124 := by core033_kernel_decide
theorem rows7107 : actualRows7107=WordField.canonicalRows actualModulus 7107 (.bxor 7105 7106) := by core033_kernel_decide
theorem stats7107 : actualRows7107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7107=7428 := by core033_kernel_decide
theorem rows7108 : actualRows7108=WordField.canonicalRows actualModulus 7108 (.rotr 7089 22) := by core033_kernel_decide
theorem stats7108 : actualRows7108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7108=5124 := by core033_kernel_decide
theorem rows7109 : actualRows7109=WordField.canonicalRows actualModulus 7109 (.bxor 7107 7108) := by core033_kernel_decide
theorem stats7109 : actualRows7109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7109=7428 := by core033_kernel_decide
theorem rows7110 : actualRows7110=WordField.canonicalRows actualModulus 7110 (.band 7089 7062) := by core033_kernel_decide
theorem stats7110 : actualRows7110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7110=5124 := by core033_kernel_decide
theorem rows7111 : actualRows7111=WordField.canonicalRows actualModulus 7111 (.band 7089 1452) := by core033_kernel_decide
theorem stats7111 : actualRows7111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7111=5124 := by core033_kernel_decide
theorem rows7112 : actualRows7112=WordField.canonicalRows actualModulus 7112 (.bxor 7110 7111) := by core033_kernel_decide
theorem stats7112 : actualRows7112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7112=7428 := by core033_kernel_decide
theorem rows7113 : actualRows7113=WordField.canonicalRows actualModulus 7113 (.band 7062 1452) := by core033_kernel_decide
theorem stats7113 : actualRows7113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7113=5124 := by core033_kernel_decide
theorem rows7114 : actualRows7114=WordField.canonicalRows actualModulus 7114 (.bxor 7112 7113) := by core033_kernel_decide
theorem stats7114 : actualRows7114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7114=7428 := by core033_kernel_decide
theorem rows7115 : actualRows7115=WordField.canonicalRows actualModulus 7115 (.badd 7109 7114) := by core033_kernel_decide
theorem stats7115 : actualRows7115.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7115=5388 := by core033_kernel_decide
theorem rows7116 : actualRows7116=WordField.canonicalRows actualModulus 7116 (.badd 7104 7115) := by core033_kernel_decide
theorem stats7116 : actualRows7116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7116=5388 := by core033_kernel_decide
theorem rows7117 : actualRows7117=WordField.canonicalRows actualModulus 7117 (.badd 1505 7104) := by core033_kernel_decide
theorem stats7117 : actualRows7117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7117=5388 := by core033_kernel_decide
theorem rows7118 : actualRows7118=WordField.canonicalRows actualModulus 7118 (.rotr 7117 6) := by core033_kernel_decide
theorem stats7118 : actualRows7118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7118=5124 := by core033_kernel_decide
theorem rows7119 : actualRows7119=WordField.canonicalRows actualModulus 7119 (.rotr 7117 11) := by core033_kernel_decide
theorem stats7119 : actualRows7119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7119=5124 := by core033_kernel_decide
theorem rows7120 : actualRows7120=WordField.canonicalRows actualModulus 7120 (.bxor 7118 7119) := by core033_kernel_decide
theorem stats7120 : actualRows7120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7120=7428 := by core033_kernel_decide
theorem rows7121 : actualRows7121=WordField.canonicalRows actualModulus 7121 (.rotr 7117 25) := by core033_kernel_decide
theorem stats7121 : actualRows7121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7121=5124 := by core033_kernel_decide
theorem rows7122 : actualRows7122=WordField.canonicalRows actualModulus 7122 (.bxor 7120 7121) := by core033_kernel_decide
theorem stats7122 : actualRows7122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7122=7428 := by core033_kernel_decide
theorem rows7123 : actualRows7123=WordField.canonicalRows actualModulus 7123 (.badd 1664 7122) := by core033_kernel_decide
theorem stats7123 : actualRows7123.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7123=5388 := by core033_kernel_decide
theorem rows7124 : actualRows7124=WordField.canonicalRows actualModulus 7124 (.band 7117 7090) := by core033_kernel_decide
theorem stats7124 : actualRows7124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7124=5124 := by core033_kernel_decide
theorem rows7125 : actualRows7125=WordField.canonicalRows actualModulus 7125 (.bnot 7117) := by core033_kernel_decide
theorem stats7125 : actualRows7125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7125=6276 := by core033_kernel_decide
theorem rows7126 : actualRows7126=WordField.canonicalRows actualModulus 7126 (.band 7125 7063) := by core033_kernel_decide
theorem stats7126 : actualRows7126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7126=5124 := by core033_kernel_decide
theorem rows7127 : actualRows7127=WordField.canonicalRows actualModulus 7127 (.bxor 7124 7126) := by core033_kernel_decide
theorem stats7127 : actualRows7127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7127=7428 := by core033_kernel_decide
theorem rows7128 : actualRows7128=WordField.canonicalRows actualModulus 7128 (.badd 7123 7127) := by core033_kernel_decide
theorem stats7128 : actualRows7128.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7128=5388 := by core033_kernel_decide
theorem rows7129 : actualRows7129=WordField.canonicalRows actualModulus 7129 (.literal (BitVec.ofNat 32 3921009573)) := by core033_kernel_decide
theorem stats7129 : actualRows7129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7129=4260 := by core033_kernel_decide
theorem rows7130 : actualRows7130=WordField.canonicalRows actualModulus 7130 (.badd 7128 7129) := by core033_kernel_decide
theorem stats7130 : actualRows7130.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7130=5388 := by core033_kernel_decide
theorem rows7131 : actualRows7131=WordField.canonicalRows actualModulus 7131 (.badd 7130 5188) := by core033_kernel_decide
theorem stats7131 : actualRows7131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7131=5388 := by core033_kernel_decide
theorem rows7132 : actualRows7132=WordField.canonicalRows actualModulus 7132 (.rotr 7116 2) := by core033_kernel_decide
theorem stats7132 : actualRows7132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7132=5124 := by core033_kernel_decide
theorem rows7133 : actualRows7133=WordField.canonicalRows actualModulus 7133 (.rotr 7116 13) := by core033_kernel_decide
theorem stats7133 : actualRows7133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7133=5124 := by core033_kernel_decide
theorem rows7134 : actualRows7134=WordField.canonicalRows actualModulus 7134 (.bxor 7132 7133) := by core033_kernel_decide
theorem stats7134 : actualRows7134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7134=7428 := by core033_kernel_decide
theorem rows7135 : actualRows7135=WordField.canonicalRows actualModulus 7135 (.rotr 7116 22) := by core033_kernel_decide
theorem stats7135 : actualRows7135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7135=5124 := by core033_kernel_decide
theorem rows7136 : actualRows7136=WordField.canonicalRows actualModulus 7136 (.bxor 7134 7135) := by core033_kernel_decide
theorem stats7136 : actualRows7136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7136=7428 := by core033_kernel_decide
theorem rows7137 : actualRows7137=WordField.canonicalRows actualModulus 7137 (.band 7116 7089) := by core033_kernel_decide
theorem stats7137 : actualRows7137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7137=5124 := by core033_kernel_decide
theorem rows7138 : actualRows7138=WordField.canonicalRows actualModulus 7138 (.band 7116 7062) := by core033_kernel_decide
theorem stats7138 : actualRows7138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7138=5124 := by core033_kernel_decide
theorem rows7139 : actualRows7139=WordField.canonicalRows actualModulus 7139 (.bxor 7137 7138) := by core033_kernel_decide
theorem stats7139 : actualRows7139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7139=7428 := by core033_kernel_decide
theorem rows7140 : actualRows7140=WordField.canonicalRows actualModulus 7140 (.band 7089 7062) := by core033_kernel_decide
theorem stats7140 : actualRows7140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7140=5124 := by core033_kernel_decide
theorem rows7141 : actualRows7141=WordField.canonicalRows actualModulus 7141 (.bxor 7139 7140) := by core033_kernel_decide
theorem stats7141 : actualRows7141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7141=7428 := by core033_kernel_decide
theorem rows7142 : actualRows7142=WordField.canonicalRows actualModulus 7142 (.badd 7136 7141) := by core033_kernel_decide
theorem stats7142 : actualRows7142.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7142=5388 := by core033_kernel_decide
theorem rows7143 : actualRows7143=WordField.canonicalRows actualModulus 7143 (.badd 7131 7142) := by core033_kernel_decide
theorem stats7143 : actualRows7143.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7143=5388 := by core033_kernel_decide
theorem rows7144 : actualRows7144=WordField.canonicalRows actualModulus 7144 (.badd 1452 7131) := by core033_kernel_decide
theorem stats7144 : actualRows7144.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7144=5388 := by core033_kernel_decide
theorem rows7145 : actualRows7145=WordField.canonicalRows actualModulus 7145 (.rotr 7144 6) := by core033_kernel_decide
theorem stats7145 : actualRows7145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7145=5124 := by core033_kernel_decide
theorem rows7146 : actualRows7146=WordField.canonicalRows actualModulus 7146 (.rotr 7144 11) := by core033_kernel_decide
theorem stats7146 : actualRows7146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7146=5124 := by core033_kernel_decide
def partRows110 : List R1CS.Row := actualRows7083++actualRows7084++actualRows7085++actualRows7086++actualRows7087++actualRows7088++actualRows7089++actualRows7090++actualRows7091++actualRows7092++actualRows7093++actualRows7094++actualRows7095++actualRows7096++actualRows7097++actualRows7098++actualRows7099++actualRows7100++actualRows7101++actualRows7102++actualRows7103++actualRows7104++actualRows7105++actualRows7106++actualRows7107++actualRows7108++actualRows7109++actualRows7110++actualRows7111++actualRows7112++actualRows7113++actualRows7114++actualRows7115++actualRows7116++actualRows7117++actualRows7118++actualRows7119++actualRows7120++actualRows7121++actualRows7122++actualRows7123++actualRows7124++actualRows7125++actualRows7126++actualRows7127++actualRows7128++actualRows7129++actualRows7130++actualRows7131++actualRows7132++actualRows7133++actualRows7134++actualRows7135++actualRows7136++actualRows7137++actualRows7138++actualRows7139++actualRows7140++actualRows7141++actualRows7142++actualRows7143++actualRows7144++actualRows7145++actualRows7146
def partOps110 : List WordIR.Op := [.band 7062 1452,.band 7062 1505,.bxor 7083 7084,.band 1452 1505,.bxor 7085 7086,.badd 7082 7087,.badd 7077 7088,.badd 1558 7077,.rotr 7090 6,.rotr 7090 11,.bxor 7091 7092,.rotr 7090 25,.bxor 7093 7094,.badd 1717 7095,.band 7090 7063,.bnot 7090,.band 7098 1664,.bxor 7097 7099,.badd 7096 7100,.literal (BitVec.ofNat 32 3049323471),.badd 7101 7102,.badd 7103 5182,.rotr 7089 2,.rotr 7089 13,.bxor 7105 7106,.rotr 7089 22,.bxor 7107 7108,.band 7089 7062,.band 7089 1452,.bxor 7110 7111,.band 7062 1452,.bxor 7112 7113,.badd 7109 7114,.badd 7104 7115,.badd 1505 7104,.rotr 7117 6,.rotr 7117 11,.bxor 7118 7119,.rotr 7117 25,.bxor 7120 7121,.badd 1664 7122,.band 7117 7090,.bnot 7117,.band 7125 7063,.bxor 7124 7126,.badd 7123 7127,.literal (BitVec.ofNat 32 3921009573),.badd 7128 7129,.badd 7130 5188,.rotr 7116 2,.rotr 7116 13,.bxor 7132 7133,.rotr 7116 22,.bxor 7134 7135,.band 7116 7089,.band 7116 7062,.bxor 7137 7138,.band 7089 7062,.bxor 7139 7140,.badd 7136 7141,.badd 7131 7142,.badd 1452 7131,.rotr 7144 6,.rotr 7144 11]
theorem partExact110 : partRows110=WordField.rows actualModulus 7083 partOps110 := by
  simp only [partRows110,partOps110,WordField.rows,rows7083,rows7084,rows7085,rows7086,rows7087,rows7088,rows7089,rows7090,rows7091,rows7092,rows7093,rows7094,rows7095,rows7096,rows7097,rows7098,rows7099,rows7100,rows7101,rows7102,rows7103,rows7104,rows7105,rows7106,rows7107,rows7108,rows7109,rows7110,rows7111,rows7112,rows7113,rows7114,rows7115,rows7116,rows7117,rows7118,rows7119,rows7120,rows7121,rows7122,rows7123,rows7124,rows7125,rows7126,rows7127,rows7128,rows7129,rows7130,rows7131,rows7132,rows7133,rows7134,rows7135,rows7136,rows7137,rows7138,rows7139,rows7140,rows7141,rows7142,rows7143,rows7144,rows7145,rows7146,List.append_assoc,List.append_nil]
theorem partLength110 : partOps110.length=64 := by decide
theorem partStats110 : partRows110.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows110=369864 := by
  simp only [partRows110,List.length_append,MatrixRowBlocks.rows_weight_append,stats7083.1,stats7083.2,stats7084.1,stats7084.2,stats7085.1,stats7085.2,stats7086.1,stats7086.2,stats7087.1,stats7087.2,stats7088.1,stats7088.2,stats7089.1,stats7089.2,stats7090.1,stats7090.2,stats7091.1,stats7091.2,stats7092.1,stats7092.2,stats7093.1,stats7093.2,stats7094.1,stats7094.2,stats7095.1,stats7095.2,stats7096.1,stats7096.2,stats7097.1,stats7097.2,stats7098.1,stats7098.2,stats7099.1,stats7099.2,stats7100.1,stats7100.2,stats7101.1,stats7101.2,stats7102.1,stats7102.2,stats7103.1,stats7103.2,stats7104.1,stats7104.2,stats7105.1,stats7105.2,stats7106.1,stats7106.2,stats7107.1,stats7107.2,stats7108.1,stats7108.2,stats7109.1,stats7109.2,stats7110.1,stats7110.2,stats7111.1,stats7111.2,stats7112.1,stats7112.2,stats7113.1,stats7113.2,stats7114.1,stats7114.2,stats7115.1,stats7115.2,stats7116.1,stats7116.2,stats7117.1,stats7117.2,stats7118.1,stats7118.2,stats7119.1,stats7119.2,stats7120.1,stats7120.2,stats7121.1,stats7121.2,stats7122.1,stats7122.2,stats7123.1,stats7123.2,stats7124.1,stats7124.2,stats7125.1,stats7125.2,stats7126.1,stats7126.2,stats7127.1,stats7127.2,stats7128.1,stats7128.2,stats7129.1,stats7129.2,stats7130.1,stats7130.2,stats7131.1,stats7131.2,stats7132.1,stats7132.2,stats7133.1,stats7133.2,stats7134.1,stats7134.2,stats7135.1,stats7135.2,stats7136.1,stats7136.2,stats7137.1,stats7137.2,stats7138.1,stats7138.2,stats7139.1,stats7139.2,stats7140.1,stats7140.2,stats7141.1,stats7141.2,stats7142.1,stats7142.2,stats7143.1,stats7143.2,stats7144.1,stats7144.2,stats7145.1,stats7145.2,stats7146.1,stats7146.2]
  decide
end FrameHashControllerCheckedRows
