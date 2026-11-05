import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData110
import AuthenticatedBranchRoundInstructionMatrixData111
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7094 : actualRows7094=WordField.canonicalRows actualModulus 7094 (.bnot 7093) := by core033_kernel_decide
theorem stats7094 : actualRows7094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7094=6276 := by core033_kernel_decide
theorem rows7095 : actualRows7095=WordField.canonicalRows actualModulus 7095 (.bxor 7092 7094) := by core033_kernel_decide
theorem stats7095 : actualRows7095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7095=7428 := by core033_kernel_decide
theorem rows7096 : actualRows7096=WordField.canonicalRows actualModulus 7096 (.shr 3906 8) := by core033_kernel_decide
theorem stats7096 : actualRows7096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7096=4548 := by core033_kernel_decide
theorem rows7097 : actualRows7097=WordField.canonicalRows actualModulus 7097 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7097 : actualRows7097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7097=2820 := by core033_kernel_decide
theorem rows7098 : actualRows7098=WordField.canonicalRows actualModulus 7098 (.bnot 7097) := by core033_kernel_decide
theorem stats7098 : actualRows7098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7098=6276 := by core033_kernel_decide
theorem rows7099 : actualRows7099=WordField.canonicalRows actualModulus 7099 (.badd 7096 7098) := by core033_kernel_decide
theorem stats7099 : actualRows7099.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7099=5388 := by core033_kernel_decide
theorem rows7100 : actualRows7100=WordField.canonicalRows actualModulus 7100 (.bnot 7099) := by core033_kernel_decide
theorem stats7100 : actualRows7100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7100=6276 := by core033_kernel_decide
theorem rows7101 : actualRows7101=WordField.canonicalRows actualModulus 7101 (.band 7095 7100) := by core033_kernel_decide
theorem stats7101 : actualRows7101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7101=5124 := by core033_kernel_decide
theorem rows7102 : actualRows7102=WordField.canonicalRows actualModulus 7102 (.bxor 7091 7101) := by core033_kernel_decide
theorem stats7102 : actualRows7102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7102=7428 := by core033_kernel_decide
theorem rows7103 : actualRows7103=WordField.canonicalRows actualModulus 7103 (.shr 7102 31) := by core033_kernel_decide
theorem stats7103 : actualRows7103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7103=2892 := by core033_kernel_decide
theorem rows7104 : actualRows7104=WordField.canonicalRows actualModulus 7104 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7104 : actualRows7104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7104=2892 := by core033_kernel_decide
theorem rows7105 : actualRows7105=WordField.canonicalRows actualModulus 7105 (.bxor 7103 7104) := by core033_kernel_decide
theorem stats7105 : actualRows7105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7105=7428 := by core033_kernel_decide
theorem rows7106 : actualRows7106=WordField.canonicalRows actualModulus 7106 (.shr 3958 8) := by core033_kernel_decide
theorem stats7106 : actualRows7106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7106=4548 := by core033_kernel_decide
theorem rows7107 : actualRows7107=WordField.canonicalRows actualModulus 7107 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7107 : actualRows7107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7107=2820 := by core033_kernel_decide
theorem rows7108 : actualRows7108=WordField.canonicalRows actualModulus 7108 (.bnot 7107) := by core033_kernel_decide
theorem stats7108 : actualRows7108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7108=6276 := by core033_kernel_decide
theorem rows7109 : actualRows7109=WordField.canonicalRows actualModulus 7109 (.band 7106 7108) := by core033_kernel_decide
theorem stats7109 : actualRows7109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7109=5124 := by core033_kernel_decide
theorem rows7110 : actualRows7110=WordField.canonicalRows actualModulus 7110 (.shr 3958 8) := by core033_kernel_decide
theorem stats7110 : actualRows7110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7110=4548 := by core033_kernel_decide
theorem rows7111 : actualRows7111=WordField.canonicalRows actualModulus 7111 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7111 : actualRows7111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7111=2820 := by core033_kernel_decide
theorem rows7112 : actualRows7112=WordField.canonicalRows actualModulus 7112 (.bnot 7111) := by core033_kernel_decide
theorem stats7112 : actualRows7112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7112=6276 := by core033_kernel_decide
theorem rows7113 : actualRows7113=WordField.canonicalRows actualModulus 7113 (.bxor 7110 7112) := by core033_kernel_decide
theorem stats7113 : actualRows7113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7113=7428 := by core033_kernel_decide
theorem rows7114 : actualRows7114=WordField.canonicalRows actualModulus 7114 (.shr 3958 8) := by core033_kernel_decide
theorem stats7114 : actualRows7114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7114=4548 := by core033_kernel_decide
theorem rows7115 : actualRows7115=WordField.canonicalRows actualModulus 7115 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7115 : actualRows7115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7115=2820 := by core033_kernel_decide
theorem rows7116 : actualRows7116=WordField.canonicalRows actualModulus 7116 (.bnot 7115) := by core033_kernel_decide
theorem stats7116 : actualRows7116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7116=6276 := by core033_kernel_decide
theorem rows7117 : actualRows7117=WordField.canonicalRows actualModulus 7117 (.badd 7114 7116) := by core033_kernel_decide
theorem stats7117 : actualRows7117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7117=5388 := by core033_kernel_decide
theorem rows7118 : actualRows7118=WordField.canonicalRows actualModulus 7118 (.bnot 7117) := by core033_kernel_decide
theorem stats7118 : actualRows7118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7118=6276 := by core033_kernel_decide
theorem rows7119 : actualRows7119=WordField.canonicalRows actualModulus 7119 (.band 7113 7118) := by core033_kernel_decide
theorem stats7119 : actualRows7119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7119=5124 := by core033_kernel_decide
theorem rows7120 : actualRows7120=WordField.canonicalRows actualModulus 7120 (.bxor 7109 7119) := by core033_kernel_decide
theorem stats7120 : actualRows7120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7120=7428 := by core033_kernel_decide
theorem rows7121 : actualRows7121=WordField.canonicalRows actualModulus 7121 (.shr 7120 31) := by core033_kernel_decide
theorem stats7121 : actualRows7121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7121=2892 := by core033_kernel_decide
theorem rows7122 : actualRows7122=WordField.canonicalRows actualModulus 7122 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7122 : actualRows7122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7122=2892 := by core033_kernel_decide
theorem rows7123 : actualRows7123=WordField.canonicalRows actualModulus 7123 (.bxor 7121 7122) := by core033_kernel_decide
theorem stats7123 : actualRows7123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7123=7428 := by core033_kernel_decide
theorem rows7124 : actualRows7124=WordField.canonicalRows actualModulus 7124 (.shr 4010 8) := by core033_kernel_decide
theorem stats7124 : actualRows7124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7124=4548 := by core033_kernel_decide
theorem rows7125 : actualRows7125=WordField.canonicalRows actualModulus 7125 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7125 : actualRows7125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7125=2820 := by core033_kernel_decide
theorem rows7126 : actualRows7126=WordField.canonicalRows actualModulus 7126 (.bnot 7125) := by core033_kernel_decide
theorem stats7126 : actualRows7126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7126=6276 := by core033_kernel_decide
theorem rows7127 : actualRows7127=WordField.canonicalRows actualModulus 7127 (.band 7124 7126) := by core033_kernel_decide
theorem stats7127 : actualRows7127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7127=5124 := by core033_kernel_decide
theorem rows7128 : actualRows7128=WordField.canonicalRows actualModulus 7128 (.shr 4010 8) := by core033_kernel_decide
theorem stats7128 : actualRows7128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7128=4548 := by core033_kernel_decide
theorem rows7129 : actualRows7129=WordField.canonicalRows actualModulus 7129 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7129 : actualRows7129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7129=2820 := by core033_kernel_decide
theorem rows7130 : actualRows7130=WordField.canonicalRows actualModulus 7130 (.bnot 7129) := by core033_kernel_decide
theorem stats7130 : actualRows7130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7130=6276 := by core033_kernel_decide
theorem rows7131 : actualRows7131=WordField.canonicalRows actualModulus 7131 (.bxor 7128 7130) := by core033_kernel_decide
theorem stats7131 : actualRows7131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7131=7428 := by core033_kernel_decide
theorem rows7132 : actualRows7132=WordField.canonicalRows actualModulus 7132 (.shr 4010 8) := by core033_kernel_decide
theorem stats7132 : actualRows7132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7132=4548 := by core033_kernel_decide
theorem rows7133 : actualRows7133=WordField.canonicalRows actualModulus 7133 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7133 : actualRows7133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7133=2820 := by core033_kernel_decide
theorem rows7134 : actualRows7134=WordField.canonicalRows actualModulus 7134 (.bnot 7133) := by core033_kernel_decide
theorem stats7134 : actualRows7134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7134=6276 := by core033_kernel_decide
theorem rows7135 : actualRows7135=WordField.canonicalRows actualModulus 7135 (.badd 7132 7134) := by core033_kernel_decide
theorem stats7135 : actualRows7135.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7135=5388 := by core033_kernel_decide
theorem rows7136 : actualRows7136=WordField.canonicalRows actualModulus 7136 (.bnot 7135) := by core033_kernel_decide
theorem stats7136 : actualRows7136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7136=6276 := by core033_kernel_decide
theorem rows7137 : actualRows7137=WordField.canonicalRows actualModulus 7137 (.band 7131 7136) := by core033_kernel_decide
theorem stats7137 : actualRows7137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7137=5124 := by core033_kernel_decide
theorem rows7138 : actualRows7138=WordField.canonicalRows actualModulus 7138 (.bxor 7127 7137) := by core033_kernel_decide
theorem stats7138 : actualRows7138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7138=7428 := by core033_kernel_decide
theorem rows7139 : actualRows7139=WordField.canonicalRows actualModulus 7139 (.shr 7138 31) := by core033_kernel_decide
theorem stats7139 : actualRows7139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7139=2892 := by core033_kernel_decide
theorem rows7140 : actualRows7140=WordField.canonicalRows actualModulus 7140 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7140 : actualRows7140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7140=2892 := by core033_kernel_decide
theorem rows7141 : actualRows7141=WordField.canonicalRows actualModulus 7141 (.bxor 7139 7140) := by core033_kernel_decide
theorem stats7141 : actualRows7141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7141=7428 := by core033_kernel_decide
theorem rows7142 : actualRows7142=WordField.canonicalRows actualModulus 7142 (.shr 4062 8) := by core033_kernel_decide
theorem stats7142 : actualRows7142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7142=4548 := by core033_kernel_decide
theorem rows7143 : actualRows7143=WordField.canonicalRows actualModulus 7143 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7143 : actualRows7143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7143=2820 := by core033_kernel_decide
theorem rows7144 : actualRows7144=WordField.canonicalRows actualModulus 7144 (.bnot 7143) := by core033_kernel_decide
theorem stats7144 : actualRows7144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7144=6276 := by core033_kernel_decide
theorem rows7145 : actualRows7145=WordField.canonicalRows actualModulus 7145 (.band 7142 7144) := by core033_kernel_decide
theorem stats7145 : actualRows7145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7145=5124 := by core033_kernel_decide
theorem rows7146 : actualRows7146=WordField.canonicalRows actualModulus 7146 (.shr 4062 8) := by core033_kernel_decide
theorem stats7146 : actualRows7146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7146=4548 := by core033_kernel_decide
theorem rows7147 : actualRows7147=WordField.canonicalRows actualModulus 7147 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7147 : actualRows7147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7147=2820 := by core033_kernel_decide
theorem rows7148 : actualRows7148=WordField.canonicalRows actualModulus 7148 (.bnot 7147) := by core033_kernel_decide
theorem stats7148 : actualRows7148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7148=6276 := by core033_kernel_decide
theorem rows7149 : actualRows7149=WordField.canonicalRows actualModulus 7149 (.bxor 7146 7148) := by core033_kernel_decide
theorem stats7149 : actualRows7149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7149=7428 := by core033_kernel_decide
theorem rows7150 : actualRows7150=WordField.canonicalRows actualModulus 7150 (.shr 4062 8) := by core033_kernel_decide
theorem stats7150 : actualRows7150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7150=4548 := by core033_kernel_decide
theorem rows7151 : actualRows7151=WordField.canonicalRows actualModulus 7151 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7151 : actualRows7151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7151=2820 := by core033_kernel_decide
theorem rows7152 : actualRows7152=WordField.canonicalRows actualModulus 7152 (.bnot 7151) := by core033_kernel_decide
theorem stats7152 : actualRows7152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7152=6276 := by core033_kernel_decide
theorem rows7153 : actualRows7153=WordField.canonicalRows actualModulus 7153 (.badd 7150 7152) := by core033_kernel_decide
theorem stats7153 : actualRows7153.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7153=5388 := by core033_kernel_decide
theorem rows7154 : actualRows7154=WordField.canonicalRows actualModulus 7154 (.bnot 7153) := by core033_kernel_decide
theorem stats7154 : actualRows7154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7154=6276 := by core033_kernel_decide
theorem rows7155 : actualRows7155=WordField.canonicalRows actualModulus 7155 (.band 7149 7154) := by core033_kernel_decide
theorem stats7155 : actualRows7155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7155=5124 := by core033_kernel_decide
theorem rows7156 : actualRows7156=WordField.canonicalRows actualModulus 7156 (.bxor 7145 7155) := by core033_kernel_decide
theorem stats7156 : actualRows7156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7156=7428 := by core033_kernel_decide
theorem rows7157 : actualRows7157=WordField.canonicalRows actualModulus 7157 (.shr 7156 31) := by core033_kernel_decide
theorem stats7157 : actualRows7157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7157=2892 := by core033_kernel_decide
def partRows109 : List R1CS.Row := actualRows7094++actualRows7095++actualRows7096++actualRows7097++actualRows7098++actualRows7099++actualRows7100++actualRows7101++actualRows7102++actualRows7103++actualRows7104++actualRows7105++actualRows7106++actualRows7107++actualRows7108++actualRows7109++actualRows7110++actualRows7111++actualRows7112++actualRows7113++actualRows7114++actualRows7115++actualRows7116++actualRows7117++actualRows7118++actualRows7119++actualRows7120++actualRows7121++actualRows7122++actualRows7123++actualRows7124++actualRows7125++actualRows7126++actualRows7127++actualRows7128++actualRows7129++actualRows7130++actualRows7131++actualRows7132++actualRows7133++actualRows7134++actualRows7135++actualRows7136++actualRows7137++actualRows7138++actualRows7139++actualRows7140++actualRows7141++actualRows7142++actualRows7143++actualRows7144++actualRows7145++actualRows7146++actualRows7147++actualRows7148++actualRows7149++actualRows7150++actualRows7151++actualRows7152++actualRows7153++actualRows7154++actualRows7155++actualRows7156++actualRows7157
def partOps109 : List WordIR.Op := [.bnot 7093,.bxor 7092 7094,.shr 3906 8,.literal (BitVec.ofNat 32 0),.bnot 7097,.badd 7096 7098,.bnot 7099,.band 7095 7100,.bxor 7091 7101,.shr 7102 31,.literal (BitVec.ofNat 32 1),.bxor 7103 7104,.shr 3958 8,.literal (BitVec.ofNat 32 0),.bnot 7107,.band 7106 7108,.shr 3958 8,.literal (BitVec.ofNat 32 0),.bnot 7111,.bxor 7110 7112,.shr 3958 8,.literal (BitVec.ofNat 32 0),.bnot 7115,.badd 7114 7116,.bnot 7117,.band 7113 7118,.bxor 7109 7119,.shr 7120 31,.literal (BitVec.ofNat 32 1),.bxor 7121 7122,.shr 4010 8,.literal (BitVec.ofNat 32 0),.bnot 7125,.band 7124 7126,.shr 4010 8,.literal (BitVec.ofNat 32 0),.bnot 7129,.bxor 7128 7130,.shr 4010 8,.literal (BitVec.ofNat 32 0),.bnot 7133,.badd 7132 7134,.bnot 7135,.band 7131 7136,.bxor 7127 7137,.shr 7138 31,.literal (BitVec.ofNat 32 1),.bxor 7139 7140,.shr 4062 8,.literal (BitVec.ofNat 32 0),.bnot 7143,.band 7142 7144,.shr 4062 8,.literal (BitVec.ofNat 32 0),.bnot 7147,.bxor 7146 7148,.shr 4062 8,.literal (BitVec.ofNat 32 0),.bnot 7151,.badd 7150 7152,.bnot 7153,.band 7149 7154,.bxor 7145 7155,.shr 7156 31]
theorem partExact109 : partRows109=WordField.rows actualModulus 7094 partOps109 := by
  simp only [partRows109,partOps109,WordField.rows,rows7094,rows7095,rows7096,rows7097,rows7098,rows7099,rows7100,rows7101,rows7102,rows7103,rows7104,rows7105,rows7106,rows7107,rows7108,rows7109,rows7110,rows7111,rows7112,rows7113,rows7114,rows7115,rows7116,rows7117,rows7118,rows7119,rows7120,rows7121,rows7122,rows7123,rows7124,rows7125,rows7126,rows7127,rows7128,rows7129,rows7130,rows7131,rows7132,rows7133,rows7134,rows7135,rows7136,rows7137,rows7138,rows7139,rows7140,rows7141,rows7142,rows7143,rows7144,rows7145,rows7146,rows7147,rows7148,rows7149,rows7150,rows7151,rows7152,rows7153,rows7154,rows7155,rows7156,rows7157,List.append_assoc,List.append_nil]
theorem partLength109 : partOps109.length=64 := by decide
theorem partStats109 : partRows109.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows109=327192 := by
  simp only [partRows109,List.length_append,MatrixRowBlocks.rows_weight_append,stats7094.1,stats7094.2,stats7095.1,stats7095.2,stats7096.1,stats7096.2,stats7097.1,stats7097.2,stats7098.1,stats7098.2,stats7099.1,stats7099.2,stats7100.1,stats7100.2,stats7101.1,stats7101.2,stats7102.1,stats7102.2,stats7103.1,stats7103.2,stats7104.1,stats7104.2,stats7105.1,stats7105.2,stats7106.1,stats7106.2,stats7107.1,stats7107.2,stats7108.1,stats7108.2,stats7109.1,stats7109.2,stats7110.1,stats7110.2,stats7111.1,stats7111.2,stats7112.1,stats7112.2,stats7113.1,stats7113.2,stats7114.1,stats7114.2,stats7115.1,stats7115.2,stats7116.1,stats7116.2,stats7117.1,stats7117.2,stats7118.1,stats7118.2,stats7119.1,stats7119.2,stats7120.1,stats7120.2,stats7121.1,stats7121.2,stats7122.1,stats7122.2,stats7123.1,stats7123.2,stats7124.1,stats7124.2,stats7125.1,stats7125.2,stats7126.1,stats7126.2,stats7127.1,stats7127.2,stats7128.1,stats7128.2,stats7129.1,stats7129.2,stats7130.1,stats7130.2,stats7131.1,stats7131.2,stats7132.1,stats7132.2,stats7133.1,stats7133.2,stats7134.1,stats7134.2,stats7135.1,stats7135.2,stats7136.1,stats7136.2,stats7137.1,stats7137.2,stats7138.1,stats7138.2,stats7139.1,stats7139.2,stats7140.1,stats7140.2,stats7141.1,stats7141.2,stats7142.1,stats7142.2,stats7143.1,stats7143.2,stats7144.1,stats7144.2,stats7145.1,stats7145.2,stats7146.1,stats7146.2,stats7147.1,stats7147.2,stats7148.1,stats7148.2,stats7149.1,stats7149.2,stats7150.1,stats7150.2,stats7151.1,stats7151.2,stats7152.1,stats7152.2,stats7153.1,stats7153.2,stats7154.1,stats7154.2,stats7155.1,stats7155.2,stats7156.1,stats7156.2,stats7157.1,stats7157.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
